# Python support can be specified down to the minor or micro version
# (e.g. 3.6 or 3.6.3).
# OS Support also exists for jessie & stretch (slim and full).
# See https://hub.docker.com/r/library/python/ for all supported Python
# tags from Docker Hub.
FROM python:3.7.3-stretch
RUN apt-get update && apt-get -y install ffmpeg

# set timezone
# RUN cp /usr/share/zoneinfo/US/Pacific /etc/localtime && echo "US/Pacific" >  /etc/timezone

LABEL Name=tesla-videos Version=0.0.1
RUN python3 -m pip install tesla_dashcam

WORKDIR /app
ADD . /app

# Using pip:
CMD ["python3","./tesla-cam.py"]
