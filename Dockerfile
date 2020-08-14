FROM ubuntu:16.04

MAINTAINER "Angelliza Ceconi" <afceconi@gmail.com>

LABEL name="Docker build for testing robot framework in a americanas.com"

RUN apt-get update \
	&& apt-get install -y build-essential libssl-dev libffi-dev python-dev \
		python-pip python-dev gcc phantomjs firefox \
		xvfb zip wget ca-certificates ntpdate \
		libnss3-dev libxss1 libappindicator3-1 libindicator7 gconf-service libgconf-2-4 libpango1.0-0 xdg-utils fonts-liberation \
	&& rm -rf /var/lib/apt/lists/*
COPY requirements.txt .
RUN pip install -r requirements.txt

# install chrome and chromedriver in one run command to clear build caches for new versions
RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
	&& dpkg -i google-chrome*.deb \
	&& rm google-chrome*.deb \
    && wget -q https://chromedriver.storage.googleapis.com/84.0.4147.30/chromedriver_linux64.zip \
	&& unzip chromedriver_linux64.zip \
	&& rm chromedriver_linux64.zip \
	&& mv chromedriver /usr/bin \
	&& chmod +x /usr/bin/chromedriver



