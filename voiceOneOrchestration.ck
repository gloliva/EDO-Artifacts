@import "notes.ck"


public class VoiceOneOrchestration {
    Scene scenes[];

    fun @construct() {
        // Sequence 1
        Sequence seq1[];

        Sequence seq1A(
            [
                new Note(0, -1, 1., 2::second, 5::ms, 0::ms),
                new Note(18, -1, 1., 2::second,  0::ms, 250::ms)
            ],
            1
        );

        Sequence seq1B(
            [
                new Note(5, -1, 1., 2::second, 5::ms, 0::ms),
                new Note(23, -1, 1.5::second),
                new Note(5, -1, 1., 0.5::second, 0::ms, 250::ms)
            ],
            1
        );

        Sequence seq2A(
            [
                new Note(20, -2, 1., 167::ms, 10::ms, 20::ms),
                new Note(20, -2, 0.5, 167::ms, 10::ms, 20::ms),
                new Note(20, -2, 0.7, 166::ms, 10::ms, 20::ms),
            ],
            12
        );

        Sequence seq2B(
            [
                new Note(28, -2, 1., 167::ms, 10::ms, 20::ms),
                new Note(23, -2, 0.5, 167::ms, 10::ms, 20::ms),
                new Note(28, -2, 0.8, 166::ms, 10::ms, 20::ms),
            ],
            2
        );

        Sequence seq2C(
            [
                new Note(23, -2, 1., 167::ms, 10::ms, 20::ms),
                new Note(23, -2, 0.6, 167::ms, 10::ms, 20::ms),
                new Note(23, -2, 1., 166::ms, 10::ms, 20::ms),
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
                new Note(24, 0, 1., 750::ms, 10::ms, 100::ms),
                new Note(29, 0, 0.8, 250::ms, 10::ms, 100::ms),
                new Note(15, 0, 1., 500::ms, 10::ms, 100::ms),
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
            // Part 3
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
                new Note(2, 1, 0.8, 1.5::second, 10::ms, 100::ms),
                new Note(3, 1, 0.8, 0.5::second, 10::ms, 100::ms),
                new Note(2, 1, 0.8, 750::ms, 10::ms, 20::ms),
                new RestNote(250::ms),
                new Note(2, 1, 1., 0.5::second, 10::ms, 100::ms),
                new Note(0, 1, 1., 0.5::second, 10::ms, 100::ms),
           ],
           1
        );

        Sequence seq3D(
           [
                new Note(0, 1, 1., 334::ms, 10::ms, 10::ms),
                new Note(4, 0, 1., 333::ms, 10::ms, 10::ms),
                new Note(1, 1, 1., 333::ms, 10::ms, 10::ms),
           ],
           4
        );

        Sequence seq3D2(
           [
                new Note(0, 1, 1., 334::ms, 10::ms, 10::ms),
                new Note(4, 0, 1., 333::ms, 10::ms, 10::ms),
                new Note(2, 0, 1., 333::ms, 10::ms, 10::ms),
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
                new Note(2, 0, 1., 1::second, 10::ms, 100::ms),
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
                new RestNote(500::ms),
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
            seq3D2,
            seq3E,
            seq3f,
        ] @=> seq2;

        // Scene 3
        Sequence seq3[];

        Sequence seq4A(
            [
                new Note(0, -1, 1., 250::ms, 10::ms, 140::ms),
            ],
            128
        );

        Sequence seq4B(
            [
                new Note(0, -1, 1., 125::ms, 10::ms, 50::ms),
            ],
            64
        );

        [
            // 1st part
            seq4A,
            seq4A,
            seq4B
        ] @=> seq3;

        // Scene 4
        Sequence seq4[];

        Sequence seq5Pre(
            [
                new Note(0, -1, 1., 2::second, 1.5::second, 0::ms),
                new Note(9, -1, 1., 2::second, 0::ms, 100::ms),
                new Note(0, -1, 1., 2::second, 100::ms, 0::ms),
                new Note(9, -1, 1., 2::second, 0::ms, 100::ms),
                new Note(0, -1, 1., 2::second, 100::ms, 0::ms),
                new Note(9, -1, 1., 2::second, 0::ms, 100::ms),
                new Note(0, -1, 1., 2::second, 100::ms, 0::ms),
                new Note(9, -1, 1., 2::second, 0::ms, 100::ms),
            ],
            1
        );

        Sequence seq5A(
            [
                new Note(0, -1, 1., 2::second, 100::ms, 0::ms),
                new Note(9, -1, 1., 2::second, 0::ms, 100::ms),
            ],
            8
        );

        Sequence seq5B(
            [
                new RestNote(2::second),
                new Note(0, -1, 1., 2::second, 50::ms, 100::ms),
            ],
            1
        );

        Sequence seq5C(
            [
                new RestNote(2::second),
                new Note(16, -2, 1., 2::second, 50::ms, 100::ms),
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
            seq5Pre,
            seq5A,
            seq5A,
            seq5B,
            seq5B,
            seq5C,
            seq5C,
            seq5D,
        ] @=> seq4;

        // Scene 5
        Sequence seq5[];

        Sequence seq6Pre(
            [
                new RestNote(4::second),

            ],
            1
        );

        Sequence seq6A(
            [
                new Note(0, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(0, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(0, -2, 1., 125::ms, 10::ms, 10::ms),
                new Note(0, -2, 1., 125::ms, 10::ms, 10::ms),

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
                new RestNote(2::second),

            ],
            1
        );

        Sequence seq7D(
            [
                new Note(0, -2, 1., 2::second, 10::ms, 0.5::second),

            ],
            1
        );

        Sequence seq7E(
            [
                new Note(9, -3, 1., 2::second, 10::ms, 0.5::second),

            ],
            1
        );

        [
            // 1st part
            seq6Pre,
            seq6A,
            seq6A,
            seq6A,
            seq6A,
            seq6B,
            seq6B,
            seq6A,
            seq6A,

            seq6C,
            seq6C,
            seq6D,
            seq6D,
            seq6C,
            seq6C,
            seq6A,
            seq6A,

            seq7A,
            seq7A,
            seq7B,
            seq7A,

            seq7C,
            seq7C,
            seq7C,
            seq7C,
            seq7C,

            seq7Rest,
            seq7D,
            seq7Rest,
            seq7D,
            seq7Rest,
            seq7E,
            seq7Rest,
            seq7E,
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
        <<< "*** Voice One ***" >>>;
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
