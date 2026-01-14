kubectl run tester --image=busybox -it --rm -- sh

### run this inside the pod
#cat << 'EOF' > test.sh
##!/bin/sh
#for i in {1..5}; do
#  echo | nc echo-service 80
#done
#EOF
