"Yellow Team Demo" by Matt

Include Common Commands Sidebar by Alice Grove.
Include Conversation Package by Eric Eve.
Include NPC Implicit Actions by Eric Eve.
Use undo prevention.

When play begins:
	 prepare the command sidebar, shown automatically, on the left, suggested after blank commands.

Table of Custom Sidebar Commands (continued)
Displayed Command
"[bold type]Useful Commands"
" "
"[fixed letter spacing]     N"
"[fixed letter spacing]  NW   NE"
"[fixed letter spacing]W    *    E"
"[fixed letter spacing]  SW   SE"
"[fixed letter spacing]	    S"
" "
"Look (L)"
"Inventory (I)"
"Take/Drop something"
"Examine (X) it"
"Open/Close it"
"Push/Pull it"
"Put it in something"
"Put it on something"
"Wait (Z)"
"?"
"Help"
"Hint"
"Save/Restore"
"Quit (Q)"
"[if the sidebar is allowing toggling]Sidebar on/off[end if]"

[Start "Classroom" Definition]
Classroom is a room.
The description of Classroom is "[if unvisited]'Hey, hey wake up! We fell asleep!' You groggily awaken, fleeting thoughts of your dreams slowly dissipate from your memory as you begin to recall where you are. You look around the room calmly for a moment, then reality sets in. Your eyes widen and the panic hits you… You fell asleep studying and your exam is in… wait, what time is it? [otherwise]Here's the text for every other time you enter the room."
A desk are scenery in the Classroom.
A backpack is a closed openable container in the Classroom.
A phone is an object inside the backpack.

The wooden door is a door.
The wooden door is an closed door.
The wooden door is north of the Classroom and south of the Hallway.
[End "Classroom" Definition]

[Start "Hallway" Definition]
The Hallway is a room.
The description of Hallway is "A crowded hallway with boxes blocking the exit."
The box are scenery in the Hallway.
The box can be blocking or not blocking. The box is blocking.
Instead of pushing the box:
	say "You moved the box out of the way!";
	now the box is not blocking.

Before going north:
	if the player is in the Hallway and the box is blocking:
    		say "You can't get past because of all of the boxes.";
		stop the action.
The Hallway is south of the Computer room.
[End "Hallway" Definition]

[Start "Computer Room" Definition]
The Computer Room is a room.
The description of Computer  Room is "It looks like a nerds heaven."
[End "Computer Room" Definition]

[Start "Use" Definition]
Using is an action applying to one thing. 
Understand "use [something]" as using.

Carry out using something:
	if the noun is the phone:
		if the player carries the phone:
			say "There is a list in the notes app that says: [line break]-Get Pencil[line break]-Get Binder[line break]-Print Notes";
		otherwise:
			say "You aren't carrying the phone.";
	otherwise:
		say "You can't use that.".
[End "Use" Definition]

