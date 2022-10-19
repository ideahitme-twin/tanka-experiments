(import "grafana.jsonnet") +
(import "prometheus.jsonnet") + 
(import "namespace.jsonnet") + 
{
  _config:: {
    grafana: {
      port: 3000,
      name: "grafana",
    },
    prometheus: {
      port: 9090,
      name: "prometheus"
    }
  },
}