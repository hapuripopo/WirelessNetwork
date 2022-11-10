#include "Timer.h"
module TestC @safe()
{
        uses interface Timer<TMilli> as Timer0;
        uses interface Timer<TMilli> as Timer1;
        uses interface Timer<TMilli> as Timer2;
        uses interface Leds;
        uses interface Boot;
}
implementation
{
        event void Boot.booted()
        {
            call Timer0.startPeriodic(1000);
        }
        event void Timer0.fired()
        {
                call Leds.led0Toggle();
                call Timer1.startPeriodic(250);
        }
        event void Timer1.fired()
        {
                call Leds.led1Toggle();
                call Timer2.startPeriodic(250);
        }
        event void Timer2.fired()
        {
                call Leds.led2Toggle();
        }
}

