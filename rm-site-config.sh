#!/bin/bash
#
# These files get created as part of the install process, so we can safely remove them from exported config
# This helps to eliminate files that need the FQDN fixed up between environments.
rm -f amster/global/Sites/site1.json
rm -f amster/global/Servers/01/DirectoryConfiguration.json
rm -f amster/global/Realms/root.json

#rm -f amster/global/PasswordReset.json


# Remove CTS config until we get it working
#rm -f amster/global/DefaultCtsDataStoreProperties.json
#rm -f amster/global/Servers/01/CtsDataStoreProperties.json
