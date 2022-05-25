@quay.io/kiegroup/kogito-management-console
@quay.io/kiegroup/kogito-task-console
@quay.io/kiegroup/kogito-data-index-ephemeral
@quay.io/kiegroup/kogito-data-index-infinispan
@quay.io/kiegroup/kogito-data-index-mongodb
@quay.io/kiegroup/kogito-data-index-oracle
@quay.io/kiegroup/kogito-data-index-postgresql
@quay.io/kiegroup/kogito-jobs-service-ephemeral
@quay.io/kiegroup/kogito-jobs-service-infinispan
@quay.io/kiegroup/kogito-jobs-service-mongodb
@quay.io/kiegroup/kogito-jobs-service-postgresql
@quay.io/kiegroup/kogito-trusty-infinispan
@quay.io/kiegroup/kogito-trusty-postgresql
@quay.io/kiegroup/kogito-trusty-redis
@quay.io/kiegroup/kogito-trusty-ui
@quay.io/kiegroup/kogito-jit-runner
Feature: kogito supporting services common feature

Scenario: verify if the management console jar is available on /home/kogito
  When container is started with command bash
  Then run sh -c 'ls /home/kogito/bin/quarkus-app/quarkus-run.jar' in container and immediately check its output for /home/kogito/bin/quarkus-app/quarkus-run.jar