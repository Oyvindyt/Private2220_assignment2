# start med vårres base image, basert på privategpt++
FROM konramberg/privategptpp AS base

# vi bruker port 4000 :)
EXPOSE PORT 4000

# klon repoen vår til /data
WORKDIR /data
RUN git clone https://github.com/Oyvindyt/Private2220_assignment2.git

# lag mappe til modeller
WORKDIR /data/Private2220_assignment2
RUN mkdir models

# last ned et par vanlige modeller
WORKDIR /data/Private2220_assignment2/models
RUN wget https://gpt4all.io/models/ggml-gpt4all-j-v1.3-groovy.bin
RUN wget https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML/resolve/main/llama-2-7b-chat.ggmlv3.q4_0.bin


WORKDIR /data/Private2220_assignment2/deploy-llm-project
