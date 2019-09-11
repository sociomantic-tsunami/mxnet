FROM sociomantictsunami/develbase:v7
COPY pkg/docker/ /docker-tmp
RUN /docker-tmp/build && rm -fr /docker-tmp
