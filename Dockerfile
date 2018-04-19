FROM python:3.6-windowsservercore-ltsc2016

MAINTAINER Erignoux Laurent <laurent.erignoux@ubisoft.com>

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app/

RUN pip install --upgrade pyqt5>=5.10 qdarkstyle>=2.5 pyaml>=17.12 openpyxl>=2.5 cx_Freeze>=5.1

CMD ["python", "setup.py", "build"]
