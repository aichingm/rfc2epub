FROM php:7.2-alpine

RUN apk add --no-cache \
      libzip-dev \
      zip \
      tidyhtml-dev \
    && docker-php-ext-install zip tidy
COPY . .
ENTRYPOINT ["./rfc2epub"]
