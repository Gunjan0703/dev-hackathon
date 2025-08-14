from flask import Flask
import os


app = Flask(__name__)


@app.route('/')
def hello():
    message = "Hello from Gunjan!"
    return f"<h1>{message}</h1>"


@app.route('/health')
def health():
    return{'status':'healthy','version':'1.0'},200
if __name__ == '__main__':
    # Get port from environment variable or default to 80
    port = 80
    app.run(host='0.0.0.0', port=port, debug=False)
