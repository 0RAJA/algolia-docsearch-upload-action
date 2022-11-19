FROM alpine

COPY entrypoint.sh /cmd/entrypoint.sh
COPY cmd /cmd/cmd

ENTRYPOINT ["/entrypoint.sh"]