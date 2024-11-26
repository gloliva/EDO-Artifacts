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

        Sequence seq2A(
            [
                new Note(40, 2::second, 500::ms, 750::ms),
                new Note(34, 2::second, 500::ms, 750::ms),
                new Note(33, 2::second, 500::ms, 750::ms),
                new Note(30, 2::second, 500::ms, 750::ms),
            ],
            2
        );

        Sequence seq2B(
            [
                new Note(20, -1, 1., 4::second, 250::ms, 250::ms),
            ],
            1
        );

        Sequence seq2C(
            [
                new Note(24, -1, 1., 4::second, 250::ms, 250::ms),
            ],
            1
        );

        [
            // Part 1
            seq1A,
            seq1A,
            seq1B,
            seq1A,
            seq1B,
            seq1A,
            // Part 2
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
