# YOLOv8 Train

本仓库用于 YOLOv8 模型的训练环境搭建（基于 Ultralytics YOLO）。

## 快速开始

### 1. 使用 Docker 启动

```bash
docker build -t yolov8-train .
docker run -it --rm --gpus all yolov8-train
```

### 2. 本地环境安装

建议使用 Python 3.10。
```bash
pip install -r requirements.txt
```

### 3. 训练自己的数据

```bash
yolo task=detect mode=train model=yolov8n.pt data=data.yaml epochs=50 imgsz=640
```

> 详细教程请参考 [Ultralytics YOLOv8 官方文档](https://docs.ultralytics.com/)

---

## 文件说明

- `requirements.txt`：Python 依赖包
- `Dockerfile`：Docker环境配置
- `README.md`：说明文件
