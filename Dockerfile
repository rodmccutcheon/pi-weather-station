# docker build -t pi-weather-station .
# docker run -i -t -v ${PWD}:/pi-weather-station pi-weather-station /bin/sh
# python -m unittest discover -s pi-weather-station/test/

FROM python:2.7.15-alpine3.8

RUN apk add --update build-base

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#ENTRYPOINT [ "python", "-m", "unittest", "discover", "-s", "test/" ]
