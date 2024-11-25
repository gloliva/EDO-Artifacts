// Imports
@import "tuning.ck"
@import "voice.ck"


// Set up CV
3 => int NUM_VOICES;
Step voiceCV[NUM_VOICES];
Envelope env[NUM_VOICES];
Step envCV[NUM_VOICES];

for (int i; i < voiceCV.size(); i++) {
    // Init Step arrays
    voiceCV[i].next(0.);
    envCV[i].next(0.8);

    // Chain to DAC
    voiceCV[i] => dac.chan(i);
    envCV[i] => env[i] => dac.chan(i + voiceCV.size());
}

// Tuning
EDO edo12(12);
EDO edo31(31);
EDO edo22(22);


fun void playVoice1() {
    // Define voice
    Voice voice(edo31, env[0], voiceCV, 0);

    // Starting sequence
    [
        new Note(0, 0, 1., 24::second, 20::second, 1::second )
    ] @=> Note notes[];
    Sequence seq(notes, 1);
    voice.setSequence(seq);

    // Wait to start
    8::second => now;

    spork ~ voice.play();

    repeat (seq.repeats) {
        seq.seqDur => now;
    }

    // End
    env[0].ramp(1::second, 0);
}

fun void playVoice2() {
    [
        new Note(0, 1::second), new Note(18, 1::second),
        new Note(10, 500::ms), new Note(28, 500::ms), new Note(10, 500::ms), new Note(28, 250::ms), new Note(23, 250::ms)
    ] @=> Note notes[];
    Sequence seq(notes, 4);

    Voice voice(edo31, env[1], voiceCV, 1);
    voice.setSequence(seq);
    spork ~ voice.play();

    repeat (seq.repeats) {
        seq.seqDur => now;
    }

    // End
    env[1].ramp(1::second, 0);
}

fun void playVoice3() {
    // Define voice
    Voice voice(edo31, env[2], voiceCV, 2);


    // Start sequence
    [
        new Note(0, 250::ms), new Note(10, 250::ms), new Note(18, 250::ms), new Note(28, 250::ms),
        new Note(0, 250::ms), new Note(10, 250::ms), new Note(18, 250::ms), new Note(28, 250::ms),

        new Note(0, 250::ms), new Note(10, 250::ms), new Note(18, 250::ms), new Note(26, 250::ms),
        new Note(0, 250::ms), new Note(10, 250::ms), new Note(18, 250::ms), new Note(26, 250::ms),

        new Note(0, 250::ms), new Note(9, 250::ms), new Note(18, 250::ms), new Note(26, 250::ms),
        new Note(0, 250::ms), new Note(9, 250::ms), new Note(18, 250::ms), new Note(26, 250::ms),

        new Note(0, 250::ms), new Note(8, 250::ms), new Note(18, 250::ms), new Note(23, 250::ms),
        new Note(0, 250::ms), new Note(8, 250::ms), new Note(23, 250::ms), new Note(18, 250::ms)
    ] @=> Note notes[];
    Sequence seq(notes, 4);

    voice.setSequence(seq);
    spork ~ voice.play();

    repeat (seq.repeats) {
        seq.seqDur => now;
    }

    // End
    env[2].ramp(1::second, 0);
}

spork ~ playVoice1();
// spork ~ playVoice2();
spork ~ playVoice3();

5::minute => now;
