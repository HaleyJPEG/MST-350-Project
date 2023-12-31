The story title is "Campus Crisis".
The story author is "The Yellow Team".
The story headline is "An Interactive University Struggle".
The story genre is "Comedy".
The release number is 1.
The story description is "Embark on a journey with your lifelong friend as the two of you attempt to reach your final exam before it starts. Together, you and Reese must navigate through various rooms on campus and pick up your exam materials as you go. But each new room poses its own challenge, and the clock continuously ticks closer and closer to your exam..."
The story creation year is 2022.

Include Common Commands Sidebar by Alice Grove.
Include Conversation Package by Eric Eve.
Include Undo Output Control by Erik Temple.
Include Exit Lister by Gavin Lambert.
Include Password Protected Containers by Matthew Davies.

Release along with a interpreter and cover art ("Classroom").
The pname is a text that varies.

When play begins:
	prepare the command sidebar, shown automatically, on the left, suggested after blank commands;
	don't mention visited rooms;
	now the command prompt is "What is your name? > ".

To decide whether collecting names:
	if the command prompt is "What is your name? > ", yes;
	no.

After reading a command when collecting names:
	if the number of words in the player's command is greater than 5:
		say "[paragraph break]Who are you, a member of the British royal family? No one has that many names. Let's try this again.";
		reject the player's command;
	now the pname is the substituted form of the player's command;
	now the command prompt is ">";
	say "Hi, [pname]![paragraph break]";
	move the player to the Study Room;
	reject the player's command.
	
Instead of looking when collecting names: do nothing.
Rule for constructing the status line when collecting names: do nothing.

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
"Go/Walk direction"
"Look (L)"
"Examine something"
"Take/Drop something"
"Use something"
"Inventory (I)"
"Call someone"
"Open/Close something"
"Push/Pull something"
"Put something in/on something"
"Wait (Z)"
"Talk to someone"
"?"
"When talking:"
"Ask for something"
"Ask about something"
"Topics"
"?"
"Exits on/off"
"[if the sidebar is allowing toggling]Sidebar on/off[end if]"
"?"
"Save/Restore"
"Quit (Q)"

A person can be full or not full. The player is not full.

[Start Room Layout Definition]
The large wooden door is west of the Study Room and east of the Hallway. The large wooden door is a locked door.
The plain door is south of the Study Room and north of the Computer Lab. The plain door is a locked door.
The framed door is north of the Central Hub and south of the Faculty Lounge. The framed door is a locked door.

The Central Hub is west of the Hallway.
The Locker Room is west of the Central Hub.
East of the Locker Room is nowhere. [Central Hub->Locker Room is one-way]
The Gym is south of the Locker Room.

The Central Hub is north of the Outdoors Garden.
The Outdoors Garden is south of the Central Hub.
The yellow door is east of the Gym and west of the Outdoors Garden. The yellow door is a locked door.
The Cafeteria is southeast of the Outdoors Garden.
The Exam Room is southwest of the Outdoors Garden.

The Computer Lab is east of the Outdoors Garden.
The red stair is south of the Computer Lab and below the Library. The red stair is an open door. The red stair is not openable.

The Faculty Lounge is a room.
The blue stair is east of the Faculty Lounge and below the Nurses Room. The blue stair is an open door. The blue stair is not openable.

[End Room Layout Definition]

[Start "Study Room" Definition]
Study Room is a room.
The description of Study Room is "[if unvisited]You jolt awake at the sound of an abrasive alarm. Disoriented, you look around the warm room to see notes strewn across a large oak desk, formulas scribbled on a dusty chalkboard, and an unplugged computer terminal in the far corner of the room. As you stand up from your seat at the desk, you notice that the chair across from you where Reese was sitting is still empty. You think to yourself, [italic type]I should probably find where they are.[roman type][otherwise]You look around the warm room to see notes strewn across a large oak desk, formulas scribbled on a dusty chalkboard, and an unplugged computer terminal in the far corner of the room. The chairs where you and Reese were sitting are both pulled out.".

A large oak desk is scenery in the Study Room. The description of the large oak desk is "You look at your mess of notes and cue cards covering the surface of the large oak desk. Some have writing, others are dauntingly blank and serve as an unfortunate reminder of your lack of preparation. [italic type]I wonder if any of these might be useful…[roman type]".

Some notes are scenery on the large oak desk. The description of the notes is "You sift through the pile of papers and uncover a small, pink sticky note that looks out of place. It appears to have an arrangement of numbers scribbled on it and nothing else.".
The pink sticky note is on the notes. The pink sticky note is undescribed. The description is "You look closer at the pink sticky note to reveal the numbers 5-0-2-0.".
After taking the pink sticky note, say "You take the pink sticky note. [italic type]Oh right, my locker combination! How do I always forget it...[roman type][paragraph break]".

A backpack is a closed openable container in the Study Room. The backpack is fixed in place. The description of the backpack is "The bronze coloured backpack is arguably far too small for a university student. It must be difficult to fit all of your academic materials into it.".
After opening the backpack, say "[italic type]Wow... my backpack's so empty. Where did I leave my exam materials?[roman type] You see your phone lying at the bottom of your bag. [italic type]This alarm is giving me a headache, I need to take my phone and shut it off[roman type].".
A phone is an object inside the backpack.
After taking phone, say "You pick up your phone and immediately dismiss the alarm. [italic type]Finally, now I can hear myself think. Maybe I should call Reese and ask if they're okay...?[roman type] You notice that Let's Get This Bread is the most recently used app on your phone. [italic type]Oh right, my to do list[roman type]. Your stomach growls at the reference of delicious carbs.".

Check opening the locked large wooden door:
	say “You walk towards the large wooden door to leave the study room, but the handle doesn’t turn. [italic type]Hmm, locked in? Maybe I should call Reese and see if they can open it from the other side[roman type].” instead.
	
Check opening the plain door:
	say "The plain door creaks open ever so slightly, just enough for you to see rows of computers, before it [italic type]*thud*[roman type] hits something and comes to a halt. [italic type]The door must be blocked from the other room, I'll have to move whatever it is first if I want to get through.[roman type][paragraph break]" instead.
	
A chalkboard is scenery in the Study Room. The description of the chalkboard is "You notice a faded circle next to a calculus formula, along with a pun that reads, 'Why did Pi get its drivers license revoked? Because it didn’t know when to stop!' You lightly chuckle at the joke. [italic type]Funny, but not helpful.[roman type]".

A computer terminal is scenery in the Study Room. The description of the computer terminal is "Looking closer at the computer terminal you see that its cord is frayed, rendering the machine useless. [italic type]Looks dangerous to plug in, I better leave this broken terminal alone.[roman type]".

A  player chair is scenery in the Study Room. The description of player chair is "[italic type]C[']mon [pname], we can't even think about sitting right now.[roman type]".

An empty chair is scenery in the Study Room. The description of the empty chair is "[if Reese is not following][italic type]I wonder where Reese is...[roman type][otherwise][italic type]I can't wait to go back to bed after all of this.[roman type]".

[End "Study Room" Definition]

[Start "Hallway" Definition]
The Hallway is a room. The Hallway can be FirstTimeEnterHallway or not FirstTimeEnterHallway. The Hallway is FirstTimeEnterHallway.
The description of Hallway is "[if wooden crates are blocking]Looking around the hallway you notice some large wooden crates blocking the south passageway. You glance to the other end of the hallway to check if anything might be useful, but all you see is an orange pylon with a taped on sign that reads 'CLOSED: USE OTHER EXIT,' a small toolkit, and the trash Reese kicked over littered on the floor. [otherwise]You enter the hallway, still annoyed with the construction. [italic type]At least we were able to move the wooden crates.[roman type]".

After going to the hallway for the first time:
	say "You briskly leave the room, aware that time is quickly ticking away every second. As you step into the hallway, you’re shocked to see the mess. 'WHEN will they finish this construction? Tuition keeps going up, but we can’t even access half of campus. What a scam,' you agitatedly exclaim. Reese kicks over a garbage can in protest.[paragraph break](PRESS ANY KEY)[paragraph break]";
	wait for any key;
	now the node of Reese is the Reese-ww1-node;
	continue the action.

A toolbox is a closed openable container in the Hallway. The toolbox is fixed in place. The description of the toolbox is "You approach the small, metal box hoping something inside might be useful.".
After opening the toolbox, say "You flip up the metal clips holding the toolbox lid in place. Looking into the toolbox, you notice an orange screwdriver lying at the top of other various tools.".
A screwdriver is an object inside the toolbox. The description of the screwdriver is "An orange screwdriver sitting atop other tools.".
After taking the screwdriver, say "[if wooden crates are blocking][italic type]Hmmm, I'm not sure if this will be useful for moving the crates. Maybe it'll come in handy later? I'll take it anyways.[roman type] You chuckle to yourself over your unintentional pun.[otherwise] Perfect! This will come in handy for the breaker!".

Some wooden crates are in the Hallway. The wooden crates are fixed in place.
The wooden crates can be blocking or not blocking. The wooden crates are blocking.
Instead of pushing the wooden crates:
	say "You attempt to move the wooden crates, but they’re too heavy. You exasperatedly turn to your friend and make a self-deprecating joke about your noodle arms. 'Heh, I’m starting to wish my parents signed me up for sports instead of band lessons when I was younger…' Your friend is distractedly looking down, popping bubble wrap they found on the floor. [italic type]*pop* *pop* *pop*[roman type]. You think to yourself, [italic type]What is wrong with them?[roman type][paragraph break]".
[End "Hallway" Definition]

[Start "Central Hub" Definition]
The Central Hub is a room.
The description of Central Hub is "Stepping into the large atrium, you feel a sense of relief hearing the quiet trickling of the fountain. It's too early for anyone else to be here, and the usually crowded area feels quite tranquil at this hour. The moonlight is pouring in from the glass dome, casting a shadow on the whole room. You notice something refracting light near the log bench."

A fountain is scenery in Central Hub. The description of the fountain is "Walking to the centre of the room, you stare up at the oddly ethereal fountain. It doesn't usually look this pretty, but the moonlight shining in from the glass ceiling is giving the fountain a faint glow.[italic type] I should make a wish.[roman type]".

A directory is scenery in Central Hub. The description of the directory is "Blurry eyed, you look at the directory. You read the names of rooms X, X, X."

A plant is scenery in central hub. The description of plant is "How lively."

A log bench is scenery in central hub. The description of log bench is "Right, the founder's bench. What does it say on the plaque?" 
A gold key is an object on the log bench. The description of the gold key is "You notice a gold key shining atop the log bench."
After taking the gold key, say "I wonder what door this is for.".

A plaque is scenery on the log bench. The description of the plaque is "Albert M. Ford."
[End "Central Hub" Definition]

[Start "Locker Room" Definition]
The Locker Room is a room. The Locker Room can be LockerEventDone or not LockerEventDone. The Locker Room is not LockerEventDone.
The description of Locker Room is "[if unvisited] There is a row of lockers along the south wall, this is where you and Reese always store your supplies. [otherwise] There is a row of lockers along the south wall, this is where you and Reese always store your supplies.".

Your shared locker is a password-protected container.  Your shared locker is in Locker Room.
The password of Your shared locker is "5020".
The prompt of Your shared locker is "Combination".
The password failure of Your shared locker is "[italic type]I don't know the combination...[roman type] Maybe I should ask my Reese about it.".
The password request of Your shared locker is "Please enter the combination".
The password success of Your shared locker is "You hear the lock click as it unlocks and the door swings open.".


The Essential oil is an object inside Your shared locker.
After taking the essential oil, say "'You know me, I CAN'T write an exam without the calming scent of lavendar. And besides, 'memory recall' is a real thing! I always have to study with this too.' You take a deep breath in.".
The Writing materials is an object in Your shared locker.
After taking the writing materials, say "Awesome, that's two items off my 'To Do' list!". 
The description of Your shared locker is "Your shared locker with a number combination lock.".
[End "Locker Room" Definition]

[Start "Gym" Definition]
The Gym is a room.
The description of the Gym is "There are quite a few nets and hoops set up here for various sports. The room is big and open and the ceiling is tall, a nice change from those narrow hallways. You notice Reece left the door to the breaker room open.".
The Storage Room is a room. [inaccessable, only for Reese]

[End "Gym" Definition]

[Start "Computer Lab" Definition]
The Computer Lab is a room.
The description of Computer Lab is "You walk into the 90s-esque computer lab and can't help but laugh everytime you see the big brick computer monitors. 'These really need to be updated, I doubt most of them are even still functional.' You look around the outdated room, the bright fluorescent lights only seem to make this room look worse. 'C'mon Reese, let's go print off our student IDs.' The two of you wander over to the desktop computer, the only one that doesn't take eons to start up. Next to the desktop is a password note.".

Check opening the locked plain door:
	If computer lab is visited:
		now the plain door is unlocked.

A password note is scenery in Computer Lab. The description of the password note is "Here is the note to login the Desktop Computer.[line break][italic type]0: should know the password of this computer, obviously.  [line break]1: To login the Computer you should try 350. [line break]2: The password is composed of five digits, is it?[line break]3: What's on your cheatsheet?[line break]4: The PASSWORD is !@#$%.[line break]5: Your Reese doesn't know the password either.[line break]6: You have no clue at this time, but [line break]7: This note is USELESS. [line break]8: If you want to login, you[line break]9: you will figure it out."

Your Desktop Computer is a password-protected container.  Your Desktop Computer is in Computer Lab.
The password of Your Desktop Computer is "8069".
The prompt of Desktop Computer is "Password".
The password request of Your Desktop Computer is "Please enter the Password: _ _ _ _ ".
The password success of Your Desktop Computer is "You logged in successfully. You printed out your Student ID's, and you can collect them at the printer.".
The password failure of Your Desktop Computer is "The computer beeps as if its mad at you.. that was the wrong password".
The printer is scenery in the Computer lab. 

Check opening the locked Desktop Computer:
	If Desktop Computer is unlocked:
		now the The Student ID is on the printer. The description of the Student ID is "'Ha, we look so young in our ID photos! I can't believe these were taken 4 years ago...'". 


The breaker is a closed openable container. The breaker is in the Computer Lab. The breaker is fixed in place.

Instead of opening the breaker:
	say "[if the breaker is closed]The breaker is closed tight with a screw. [italic type]I guess I'll need to find a screwdriver to use on it...[roman type][otherwise]The breaker box is open.[line break]";
	[now the breaker is open. - used for testing]
	
The Gym Switch is a switched off device in the breaker. The Gym Switch is fixed in place. The Gym Switch can be either GymSwitchLocked or GymSwitchUnlocked. The Gym Switch is GymSwitchLocked.
The Faculty Switch is a switched off device in the breaker. The Faculty Switch is fixed in place.

[Note for Simon: The player should need to call Reese so they can switch both of their breakers at the same time]
At the time when the Gym Switch timeouts:
	now the Gym Switch is GymSwitchLocked.

Instead of switching on the Gym Switch when the Gym Switch is GymSwitchLocked:
	say "The switch clicks into the on position but then snaps back off. [italic type]Maybe there is another breaker somewhere that has to be activated at the same time. Seems like Reese and I need to be split up for this one[roman type].".

after switching on the Gym Switch:
	say "[italic type]Now the Yellow Door in the Gym should be unlocked. I should hurry back to Reese.[roman type]";
	now the Yellow Door is unlocked.

Instead of switching off the Gym Switch:
	say "[italic type]Why would I switch something thats already on.[roman type]".

Instead of switching on the Faculty Switch:
	say  "The switch clicks into the on position.";
	now the Faculty Switch is switched on;
	now the Faculty Lounge is lit.

Instead of switching off the Faculty Switch when the Faculty Switch is switched on:
	say "[italic type]Why would I switch something thats already on.[roman type]".
	
[End "Computer Lab" Definition]

[Start "Library" Definition]
The Library is a room.
The description of Library is "There are tons of books scattered about various bookshelves, looks like you were not the only one panic-studying.".

A bookshelf is scenery in the Library. The description of the bookshelf is "A massive bookshelf with more books than I'll ever need. Oh! There is the textbook that I'm looking for.".

The textbook is on the bookshelf. The textbook is undescribed.
[End "Library" Definition]

[Start "Faculty Lounge" Definition]
The Faculty Lounge is a dark room.
The description of Faculty Lounge is "[if unvisited]You see a fridge, coat hangers, and a jacket hung up.[otherwise]You see a kitchenette as well as a bunch of couches and comfy chairs scattered around the room". [placeholder]

Robbie Banks jacket is a thing in the Faculty Lounge. The description of robbie banks jacket is "You watch Reese squint at the stitching on the jacket. 'The name reads 'Robbie Banks.' Banks you say? Well, I could benefit from an ATM withdrawl, if you catch my drift.' Reese nudges you to look at the bills sticking out of the expensive jacket's pocket.".
Money is an undescribed object in robbie banks jacket. The description of money is "You look at the bills and wonder whether you should take them or not. 'C'mon [pname], it's the least this darn University can do for us since tuition hikes are the REAL robbery here.' You think back to your class with Proffesor Banks last year: [italic type]Well, they were really nice to me when I had that vet emergency with my dog. They gave me a generous extension even though the deadline had already passed. I could maybe find money elsewhere, people tend to drop change in the cafeteria. Then again... do I have time to scour for change?[roman type]".
After taking money, say "I feel a little guilty... 'Yeah, but think about all the FOOD we can buy with a $50 bill!'". 


A fridge is a closed openable container in the faculty lounge. The description of the fridge is "A stainless steel fridge. Reese eagerly exclaims, 'Oooooh, I wonder what's inside!!'". 
After opening fridge, say "You open the fridge to reveal a massive white sheet cake with text that reads 'Congrats on retirement Robbie! You think to yourself, Sheesh, how can anyone afford to retire in this economy?". 
A massive white sheet cake is scenery in the fridge. The description of the massive white sheet cake is "Covered in vanilla frosting with balloon shaped piping, the cake reads'Congrats on retirement Robbie!' Your Reese exlcaims, 'That. Cake. Looks. DELICIOUS!!' Your stomach rumbles in agreeance. 'Yeah, but it's not our retirement,' you reluctantly respond.".

The Coat hangers are scenery in the faculty lounge. The description of the coat hangers is "Some empty hooks, all except one...". 
The name plaques are scenery on the coat hangers. The description of the name plaques is "Sara, Evenson, Julie, Robbie.".

The brown couch is scenery in the faculty lounge. The description of the brown couch is "You admire how inviting it's plush, corduroy fabric and fluffed up pillows appear. You quickly shake your head and tell yourself you can sleep after your exam.".

A sign on the wall is scenery in the faculty lounge. The description of the sign on the wall is "NURSES ROOM: Second Floor.".

[End "Faculty Lounge" Definition]

[Start "Nurses Room" Definition]
The Nurses Room is a room.
The description of the Nurses Room is "You walk into the bright, sterile clinic, but no one is sitting at the reception desk. 'UGH! It must be too early still!' Luckily you look to the right of the desk to see a sign that says 'FREE EPI-PENS' with a wicker basket underneath holding one. last. epi-pen. You scream out of relief!". 
A Epi Pen is a thing in the Nurses Room.
After taking epi pen, say "FINALLY! Can I make it back in time?! I hope so... Hang in there Reece, I'm coming for you!!".
[End "Nurses Room" Definition]

[Start "Outdoors Garden" Definition]
The Outdoors Garden is a room.
The description of the Outdoors Garden is "You look around the open courtyard, grateful it isn't raining. You quickly look up at the sky and see a shooting star. You think to yourself, I hope that's good luck... There are various shrubs and flowers lining the sides of the building.". 
[End "Outdoors Garden" Definition]

[Start "Cafeteria" Definition]
The Cafeteria is a room.
The description of Cafeteria is "You can smell a lot of delicious food in here, unfortunately only one shop is open. There are a bunch of tables scattered around the room and there is one employee working at McRonalds."

After going to the Cafeteria when the the money is carried and the essential oil is carried and the textbook is carried and the writing materials is carried and the Student ID is carried and the Reese is not dying and the Reese is not saved:
	disable saving of undo state;
	say "Alright, lets go get some food, we only have 15 minutes until the exam!";
	the exam starts in 15 turns from now;
	continue the action.

[Start Employee Definition]
Employee is a person in the Cafeteria.

food-suggestion is a misc-suggestion.
The printed name of food-suggestion is "ask them for/about food".
The other-suggestions of Employee are {food-suggestion}.


[Start ask about/for food]
response for Employee when asked for "food":
	  if the money is carried:
		say "[got food]";
	otherwise:
		if the player is full:
			say "'You just ate, how could you be hungry again?' he replies.";
		otherwise:
			say "You'll need some money first.".
		
response for Employee when asked about "food":
	  if the money is carried:
		say "[got food]";
		[stop the action; I dont think this is needed]
	otherwise:
		if the player is full:
			say "'You just ate, how could you be hungry again?' he replies.";
		otherwise:
			say "You'll need some money first.".

[This is so that everything does not need to be written twice]
To say got food:
	say "'What do you want to eat?' he replies' [line break] 'Two double cheeseburgers!' Reese exclaims' [line break] 'Coming up.'";
	now the player is full;
	say "You're sitting enjoying the burgers when Reese suddenly burst out in hives, they start to struggle and gasp for air as their throat slowly closes... How could you forget, McRonalds is famous for using peanut oil to cook their burgers! You realize you must quickly find an epi pen to save your dear friend Reese's life..... But it would also suck to be late for the exam.";
	now the Reese is not following;
	now the Reese is dying;
	the Reese succumbs in 10 turns from now.
[End ask about/for food]

Default ask response for the Employee:
	say "'We don't sell that here.' he replies.".
	
Default response for the Employee:
	say "'I can't be bothered to figure out what you meant by that. We just serve food here.' he replies.".
[End Employee Definition]
[End "Cafeteria" Definition]

[Start "Exam Room" Definition]
The Exam Room is a room.
The description of Exam Room is "This room is purposely unreachable.".
[End "Exam Room" Definition]

[Start "Use" Definition]
Using is an action applying to one carried thing. 
Understand "use [something]" as using.

Carry out using something:
	if the noun is the phone:
		if in darkness:
			say "You try turning on the flashlight on your phone, but to no avail. 'Right, the flashlight hasn[']t worked ever since I dropped my phone last month! It must have landed right on the flashlight unit. Since everything else worked fine and I never used the flashlight on my phone, I thought I lucked out... until now. Why do insignificant things always come back to haunt me in crucial situations?' you say as you get frustrated at your bad luck.[paragraph break]";
		say "There is a list in the notes app that says: [line break]- Get essential oil";
		if the player is carrying the essential oil:
			say " (DONE) ";
		say "[line break]- Get writing materials (2HB pencil, eraser, & pencil sharpener)";
		if the player is carrying the writing materials:
			say " (DONE) ";
		say "[line break]- Get textbook";
		if the player is carrying the textbook:
			say " (DONE) ";
		say "[line break]- Get student ID";
		if the player is carrying the student ID:
			say " (DONE) ";
		say "[line break]- CONSUME ALL OF THE CARBS (mmm, delicious food)";
		if the player is full:
			say " (DONE) ";
		say "[line break]";
		if the Reese is dying:
			 say "- Find EPI Pen";
			if the player is carrying the epi pen: 
				say " (DONE) ";
			say "[line break]";
		if the Reese is saved:
			 say "- Find EPI Pen (DONE) [line break]";
		say "- [bold type]GET TO EXAM ON TIME!!![roman type][paragraph break]";
	otherwise if the noun is the epi pen:
		if the Reese is dying and the player is in the cafeteria:
			now the Reese is not dying;
			now the Reese is saved;
			now the Reese is following;
			say "You managed to save Reese! Now to get to the Exam!";
		otherwise:
			say "You can't see anyone to use that on.";
	otherwise if the noun is the screwdriver:
		if the player is in the Computer Lab and the breaker is closed:
			say "You pull out your screwdriver and use it to open the breaker, it swings open and reveals all of the switches.";
			now the breaker is open;
		otherwise:
			say "You can't see anything to use that on.";
	otherwise:
		say "You can't use that.".
[End "Use" Definition]

[Start "Call" Definition]
Calling is an action applying to one visible thing.
Understand "call [any thing]" as calling.

Does the player mean calling the Reese: it is likely.

Carry out calling someone:
	if player is carrying phone:
		if the noun is Reese:
			if Reese is not following:
				if player is in Locker Room and Locker Room is dark:
					if Reese is in Gym:
						say "You try to calm yourself as you call Reese who is separated by the heavy automatic door. 'Hello? As soon as you left, the lights in here turned off! The door isn't budging either. Can you look around for some sort of switch to turn the electricity back on?'[paragraph break]'Sure sure... just hang in there. I'm going to head to the gym storage room and look for the breaker in there,' says Reese in a nonchanlant tone. You hear the sound of their footsteps moving farther away at a normal walking pace.[paragraph break]'What are they doing being so casual in a situation like this?' You look at the clock on your phone advancing steadly, but all you can do it wait again.";
						now Reese is in the Storage Room;
						the Reese arrivesLockerRoom in two turns from now;
					else if Reese is in Storage Room:
						say "Reese doesn[']t pick up the phone. They are probably too busy trying to find the breaker and turn the lights back on.";
				else if player is in Study Room and wooden door is locked:
					say "You call them, but they don[']t answer. Fear and panic begin to set in as you realize your final exam begins in an hour, and your friend has disappeared… You decide to leave a voicemail: 'Reese, where are you? I must have fallen asleep after you left for the bathroom, but why aren[']t you back? I’m locked in our study room and your bag is still here. Can you come let me out?' You end the call and anxiously hope they hear it in time, [italic type]I guess I’ll just have to wait...[roman type][paragraph break]";
					the Reese arrivesStudyRoom in four turns from now;
				else if player is in Computer Lab and the Gym Switch is switched off:
					say "'Hey Reese, I've got a switch here that needs to be activated at the same time as another switch in the Gym. Can you try flipping on the switch in the Gym at the same time? Let do it immediately after I hang up,' you say.[paragraph break]After hearing an approval from Reese, you get ready to flip the switch and hang up.";
					now the Gym Switch is GymSwitchUnlocked;
					the Gym Switch timeouts in 1 turn from now;
				otherwise:
					say "'Remember to come back and get me!' says Reese";
			otherwise:
				say "'What are you doing? I'm right beside you,' says Reese";
		otherwise:
			say "You can't call that person.";
	otherwise:
		say "You aren't carrying the phone.".
[End "Call" Definition]


[Start Reese Definition]
Reese is a person.

The Reese can be dying or not dying. The Reese is not dying.
The Reese can be saved or not saved. The Reese is not saved.
[General Suggestions]
help-suggestion is a misc-suggestion.
The printed name of help-suggestion is "ask them for help".

The other-suggestions of Reese are {help-suggestion}.
[Convonodes]
boost-suggestion is a misc-suggestion.
The printed name of boost-suggestion is "ask them for a boost".

wtw-suggestion is a misc-suggestion.
The printed name of wtw-suggestion is "ask them about where they were".

ww-suggestion is a misc-suggestion.
The printed name of ww-suggestion is "ask them about what is wrong".

The Reese-intro-node is a closed convnode.
The other-suggestions of Reese-intro-node are {wtw-suggestion}.

The Reese-boost-node is a closed convnode.
The other-suggestions of Reese-boost-node are {boost-suggestion}.

The Reese-ww1-node is a closed convnode.
The other-suggestions of Reese-ww1-node are {help-suggestion, ww-suggestion}.

The Reese-ww2-node is a closed convnode.
The other-suggestions of Reese-ww2-node are {help-suggestion, ww-suggestion}.

[Start Reese following definition]
Reese can be following or not following. Reese is not following.

Every turn:
	if Reese is following:
		if the location of Reese is not the location of the player:
			let the way be the best route from the location of Reese to the location of the player, using even locked doors;
			try Reese going the way;
	otherwise:
		if the location of Reese is the location of the player:
			now Reese is following.
[End Reese following definition]	

[Start Reese where they were definition (Takes place in the study room)]
response for Reese-intro-node when asked about "where they were":
	say "'Yeah, I do have something to ask you. What the hell Reese, where have you been?! I fell asleep studying and you know we have our exam today, why didn’t you wake me!?'[paragraph break]Your friend laughs which annoys you even more since you don’t find the situation to be funny, but then they blurt out, 'I fell asleep too… on the toilet.' Suddenly, your irritation begins to fade away and you start laughing with them. 'Alright,' you say, 'I guess I can forgive you this time. Come on, let’s get out of here.'[remove wtw-suggestion other suggestion][leavenode]".
	
default response for Reese-intro-node:
	say "'Huh? what are you talking about? Did you mean to ask me where I was?' Your Reese replies.".
	
default response for Reese:
	say "'Sorry I don't understand what you are asking about' Your Reese replies.".
[End Reese where they were definition]

[Start asking for help definition] [This will need to be handled per room, and will only be suggested when no nodes are active]
response for Reese when asked for "help":
	if the player is in the Hallway and the wooden crates is blocking:
		say "Alright [pname], I'll help you out.[paragraph break]Together, you pick up the heavy crates one by one and move them across the hall. Wiping sweat off your forehead, you're relieved to see the path's now clear.";
		now the wooden crates are not blocking;
	otherwise:
		say "What do you need help with [pname]?[line break] I don't see anything you need me to do in this room.".
[End asking for help definition]

[Start asking Reese in hallway definition]
response for Reese-ww1-node when asked about "what is wrong":
	say "'Hey Reese, are you alright? You seem preoccupied.' Reese doesn't look up from their bubble wrap, but they do let out a heavy sigh. [italic type]What was THAT about...?[line break][roman type]You silently debate with yourself whether you should return your focus back to moving the crates, or further nudge Reese to open up about what is wrong.[node Reese-ww2-node]".
	
response for Reese-ww1-node when asked for "help": [This is needed]
	say "Alright [pname], I'll help you out.[paragraph break]Together, you pick up the heavy crates one by one and move them across the hall. Wiping sweat off your forehead, you're relieved to see the path's now clear.[leavenode]";
	now the wooden crates are not blocking.

response for Reese-ww2-node when asked about "what is wrong":
	say "'We've been friends long enough for me to know when something's on your mind, seriously, what is it?' 'Well,' they begin, 'I'm kind of glad this is happening.' Your concern slowly fades and frustration builds in you once more,[italic type] They're GLAD?[roman type] 'You know how things are for me at home, and I still haven't heard back from any of the jobs I've applied for post-grad,' they continue, 'and just. Well. It's nice to spend more time with you. I've missed hanging out.' Your face softens into a smile.[leavenode][paragraph break]".
	
response for Reese-ww2-node when asked for "help": [This is needed]
	say "Alright [pname], I'll help you out.[paragraph break]Together, you pick up the heavy crates one by one and move them across the hall. Wiping sweat off your forehead, you're relieved to see the path's now clear.[leavenode]";
	now the wooden crates are not blocking.
[End asking Reese in hallway definition]

[Start asking Reese for/about the locker combination definition]
response for Reese when asked about "locker combination":
	say "'You forgot our locker combination?! Come on [pname]... I wrote it down on a pink note, maybe its somewhere in the study room.'[paragraph break]".
	
response for Reese when asked for "locker combination":
	say "'You forgot our locker combination?! Come on [pname]... I wrote it down on a pink note, maybe its somewhere in the study room.'[paragraph break]".
[End asking Reese about the locker combination definition]

[Start asking Reese for a boost definition]
response for Reese-boost-node when asked for "a boost":
	say "'Okay, stand on my shoulders and I'll boost you up. Don't forget to come back to get me after you unlock this yellow door,' says Reese[remove boost-suggestion other suggestion][leavenode]"; [placeholder]
	now the player is in the Outdoors Garden;
	now the Reese is not following;
		
response for Reese when asked for "a boost": [This is used every other time]
	say "'What do you need a boost for? This ain[']t the time for acrobatics,' says Reese";
[End asking Reese for a boost definition]

[This is not currently used.]
response for Reese when asked about "food":
	say "Oh yeah I'm starving', they reply.".

[Start Reese arrives definition]
At the time when the Reese arrivesStudyRoom:
	now the Reese is in the Study Room;
	now the Reese is following;
	now the wooden door is unlocked;
	now the wooden door is open;
	say "After a few brief moments, you hear a *[italic type]click[roman type]* and see the door swing open. Reese strolls in casually as if nothing[']s happened, and you stare at them in bewilderment. [italic type]How can they be so calm right now?! Our final is starting soon, we don’t even have everything we need for it yet, and we have to walk all the way across campus![roman type] Your Reese smirks back at you and says, 'You look like you have something to ask me?' [italic type]Do I ask them about where they were or quit wasting time?'[roman type][paragraph break]";
	initiate a conversation with Reese at Reese-intro-node, immediately;
	continue the action.
		
At the time when the Reese arrivesLockerRoom:
		now the Reese is in the Locker Room;
		now the Reese is following;
		now the Locker Room is lit;
		now the Locker Room is LockerEventDone;
		say "The electricity comes back on and Reese returns to your side soon after. 'Took you long enough! All I could do was sit in this dark room and stare at the clock on my phone!' You exclaim.[paragraph break] Reese replies in a dismissive tone: 'Chill, figuring out those switches in the breaker took some time! It[']s not like I'm an electrical engineer either. Hey, as a bonus, I also turned on the light in the Nurses Room. That should be somewhere north of the Central Hub, if I recall correctly.'[paragraph break] You decide to move on after collecting yourself, despite feelings of annoyance towards Reese.".
[end Reese arrives definition]
[End Reese Definition]

[Start Before going In a direction]
Before going south:
	if the player is in the Locker Room:
		if the Locker Room is not LockerEventDone:
			if the Locker Room is lit:
				now Reese is in the Gym;
				now Reese is not following;
				now the Locker Room is dark;
				say "Reese walks ahead of you as you both head towards the exit. As you try to remember if you forgot anything with your head down, the lights abruptly turn off and you hear the sound of a door slamming shut. You quickly lift your gaze to see the face of Reese behind the vertical window in the automatic door, now closed.";
				stop the action;
			otherwise:
				if Reese is in the Storage Room:
					say "You walk towards the automatic door and try to slide it open. The door stays firmly closed in place. You bang your fist on the window and yell at Reese, but it seems nothing is getting through due to sound isolation. You see Reese hold up their phone and point at it, indicating a more suitable form of communication.";
				otherwise:
					say "You walk towards the automatic door and try to slide it open. The door stays firmly closed in place.";
				stop the action.

Before going southwest:
	if the player is in the Outdoors Garden:
		if the player is not full or the essential oil is not carried or the textbook is not carried or the writing materials is not carried or the Student ID is not carried:
			say "You have more things to do before you can enter the exam room. Use your phone for to see the list.";
			stop the action;
		otherwise:
			if the Reese is dying:
				end the story saying "You left Reese behind to suffer. [credits]";
			otherwise:
				end the story saying "You made it to the exam on time! And you manged to save Reese! [credits]".

Before going west:
	if the player is in the Hallway and the wooden crates is blocking:
		say "You can't get past because of the wooden crates.";
		stop the action;

Before going east:
	if the player is in the Gym and the Yellow Door is locked:
		say "The yellow door is locked but you can see a small vent opening to the upper right. Maybe ask Reese?"; [placeholder]
		now the node of Reese is the Reese-boost-node;
		stop the action.
		
Before going north: 
	if the player is in the central hub and the gold key is carried:
		now the framed door is unlocked.
[End Before going In a direction]


[Start Understand More Options]
Understand "flip [switched off device]" as switching on. Understand "flip [switched on device]" as switching off.
 Understand "flip [device]" as switching on.

Understand "push [switched off device]" as switching on. Understand "push [switched on device]" as switching off.  Understand "push [device]" as switching on.

Understand "pull [switched off device]" as switching on. Understand "pull [switched on device]" as switching off.  Understand "pull [device]" as switching on.

Understand "use [switched off device]" as switching on. Understand "use [switched on device]" as switching off.  Understand "use[device]" as switching on.

[Start Save and Undo Definitions]
[When at the cafeteria, discuss how you only have x amount of time to get to the exam on time. Then have the Reese have their reaction, and force the player to rush to get the epi pen, make it to the exam, neither, or both.]

At the time when the Reese succumbs:
	if the Reese is not saved:
		say "You failed to save your friend, they passed into another life, maybe you can still make it to the exam on time.".

At the time when the exam starts:
	say "You failed to make it to the exam on time.";
	if Reese is not dying:
		end the story saying "At least you were able to save Reese. [credits]";
	otherwise:
		end the story saying "You weren't even able to save Reese. [credits]";
	undo the current turn.
	
DisablePlayerUndo is a truth state that varies. DisablePlayerUndo is true.
Before undoing an action when DisablePlayerUndo is true:
	 say "You can't undo the actions you have made. What is this, some kind of game to you?";
	 rule fails.

Report undoing an action:
	say "[bracket]Taking you back to the moment before you entered the cafeteria[close bracket][paragraph break]";
	say "[bold type]";
	say "[Location]" in title case;
	say "[roman type][paragraph break]";
	enable saving of undo state;
	rule succeeds.
		
[End Save and Undo Definitions]

To say credits:
	say "Created by the Yellow Team:[line break] - Matthew Davies[line break] - Haley Skjersven[line break] - Marie De Baere[line break] - Simon Chen[line break] - Leslie Qin[line break]";
	say "Used Extensions By:[line break] - Alice Grove[line break] - Eric Eve[line break] -  Erik Temple[line break] -  Gavin Lambert[line break] - Matthew Davies[line break]";
	say "Cover Image Via:[line break]Chiikun Box/Shutterstock.com[line break]".