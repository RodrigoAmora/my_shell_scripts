#!/bin/bash

# Remove everything that docker-compose up created.
docker-compose down
# docker-compose down --volumes <-Also removes volumes associated with services.
