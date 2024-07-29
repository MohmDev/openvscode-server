FROM gitpod/openvscode-server:latest
EXPOSE 3000
CMD [ "bin/openvscode-server", "--host", "0.0.0.0", "--port", "3000" ]
