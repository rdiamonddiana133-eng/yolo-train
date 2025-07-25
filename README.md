# YOLOv8 Train with Web GUI

本项目集成了 Ultralytics YOLOv8 训练环境和网页可视化界面（Gradio）。

## 快速启动

### 1. Docker方式

```bash
docker build -t yolov8-train .
docker run -it --rm -p 7860:7860 --gpus all yolov8-train
```

启动后，在浏览器访问 [http://localhost:7860](http://localhost:7860) 即可使用可视化训练界面。

### 2. 本地方式

```bash
pip install -r requirements.txt
python run_gui.py
```
然后在浏览器访问 http://localhost:7860

## 文件说明

- `requirements.txt`：Python 依赖包
- `Dockerfile`：Docker环境配置
- `run_gui.py`：Gradio 网页训练脚本
- `README.md`：说明文件

> 详细教程请参考 [Ultralytics YOLOv8 官方文档](https://docs.ultralytics.com/)
