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

### 一些model库安装 嗯

```shell
// 7g版本
aria2c --summary-interval=10 -d ./models/Stable-diffusion/ -x 3 --allow-overwrite=true --file-allocation=prealloc https://pub-2fdef7a2969f43289c42ac5ae3412fd4.r2.dev/animefull-latest.tar \

// 4g版本
aria2c --summary-interval=5 -x 3 --allow-overwrite=true --file-allocation=prealloc -Z https://pub-2fdef7a2969f43289c42ac5ae3412fd4.r2.dev/naifu.tar \

```

- 7g版本 : <https://pub-2fdef7a2969f43289c42ac5ae3412fd4.r2.dev/animefull-latest.tar>
- 7g版本 : <https://pub-2fdef7a2969f43289c42ac5ae3412fd4.r2.dev/animefull-latest.tar>
- 7g版本 : <https://pub-2fdef7a2969f43289c42ac5ae3412fd4.r2.dev/naifu.tar>
- 4g版本 : <https://pub-2fdef7a2969f43289c42ac5ae3412fd4.r2.dev/naifu.tar>
- 4g版本磁链 : magnet:?xt=urn:btih:4a4b483d4a5840b6e1fee6b0ca1582c979434e4d&dn=naifu&tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce
