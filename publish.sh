#!/bin/bash

docker build -t antelope-cdt-3.1:latest .
docker tag antelope-cdt-3.1:latest zzptichka/antelope-cdt-3.1:latest
docker push zzptichka/antelope-cdt-3.1:latest