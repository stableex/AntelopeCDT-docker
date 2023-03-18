# AntelopeCDT-docker
Docker image to build Antelope projects

To use, create build script for your project, i.e. `<path>/StableEx/sx.fast/scripts/build-docker.sh`:

```
#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
BASE_DIR=$(dirname "$(dirname "$SCRIPT_DIR")")

docker run --rm -v ${BASE_DIR}:/app zzptichka/antelope-cdt-3.1 sh -c "cd sx.fast && cdt-cpp fast.sx.cpp -I .."

```

Ater running it you should have wasm and abi files in your project directory.