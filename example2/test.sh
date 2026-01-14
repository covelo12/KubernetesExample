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
  kubectl exec echo -- cat /logs/echo.log
}
### run this inside the pod
#cat << 'EOF' > test.sh
##!/bin/sh
#for i in {1..5}; do
#  echo | nc echo-service 80
#done
#EOF
