# ebms-perftest-setup

Simple scripts to set up and run a basic performance test environment.

## Prerequisites

- Docker and docker compose
- A built EbMS environment (core/admin images and configs)
- JMeter if running tests outside containerized flow

## Typical workflow

1. Prepare environment variables and scripts:

```sh
cd ebms-perftest-setup
chmod +x *.sh
```

2. Set up test environment:

```sh
./setup-testenv.sh
```

3. Start target environments (example):

```sh
./digipoort.sh
./overheid.sh
```

4. Run performance tests:

```sh
./run-tests.sh
```

5. Stop and clean up:

```sh
./kill-digipoort.sh
./kill-overheid.sh
```

## Included assets

- jmeter_data/ - JMeter plans for REST and SOAP tests
- sql/ - SQL helpers for environment setup/reset
- digipoort/ and overheid/ - profile-specific embedded properties
