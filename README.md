# KOS-Hoverslam
A SpaceX style "hoverslam" script for the kOS mod for Kerbal Space Program

Purpose:
This script is designed to perform "hoverslam" maneuvers in which the engine is fired at just the right
time that the velocity and altitude reach 0 at the same time. That is, the vehicle will "stop" right as
it reaches the ground. To avoid a LOT of complicated calculations this script does a more rough estimate
of when to start the burn and then makes adjustments by varing the throttle. In testing I have only seen
the throttle as low as 57.7% which was with a thrust to weight ratio of 1.3, essentially the worst case
for this sort of maneuver. Testing at the other end with a thrust to weight ratio of 10.6 saw the throttle
only decrease to 86.5% and a more realistic test of an actual first stage landing with a TWR of 6.5 had
the throttle drop to 79.5 at it's lowest. The required delta v varied between 180 and 220m/s providing
considerably fuel efficient landings regardless of TWR.

Notes:
You MUST change the "radarOffset" variable within the script, this should be set to your vehicles alt:radar
value when landed on its gear. I have tested this script with TWRs between 1.3 and 10.6 so cannot guarantee
how it will work outside that range. I have tested without airbrakes and it seems to still work normally
however if you are coming in at crazy speeds (directly downward from 200km or something) it may burn earlier
than it needs to as it doesn't account for the huge amount of drag you will encounter, chances are it will
still work but will need to reduce the throttle a LOT more than normal. Finally this was built for and tested
on Kerbin, if your trajectory is mostly straight down it will likely work fine without atmosphere as it
doesn't consider drag anyway.

Example:
Here is a video demonstrating the script performing a hoverslam well enough to land on the engine bell, even with the extreme deceleration the landing is precise enough to not tip or explode: https://youtu.be/nYz5GrC2BIM
