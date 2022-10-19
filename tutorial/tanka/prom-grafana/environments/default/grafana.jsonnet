(import "kubernetes.libsonnet") +
{
  grafana: {
    deployment: $.k.deployment.new("grafana", [{
      image: 'grafana/grafana',
      name: 'grafana',
      ports: [{
          containerPort: 3000,
          name: 'ui',
      }],
    }]),
    service: $.k.service.new("grafana", {
        ports: [{
            name: '%s-ui' % $._config.grafana.name,
            port: $._config.grafana.port,
            targetPort: $._config.grafana.port,
        }],
        selector: {
          name: $._config.grafana.name,
        },
        type: 'NodePort',
    }),
  },
}