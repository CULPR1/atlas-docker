# FROM python:3.12

# RUN apt-get update && \
#     apt-get install -y --no-install-recommends git && \
#     rm -rf /var/lib/apt/lists/*

# WORKDIR /app

# # Clone entire repository (remove .git to prevent conflicts)
# RUN git clone https://github.com/CULPR1/atlas-fastapi.git . && \
#     rm -rf .git

# # Install dependencies
# RUN pip install -r requirements.txt

# # Set Python path
# ENV PYTHONPATH=/app


FROM python:3.12

RUN apt-get update && \
    apt-get install -y --no-install-recommends git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Proper git clone with verification
RUN git clone buyer-edits https://github.com/CULPR1/atlas-fastapi.git .



# RUN cp -a /app/atlas-fastapi/. /app/

# RUN rm -rf /app/repo

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

ENV PYTHONPATH=/app:/app/atlas-fastapi