SOUNDFONT=/usr/share/sounds/sf2/FluidR3_GM.sf2
SOURCE=b-a-c-h2015.ly
TARGET=$(patsubst %.ly,%.pdf,$(SOURCE))
MIDI=$(patsubst %.ly,%.midi,$(SOURCE))
WAV=$(patsubst %.ly,%.wav,$(SOURCE))

all: $(TARGET)

wav: $(WAV)

$(TARGET): $(SOURCE)
	lilypond $<

$(WAV): $(MIDI)
	fluidsynth -F $@ $(SOUNDFONT) $<

.PHONY: clean

clean:
	rm 
