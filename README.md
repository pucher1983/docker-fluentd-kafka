docker-fluentd-kafka
====================

Dockerfile that has [Fluentd](https://www.fluentd.org/) pushing logs to an
[Apache Kafka](http://kafka.apache.org/) topic. Tested where fluentd is
running in a [k8s](https://kubernetes.io/) cluster, but probably usable in
other environments.

Issues
------

- Everything is hard coded.
- k8s logging is turned off at the moment (too much noise).

TODO
----

- parameterize enablement of k8s logging
- parameterize zk/broker bootstrapping to kafka
