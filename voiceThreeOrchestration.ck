@import "notes.ck"


public class VoiceThreeOrchestration {
    Scene scenes[];

    fun @construct() {
        // Sequence 1
        Sequence seq1[];

        Sequence seqRest(
            [
                new RestNote(500::ms)
            ],
            1
        );

        Sequence seq1A(
            [
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(30, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(25, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(24, 0, 1., 750::ms, 20::ms, 230::ms),
            ],
            1
        );

        Sequence seq1B(
            [
                new RestNote(250::ms),
                new Note(33, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(35, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(33, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(30, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(30, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(24, 0, 1., 750::ms, 20::ms, 230::ms),
            ],
            1
        );

        Sequence seq1C(
            [
                new RestNote(250::ms),
                new Note(33, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(30, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(33, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(35, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(35, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(40, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(35, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(35, 0, 1., 750::ms, 20::ms, 230::ms),
            ],
            1
        );

        Sequence seq2A(
            [
                new RestNote(500::ms),
                new Note(38, 167::ms, 25::ms, 25::ms),
                new Note(29, 167::ms, 25::ms, 25::ms),
                new Note(33, 166::ms, 25::ms, 25::ms),
                new Note(38, 167::ms, 25::ms, 25::ms),
                new Note(29, 167::ms, 25::ms, 25::ms),
                new Note(33, 166::ms, 25::ms, 25::ms),
                new RestNote(2::second)
            ],
            1
        );

        Sequence seq2B(
            [
                new RestNote(1::second),
                new Note(38, 167::ms, 25::ms, 25::ms),
                new Note(29, 167::ms, 25::ms, 25::ms),
                new Note(33, 166::ms, 25::ms, 25::ms),
                new Note(38, 167::ms, 25::ms, 25::ms),
                new Note(29, 167::ms, 25::ms, 25::ms),
                new Note(33, 166::ms, 25::ms, 25::ms),
                new RestNote(2::second)
            ],
            3
        );

        Sequence seq2C(
            [
                new RestNote(250::ms),
                new Note(20, -1, 1., 250::ms, 10::ms, 50::ms),
                new RestNote(250::ms),
                new Note(18, -1, 1., 250::ms, 10::ms, 50::ms)
            ],
            4
        );

        Sequence seq2D(
            [
                new RestNote(250::ms),
                new Note(20, -1, 1., 250::ms, 10::ms, 50::ms),
                new RestNote(250::ms),
                new Note(22, -1, 1., 250::ms, 10::ms, 50::ms),
                new RestNote(250::ms),
                new Note(20, -1, 1., 250::ms, 10::ms, 50::ms),
                new RestNote(250::ms),
                new Note(18, -1, 1., 250::ms, 10::ms, 50::ms)
            ],
            2
        );

        Sequence seq2E(
            [
                new RestNote(1.5::second),
                new Note(28, 1.5::second, 10::ms, 0.5::second),
            ],
            1
        );

        [
            // Part 1
            seqRest,
            seq1A,
            seq1B,
            seq1C,
            // Part 2
            seq2A,
            seq2B,
            seq2C,
            seq2C,
            seq2D,
            seq2C,
            seq2D,
            seq2C,
            // End
            seq2E,
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
                new RestNote(500::ms),
                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 166::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(4, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(4, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(4, 0, 1., 166::ms, 20::ms, 20::ms),
           ],
           4
        );

        Sequence seq3B(
           [
                new RestNote(500::ms),
                new Note(5, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(5, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(5, 0, 1., 166::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(6, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(6, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(6, 0, 1., 166::ms, 20::ms, 20::ms),
           ],
           2
        );

        Sequence seq3C(
           [
                new RestNote(500::ms),
                new Note(6, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(6, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(6, 0, 1., 166::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(8, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(8, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(8, 0, 1., 166::ms, 20::ms, 20::ms),
           ],
           2
        );

        Sequence seq3D(
           [
                new RestNote(500::ms),
                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 166::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(4, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(4, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(4, 0, 1., 166::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 166::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(4, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(4, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(4, 0, 1., 166::ms, 20::ms, 20::ms),

                new RestNote(500::ms),
                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 166::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(2, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(2, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(2, 0, 1., 166::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 166::ms, 20::ms, 20::ms),
                new RestNote(500::ms),
                new Note(0, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 166::ms, 20::ms, 20::ms),
           ],
           1
        );

        Sequence seq3E(
           [
                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 166::ms, 20::ms, 20::ms),
           ],
           4
        );

        Sequence seq3F(
           [
                new Note(2, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(4, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 166::ms, 20::ms, 20::ms),

                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(5, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(4, 0, 1., 166::ms, 20::ms, 20::ms),

                new Note(7, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(6, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(5, 0, 1., 166::ms, 20::ms, 20::ms),

                new Note(0, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(8, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(5, 0, 1., 166::ms, 20::ms, 20::ms),

                new Note(2, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(4, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(3, 0, 1., 166::ms, 20::ms, 20::ms),

                new Note(3, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(5, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(4, 0, 1., 166::ms, 20::ms, 20::ms),

                new Note(8, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(10, 0, 1., 166::ms, 20::ms, 20::ms),

                new Note(3, 0, 1., 0.5::second, 20::ms, 100::ms),
                new Note(5, 0, 1., 1::second, 20::ms, 25::ms),
           ],
           1
        );

        Sequence seq3G(
           [
                new Note(4, 0, 1., 500::ms, 20::ms, 50::ms),
                new RestNote(500::ms),
                new Note(4, 0, 1., 500::ms, 20::ms, 50::ms),
                new RestNote(500::ms),
                new Note(3, 0, 1., 500::ms, 20::ms, 50::ms),
                new RestNote(500::ms),
           ],
           1
        );

        [
            seq3Rest,
            seq3A,
            seq3A,
            seq3B,
            seq3B,
            seq3A,
            seq3B,
            seq3C,
            seq3D,
            seq3E,
            seq3F,
            seq3G,
        ] @=> seq2;

        // Add to scenes
        [
            new Scene(seq2),
            new Scene(seq1),
        ] @=> this.scenes;
    }

    fun void printDur() {
        <<< "*** Voice Three ***" >>>;
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
