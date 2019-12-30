# kactivator


## How to use

#### prepare

```
ISTIO=$GOPATH/src/istio.io/istio
cd $ISTIO/mixer/adapter
git clone https://github.com/nak3/kactivator.git
```

#### Build

`quay.io/nak3` must be replaced by your container registry's.

```
bash build.sh "quay.io/nak3"
```

#### Deploy

```
kubectl apply -f testdata/template.yaml
kubectl apply -f testdata/kactivator.yaml
kubectl apply -f kactivator-adapter.yaml
kubectl apply -f testdata/sample_operator_cfg.yaml
```
