public class Transport {
    // Timing variables
    float tempo;
    int PPQN;
    dur quarterNote;
    dur pulseDur;

    Step pulse;
    Step run;

    int start;

    fun @construct(float tempo) {
        Transport(tempo, 24);
    }

    fun @construct(float tempo, int PPQN) {
        tempo => this.tempo;
        PPQN => this.PPQN;

        // durations
        (60. / tempo)::second => this.quarterNote;
        this.quarterNote / PPQN => this.pulseDur;

        0 => this.start;
    }

    fun void initDac(int clockIdx, int runIdx) {
        this.pulse => dac.chan(clockIdx);
        this.run => dac.chan(runIdx);
    }

    fun void turnOn() {
        this.run.next(1.);
        1 => this.start;
    }

    fun void turnOff() {
        this.run.next(0.);
    }

    fun void signalPulse() {
        while (!this.start) {
            this.pulseDur => now;
        }

        while (true) {
            (1. - this.pulse.next()) => this.pulse.next;
            this.pulseDur / 2 => now;
        }
    }
}
