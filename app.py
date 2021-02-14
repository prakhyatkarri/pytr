from flask import Flask

from service import utils


def create_app():
    return Flask(__name__)


app = create_app()


@app.route('/')
def welcome():
    return 'Welcome to this page!'


@app.route('/read')
def read():
    return utils.process()


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)
