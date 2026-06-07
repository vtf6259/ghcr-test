FROM rust:alpine3.23 AS builder

COPY . /code

WORKDIR /code
RUN cargo build --release

FROM alpine:3.22.4

VOLUME /pers

COPY --from=builder /code/target/release/ghcr-test /bin/ghcr-test

CMD ["/bin/ghcr-test"]
