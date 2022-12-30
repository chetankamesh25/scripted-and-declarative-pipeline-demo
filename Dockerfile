FROM python:alpine3.7
MAINTAINER Prasanjit "nixgurus@gmail.com"
# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 5001
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
