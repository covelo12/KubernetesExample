We already defined that Kubernetes can restart pods if they failed, this can happen due to a multitude of reasons(`OOMKilled`, filesystem bugs, killed manually, etc.)
But if the application running inside the pod breaks but the pod keeps running? How does Kubernetes knows it to restart the pod?
Also when the pod starts the application does not start running immediately, depending on the applications startup time may vary. When should K8s start redirecting traffic to this new container?

Both these problems have the same solutions: [Probes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/)!
Probes are requests(usually to an endpoint but can also be a file) to verify the functioning of the applications running inside the pods

**Liveness Probe**-> When to restart a container? Usually an endpoint to ensure the application is alive
**Readiness probe**-> When is a container ready to accept traffic?
**Startup Probe**-> When is an application ready to accept traffic? This will delay liveness probe

1- Investigate the deployment. What does k8s use as a way to know if the pod is healthy? And ready?
2- What happens if you delete the readiness file? And the Healthiness? Try it
