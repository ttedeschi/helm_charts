# DODAS HELM REPOSITORY

## Add DODAS repo to helm

```bash
helm repo add dodas https://dodas-ts.github.io/helm_charts
helm repo update
```

## Availble charts

- [cachingondemand](stable/cachingondemand/README.md)
    - `helm install dodas/cachingondemand -v <myvalues>.yaml`
- [htcondor](stable/htcondor/README.md)
    - `helm install dodas/htcondor -v <myvalues>.yaml`
- [spark](stable/spark/README.md)
    - `helm install dodas/spark -v <myvalues>.yaml`