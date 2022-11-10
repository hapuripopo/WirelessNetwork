configuration TestAppC
{
}
implementation{
        components MainC, TestC, LedsC;
        components new TimerMilliC() as Timer0;
        components new TimerMilliC() as Timer1;
        components new TimerMilliC() as Timer2;
        TestC -> MainC.Boot;
        TestC.Leds -> LedsC;

        TestC.Timer0 -> Timer0;
        TestC.Timer1 -> Timer1;
        TestC.Timer2 -> Timer2;
}

