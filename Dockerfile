FROM alpine:3

RUN apk --no-cache add \
	bash bind-tools coreutils curl iputils jq net-tools \
	netcat-openbsd socat tcptraceroute

CMD /bin/bash
