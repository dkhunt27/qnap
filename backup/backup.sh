mkdir -p plex/config
mkdir -p radarr/config4k
mkdir -p radarr/config1080
mkdir -p radarr/configKids
mkdir -p sonarr/config1080
mkdir -p sonarr/configKids
mkdir -p sabnzbd/config4k
mkdir -p sabnzbd/config1080
mkdir -p sabnzbd/configKids
mkdir -p nzbhydra2/config
mkdir -p tautulli/config
mkdir -p ombi/config

mkdir -p radarrSync
mkdir -p speedtest

echo 'backing up plex/config...'
# cp -R /share/CACHEDEV1_DATA/plex/config/* plex/config

echo 'backing up radarr/config4k...'
cp -R /share/CACHEDEV1_DATA/radarr/config4k/* radarr/config4k

echo 'backing up radarr/config1080...'
cp -R /share/CACHEDEV1_DATA/radarr/config1080/* radarr/config1080

echo 'backing up radarr/configKids...'
cp -R /share/CACHEDEV1_DATA/radarr/configKids/* radarr/configKids

echo 'backing up sonarr/config1080...'
cp -R /share/CACHEDEV1_DATA/sonarr/config1080/* sonarr/config1080

echo 'backing up sonarr/configKids...'
cp -R /share/CACHEDEV1_DATA/sonarr/configKids/* sonarr/configKids

echo 'backing up sabnzbd/config4k...'
cp -R /share/CACHEDEV1_DATA/sabnzbd/config4k/* sabnzbd/config4k

echo 'backing up sabnzbd/config1080...'
cp -R /share/CACHEDEV1_DATA/sabnzbd/config1080/* sabnzbd/config1080

echo 'backing up sabnzbd/configKids...'
# cp -R /share/CACHEDEV1_DATA/sabnzbd/configKids/* sabnzbd/configKids

echo 'backing up nzbhydra2/config...'
cp -R /share/CACHEDEV1_DATA/nzbhydra2/config/* nzbhydra2/config

echo 'backing up tautulli/config...'
cp -R /share/CACHEDEV1_DATA/tautulli/config/* tautulli/config

echo 'backing up ombi/config...'
cp -R /share/CACHEDEV1_DATA/ombi/config/* ombi/config

echo 'backing up radarrSync...'
cp -R /share/CACHEDEV1_DATA/radarrSync/* radarrSync

echo 'backing up speedtest...'
cp -R /share/CACHEDEV1_DATA/speedtest/* speedtest

# to run
# ssh into qnap
# use `df -h` to find external drive
# cd /share/external/DEV3304_1
# . backup.sh
