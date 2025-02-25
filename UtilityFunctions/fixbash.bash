#! /bin/bash

for filename in $(find . -type f -name '*.sh'); do
  sed -i '1 s/sh$/bash/' ${filename}
  sed -i 's/\.sh$/.bash/' ${filename}
  mv ${filename} ${filename%.sh}.bash;
done
