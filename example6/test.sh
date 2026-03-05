#When a deploymenet is used, it keeps creating pods
destroy_pods() {
  kubectl delete pods -n default --all
}
#You need to delete the deployment or it will not stop creating pods
destroy_deploy() {
  kubectl delete pods -n default --all
}
#This time logs won't be transmited but putted into a logs folder
create_tester() {
  kubectl run tester --image=busybox -it --rm -- sh
}
#Both pods share this folder and both will write here
get_logs() {
  # Get the name of one pod from the echo deployment
  POD=$(kubectl get pods -l app=echo -o jsonpath='{.items[0].metadata.name}')
  # Show its logs
  kubectl exec "$POD" -- cat /logs/echo.log
}

get_resources() {

  POD=$(kubectl get pods -l app=echo -o jsonpath='{.items[0].metadata.name}')

  #kubectl top pod "$POD"
  kubectl describe pod "$POD"
}

get_pod_logs() {

  kubectl logs "$POD"
}
$1
### run this inside the pod
#cat <<'EOF' >test.sh
##!/bin/sh
#for i in {1..5}; do
#  echo | nc echo-service 80
#done
#EOF
