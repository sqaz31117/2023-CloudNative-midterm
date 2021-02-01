FROM python:3.6

ADD . /code
WORKDIR /code
RUN pip install --upgrade pip setuptools wheel \
	&& pip install -r requirements.txt;
CMD ["python", "app.py"]
