@import "notes.ck"


public class VoiceOneOrchestration {
    Sequence seqs[];

    fun @construct() {
        Sequence seq1A(
            [
                new Note(0, -1, 2::second),
                new Note(18, -1, 1., 2::second,  10::ms, 250::ms)
            ],
            1
        );

        Sequence seq1B(
            [
                new Note(5, -1, 2::second),
                new Note(23, -1, 1.5::second),
                new Note(5, -1, 1., 0.5::second, 10::ms, 250::ms)
            ],
            1
        );

        [
            seq1A,
            seq1A,
            seq1B,
            seq1A,
            seq1B,
            seq1A,
        ] @=> this.seqs;
    }
}
