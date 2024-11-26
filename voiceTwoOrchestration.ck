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

        Sequence seq2A(
            [
                new Note(20, 500::ms, 25::ms, 100::ms),
                new Note(29, 500::ms, 25::ms, 100::ms),
                new RestNote(1::second)
            ],
            4
        );

        Sequence seq2B(
            [
                new Note(29, 250::ms, 10::ms, 50::ms),
                new Note(20, 250::ms, 10::ms, 50::ms),
                new Note(26, 250::ms, 10::ms, 50::ms),
                new Note(18, 250::ms, 10::ms, 50::ms)
            ],
            4
        );

        Sequence seq2C(
            [
                new Note(24, 250::ms, 10::ms, 50::ms),
                new Note(29, 250::ms, 10::ms, 50::ms),
                new Note(15, 250::ms, 10::ms, 50::ms),
                new Note(20, 250::ms, 10::ms, 50::ms)
            ],
            4
        );

        [
            // Part 1
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
            seq1C,
            // Part 2
            seq2A,
            seq2A,
            seq2B,
            seq2B,
            seq2C,
            seq2B,
            seq2C,
            seq2B,
        ] @=> this.seqs;
    }
}