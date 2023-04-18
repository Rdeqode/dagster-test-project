FROM python:3.10-slim

# Change working directory
WORKDIR /usr/src/app
ENV DAGSTER_HOME=/usr/src/app

# Install dependencies
RUN pip install dagster dagit dagster-postgres

# Copy source code
COPY  workspace.yaml .
COPY  dagster.yaml /usr/src/app
COPY dagster_example ./dagster_example
CMD ["dagit", "-w", "workspace.yaml","-h", "0.0.0.0", "-p", "3000"]
