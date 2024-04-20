#!/bin/bash
# This installer will install Metasploit from source

# Fetch source from official repository
URL=https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb

# Finish installation
curl $URL > msfinstall && chmod 755 msfinstall && ./msfinstall
