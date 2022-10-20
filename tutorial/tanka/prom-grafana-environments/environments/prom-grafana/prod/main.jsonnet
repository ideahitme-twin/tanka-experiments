(import "prom-grafana/prom-grafana.libsonnet") +
{
  _images+:: {
    promgrafana: {
      prometheus: "prom/prometheus:v2.14",
      grafana: "grafana/grafana:6.5.2"
    }
  },
  monitoring_namespace: {
    apiVersion: "v1",
    kind: "Namespace",
    metadata: {
      name: "prom-grafana-prod"
    }
  },
}