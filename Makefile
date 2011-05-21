IN="short" "demo"

all: flac ogg mp3

flac:
	for filename in $(IN); do flac -f "audio/$${filename}.wav" ; done;

ogg: 
	for filename in $(IN); do oggenc "audio/$${filename}.wav" ; done;

mp3:
	for filename in $(IN); do lame "audio/$${filename}.wav" "audio/$${filename}.mp3" ; done;

clean:
	rm audio/*.flac audio/*.ogg audio/*.mp3

