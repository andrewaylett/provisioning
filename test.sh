#!/bin/bash

# Tests that the web server on our Vagrant VM is up and serving the page we
# expect.

# (a) our reference on disk
# (b) downloaded live from the Vagrant VM.
diff -u salt/web/index.html <(curl http://localhost:8080)

# diff exits with a return code of 0 when there are no differences.
if [ $? -eq 0 ]
then
  echo "Test Passed"
else
  echo "Test Failed -- see other output for details"
fi
