FROM majid7221/debian:stretch

RUN set -ex \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
		g++ \
		gcc \
		libc6-dev \
		make \
		pkg-config \
    && rm -rf /var/lib/apt/lists/*

ENV GOLANG_VERSION 1.12.4
ENV Sha256 d7d1f1f88ddfe55840712dc1747f37a790cbcaa448f6c9cf51bbe10aa65442f5

RUN set -ex \
	&& url="https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz" \
	&& wget -O go.tgz "$url" \
	&& echo "${Sha256} *go.tgz" | sha256sum -c - \
	&& tar -C /usr/local -xzf go.tgz \
	&& rm go.tgz \
	&& export PATH="/usr/local/go/bin:$PATH" \
	&& go version

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

RUN set -ex \
	&& curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
