# PHP Laravel environment
Docker environment required to run Laravel (based on official php and mysql docker hub repositories).

[![Actions Status](https://github.com/systemsdk/docker-apache-php-laravel/workflows/Laravel%20App/badge.svg)](https://github.com/systemsdk/docker-apache-php-laravel/actions)
[![CircleCI](https://circleci.com/gh/systemsdk/docker-apache-php-laravel.svg?style=svg)](https://circleci.com/gh/systemsdk/docker-apache-php-laravel)
[![Coverage Status](https://coveralls.io/repos/github/systemsdk/docker-apache-php-laravel/badge.svg)](https://coveralls.io/github/systemsdk/docker-apache-php-laravel)
[![Latest Stable Version](https://poser.pugx.org/systemsdk/docker-apache-php-laravel/v)](https://packagist.org/packages/systemsdk/docker-apache-php-laravel)
[![Total Downloads](https://poser.pugx.org/systemsdk/docker-apache-php-laravel/downloads)](https://packagist.org/packages/systemsdk/docker-apache-php-laravel)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

[Source code](https://github.com/systemsdk/docker-apache-php-laravel.git)

## Requirements
* Docker version 18.06 or later
* Docker compose version 1.22 or later
* An editor or IDE
* MySQL Workbench

Note: OS recommendation - Linux Ubuntu based.

## Components
1. Apache 2.4
2. PHP 8.2 (Apache handler)
3. MySQL 8
4. Laravel 9
5. React
6. NextJs

## Setting up DEV environment

4.Build, start and install the docker images from your terminal:
```bash
make env-dev
make build
make start
make composer-install

make migrate
make storage-link

make key-generate
```