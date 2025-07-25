from ultralytics import YOLO
import gradio as gr

def train_model(data_yaml, epochs, imgsz, model_name):
    # 训练模型
    model = YOLO(model_name)
    results = model.train(data=data_yaml, epochs=epochs, imgsz=imgsz)
    return f"训练完成！结果: {results}"

with gr.Blocks() as demo:
    gr.Markdown("# YOLOv8 训练 GUI")
    data_yaml = gr.Textbox(label="数据配置文件路径", value="data.yaml")
    epochs = gr.Number(label="训练轮数", value=50)
    imgsz = gr.Number(label="图片尺寸", value=640)
    model_name = gr.Dropdown(label="选择模型", choices=["yolov8n.pt", "yolov8s.pt", "yolov8m.pt", "yolov8l.pt", "yolov8x.pt"], value="yolov8n.pt")
    train_btn = gr.Button("开始训练")
    output = gr.Textbox(label="训练结果")

    train_btn.click(
        train_model,
        inputs=[data_yaml, epochs, imgsz, model_name],
        outputs=output,
    )

if __name__ == "__main__":
    demo.launch(server_name="0.0.0.0", server_port=7860)
