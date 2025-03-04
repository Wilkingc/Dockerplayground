FROM python:3.9-slim 

ENV PYTHONUNBUFFERED=1

WORKDIR /workspace

COPY requirements.txt .
 
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
