FROM alpine:3.8

# Install required packages
RUN apk --no-cache add curl ca-certificates python bash py-yaml coreutils

# Application
COPY verify.sh /

# Entry files
COPY entrypoint.yaml /
COPY docker-entrypoint.py /
COPY startup.sh /

RUN chmod +x /verify.sh
RUN chmod +x /startup.sh
RUN chmod +x /docker-entrypoint.py

ENTRYPOINT ["/docker-entrypoint.py"]

CMD ["/startup.sh"]
