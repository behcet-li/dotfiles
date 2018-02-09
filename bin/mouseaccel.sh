#!/bin/sh

sleep 5

DEVICE=$(xinput list | grep DeathAdder | head -1 | sed -n 's/.*id=\([0-9]*\).*/\1/p')

xinput set-prop ${DEVICE} 'Device Accel Profile' -1
xinput set-prop ${DEVICE} 'Device Accel Constant Deceleration' 2
