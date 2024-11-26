@import "notes.ck"


public class VoiceTwoOrchestration {
    Sequence seqs[];

    fun @construct() {
        Sequence seq1A(
            [
                new Note(0, 250::ms),
                new Note(10, 250::ms),
                new Note(18, 0, 1., 500::ms, 50::ms, 250::ms),
            ],
            2
        );

        Sequence seq1B(
            [
                new Note(0, 250::ms),
                new Note(9, 250::ms),
                new Note(18, 0, 1., 500::ms, 50::ms, 250::ms),
            ],
            2
        );

        Sequence seq1C(
            [
                new Note(0, 250::ms),
                new Note(8, 250::ms),
                new Note(18, 0, 1., 500::ms, 50::ms, 250::ms),
            ],
            2
        );

        Sequence seq1D(
            [
                new Note(5, 250::ms),
                new Note(15, 250::ms),
                new Note(23, 0, 1., 500::ms, 50::ms, 250::ms)
                // new Note(33, 250::ms),
            ],
            2
        );

        Sequence seq1E(
            [
                new Note(5, 250::ms),
                new Note(12, 250::ms),
                new Note(23, 0, 1., 500::ms, 50::ms, 250::ms)
                // new Note(33, 250::ms),
            ],
            2
        );

        [
            seq1A,
            seq1A,
            seq1B,
            seq1C,
            seq1D,
            seq1D,
            seq1A,
            seq1A,
            seq1E,
            seq1E,
            seq1B,
            seq1C
        ] @=> this.seqs;
    }
}