#!/bin/bash

export ORACLE11_DB_USER=SYSTEM
export ORACLE11_DB_PASSWORD=oracle

docker-compose -f "docker-compose-oracle11g.yml" up
