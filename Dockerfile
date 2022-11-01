FROM python:3.10-bullseye

WORKDIR /usr/src

RUN python -v \ 
    && mkdir sd \
    && cd sd \ 
    && git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git \ 
    && cd stable-diffusion-webui \
    && apt update \
    && DEBIAN_FRONTEND=noninteractive apt-get install aria2 -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install ffmpeg libsm6 libxext6 -y \
    # && aria2c --summary-interval=10 -d ./models/Stable-diffusion/ -x 3 --allow-overwrite=true https://pub-2fdef7a2969f43289c42ac5ae3412fd4.r2.dev/animefull-latest.tar \
    # && tar xf ./models/Stable-diffusion/animefull-latest.tar 
    && aria2c --summary-interval=10 -d ./models/Stable-diffusion/ -x 3 --allow-overwrite=true https://huggingface.co/hakurei/waifu-diffusion-v1-4/resolve/main/vae/kl-f8-anime.ckpt

WORKDIR /usr/src/sd/stable-diffusion-webui

RUN mkdir repositories \
    && git clone https://github.com/CompVis/stable-diffusion.git repositories/stable-diffusion \
    && git clone https://github.com/CompVis/taming-transformers.git repositories/taming-transformers \ 
    && git clone https://github.com/sczhou/CodeFormer.git repositories/CodeFormer \ 
    && git clone https://github.com/salesforce/BLIP.git repositories/BLIP \ 
    && pip install transformers==4.19.2 diffusers invisible-watermark --prefer-binary \
    && pip install git+https://github.com/crowsonkb/k-diffusion.git --prefer-binary \
    && pip install gfpgan \
    && pip install -r repositories/CodeFormer/requirements.txt --prefer-binary \
    && pip install -r requirements.txt --prefer-binary \
    && pip install -U numpy --prefer-binary

CMD [ "python", "./launch.py", "--skip-torch-cuda-test","--share","--listen" ]
