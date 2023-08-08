# Text To Speech Service - Flask Server

### Build & Run Docker Image

- Main entry point application file _MUST_ be named **"app.py"**
- Run `$ docker build -t flask_service .` to build the container
- Run the container with the same number of port and target port: `$ docker run -d -p 5000:5000 flask_service`
