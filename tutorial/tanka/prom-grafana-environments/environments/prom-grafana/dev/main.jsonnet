(import "prom-grafana/prom-grafana.libsonnet") +
{
  monitoring_namespace: {
    apiVersion: "v1",
    kind: "Namespace",
    metadata: {
      name: "prom-grafana-dev"
    }
  },
}