# Base com CUDA 12.9 no Ubuntu 24.04
FROM nvidia/cuda:12.9.1-cudnn-devel-ubuntu24.04

# Informações sobre o autor/opcional
LABEL maintainer="rodrigo.domingues@lps.ufrj.br"

# Evitar prompts interativos
ENV DEBIAN_FRONTEND=noninteractive

# Instalar dependências básicas e Python pip
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      python3 python3-pip python3-dev python3-venv build-essential \
 && rm -rf /var/lib/apt/lists/*

# Instalar PyTorch 2.7 com CUDA 12.9 via pip
RUN python3 -m venv /venv
RUN /venv/bin/pip install --no-cache-dir \
    torch

COPY requirements.txt /

RUN /venv/bin/pip install -r requirements.txt

CMD /bin/bash




