#!/bin/bash

URL=https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb
curl $URL > msfinstall && chmod 755 msfinstall && ./msfinstall
