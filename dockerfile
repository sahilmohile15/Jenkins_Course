FROM ubuntu
RUN apt-get update && apt-get upgrade
RUN apt-get install python3-pip
RUN apt-get install python3-dev
RUN apt-get install python3-setuptools
RUN apt-get install python3-venv
RUN apt-get install build-essential libssl-dev libffi-dev

CMD ["echo", "Python has been installed successfully."]

CMD ["python", "test-file.py"]