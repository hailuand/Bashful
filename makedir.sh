#!/bin/bash
if mkdir a; then
  echo "ok";
else
  echo "error";
fi

# Commands return values betwen 0 - 255. 0 means success, which is why we can
# evaluate this in conditionals.
# Good habit: make sure your porgram exists with a correct value
