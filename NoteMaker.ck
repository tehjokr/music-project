float notestream[85];
Math.pow(2.0,1.0/12.0) => float a;
SqrOsc f => dac;
.3 => f.gain;
for( 0 => int i; i < 85; i++ ) {
   <<< 440.0 * Math.pow(a,i-45) => notestream[i] => f.freq >>>;
   if (i % 7 == 0) 120::ms => now;
}

