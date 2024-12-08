@import "notes.ck"


public class VoiceTwoOrchestration {
    Scene scenes[];

    fun @construct() {
        // Scene 1
        Sequence seq1[];

        Sequence seq1A(
            [
                new Note(0, 0, 1., 250::ms, 5::ms, 0::ms),
                new Note(10, 250::ms),
                new Note(18, 0, 1., 500::ms, 0::ms, 150::ms),
            ],
            2
        );

        Sequence seq1B(
            [
                new Note(0, 0, 1., 250::ms, 5::ms, 0::ms),
                new Note(9, 250::ms),
                new Note(18, 0, 1., 500::ms, 0::ms, 150::ms),
            ],
            2
        );

        Sequence seq1C(
            [
                new Note(0, 0, 1., 250::ms, 5::ms, 0::ms),
                new Note(8, 250::ms),
                new Note(18, 0, 1., 500::ms, 0::ms, 150::ms),
            ],
            2
        );

        Sequence seq1D(
            [
                new Note(5, 0, 1., 250::ms, 5::ms, 0::ms),
                new Note(15, 250::ms),
                new Note(23, 0, 1., 500::ms, 0::ms, 150::ms)
            ],
            2
        );

        Sequence seq1E(
            [
                new Note(5, 0, 1., 250::ms, 5::ms, 0::ms),
                new Note(12, 250::ms),
                new Note(23, 0, 1., 500::ms, 0::ms, 150::ms)
            ],
            2
        );

        Sequence seq2A(
            [
                new Note(20, 500::ms, 25::ms, 100::ms),
                new Note(39, 500::ms, 25::ms, 100::ms),
                new RestNote(1::second),
                new Note(20, 334::ms, 25::ms, 25::ms),
                new Note(29, 333::ms, 25::ms, 25::ms),
                new Note(33, 333::ms, 25::ms, 25::ms),
                new RestNote(1::second),
                new Note(20, 500::ms, 25::ms, 100::ms),
                new Note(39, 500::ms, 25::ms, 100::ms),
                new RestNote(1::second),
                new Note(33, 334::ms, 25::ms, 25::ms),
                new Note(29, 333::ms, 25::ms, 25::ms),
                new Note(20, 333::ms, 25::ms, 25::ms),
                new RestNote(1::second),
            ],
            1
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
                new Note(20, 250::ms, 10::ms, 50::ms),
                new Note(24, 250::ms, 10::ms, 50::ms),
                new Note(29, 250::ms, 10::ms, 50::ms),
                new Note(12, 250::ms, 10::ms, 50::ms),
                new Note(22, 250::ms, 10::ms, 50::ms)
            ],
            2
        );

        Sequence seq2D(
            [
                new Note(24, 750::ms, 10::ms, 100::ms),
                new Note(29, 250::ms, 10::ms, 100::ms),
                new Note(15, 500::ms, 10::ms, 100::ms),
                new Note(20, 1.5::second, 10::ms, 1::second),
            ],
            1
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
            // Part 3
            seq2B,
            seq2B,
            seq2C,
            seq2B,
            seq2C,
            seq2B,
            // End
            seq2D,
        ] @=> seq1;

        // Scene 2
        Sequence seq2[];

        Sequence seq3A(
           [
                new Note(0, -1, 1., 20::second, 3::second, 500::ms),
           ],
           1
        );

        Sequence seq3B(
           [
                new Note(2, -1, 1., 8::second, 4::second, 0::ms)
           ],
           1
        );

        Sequence seq3C(
           [
                new Note(0, -1, 1., 8::second),
           ],
           1
        );

        Sequence seq3D(
           [
                new Note(2, -1, 1., 4::second),
                new Note(4, -1, 1., 4::second),
           ],
           1
        );

        Sequence seq3E(
           [
                new Note(0, -1, 1., 4::second),
                new Note(2, -2, 1., 4::second),
           ],
           1
        );

        Sequence seq3F(
           [
                new Note(0, -1, 1., 7::second, 0::second, 1::second),
           ],
           1
        );

        Sequence seq3G(
           [
                new Note(2, 0, 1., 500::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(2, 0, 1., 500::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(2, 0, 1., 500::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
           ],
           1
        );

        [
            seq3A,
            seq3B,
            seq3C,
            seq3D,
            seq3E,
            seq3F,
            seq3G,
        ] @=> seq2;

        // Scene 3
        Sequence seq3[];

        Sequence seq4A(
            [
                new RestNote(250::ms),
                new Note(7, 0, 1., 250::ms, 10::ms, 140::ms),
            ],
            64
        );

        Sequence seq4B(
            [
                new RestNote(250::ms),
                new Note(7, 0, 1., 250::ms, 10::ms, 140::ms),
                new RestNote(250::ms),
                new Note(2, 0, 1., 250::ms, 10::ms, 140::ms),
            ],
            32
        );

        Sequence seq4C(
            [
                new Note(7, 0, 1., 8::second, 7::second, 50::ms),
            ],
            1
        );

        [
            // 1st part
            seq4A,
            seq4B,
            seq4C,
        ] @=> seq3;

        // Scene 4
        Sequence seq4[];

        Sequence seq5APre(
            [
                new Note(16, -1, 1., 16::second, 2::second, 0::second),
            ],
            1
        );

        Sequence seq5A(
            [
                new Note(16, -1, 1., 64::second, 0::second, 1::second),
            ],
            1
        );

        Sequence seq5B(
            [
                new RestNote(2::second),
                new Note(12, -1, 1., 2::second, 50::ms, 100::ms),
            ],
            1
        );

        Sequence seq5C(
            [
                new RestNote(2::second),
                new Note(9, -1, 1., 2::second, 50::ms, 100::ms),
            ],
            1
        );

        Sequence seq5D(
            [
                new RestNote(12::second),
            ],
            1
        );

        [
            // 1st part
            seq5APre,
            seq5A,
            seq5B,
            seq5B,
            seq5C,
            seq5C,
            seq5D,
        ] @=> seq4;

        // Scene 5
        Sequence seq5[];

        Sequence seq6A(
            [
                new Note(0, -1, 1., 125::ms, 10::ms, 10::ms),
                new Note(0, -1, 1., 125::ms, 10::ms, 10::ms),
                new Note(0, -1, 1., 125::ms, 10::ms, 10::ms),
                new Note(0, -1, 1., 125::ms, 10::ms, 10::ms),

            ],
            4
        );

        Sequence seq6B(
            [
                new Note(9, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(9, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(9, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(9, -2, 1., 125::ms, 10::ms, 10::ms),

            ],
            4
        );

        Sequence seq6C(
            [
                new Note(7, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(7, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(7, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(7, -2, 1., 125::ms, 10::ms, 10::ms),

            ],
            4
        );

        Sequence seq6D(
            [
                new Note(12, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(12, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(12, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(12, -2, 1., 125::ms, 10::ms, 10::ms),

            ],
            4
        );

        Sequence seq6E(
            [
                new Note(0, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(0, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(0, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(0, -2, 1., 125::ms, 10::ms, 10::ms),

            ],
            4
        );

        Sequence seq7A(
            [
                new Note(0, -2, 1., 500::ms, 10::ms, 90::ms),
                new RestNote(500::ms),

            ],
            4
        );

        Sequence seq7B(
            [
                new Note(3, -2, 1., 500::ms, 10::ms, 90::ms),
                new RestNote(500::ms),

            ],
            4
        );

        Sequence seq7C(
            [
                new Note(0, -2, 1., 4::second, 10::ms, 1::second),

            ],
            4
        );

        Sequence seq7Rest(
            [
                new RestNote(4::second),

            ],
            1
        );

        [
            // 1st part
            // seq6A,
            // seq6A,
            // seq6A,
            // seq6A,
            // seq6B,
            // seq6B,
            // seq6A,
            // seq6A,

            // seq6C,
            // seq6C,
            // seq6D,
            // seq6D,
            // seq6C,
            // seq6C,
            // seq6A,
            // seq6A,

            seq7A,
            seq7A,
            seq7B,
            seq7A,

            seq7C,
            seq7C,
            seq7C,
            seq7C,
            seq7Rest,
        ] @=> seq5;

        // Add to scenes
        [
            new Scene(seq2),
            new Scene(seq3),
            new Scene(seq1),
            new Scene(seq5),
            new Scene(seq4),
        ] @=> this.scenes;
    }

    fun void printDur() {
        <<< "*** Voice Two ***" >>>;
        for (int idx; idx < this.scenes.size(); idx++) {
            scenes[idx] @=> Scene scene;
            0::ms => dur sceneLength;

            for (Sequence seq : scene.seqs) {
                (seq.seqDur * seq.repeats) + sceneLength => sceneLength;
            }

            <<< "Scene", idx, "duration: ", sceneLength / 44100. >>>;
        }
    }
}
