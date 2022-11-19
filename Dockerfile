FROM alpine

COPY entrypoint.sh /entrypoint.sh
COPY cmd /cmd

ENTRYPOINT ["/entrypoint.sh"]