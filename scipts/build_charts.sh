#!/bin/bash

for chart in $(find . -name 'Charts.yaml'); do
    CHART_NAME=$(dirname ${chart})

    helm lint ${CHART_NAME}
    helm package ${RELEASE}/${CHART_NAME}

    if [ -f index.yaml ]; then
        helm repo index ./ --url ${GH_PAGES} --merge index.yaml .
    else
        helm repo index ./ --url ${GH_PAGES} .
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
