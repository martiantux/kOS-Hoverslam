# KOS-Hoverslam
A SpaceX style "hoverslam" script for the kOS mod for Kerbal Space Program

Assumptions: 
* Thrust to weight ratio is between 2 and 8
* You have airbrakes fitted to the vehicle
* You have landing legs fitted to the vehicle
* You have sufficient controls to orient the vehicle during descent
* You have changed the radarOffset (the alt:radar reading when landed on the ground)

Use:
Run this script at any point, it will activate once the craft is falling faster than 10m/s
locking surface retrograde and deploying airbrakes to kill horizontal velocity and reduce entry speed.
Once under 2km from terrain a burn will begin at the point where the time until impact and the time
required to stop are the same, if the time required to stop changes the throttle will switch between 40% and 100%.
Once the vertical speed reaches -0.1m/s the throttle is killed, RCS disabled and the script ends.

Result:
If used with assumptions in mind, this script should perform near perfect hoverslam landings, resulting
in an extremely efficient landing (~210m/s delta v) which also looks pretty damn cool.
