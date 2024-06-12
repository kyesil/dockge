FROM alpine:latest as dockge

RUN mkdir /app
WORKDIR /app
RUN apk add --no-cache nodejs npm  bash util-linux curl --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

RUN npm i -g pnpm concurrently npm-check-updates

COPY ./*.sh /
RUN chmod 777 /*.sh
# RUN sh /init_wg.sh

CMD ["/bin/bash","/init_sv.sh"]
