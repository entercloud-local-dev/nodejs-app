#!/bin/bash -xe

export TARGET_HOST=127.0.0.1

# move and set rake-handler
# bypasses /opt/sensu/embedded/bin/rake vs /usr/bin/rake etc
cd /tmp/tests ; rake=$(which rake |head -n1 |awk '{print$1}')
echo -e "==> Running integration tests for AMI"

$rake default:serverspec
