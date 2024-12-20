FROM nats:2.10-alpine

WORKDIR /nats

COPY nats.conf nats.conf
COPY nats-cert.pem nats-cert.pem
COPY nats-key.pem nats-key.pem

CMD ["-c", "/nats/nats.conf"]