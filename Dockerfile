FROM python:3.10

WORKDIR /workspace

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY run_gui.py .

EXPOSE 7860

CMD ["python", "run_gui.py"]
