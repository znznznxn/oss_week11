FROM python:3.9
RUN apt-get update
RUN pip3 install --no-cache-dir fastapi==0.110.3
RUN pip3 install --no-cache-dir 'uvicorn[standard]'

COPY ./main.py /workspace/main.py

ENV STUDENT_ID=2019312289

WORKDIR /workspace/

ENTRYPOINT ["uvicorn"]

CMD ["--host=0.0.0.0", "--port=80", "main:app"]
