#!/bin/bash
for cmd in g++ gas head make ld ping6 tail traceroute6 $( ls /usr/share/grc/ ); do
  cmd="${cmd##*conf.}"
  type "${cmd}" >/dev/null 2>&1 && echo "alias '${cmd}"="$( which grc) --colour=auto ${cmd}'" >> ~/.grc_aliases
done

echo '' >> /etc/grc.conf
echo '# curl' >> /etc/grc.conf
echo '(^|[/\w\.]+/)g?curl\s?' >> /etc/grc.conf
echo 'conf.curl' >> /etc/grc.conf
