FROM python:3.9-slim

WORKDIR /app

# Copy requirements dan install dependensi
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy seluruh kode aplikasi
COPY . .

# Expose port 5000
EXPOSE 5000

# Jalankan aplikasi
CMD ["python", "app.py"]
