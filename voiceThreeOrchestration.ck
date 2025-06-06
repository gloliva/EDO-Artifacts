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
                new Note(9, 1, 1., 750::ms, 5::ms, 195::ms),
                new RestNote(250::ms),
                new Note(9, 1, 1., 750::ms, 5::ms, 195::ms),
                new RestNote(250::ms),
                new Note(30, 0, 1., 750::ms, 5::ms, 195::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 5::ms, 195::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 5::ms, 195::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 5::ms, 195::ms),
                new RestNote(250::ms),
                new Note(30, 0, 1., 750::ms, 5::ms, 195::ms),
                new RestNote(250::ms),
                new Note(26, 0, 1., 750::ms, 5::ms, 195::ms),
            ],
            1
        );

        Sequence seq1B(
            [
                new RestNote(250::ms),
                new Note(9, 1, 1., 750::ms, 5::ms, 245::ms),
                new RestNote(250::ms),
                new Note(9, 1, 1., 750::ms, 5::ms, 245::ms),
                new RestNote(250::ms),
                new Note(30, 0, 1., 750::ms, 5::ms, 245::ms),
                new RestNote(125::ms),
                new Note(35, 0, 1., 125::ms, 5::ms, 0::ms),
                new Note(30, 0, 1., 750::ms, 0::ms, 245::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 5::ms, 245::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 5::ms, 245::ms),
                new RestNote(250::ms),
                new Note(30, 0, 1., 750::ms, 5::ms, 245::ms),
                new RestNote(250::ms),
                new Note(26, 0, 1., 750::ms, 5::ms, 245::ms),
            ],
            1
        );

        Sequence seq1C(
            [
                new RestNote(250::ms),
                new Note(9, 1, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(9, 1, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(30, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(30, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(35, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(40, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(35, 0, 1., 750::ms, 20::ms, 230::ms),
                new RestNote(250::ms),
                new Note(30, 0, 1., 750::ms, 20::ms, 230::ms),
            ],
            1
        );

        Sequence seq2A(
            [
                new RestNote(500::ms),
                new Note(38, 0, 1., 167::ms, 25::ms, 25::ms),
                new Note(29, 0, 0.6, 167::ms, 25::ms, 25::ms),
                new Note(33, 1, 0.85, 166::ms, 25::ms, 25::ms),
                new Note(38, 0, 1., 167::ms, 25::ms, 25::ms),
                new Note(29, 0, 0.7, 167::ms, 25::ms, 25::ms),
                new Note(33, 0, 0.9, 166::ms, 25::ms, 25::ms),
                new RestNote(2::second)
            ],
            1
        );

        Sequence seq2B(
            [
                new RestNote(1::second),
                new Note(38, 0, 1., 167::ms, 25::ms, 25::ms),
                new Note(29, 0, 0.6, 167::ms, 25::ms, 25::ms),
                new Note(33, 1, 0.85, 166::ms, 25::ms, 25::ms),
                new Note(38, 0, 1., 167::ms, 25::ms, 25::ms),
                new Note(29, 0, 0.7, 167::ms, 25::ms, 25::ms),
                new Note(33, 0, 0.9, 166::ms, 25::ms, 25::ms),
                new RestNote(2::second)
            ],
            3
        );

        Sequence seq2C(
            [
                new RestNote(250::ms),
                new Note(20, -1, 1., 83.334::ms, 5::ms, 20::ms),
                new Note(20, 0, 1., 83.333::ms, 5::ms, 20::ms),
                new Note(20, -1, 1., 83.333::ms, 5::ms, 20::ms),
                new RestNote(250::ms),
                new Note(18, -1, 1., 83.334::ms, 5::ms, 20::ms),
                new Note(18, 0, 1., 83.333::ms, 5::ms, 20::ms),
                new Note(18, -1, 1., 83.333::ms, 5::ms, 20::ms),
            ],
            4
        );

        Sequence seq2D(
            [
                new RestNote(250::ms),
                new Note(20, -1, 1., 83.334::ms, 5::ms, 10::ms),
                new Note(22, 0, 1., 83.333::ms, 5::ms, 10::ms),
                new Note(20, -1, 1., 83.333::ms, 5::ms, 10::ms),
                new RestNote(250::ms),
                new Note(22, -1, 1., 83.334::ms, 5::ms, 10::ms),
                new Note(20, 0, 1., 83.333::ms, 5::ms, 10::ms),
                new Note(22, -1, 1., 83.333::ms, 5::ms, 10::ms),
                new RestNote(250::ms),
                new Note(20, -1, 1., 83.334::ms, 5::ms, 10::ms),
                new Note(22, 0, 1., 83.333::ms, 5::ms, 10::ms),
                new Note(20, -1, 1., 83.333::ms, 5::ms, 10::ms),
                new RestNote(250::ms),
                new Note(18, -1, 1., 83.334::ms, 5::ms, 10::ms),
                new Note(20, 0, 1., 83.333::ms, 5::ms, 10::ms),
                new Note(18, -1, 1., 83.333::ms, 5::ms, 10::ms),
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

        // Scene 4
        Sequence seq3[];

        Sequence seq4A(
            [
                new RestNote(500::ms),
                new Note(2, 0, 1., 250::ms, 10::ms, 140::ms),
                new RestNote(250::ms),
            ],
            16
        );

        Sequence seq4B(
            [
                new Note(2, 0, 1., 125::ms, 10::ms, 15::ms),
                new RestNote(250::ms),
                new Note(3, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(5, 0, 1., 125::ms, 10::ms, 15::ms),
                new RestNote(250::ms),
                new Note(2, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(2, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(5, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(7, 0, 1., 250::ms, 10::ms, 15::ms),
                new RestNote(500::ms),
                new Note(5, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(2, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(3, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(0, 0, 1., 125::ms, 10::ms, 15::ms),
                new RestNote(125::ms),
                new Note(6, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(1, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(0, 0, 1., 125::ms, 10::ms, 15::ms),
                new RestNote(250::ms),
                new Note(2, 0, 1., 250::ms, 10::ms, 15::ms),
                new Note(7, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(4, 0, 1., 125::ms, 10::ms, 15::ms),
                new RestNote(250::ms),
            ],
            1
        );

        Sequence seq4C(
            [
                new Note(5, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(2, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(7, 0, 1., 125::ms, 10::ms, 15::ms),
                new Note(3, 0, 1., 125::ms, 10::ms, 15::ms),
            ],
            8
        );

        Sequence seq4D(
            [
                new Note(7, 1, 1., 125::ms, 10::ms, 15::ms),
                new Note(2, 1, 1., 125::ms, 10::ms, 15::ms),
                new Note(3, 1, 1., 125::ms, 10::ms, 15::ms),
                new Note(2, 1, 1., 125::ms, 10::ms, 15::ms),
            ],
            8
        );

        Sequence seq4E(
            [
                new Note(2, 0, 1., 62.5::ms, 10::ms, 10::ms),
                new Note(2, 0, 1., 62.5::ms, 10::ms, 10::ms),
                new Note(4, 0, 1., 62.5::ms, 10::ms, 10::ms),
                new Note(4, 0, 1., 62.5::ms, 10::ms, 10::ms),
            ],
            8
        );

        Sequence seq4F(
            [
                new Note(2, 0, 1., 62.5::ms, 10::ms, 10::ms),
                new Note(2, 0, 1., 62.5::ms, 10::ms, 10::ms),
                new Note(3, 0, 1., 62.5::ms, 10::ms, 10::ms),
                new Note(3, 0, 1., 62.5::ms, 10::ms, 10::ms),
            ],
            8
        );

        Sequence seq4G(
            [
                new Note(0, 0, 1., 62.5::ms, 10::ms, 10::ms),
                new Note(0, 0, 1., 62.5::ms, 10::ms, 10::ms),
                new Note(0, 0, 1., 62.5::ms, 10::ms, 10::ms),
                new Note(0, 0, 1., 62.5::ms, 10::ms, 10::ms),
            ],
            16
        );

        [
            // 1st part
            seq4A,
            seq4B,
            seq4B,
            seq4B,
            seq4B,
            seq4C,
            seq4C,
            seq4D,
            seq4C,
            seq4E,
            seq4F,
            seq4B,
            seq4E,
            seq4F,
            seq4B,
            seq4F,
            seq4F,
            seq4G,
        ] @=> seq3;

        // Scene 4
        Sequence seq4[];

        Sequence seq5Pre(
            [
                new RestNote(16::second),
            ],
            1
        );

        Sequence seq5A(
            [
                new RestNote(6::second),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 666::ms, 20::ms, 100::ms),
                new RestNote(6::second),
                new Note(13, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 666::ms, 20::ms, 100::ms),
                new RestNote(6::second),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 222::ms, 21::ms, 21::ms),
                new Note(11, 1, 1., 222::ms, 21::ms, 21::ms),
                new Note(11, 1, 1., 222::ms, 21::ms, 21::ms),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new RestNote(6::second),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(13, 1, 1., 222::ms, 21::ms, 21::ms),
                new Note(13, 1, 1., 222::ms, 21::ms, 21::ms),
                new Note(13, 1, 1., 222::ms, 21::ms, 21::ms),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
            ],
            1
        );

        Sequence seq5B(
            [
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(13, 1, 1., 222::ms, 21::ms, 100::ms),
                new Note(13, 1, 1., 222::ms, 21::ms, 100::ms),
                new Note(13, 1, 1., 222::ms, 21::ms, 100::ms),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(16, 1, 1., 222::ms, 21::ms, 100::ms),
                new Note(16, 1, 1., 222::ms, 21::ms, 100::ms),
                new Note(16, 1, 1., 222::ms, 21::ms, 100::ms),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(13, 1, 1., 222::ms, 21::ms, 100::ms),
                new Note(13, 1, 1., 222::ms, 21::ms, 100::ms),
                new Note(13, 1, 1., 222::ms, 21::ms, 100::ms),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 666::ms, 20::ms, 100::ms),
            ],
            2
        );

        Sequence seq5C(
            [
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 667::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 666::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 500::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 500::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 500::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 500::ms, 20::ms, 100::ms),
                new Note(11, 1, 1., 250::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 250::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 250::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 250::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 222::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 222::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 222::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 222::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 222::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 222::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 167::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 167::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 166::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 167::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 167::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 166::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 167::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 167::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 167::ms, 20::ms, 20::ms),
                new Note(11, 1, 1., 167::ms, 20::ms, 20::ms),
            ],
            1
        );

        Sequence seq5D(
            [
                new Note(11, 1, 1., 125::ms, 25::ms, 25::ms),
            ],
            16
        );

        Sequence seq5E(
            [
                new Note(11, 1, 1., 62.5::ms, 5.25::ms, 5.25::ms),
            ],
            64
        );

        Sequence seq5F(
            [
                new Note(11, 1, 1., 125::ms, 25::ms, 25::ms),
                new Note(11, 1, 1., 125::ms, 25::ms, 25::ms),
                new Note(11, 1, 1., 125::ms, 25::ms, 25::ms),
                new Note(11, 1, 1., 125::ms, 25::ms, 25::ms),
                new Note(11, 1, 1., 125::ms, 25::ms, 25::ms),
                new Note(11, 1, 1., 125::ms, 25::ms, 25::ms),
                new Note(11, 1, 1., 125::ms, 25::ms, 25::ms),
                new Note(11, 1, 1., 125::ms, 25::ms, 25::ms),
                new Note(11, 1, 1., 250::ms, 25::ms, 125::ms),
                new Note(11, 1, 1., 250::ms, 25::ms, 125::ms),
                new Note(11, 1, 1., 250::ms, 25::ms, 125::ms),
                new Note(11, 1, 1., 250::ms, 25::ms, 125::ms),
                new Note(11, 1, 1., 250::ms, 25::ms, 125::ms),
                new Note(11, 1, 1., 250::ms, 25::ms, 125::ms),
                new Note(11, 1, 1., 250::ms, 25::ms, 125::ms),
                new Note(11, 1, 1., 250::ms, 25::ms, 125::ms),
                new Note(11, 1, 1., 500::ms, 25::ms, 250::ms),
                new Note(11, 1, 1., 500::ms, 25::ms, 250::ms),
                new Note(11, 1, 1., 500::ms, 25::ms, 250::ms),
                new Note(11, 1, 1., 500::ms, 25::ms, 250::ms),
                new Note(11, 1, 1., 1::second, 25::ms, 750::ms),
                new Note(11, 1, 1., 1::second, 25::ms, 750::ms),
                new Note(11, 1, 1., 1::second, 25::ms, 750::ms),
                new RestNote(1::second),
                new Note(11, 1, 1., 1::second, 25::ms, 750::ms),
            ],
            1
        );

        [
            // 1st part
            seq5Pre,
            seq5A,
            seq5B,
            seq5C,
            seq5D,
            seq5D,
            seq5D,
            seq5E,
            seq5E,
            seq5E,
            seq5E,
            seq5D,
            seq5D,
            seq5F,
        ] @=> seq4;

        // Scene 5
        Sequence seq5[];

        Sequence seq6Pre(
            [
                new Note(0, 0, 0.8, 250::ms, 5::ms, 5::ms),
                new RestNote(750::ms),
                new Note(0, 0, 0.8, 250::ms, 5::ms, 5::ms),
                new RestNote(750::ms),
                new Note(0, 0, 0.8, 250::ms, 5::ms, 5::ms),
                new RestNote(250::ms),
                new Note(0, 0, 0.8, 250::ms, 5::ms, 5::ms),
                new RestNote(250::ms),
                new Note(0, 0, 0.9, 250::ms, 5::ms, 5::ms),
                new Note(0, 0, 0.95, 250::ms, 5::ms, 5::ms),
                new Note(0, 0, 1., 250::ms, 5::ms, 5::ms),
                new Note(0, 0, 1., 250::ms, 5::ms, 5::ms),
            ],
            1
        );

        Sequence seq6A(
            [
                new Note(0, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(750::ms),
            ],
            4
        );

        Sequence seq6B(
            [
                new Note(0, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(750::ms),
                new Note(5, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(750::ms),
                new Note(0, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(250::ms),
                new Note(5, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(250::ms),
                new Note(0, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(250::ms),

                new Note(5, 0, 1., 125::ms, 5::ms, 5::ms),
                new Note(5, 0, 1., 125::ms, 5::ms, 5::ms),
                new Note(5, 0, 1., 62.5::ms, 5::ms, 5::ms),
                new Note(5, 0, 1., 62.5::ms, 5::ms, 5::ms),
                new Note(5, 0, 1., 62.5::ms, 5::ms, 5::ms),
                new Note(5, 0, 1., 62.5::ms, 5::ms, 5::ms),
            ],
            1
        );

        Sequence seq6C(
            [
                new Note(6, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(750::ms),
                new Note(6, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(750::ms),
                new Note(6, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(750::ms),

                new Note(6, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(250::ms),
                new Note(9, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(250::ms),
            ],
            1
        );

        Sequence seq6D(
            [
                new Note(5, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(750::ms),
                new Note(5, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(750::ms),
                new Note(5, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(250::ms),
                new Note(0, 0, 1., 250::ms, 5::ms, 5::ms),
                new RestNote(250::ms),

                new Note(5, 0, 1., 250::ms, 5::ms, 5::ms),
                new Note(0, 0, 1., 250::ms, 5::ms, 5::ms),

                new Note(0, 0, 1., 125::ms, 5::ms, 5::ms),
                new Note(0, 0, 1., 125::ms, 5::ms, 5::ms),
                new Note(0, 0, 1., 62.5::ms, 5::ms, 5::ms),
                new Note(0, 0, 1., 62.5::ms, 5::ms, 5::ms),
                new Note(0, 0, 1., 62.5::ms, 5::ms, 5::ms),
                new Note(0, 0, 1., 62.5::ms, 5::ms, 5::ms),
            ],
            1
        );

        Sequence seq7A(
            [
                new Note(0, 0, 1., 1000::ms, 5::ms, 750::ms),
                new RestNote(2.5::second),
                new Note(5, 0, 1., 167::ms, 5::ms, 10::ms),
                new Note(5, 0, 1., 166::ms, 5::ms, 10::ms),
                new Note(5, 0, 1., 167::ms, 5::ms, 10::ms),
            ],
            1
        );

        Sequence seq7B(
            [
                new Note(3, 0, 1., 1000::ms, 5::ms, 750::ms),
                new RestNote(1::second),
                new Note(5, 0, 1., 500::ms, 5::ms, 100::ms),
                new Note(0, 0, 1., 500::ms, 5::ms, 100::ms),
                new Note(5, 0, 1., 500::ms, 5::ms, 100::ms),
                new Note(0, 0, 1., 500::ms, 5::ms, 100::ms),
            ],
            1
        );

        Sequence seq7Rest(
            [
                new RestNote(4::second)
            ],
            1
        );

        Sequence seq7Pre2(
            [
                new RestNote(3.5::second),
                new Note(5, 0, 1., 167::ms, 5::ms, 10::ms),
                new Note(5, 0, 1., 166::ms, 5::ms, 10::ms),
                new Note(5, 0, 1., 167::ms, 5::ms, 10::ms),
            ],
            1
        );

        Sequence seq7Pre3(
            [
                new RestNote(3.5::second),
                new Note(4, 0, 1., 167::ms, 5::ms, 10::ms),
                new Note(4, 0, 1., 166::ms, 5::ms, 10::ms),
                new Note(4, 0, 1., 167::ms, 5::ms, 10::ms),
            ],
            1
        );

        Sequence seq7CPre(
            [
                new Note(0, 0, 1., 1::second, 5::ms, 250::ms),
                new RestNote(2.5::second),
                new Note(5, 0, 1., 167::ms, 5::ms, 10::ms),
                new Note(5, 0, 1., 166::ms, 5::ms, 10::ms),
                new Note(5, 0, 1., 167::ms, 5::ms, 10::ms),
            ],
            4
        );

        Sequence seq7C(
            [
                new Note(0, 0, 1., 1::second, 20::ms, 250::ms),
                new RestNote(500::ms),
                new Note(0, 0, 1., 500::ms, 5::ms, 25::ms),
                new Note(0, 0, 1., 1::second, 20::ms, 250::ms),
                new RestNote(500::ms),
                new Note(5, 0, 1., 167::ms, 5::ms, 10::ms),
                new Note(5, 0, 1., 166::ms, 5::ms, 10::ms),
                new Note(5, 0, 1., 167::ms, 5::ms, 10::ms),
            ],
            1
        );

        Sequence seq7D(
            [
                new Note(0, 0, 1., 1::second, 20::ms, 250::ms),
                new Note(0, 0, 1., 500::ms, 20::ms, 100::ms),
                new Note(0, 0, 1., 500::ms, 20::ms, 100::ms),
                new Note(0, 0, 1., 1::second, 20::ms, 250::ms),
                new Note(0, 0, 1., 500::ms, 20::ms, 100::ms),
                new Note(5, 0, 1., 167::ms, 5::ms, 10::ms),
                new Note(5, 0, 1., 166::ms, 5::ms, 10::ms),
                new Note(5, 0, 1., 167::ms, 5::ms, 10::ms),
            ],
            1
        );

        Sequence seq7E(
            [
                new Note(0, 0, 1., 334::ms, 20::ms, 100::ms),
                new Note(0, 0, 1., 333::ms, 20::ms, 100::ms),
                new Note(0, 0, 1., 333::ms, 20::ms, 100::ms),
            ],
            8
        );

        Sequence seq7F(
            [
                new Note(0, 0, 1., 334::ms, 20::ms, 100::ms),
                new Note(0, 0, 1., 333::ms, 20::ms, 100::ms),
                new Note(0, 0, 1., 333::ms, 20::ms, 100::ms),
                new Note(0, 0, 1., 334::ms, 20::ms, 100::ms),
                new Note(0, 0, 1., 333::ms, 20::ms, 100::ms),
                new Note(0, 0, 1., 333::ms, 20::ms, 100::ms),
                new Note(0, 0, 1., 250::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 250::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 250::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 250::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 250::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 250::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 250::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 250::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 250::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 250::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 250::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 250::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 222::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 222::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 222::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 222::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 222::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 222::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 166::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 166::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 167::ms, 20::ms, 20::ms),
                new Note(0, 0, 1., 167::ms, 20::ms, 20::ms),
            ],
            1
        );

        Sequence seq7G(
            [
                new Note(0, 0, 1., 125::ms, 25::ms, 25::ms),
            ],
            16
        );

        Sequence seq7H(
            [
                new Note(0, 0, 1., 62.5::ms, 5.25::ms, 5.25::ms),
            ],
            64
        );

        Sequence seq7I(
            [
                new Note(0, 0, 1., 125::ms, 25::ms, 25::ms),
                new Note(0, 0, 1., 125::ms, 25::ms, 25::ms),
                new Note(0, 0, 1., 125::ms, 25::ms, 25::ms),
                new Note(0, 0, 1., 125::ms, 25::ms, 25::ms),
                new Note(0, 0, 1., 125::ms, 25::ms, 25::ms),
                new Note(0, 0, 1., 125::ms, 25::ms, 25::ms),
                new Note(0, 0, 1., 125::ms, 25::ms, 25::ms),
                new Note(0, 0, 1., 125::ms, 25::ms, 25::ms),
                new Note(0, 0, 1., 250::ms, 25::ms, 125::ms),
                new Note(0, 0, 1., 250::ms, 25::ms, 125::ms),
                new Note(0, 0, 1., 250::ms, 25::ms, 125::ms),
                new Note(0, 0, 1., 250::ms, 25::ms, 125::ms),
                new Note(0, 0, 1., 250::ms, 25::ms, 125::ms),
                new Note(0, 0, 1., 250::ms, 25::ms, 125::ms),
                new Note(0, 0, 1., 250::ms, 25::ms, 125::ms),
                new Note(0, 0, 1., 250::ms, 25::ms, 125::ms),
                new Note(0, 0, 1., 500::ms, 25::ms, 250::ms),
                new Note(0, 0, 1., 500::ms, 25::ms, 250::ms),
                new Note(0, 0, 1., 500::ms, 25::ms, 250::ms),
                new Note(0, 0, 1., 500::ms, 25::ms, 250::ms),
                new Note(0, 0, 1., 1::second, 25::ms, 750::ms),
                new Note(0, 0, 1., 1::second, 25::ms, 750::ms),
                new Note(0, 0, 1., 1::second, 25::ms, 750::ms),
                new Note(0, 0, 1., 0.5::second, 25::ms, 125::ms),
                new Note(0, 0, 1., 0.5::second, 25::ms, 125::ms),
                new RestNote(0.5::second),
                new Note(0, 0, 1., 0.5::second, 25::ms, 125::ms),
            ],
            1
        );

        [
            // 1st part
            seq6Pre,
            seq6A,
            seq6A,
            seq6B,
            seq6A,
            seq6C,
            seq6D,
            seq6C,
            seq6A,

            seq7A,
            seq7A,
            seq7B,
            seq7A,

            seq7Pre2,
            seq7Pre3,
            seq7CPre,
            seq7C,
            seq7C,
            seq7C,
            seq7C,
            seq7D,
            seq7D,
            seq7D,
            seq7E,
            seq7F,
            seq7G,
            seq7G,
            seq7H,
            seq7H,
            seq7H,
            seq7G,
            seq7G,
            seq7I,
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
