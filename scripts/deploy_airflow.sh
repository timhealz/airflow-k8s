helm repo add apache-airflow https://airflow.apache.org
helm repo update

export NAMESPACE=local-namespace
export RELEASE_NAME=local-release

kubectl create namespace $NAMESPACE

helm install $RELEASE_NAME apache-airflow/airflow \
    --namespace $NAMESPACE

kubectl get pods --namespace $NAMESPACE
helm list --namespace $NAMESPACE

