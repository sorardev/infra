FROM docker:19.03.15-dind
RUN apk upgrade --available && apk --update add docker-compose



