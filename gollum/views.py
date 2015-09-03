import flask
import sys
import gollum

app = flask.Flask(__name__)


@app.route('/')
def root():
    return flask.jsonify({
        'name': 'gollum api',
        'version': gollum.__version__,
        'python': sys.version
    })
