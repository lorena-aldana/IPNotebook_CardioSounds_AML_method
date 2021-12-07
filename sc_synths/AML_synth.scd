//AML
(
SynthDef(\AML, {
	arg amp=1,freq=200,pan=0,out=0, numharm=2;
	var signal;
	signal= Blip.ar(mul:amp,freq:freq, numharm: numharm)*
		EnvGen.kr(Env.perc(attackTime: 0.01, releaseTime: 0.2, level: 01, curve: -4), doneAction:2);
	OffsetOut.ar(out,signal!2);
}).add;
);

Synth.new("AML", [\freq, 400, \numharm, 2])

