# DODAS HELM REPOSITORY

## Add DODAS repo to helm

```bash
helm repo add dodas https://dodas-ts.github.io/helm_charts
helm repo update
```

## Availble charts

- [cachingondemand](stable/cachingondemand/README.md)
    - `helm install dodas/cachingondemand -f <myvalues>.yaml`
- [htcondor](stable/htcondor/README.md)
    - `helm install dodas/htcondor -f <myvalues>.yaml`

## Contributing

If you want to contribute:

1. create a branch (on your forked repo)
2. upload your changes
3. create a pull request

Remember to follow the [HELM best practices](https://helm.sh/docs/topics/chart_best_practices/) when changing or creating a chart.

Thanks!