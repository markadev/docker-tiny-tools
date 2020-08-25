FROM alpine:3

RUN apk --no-cache add \
	bash bind-tools coreutils curl iputils jq libxml2-utils net-tools \
	netcat-openbsd socat tcptraceroute

RUN curl -sL -o /usr/local/bin/yq https://github.com/mikefarah/yq/releases/download/3.3.2/yq_linux_amd64 && \
	chmod a+x /usr/local/bin/yq

CMD /bin/bash
