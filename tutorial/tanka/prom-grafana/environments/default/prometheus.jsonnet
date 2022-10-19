(import "kubernetes.libsonnet") +
{
  prometheus: {
    deployment: $.k.deployment.new("prometheus", [{
      image: 'prom/prometheus',
      name: $._config.prometheus.name,
      ports: [{
          containerPort: $._config.prometheus.port,
          name: 'api',
      }],
    }]),
    service: $.k.service.new("prometheus", {
        ports: [
          {
            name: '%s-api' % $._config.prometheus.name,
            port: $._config.prometheus.port,
            targetPort: $._config.prometheus.port,
          },
        ],
        selector: {
          name: $._config.prometheus.name,
        },
    }),
  },
}