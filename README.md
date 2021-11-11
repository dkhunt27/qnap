# qnap
QNAP Container Work

## ssh
https://www.qnap.com/en/how-to/knowledge-base/article/how-to-access-qnap-nas-by-ssh/


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