FROM ufoym/deepo:all-jupyter-py36-cu100
ENV http_proxy=http://172.24.206.4:3128
ENV https_proxy=http://172.24.206.4:3128
RUN apt-get update -qq   && apt-get install -y -qq python3 libglu1-mesa-dev ffmpeg

COPY requirements.txt .

RUN pip install --upgrade pip \
&& pip install torch==1.6.0 torchvision==0.7.0 \
&& pip install cython scipy \
&& pip install -U 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'  \
&& pip install -U git+https://github.com/youtubevos/cocoapi.git#"egg=pycocotools&subdirectory=PythonAPI" \
&& pip install opencv-python

WORKDIR /home/us000110

RUN groupadd -g 10000 oppous \
&& useradd -g oppous -u 1000110 us000110
