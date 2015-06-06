## play-framework

* [`latest` (Dockerfile)](https://github.com/phedoreanu/play-framework/blob/master/Dockerfile)
* [`play-2.1.3` (Dockerfile)](https://github.com/phedoreanu/play-framework/blob/play-2.1.3/Dockerfile)

Docker image with:
* OS: latest Archlinux
* Java: Oracle-jdk-8u45
* Activator: 1.3.4
* Play version: 2.4.0 (damiya)

```
docker run -d \
  -v /path/to/your/play/app:/app:rw \
  -p 80:9000 \
  phedoreanu/play-framework
```
