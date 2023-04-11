FROM python:3.10-slim

# Change working directory
WORKDIR /usr/src/app
ENV DAGSTER_HOME=/usr/src/app

# Install dependencies
RUN pip install dagster dagit

# Copy source code
COPY  workspace.yaml .
COPY dagster_example ./dagster_example

CMD ["dagit", "-w", "workspace.yaml", "-p", "3000"]
