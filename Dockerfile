FROM fluentd:v1.9.1-debian-1.0

USER root

RUN gem install fluent-plugin-kafka

COPY ./conf/fluent.conf /fluentd/etc/

ENV FLUENTD_OPT=""
ENV FLUENTD_CONF="fluent.conf"

CMD exec fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
