FROM nethacker/ubuntu-18-04-python-3:python-3.7.3
MAINTAINER Prasanjit "nixgurus@gmail.com"
# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

RUN pip install -r /root/requirements.txt

WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
