#this is a docker file for test Server
FROM ubuntu

CMD ["echo", "Installing required dependencies and packages...."]
RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3-pip -y
RUN apt-get install python-pip -y
RUN apt-get install python3-dev -y
RUN apt-get install python3-setuptools -y
RUN apt-get install python3-venv -y
RUN apt-get install build-essential libssl-dev libffi-dev -y

CMD ["echo", "Python has been installed successfully."]

#COPY ./requirements.txt /app/requirements.txt

#WORKDIR /app

#RUN pip install -r requirements.txt

#COPY . /app

ENTRYPOINT [ "python" ]

CMD ["python", "test-file.py"]
