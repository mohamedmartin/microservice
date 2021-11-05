ARG VERSION=alpine
FROM nginx:$VERSION
ARG VERSION
ENV TIMEZONE Europe/Paris
RUN apk update && apk upgrade && apk add bash
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]

