%{ Fugue on the theme of B-A-C-H by Ryutaro Ikeda %}
\version "2.18.2"
\header {
	title = "Fugue"
	composer = "Ryutaro Ikeda"
	subtitle = "20 Oct 2015"
}

soprano = \new Voice = "1" {
	\voiceOne
	\relative c'' {
	\time 4/4
	\clef "treble"
	\key g \minor
	r1 | r1 |
	r8 bes a c16 b c8 bes16 a g4~ | g8 c4 bes4 a g8~ |
	g8 ees fis4 g8 cis c4 | r8 b8 bes4. r4 g8 |
	aes8 f16 ges f8 a bes4 aes |

	}
}

alto = \new Voice = "2" {
	\voiceTwo
	\relative c' {
	\clef "treble"
	\key g \minor
	r2 r8 ees8 d f16 e | f4 e d cis |
	d4 c16 d ees f g4. f8 | ees4 d c bes |
	a16 bes c d ees8 d16 c bes4 r8 g'8 | aes4. f8 ges ees16 e ees8. des16 |
	ces8 bes a16 bes c4
	}
}

tenor = \new Voice = "3" {
	\voiceThree
	\relative c' {
	\clef "bass"
	\key g \minor
	r8 bes8 a c16 b c4 bes | a8 d4 c bes a16 g |
	f4 fis ees d~ | d4~ d16 e fis g a g fis e d4~ |
	d2 g4 r8 bes | aes8 r4 aes8 ges r4 ees8 |
	d8 f16 ees f8 ees d4 r8 aes' | g8 bes16 a bes4
	}
}

bass = \new Voice = "4" {
	\voiceFour
	\clef "bass"
	\relative c {
	\key g \minor
	r1 | r8 f e g16 fis g4. e8~ |
	e8 d2 c4 bes16 a | g16 a bes c d4 ees d16 c bes c |
	d4 d,4 g4 r8 e' | f8 r4 d8 ees r4. |
	r2 r8 des c ees16 d | ees4 d 
	}
}

\score {
	\layout{}
	\midi{}
	\new StaffGroup <<
	\new Staff = "up" <<
	\soprano
	\alto
	>>
	\new Staff = "down" <<
	\tenor
	\bass
	>>
	>>
}
