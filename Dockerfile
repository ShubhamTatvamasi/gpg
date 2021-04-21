FROM alpine

RUN apk add --no-cache gnupg

ENTRYPOINT ["gnupg"]
