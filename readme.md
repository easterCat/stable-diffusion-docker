# doc

## 创建容器 打打开uTools

```shell
docker run -it -p 7860:7860 liudehua123/stable-diffusion-python:latest /bin/bash
```

## 正常的启动

```shell
python ./launch.py --skip-torch-cuda-test --listen
```

## 没有显卡启动

```shell
python ./launch.py --precision full --no-half --skip-torch-cuda-test --listen
```
