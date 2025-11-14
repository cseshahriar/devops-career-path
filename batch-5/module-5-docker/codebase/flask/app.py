from flask import Flask, jsonify
import os

app = Flask(__name__)


@app.route('/')
def home():
    ''' Home '''
    return jsonify({
        "message": "Hello from Docker!",
        "environment": os.getenv('ENV', 'development')
    })


@app.route('/health')
def health():
    ''' health '''
    return jsonify({"status": "healthy"})


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
