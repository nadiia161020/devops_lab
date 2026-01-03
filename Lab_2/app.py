from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Lab 3: CI/CD with GitHub Actions and Docker is successful!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)