# cluster create
cd tf
tf apply

# setup

doctl auth switch --context main
doctl kubernetes cluster kubeconfig save "dev-cluster"

# flux

## bootstrap

flux bootstrap github \
  --owner=asotora \
  --repository=k8s-CI-CD-showcase \
  --branch=feature/add-flux-example \
  --path=clusters/dev \
  --private=false \
  --personal

## check

flux get kustomizations -A
flux get helmreleases -A


## change branch

flux bootstrap github \
  --owner=asotora \
  --repository=k8s-CI-CD-showcase \
  --branch=main \
  --path=clusters/dev \
  --private=false \
  --personal

# cleanup
cd tf
tf destroy
