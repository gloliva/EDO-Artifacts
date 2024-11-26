@import "notes.ck"
@import "tuning.ck"


public class Voice {
    // CV handling
    Step @ voiceCV[];
    -1 => int voiceIdx;

    // Amp env
    Envelope @ env;

    // Sequence
    Tuning @ tuning;
    Sequence seq;

    fun @construct(Tuning tuning, Envelope env, Step voiceCV[], int voiceIdx) {
        tuning @=> this.tuning;
        env @=> this.env;
        voiceCV @=> this.voiceCV;
        voiceIdx => this.voiceIdx;
    }

    fun void setTuning(Tuning tuning) {
        tuning @=> this.tuning;
    }

    fun void play(Sequence seq) {
        0 => int step;

        repeat (seq.repeats) {
            for (Note note : seq.notes) {
                tuning.cv(note.degree, note.octaveDiff) => float nextCV;
                this.voiceCV[this.voiceIdx].next(nextCV);

                // Next step
                spork ~ triggerEnv(note);
                note.beat => now;
            }
        }
    }

    fun void triggerEnv(Note note) {
        // Ramp up
        this.env.ramp(note.attack, note.amp);
        note.attack => now;

        // Sustain
        note.sustain => now;

        // Ramp down
        this.env.ramp(note.release, 0.);
        note.release => now;
    }
}
