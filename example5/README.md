# Resources

Resources aren't infinite, specially if you are on prem. And not all applications are the same, some are more critical than others.
Ensuring that all applications have just enough resources to run and not more is complicated to say the least.

The first step to that is to stablish limits on:

- How much does an application minimum requirements to be able to run (**Requests**)
- How much does an application maximum consumption should be for the well-being of the cluster(**Limits**)

1- Run deployment
2- Check how many resources are its requests and limits
