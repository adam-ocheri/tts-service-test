from flask import Flask, request, jsonify
from flask_cors import CORS
from gtts import gTTS

app = Flask(__name__)
CORS(app)

@app.route('/', methods=['GET'])
def test_front():
    return '<h1>Python Flask Docker Hello!<h1>'

@app.route('/test', methods=['GET'])
def test_service():
    return jsonify({'success': True, 'data': 'THIS IS WORKING'})

@app.route('/generate-audio', methods=['POST'])
def generate_audio():
    text = request.json.get('text')

    print("TTS Request received! Now converting text to audio...")
    print(text)

    if text:
        tts = gTTS(text)
        audio_path = './audio.mp3'  # Update with the desired path and filename
        tts.save(audio_path)
        return jsonify({'success': True, 'audio_path': audio_path})
    else:
        return jsonify({'success': False, 'message': 'Text not provided'})

if __name__ == '__main__':
    app.run(port=5000, debug=True)