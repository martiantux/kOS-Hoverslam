// Hoverslam script by Bradley Hammond

clearscreen.
set radarOffset to 2.3923. // the reading of alt:radar when landed
lock realAltitude to alt:radar - radarOffset.
lock g to constant:g * body:mass / (body:radius + ship:altitude)^2.
lock impactTime to realAltitude / abs(ship:verticalspeed).
lock maxDecel to (ship:availablethrust / ship:mass) - g.
lock stopTime to abs(ship:verticalspeed) / maxDecel.

set runMode to 1.
set modeStatus to "Waiting".

until runMode = 0 {
	if runMode = 1 and ship:verticalspeed < -10 {
		set modeStatus to "Free-fall".
		lock steering to srfretrograde.
		brakes on.
		
		if impactTime < stopTime and realAltitude < 2000 {
			set runMode to 2.
			set modeStatus to "Hoverslam".
			gear on.
		}
	}
	if runMode = 2 {
		if impactTime < stopTime {
			lock throttle to 1.
		}
		else {
			lock throttle to 0.4.
		}
		if ship:verticalspeed > -0.1 {
			set runMode to 0.
			set ship:control:pilotmainthrottle to 0.
			rcs off.
		}
	}
	
	print "Altitude: " + realAltitude at (2,5).
	print "Status: " + modeStatus at (2,6).
}
