#!/bin/bash

if [[ ! -d gitea-data ]]; then
	mkdir gitea-data
fi

if [[ ! -d nexus-data ]]; then
	mkdir nexus-data
fi

docker-compose up -d

echo '
Gitea (GIT Server)
------------------
Web-server        =>  http://localhost:3000 (self register)
Repository format =>  ssh://git@localhost:222/{owner}/{repo}.git

Nexus (Maven Repository)
------------------------
Web-server        =>  http://localhost:8081 (admin/admin123)
Snapshots URL     =>  http://localhost:8081/repository/maven-snapshots/
Releases URL      =>  http://localhost:8081/repository/maven-releases/
'