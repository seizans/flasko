# coding=utf8

from flask import Flask, jsonify


app = Flask(__name__)


@app.route('/')
def hello():
    return jsonify({
        'foo': 'bar',
        'spam': 'ham',
    })


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
