# Docker rasmimiz uchun asos: python 3.10 (eng yengil versiyasi)
FROM python:3.10-slim

# Ish katalogini o‘rnatamiz
WORKDIR /app

# Hamma fayllarni konteynerga nusxalaymiz
COPY . .

# Konteyner ishga tushganda bajariladigan buyruq
CMD ["python3", "-c", "print('Hello from Docker container!')"]

