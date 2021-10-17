FROM envoyproxy/envoy:v1.16-latest

COPY envoy-load-balancer.yaml /etc/envoy-load-balancer.yaml

CMD /usr/local/bin/envoy -c /etc/envoy-load-balancer.yaml --base-id 1