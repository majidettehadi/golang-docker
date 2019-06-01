FROM majid7221/debian:stretch

RUN set -ex \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
		g++ \
		gcc \
		libc6-dev \
		make \
		pkg-config \
	&& curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh \
    && rm -rf /var/lib/apt/lists/*

ENV GOLANG_VERSION 1.10.8
ENV Sha256 d8626fb6f9a3ab397d88c483b576be41fa81eefcec2fd18562c87626dbb3c39e

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
