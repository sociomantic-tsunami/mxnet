FROM sociomantictsunami/base:v3
COPY pkg/docker/ /docker-tmp
RUN /docker-tmp/build && rm -fr /docker-tmp
