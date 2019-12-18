#!/bin/bash
RELEASE=stable
GH_PAGES=https://dodas-ts.github.io/helm_charts
COMMIT_MSG="Doc update"
CURRENT_BRANCH="master"

cd stable

chart_list=$(find . -name 'Charts.yaml')

for chart in chart_list; do
    dirname=$(dirname ${chart})
    CHART_NAME="${dirname%"${dirname##*[!/]}"}" # extglob-free multi-trailing-/ trim
    CHART_NAME="${CHART_NAME##*/}"                  # remove everything before the last /

    echo "PROCESSING $CHART_NAME"

    helm lint ${CHART_NAME}
    helm package ${RELEASE}/${CHART_NAME}

    if [ -f index.yaml ]; then
        helm repo index  --url ${GH_PAGES} --merge index.yaml .
    else
        helm repo index  --url ${GH_PAGES} .
    fi
    mv ./index.yaml /tmp/
    mv ./${CHART_NAME}*.tgz /tmp/
    git checkout gh-pages
    cp /tmp/${CHART_NAME}*.tgz .
    cp /tmp/index.yaml .
    git add index.yaml *.tgz
    git commit -m ${COMMIT_MSG}
    git push origin gh-pages
    git checkout ${CURRENT_BRANCH}

done
