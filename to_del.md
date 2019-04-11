## PURPOSE

The directory contains all files, that are used to create a Docker image with necessary Cypress tests (depending on env).

## SCOPE

- **authZeroData.js** - defines on which environment Cypress tests will be running, the template is filled up on the CI step during Docker image creation;
- **run_cypress.sh** - starts Cypress tests within Docker container;
- **version** - contains versions for Docker images per environment, that will be used as a tag for appropriate Docker image;
- **db** - contains sql-scripts to create DB which defines enabled/disabled Cypress tests for specific env (used by [sql-migration-service](https://github.com/90poe/sql-migration-service));
- **Dockerfile** - describes steps to create a Docker image with Cypress tests.

## ADDITIONAL INFO

[CI pipeline](https://concourse.tools.devopenocean.studio/teams/testing/pipelines/cypress-in-docker) that builds following Docker images:
   - [docker-cypress-development](https://quay.io/repository/90poe/docker-cypress-development?tab=tags) - for Development env
   - [docker-cypress-test](https://quay.io/repository/90poe/docker-cypress-test?tab=tags) - for Test env
   - [docker-cypress-staging](https://quay.io/repository/90poe/docker-cypress-staging?tab=tags) - for Staging env
   - [docker-cypress-production](https://quay.io/repository/90poe/docker-cypress-production?tab=tags) - for Production env
   - [docker-cypress-failed](https://quay.io/repository/90poe/docker-cypress-failed?tab=tags) - with intentionally broken Cypress test, to test Nagios itself
