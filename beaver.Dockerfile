FROM sociomantictsunami/base:v4
COPY pkg/docker/ /docker-tmp
RUN /docker-tmp/build && rm -fr /docker-tmp
