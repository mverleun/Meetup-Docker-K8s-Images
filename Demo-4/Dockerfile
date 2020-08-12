FROM nextcloud:13.0.1-non-root-logging

USER root

COPY root /

USER 33

CMD ["/init-script.sh", "apache2-foreground"]