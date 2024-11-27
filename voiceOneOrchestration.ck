@import "notes.ck"


public class VoiceOneOrchestration {
    Scene scenes[];

    fun @construct() {
        Sequence seq1[];

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
                new RestNote(1::second),
                new Note(38, 167::ms, 25::ms, 25::ms),
                new Note(29, 166::ms, 25::ms, 25::ms),
                new Note(33, 166::ms, 25::ms, 25::ms),
                new Note(38, 167::ms, 25::ms, 25::ms),
                new Note(29, 166::ms, 25::ms, 25::ms),
                new Note(33, 166::ms, 25::ms, 25::ms),
                new RestNote(2::second)
            ],
            4
        );

        Sequence seq2B(
            [
                new Note(20, -1, 1., 4::second, 50::ms, 250::ms),
            ],
            1
        );

        Sequence seq2C(
            [
                new Note(24, -1, 1., 4::second, 50::ms, 250::ms),
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
        ] @=> seq1;

        // Add to scenes
        [
            new Scene(seq1),
        ] @=> this.scenes;
    }
}
