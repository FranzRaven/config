<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac    -M1  ;;;realtime audio out and midi in 
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o midipitchbend.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 32
nchnls = 2
0dbfs  = 1

instr 1

midinoteonoct p4, p5				;gets a MIDI note number value as octave-point-decimal value into p4, and MIDI velocity into p5

kvel = p5/127					;scale midi velocity to 0-1
kpb init 0
midipitchbend kpb
printk2 kpb					;display the pitch-bend value when it changes
koct =	p4+kpb					;add pitchbend values to octave-point-decimal value
kcps =	cpsoct(koct)				;convert octave-point-decimal value into Hz			
kenv madsr 0.5, 0.8, 0.8, 0.5			;amplitude envelope multiplied by
asig vco2 kenv*kvel, kcps			;velocity value			
     outs  asig, asig				

endin
</CsInstruments>
<CsScore>
f 0 30	;runs for 30 seconds
f 2 0 4096 10 1	

i 1 0 2 8.000 100	; play these notes from score as well
i 1 + 2 8.917 100
e

</CsScore>
</CsoundSynthesizer>

