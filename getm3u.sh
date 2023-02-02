#!/bin/bash
rm -rf index.m3u
touch index.m3u
cat  cn.m3u >> index.m3u
curl https://iptv-org.github.io/iptv/countries/cn.m3u | sed 's/group-title=".*"/group-title="中国"/g'  >> index.m3u
curl https://iptv-org.github.io/iptv/countries/hk.m3u | sed 's/group-title=".*"/group-title="香港"/g'  >> index.m3u
curl https://iptv-org.github.io/iptv/countries/tw.m3u | sed 's/group-title=".*"/group-title="台湾"/g'  >> index.m3u
curl https://iptv-org.github.io/iptv/countries/jp.m3u | sed 's/group-title=".*"/group-title="日本"/g'  >> index.m3u
curl https://iptv-org.github.io/iptv/countries/kr.m3u | sed 's/group-title=".*"/group-title="韩国"/g'  >> index.m3u
curl https://iptv-org.github.io/iptv/countries/us.m3u | sed 's/group-title=".*"/group-title="美国"/g'  >> index.m3u
curl https://iptv-org.github.io/iptv/countries/uk.m3u | sed 's/group-title=".*"/group-title="英国"/g'  >> index.m3u
curl https://iptv-org.github.io/iptv/countries/fr.m3u | sed 's/group-title=".*"/group-title="法国"/g'  >> index.m3u
curl https://iptv-org.github.io/iptv/countries/de.m3u | sed 's/group-title=".*"/group-title="德国"/g'  >> index.m3u
curl https://iptv-org.github.io/iptv/countries/th.m3u | sed 's/group-title=".*"/group-title="泰国"/g'  >> index.m3u
cp -rf index.m3u ../qeeai.github.io/iptv/
rm -rf index.m3u