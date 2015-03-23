LiftTest by Problematic

this is a basic lift system, with support for multiple stops and syncronization in multiplayer.
few comments in there, you only really have to modify the objects and the stops for the object in the lua file.
best played without ninjahooks!

although i haven't given the lifts an extensive test, they work fine over lan, and should, technically perform at higher pings
if they don't it probably wouldn't be hard to modulate the idle time of the lifts based on ping.

if you want objects to roll on and go up and down lifts, add a detect_range with the same code in both server and client objectlifts.
these work based on only the server having 'AUTH' set, default settings. if the lift grabs an entire collision class, its best to check an objects
speed if too high, it should be ignored, this stops things like rockets taking a ride.
or wait for my mod for more examples.

not sure if these work on dedicated servers - add 'or DEDSERV' to the auth lines if they don't.

feel free to use these lifts/modify them as you see fit in your levels, that's why I took this
out of my mod for mappers.


