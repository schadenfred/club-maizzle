FROM  stripe/stripe-cli:vx.x.x

RUN  apk  add  pass  gpg-agent

COPY  ./mise/containers/stripe/scripts/entrypoint.sh  /entrypoint.sh

ENTRYPOINT  [ "/entrypoint.sh" ]