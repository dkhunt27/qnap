# qnap
QNAP Container Work


## Accessing the endpoints
Replace 192.168.0.227 with your QNAP IP

  - tautulli: http://192.168.0.227:12701
  - ombi: http://192.168.0.227:12702
  - radarr4k: http://192.168.0.227:12710
  - radarr1080: http://192.168.0.227:12711
  - sonarr1080: http://192.168.0.227:12720 
  - sabnzbd4k: http://192.168.0.227:12730
  - sabnzbd1080: http://192.168.0.227:12732
  - nzbhydra2: http://192.168.0.227:12740
  - speedtest: http://192.168.0.227:8088


## ssh
https://www.qnap.com/en/how-to/knowledge-base/article/how-to-access-qnap-nas-by-ssh/
```

```


## How to update your QNAP
To update your qnap to the latest version, you will need to copy the files from this repo and replace them in your container station service definitions.  This can all be down in a browser with just two tabs.  In the steps below, will use (qnap) or (github) to identify what tab the instruction pertains to.

### Upgrading Plex docker service
1) (qnap) Log into QNAP admin
2) (qnap) Open `Container Station`
3) (github) Navigate to `plex/plex.dc.yml` file
4) (github) Then click the `Raw` button in the right corner in the file view
5) (github) Copy the entire file contents (CTRL+A, CTRL+C)
  + Note the line after plex, image: linuxserver/plex:version-#.#.#.####-######
6) (qnap) Find the row with the name `plex` and click the `edit icon` (pencil/paper) in the Actions column
7) (qnap) Replace the entire YAML with the copied file contents from github (should be in clipboard already, so CTRL+A, CTRL+V)
  + To double check: note the line after plex, image: linuxserver/plex:version-#.#.#.####-###### should now match what is in github 
8) (qnap) Click `Validate YAML` and then click `Apply`
9) (qnap) This might take a few seconds for `plex` to start running again, but you are done and `Plex` has been upgraded

### Upgrading Plex Support docker service
1) (qnap) Log into QNAP admin
2) (qnap) Open `Container Station`
3) (github) Navigate to `plex/plex-support.dc.yml` file (might need to hit `back` if still on raw view from above steps)
4) (github) Then click the `Raw` button in the right corner in the file view
5) (github) Copy the entire file contents (CTRL+A, CTRL+C)
  + Note the line after radarr4k, image: linuxserver/radarr:version-#.#.#.####
6) (qnap) Find the row with the name `plexsupport` and click the `edit icon` (pencil/paper) in the Actions column
7) (qnap) Replace the entire YAML with the copied file contents from github (should be in clipboard already, so CTRL+A, CTRL+V)
  + To double check: note the line after radarr4k, image: linuxserver/radarr:version-#.#.#.#### should now match what is in github 
8) (qnap) Click `Validate YAML` and then click `Apply`
9) (qnap) This might take a few seconds for `plexsupport` to start running again, but you are done and `Plex Support` has been upgraded

### Upgrading Speed Test docker service
1) (qnap) Log into QNAP admin
2) (qnap) Open `Container Station`
3) (github) Navigate to `speed-test/speedtest.dc.yml` file (might need to hit `back` if still on raw view from above steps)
4) (github) Then click the `Raw` button in the right corner in the file view
5) (github) Copy the entire file contents (CTRL+A, CTRL+C)
6) (qnap) Find the row with the name `speedtest` and click the `edit icon` (pencil/paper) in the Actions column
7) (qnap) Replace the entire YAML with the copied file contents from github (should be in clipboard already, so CTRL+A, CTRL+V)
8) (qnap) Click `Validate YAML` and then click `Apply`
9) (qnap) This might take a few seconds for `speedtest` to start running again, but you are done and `Speed Test` has been upgraded

### Installing from scratch

- Install Container Station
- Create new application called "plexsupport" and paste plex-single/plex-support.dc.yml
- Create new application called "plex" and paste plex-single/plex.dc.yml
- Follow the configuration screens for setting up the various applications
- When they are online, create the following Shared Folders in FileStation for convenience
  - name: sonarr path: /sonarr
  - name: radarr path: /radarr
  - name: sabnzbd path: /sabnzbd
  - name: nzbhydra2 path /nzbhydra2
  - name: plex path: /plex
- When setting up plex, point your TV library to /plex/series folder and Movie library to /plex/movies folder