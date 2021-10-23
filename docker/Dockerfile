FROM python:3.10

WORKDIR /usr/src/app

ARG DEBIAN_FRONTEND="noninteractive"

RUN apt update && apt-get install -y \
    ffmpeg \
    python3-gi \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly

COPY ./requirements.txt .

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x ./app.sh

CMD [ "./app.sh" ]
