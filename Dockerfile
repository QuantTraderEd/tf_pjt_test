# work well tf-1.15.0 @3.7-slim
FROM python:3.7-slim

WORKDIR /app

ADD . .

RUN python3 -m pip install -U pip
RUN pip3 install -r requirements.txt

# update submodule
# RUN git submodule update --init --recursive

CMD ["python3",  "src/main.py"]
