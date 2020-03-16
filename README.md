# DODAS HELM REPOSITORY

## Add DODAS repo to helm

```bash
helm repo add dodas https://dodas-ts.github.io/helm_charts
helm repo update
```

## Availble charts

- [cachingondemand](stable/cachingondemand/README.md)
    - `helm install cod dodas/cachingondemand -f <myvalues>.yaml`
- [htcondor](stable/htcondor/README.md)
    - `helm install htcondor dodas/htcondor -f <myvalues>.yaml`
- [spark](stable/spark/README.md)
    - `helm install spark dodas/spark -f <myvalues>.yaml`

## Acknowledgement

**This work is co-funded by the EOSC-hub project (Horizon 2020) under Grant number 777536.**                          

EU logo     https://wiki.eosc-hub.eu/display/EOSC/Quality+Plan?preview=/1867786/4063268/eu%20logo.jpeg#QualityPlan-Acknowledgement                               
EOSC hub logo     https://wiki.eosc-hub.eu/display/EOSC/Quality+Plan?preview=/18973612/18973785/eosc-hub-web.png#QualityPlan-Acknowledgement 

## Contributing

If you want to contribute:

1. create a branch (on your forked repo)
2. upload your changes
3. create a pull request

Remember to follow the [HELM best practices](https://helm.sh/docs/topics/chart_best_practices/) when changing or creating a chart.

Thanks!
