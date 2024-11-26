@import "notes.ck"


public class VoiceThreeOrchestration {
    Sequence seqs[];

    fun @construct() {
        Sequence seqStartRest(
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

        [
            // Part 1
            seqStartRest,
            seq1A,
            seq1B,
            seq1C,
            // Part 2
        ] @=> this.seqs;
    }
}
