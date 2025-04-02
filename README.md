# ci-template-gitops

## Charts
The `charts/` directory contains charts that deploy resources for students and shared resources. The following table calls out the charts and their documentation.

| Chart | Description | Path | Example Values |
| --- | --- | --- | --- |
| Student Namespaces | Creates a shared namespace called `student-services`, and optionally creates namespaces for students according to a provided list | `charts/student-namespaces/` | [Example Values](./charts/student-namespaces/example-values.yaml) |
| Build Images RBAC | Creates the appropriate rbac for a service account to build images using the build service | `charts/build-images-rbac/` | None required |
| Build Flightctl CLI | Builds an image that has the flightctl CLI baked in, stores it in the internal registry | `charts/build-flightctl-cli/` | [Example Values](./charts/build-flightctl-cli/example-values.yaml) |


## Input Values
The following is an example of all values required by all charts to deploy, as an example:
```yaml

gitSource:
  url: https://github.com/rhpds/lb2517-edge-fleet-gitops.git
  ref: main

```