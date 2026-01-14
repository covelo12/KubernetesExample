This is a small example on how service and internal Kubernetes DNS resolution works.
1- Apply both files (pod and service)
2- Run test.sh to run a test pod for debug
3- Run the commented code in test.sh inside the debug pod and then run the created file

Internal K8s DNS will resolve the echo-service domain
