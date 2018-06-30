#!/bin/bash -xe
# serverspec.sh - RSpec tests for servers
echo -e "==> Installing Serverspec"
sudo gem install serverspec

# move and set rake-handler
# bypasses /opt/sensu/embedded/bin/rake vs /usr/bin/rake etc
cd /tmp/tests ; rake=$(which rake |head -n1 |awk '{print$3}')
echo -e "==> Running integration tests for AMI"
$rake spec
