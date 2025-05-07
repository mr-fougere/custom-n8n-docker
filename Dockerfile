FROM n8nio/n8n:latest

COPY nodes /home/node/.n8n/custom/nodes

RUN cd /home/node/.n8n/custom && npm install

RUN n8n node-dev build
