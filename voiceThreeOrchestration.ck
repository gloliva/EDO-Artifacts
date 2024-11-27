@import "notes.ck"


public class VoiceThreeOrchestration {
    Scene scenes[];

    fun @construct() {
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
                new Note(28, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(29, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(27, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(29, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(26, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(24, 0, 1., 750::ms, 10::ms, 500::ms),
            ],
            1
        );

        Sequence seq1B(
            [
                new RestNote(250::ms),
                new Note(33, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(35, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(33, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(32, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(28, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(27, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(27, 0, 1., 750::ms, 10::ms, 500::ms),
            ],
            1
        );

        Sequence seq1C(
            [
                new RestNote(250::ms),
                new Note(33, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(35, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(33, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(32, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(27, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(27, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(26, 0, 1., 750::ms, 10::ms, 500::ms),
                new RestNote(250::ms),
                new Note(26, 0, 1., 750::ms, 10::ms, 500::ms),
            ],
            1
        );

        Sequence seq2A(
            [
                new RestNote(500::ms),
                new Note(38, 167::ms, 25::ms, 25::ms),
                new Note(29, 166::ms, 25::ms, 25::ms),
                new Note(33, 166::ms, 25::ms, 25::ms),
                new Note(38, 167::ms, 25::ms, 25::ms),
                new Note(29, 166::ms, 25::ms, 25::ms),
                new Note(33, 166::ms, 25::ms, 25::ms),
                new RestNote(2::second)
            ],
            1
        );

        Sequence seq2B(
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
                new Note(29, -1, 1., 250::ms, 10::ms, 50::ms),
                new RestNote(250::ms),
                new Note(22, -1, 1., 250::ms, 10::ms, 50::ms),
                new RestNote(250::ms),
                new Note(29, -1, 1., 250::ms, 10::ms, 50::ms),
                new RestNote(250::ms),
                new Note(20, -1, 1., 250::ms, 10::ms, 50::ms)
            ],
            2
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
        ] @=> seq1;

        // Add to scenes
        [
            new Scene(seq1),
        ] @=> this.scenes;
    }
}
