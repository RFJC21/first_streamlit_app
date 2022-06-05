FROM python:3.10.4

WORKDIR /app_salary_docker

COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8501

COPY . /app_salary_docker

ENTRYPOINT ['streamlit', 'run']

CMD ['salary_app.py']