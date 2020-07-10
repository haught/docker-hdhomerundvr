## HD HomeRun DVR

This container image run the HD HomeRun DVR application.

### docker-compose
```yml 
---

version: '3'

services:
  hdhomerundvr:
    image: 'haught/hdhomerundvr:latest'
    environment:
      - TZ=America/New_York
    volumes:
      - '/path/to/save/videos:/data'
    restart: unless-stopped
```
