FROM python:3.9

WORKDIR /app

#COPY ./start.sh /app/start.sh
#
#RUN chmod +x /app/start.sh

COPY ./requirements.txt /app/requirements.txt

RUN chmod +x /app/requirements.txt

RUN pip install -r /app/requirements.txt


COPY ./ /app


#CMD ["./start.sh"]

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8001"]