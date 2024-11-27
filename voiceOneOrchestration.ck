@import "notes.ck"


public class VoiceOneOrchestration {
    Scene scenes[];

    fun @construct() {
        // Sequence 1
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
                new Note(20, -1, 1., 167::ms, 10::ms, 20::ms),
                new Note(20, -1, 1., 166::ms, 10::ms, 20::ms),
                new Note(20, -1, 1., 166::ms, 10::ms, 20::ms),
            ],
            12
        );

        Sequence seq2B(
            [
                new Note(28, -1, 1., 167::ms, 10::ms, 20::ms),
                new Note(28, -1, 1., 166::ms, 10::ms, 20::ms),
                new Note(28, -1, 1., 166::ms, 10::ms, 20::ms),
            ],
            2
        );

        Sequence seq2C(
            [
                new Note(39, -1, 1., 167::ms, 10::ms, 20::ms),
                new Note(39, -1, 1., 166::ms, 10::ms, 20::ms),
                new Note(39, -1, 1., 166::ms, 10::ms, 20::ms),
            ],
            2
        );

        Sequence seq2D(
            [
                new Note(20, -1, 1., 4::second, 50::ms, 250::ms),
            ],
            1
        );

        Sequence seq2E(
            [
                new Note(24, -1, 1., 4::second, 50::ms, 250::ms),
            ],
            1
        );

        Sequence seq2F(
            [
                new RestNote(1.5::second),
                new Note(20, -1, 1., 1.5::second, 10::ms, 0.5::second),
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
            seq2C,
            seq2A,
            seq2B,
            seq2C,
            seq2D,
            seq2D,
            seq2E,
            seq2D,
            seq2E,
            seq2D,
            // End
            seq2F,
        ] @=> seq1;

        // Scene 2
        Sequence seq2[];

        Sequence seq3Rest(
            [
                new RestNote(4::second)
            ],
            1
        );

        Sequence seq3A(
           [
                new Note(2, 0, 1., 1.5::second, 10::ms, 100::ms),
                new Note(5, 0, 1., 0.5::second, 10::ms, 100::ms),
           ],
           4
        );

        Sequence seq3B(
           [
                new Note(4, 0, 1., 1.5::second, 10::ms, 100::ms),
                new Note(2, 0, 1., 0.5::second, 10::ms, 100::ms),
           ],
           2
        );

        Sequence seq3C(
           [
                new Note(2, 1, 1., 334::ms, 10::ms, 10::ms),
                new Note(0, 1, 1., 333::ms, 10::ms, 10::ms),
                new Note(3, 1, 1., 333::ms, 10::ms, 10::ms),
           ],
           4
        );

        Sequence seq3D(
           [
                new Note(0, 1, 1., 334::ms, 10::ms, 10::ms),
                new Note(4, 0, 1., 333::ms, 10::ms, 10::ms),
                new Note(1, 1, 1., 333::ms, 10::ms, 10::ms),
           ],
           4
        );

        Sequence seq3E(
           [
                new Note(2, 0, 1., 1.5::second, 10::ms, 100::ms),
                new Note(5, 0, 1., 0.5::second, 10::ms, 100::ms),
                new Note(2, 0, 1., 1.5::second, 10::ms, 100::ms),
                new Note(5, 0, 1., 0.5::second, 10::ms, 100::ms),
                new Note(2, 0, 1., 1.5::second, 10::ms, 100::ms),
                new Note(5, 0, 1., 0.5::second, 10::ms, 100::ms),
                new Note(2, 0, 1., 1::second, 10::ms, 0.5::second),
           ],
           1
        );

        Sequence seq3f(
           [
                new Note(0, 0, 1., 500::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(0, 0, 1., 500::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(0, 0, 1., 500::ms, 20::ms, 20::ms),
                new RestNote(1.5::second),
           ],
           1
        );

        // Create sequence list
        [
            seq3Rest,
            seq3A,
            seq3A,
            seq3Rest,
            seq3B,
            seq3A,
            seq3Rest,
            seq3C,
            seq3D,
            seq3D,
            seq3E,
            seq3f,
        ] @=> seq2;

        // Add to scenes
        [
            new Scene(seq1),
            new Scene(seq2),
        ] @=> this.scenes;
    }
}
