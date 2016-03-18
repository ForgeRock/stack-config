#!/bin/bash
# Example of how to export a remote server config
/Users/warren/packages/openidm/cli.sh  configexport --url http://openam.example.com:30100/openidm -u openidm-admin:openidm-admin `pwd`/conf


# Example of using curl to dump config
curl -u openidm-admin:openidm-admin -k \
    "http://openam.example.com:30100/openidm/config?_queryFilter=_id+sw+\"\"&_prettyPrint=true"
