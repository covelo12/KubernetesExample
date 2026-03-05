# Practical Exercises: Environment Variables and ConfigMaps

This guide focuses on injecting configurations into pods and the lifecycle of short-lived containers.

0.5- Run the deployment before creating the ConfigMap. Analyze the state of the pods and try to figure out the exact reason why they are stuck.

1- Create the manifest for the missing ConfigMap named echo-config with the keys APP_ENV, LOG_LEVEL, and MESSAGE, and apply everything to the cluster.

1.5- Let's pretend we are trying to understand the application's behavior in a development environment. Find and execute the command to check the pod logs and confirm if the text from the variables was printed correctly.

2- Notice that after 60 seconds, the container finishes executing and the Deployment creates a new one to replace it. Change the command logic in the manifest so the pod runs indefinitely.

3- Modify the value of the LOG_LEVEL variable directly in the active ConfigMap in the cluster using the patch or edit command.

4- Check the pod logs again. Since envFrom variables are not hot-updated in pods that are already running, figure out how to force a rollout of the Deployment so it absorbs your change.

Since we are using the envFrom parameter, all keys present in the ConfigMap are injected directly into the container, which is great for keeping the Deployment code clean.
