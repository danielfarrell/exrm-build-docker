FROM msaraiva/elixir

MAINTAINER danielfarrell76@gmail.com

RUN apk --update add erlang-crypto erlang-syntax-tools erlang-parsetools erlang-inets erlang-ssl erlang-public-key erlang-eunit \
    erlang-asn1 erlang-sasl erlang-erl-interface erlang-dev wget git && \
    rm -rf /var/cache/apk/*

RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix hex.info

VOLUME /app
WORKDIR /app

ENV MIX_ENV prod

CMD ["mix", "release"]
