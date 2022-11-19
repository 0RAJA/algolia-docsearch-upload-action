FROM alpine

COPY entrypoint.sh /entrypoint.sh
COPY cmd /cmd
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]