# ci-template-gitops

## Charts
The `charts/` directory contains charts that deploy resources for students and shared resources. The following table calls out the charts and their documentation.

| Chart | Description | Path | Example Values |
| --- | --- | --- | --- |
| Student Namespaces | Creates a shared namespace called `student-services`, and optionally creates namespaces for students according to a provided list | `charts/student-namespaces/` | [Example Values](./charts/student-namespaces/example-values.yaml) |
