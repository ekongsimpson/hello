from flask import Flask, render_template
import nltk

nltk.download('wordnet')
nltk.download('omw')

from nltk.corpus import wordnet

app = Flask(__name__)

@app.route('/')
def index():
    default_data = {
        "word": "example",
        "definition": ["Click on the link below and replace the word 'example' in the url with one of your choice to get its definition."]
    }
    return render_template('index.html', data=default_data)

@app.route('/api/v1/<word>/<definition>')
def api_v1(word, definition):
    # Get definitions of a word
    synsets = wordnet.synsets(word)
    definitions = [syn.definition() for syn in synsets]

    data = {
        "word": word,
        "definition": definitions
    }

    # Pass the values to the template
    return render_template('api.html', data=data)


if __name__ == '__main__':
    app.run(debug=True, port=5000)