// Imports
@import "tuning.ck"
@import "voice.ck"
@import "voiceOneOrchestration.ck"
@import "voiceTwoOrchestration.ck"
@import "voiceThreeOrchestration.ck"


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
EDO edo19(19);


// Coordination
int voiceDone[3];


// Play Sequences
fun void playVoice(Voice voice, Sequence seqs[], int voiceNum, int voiceDone[]) {
    for (Sequence seq : seqs) {
        spork ~ voice.play(seq);
        seq.repeats * seq.seqDur => now;
    }

    1 => voiceDone[voiceNum];
}


// Define voices and sequences
Voice v1(edo31, env[0], voiceCV, 0);
VoiceOneOrchestration v1orch;

Voice v2(edo31, env[1], voiceCV, 1);
VoiceTwoOrchestration v2orch;

Voice v3(edo31, env[2], voiceCV, 2);
VoiceThreeOrchestration v3orch;


// Go!!
spork ~ playVoice(v1, v1orch.seqs, 0, voiceDone);
spork ~ playVoice(v2, v2orch.seqs, 1, voiceDone);
spork ~ playVoice(v3, v3orch.seqs, 2, voiceDone);


// Wait until all sequences have finished
now => time start;
while (voiceDone[0] == 0 || voiceDone[2] == 0) {
    1::second => now;
}
now - start => dur end;

<<< "Length of piece: ", (end / 44100), "seconds." >>>;
<<< "Goodbye :)" >>>;
