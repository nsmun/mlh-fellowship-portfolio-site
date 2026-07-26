#!/bin/bash

cd
cd mlh-fellowship-portfolio-site/

git fetch && git reset origin/new_stuff --hard

docker compose down
docker compose -f docker-compose.prod.yml up -d --build
