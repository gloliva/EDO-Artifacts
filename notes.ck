public class Note {
    // Note and amplitude
    int degree;
    int octaveDiff;
    float amp;

    // Timing variables
    dur beat;
    dur attack;
    dur sustain;
    dur release;

    fun @construct(int degree, dur beat) {
        Note(degree, 0, 1., beat, 100::ms, 100::ms);
    }

    fun @construct(int degree, int octaveDiff, dur beat) {
        Note(degree, octaveDiff, 1., beat, 100::ms, 100::ms);
    }

    fun @construct(int degree, int octaveDiff, float amp, dur beat) {
        Note(degree, octaveDiff, amp, beat, 100::ms, 100::ms);
    }

    fun @construct(int degree, int octaveDiff, float amp, dur beat, dur attack, dur sustain) {
        degree => this.degree;
        octaveDiff => this.octaveDiff;
        amp => this.amp;
        beat => this.beat;

        // Envelope variables
        attack => this.attack;
        sustain => this.sustain;
        beat - attack - release => this.sustain;
    }
}


public class Sequence {
    Note notes[];
    int repeats;
    int size;
    dur seqDur;

    fun @construct(Note notes[], int repeats) {
        notes @=> this.notes;
        repeats => this.repeats;
        this.notes.size() => this.size;
        0::samp => this.seqDur;

        for (Note note : this.notes) {
            this.seqDur + note.beat => this.seqDur;
        }
    }

    fun Note get(int idx) {
        idx % this.size => idx;
        return this.notes[idx];
    }
}
