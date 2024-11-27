@import "notes.ck"


public class VoiceThreeOrchestration {
    Scene scenes[];

    fun @construct() {
        Sequence seq1[];

        Sequence seq1Rest(
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
                new Note(20, -1, 1., 167::ms, 10::ms, 50::ms),
                new Note(20, -1, 1., 166::ms, 10::ms, 50::ms),
                new Note(20, -1, 1., 166::ms, 10::ms, 50::ms),
            ],
            12
        );

        Sequence seq2B(
            [
                new Note(28, -1, 1., 167::ms, 10::ms, 50::ms),
                new Note(28, -1, 1., 166::ms, 10::ms, 50::ms),
                new Note(28, -1, 1., 166::ms, 10::ms, 50::ms),
            ],
            2
        );

        Sequence seq2C(
            [
                new Note(39, -1, 1., 167::ms, 10::ms, 50::ms),
                new Note(39, -1, 1., 166::ms, 10::ms, 50::ms),
                new Note(39, -1, 1., 166::ms, 10::ms, 50::ms),
            ],
            2
        );

        [
            // Part 1
            seq1Rest,
            seq1A,
            seq1B,
            seq1C,
            // Part 2
            seq1Rest,
            seq2A,
            seq2B,
            seq2C,
            seq2A,
            seq2B,
            seq2C,
        ] @=> seq1;

        // Add to scenes
        [
            new Scene(seq1),
        ] @=> this.scenes;
    }
}
