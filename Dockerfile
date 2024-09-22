# Вказуємо базовий образ
FROM python:3.11

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо файли проєкту до контейнера
COPY . /app

# Встановлюємо залежності
RUN pip install --upgrade pip
RUN pip install poetry
RUN poetry install

# Вказуємо команду для запуску програми
CMD ["poetry", "run", "python", "main.py"]

