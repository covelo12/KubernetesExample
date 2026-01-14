This is an expansion on volumes specific for k8s.
0.5- Run the deploy before the PVC. How are the pods running?
1- Apply all files (pod and service and volumeClaims)
1.5- Lets pretend we are in prod and have multiple pods, pvc, and pv. Try to investigate how to reach what pv is a deployment using
2- Run test.sh to run a test pod for debug
3- Run the commented code in test.sh inside the debug pod and then run the created file
4- Run the script to cat the log file

Since we are now using a pvc the folder is shared by both pods, and they both write on it.
