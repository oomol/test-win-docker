FROM ubuntu:18.04

RUN --mount=type=secret,id=test_secret T=`cat /run/secrets/test_secret` && \
  echo "T=$T" > /t

RUN cat /t

CMD sh