"Grandma's House" by Calien Somlak

The description of the player is "You are a small seven year old who has one desire: cookies. You have orange curly hair and are pretty coordinated".

[Exits from Get that Cat]
When play begins: 
    now left hand status line is "Exits: [exit list]"; 
    now right hand status line is "[location]".
To say exit list: 
	let place be location; 
	repeat with way running through directions: 
		let place be the room way from the location; 
		if place is a room, say " [way]".

[Disable take all from Tonic]
Rule for deciding whether all includes something: it does not.

Bedroom is a room. The description of Bedroom is "Completely dark, you lie on your bed. The wall arcross from you has a locked orange door, bloking your exit. To your left is a bedside table with a stapler and broken bike horn on it. Some records lie in the corner next to the window. You can feel the despair in the room taking shape as an imaginary cookie that is out of reach. Furthermore there's gotta be a key somewhere in the room since grandma is always scared that she'll lose her keys in wich case you she can direct you to the key and you can get out. The question is where is the key..."

Bed is scenery in bedroom. The description is "It's a stiff bed with long sheets hanging down to the floor".

Bedside tabel is scenery in bedroom. The description is "Sorry, this is for the next puzzle."

Stapler is a thing in bedroom. The description is "Sorry, this is for the next puzzle."

Broken bike horn is a thing in bedroom. The description is "Sorry, this is for the next puzzle."

Sheets is a thing in bedroom. Sheets are undescribed. The description is "These long sheets make it easy to hide something, of course to find anything you'd have to lift the sheets...".

Glass is a door. Glass is down of bedroom. Glass is locked and lockable. The printed name of glass is "Window". The wrench unlocks glass. The description of glass is "Closed with a crancking handle, but it's stuck, you probably need a wrench in order to crank it open."
Understand "Window" as Glass.

Handle is scenery. The description is "Just a spining stuck handle."

Despair is a thing in Bedroom. The description is "I can just imagine breaking off a nice piece with lots of chocolate chunks... theres probably something else that can break like a cookie in this room...". 
Instead of taking despair:
	say "Are you going delusional, the cookies are downstairs, you can't eat dreams!"

Records is a thing in bedroom. The description is "ohhh nice, some Frank Sinatra".

Broken disk is a thing in bedroom. Broken disk is undescribed. 
	
Imaginary cookie is a thing in Bedroom. Imaginary cookie is undescribed. The description is "I can just imagine breaking off a nice piece with lots of chocolate chunks... theres probably something else that can break like a cookie in this room...". 

Instead of taking imaginary cookie:
	say "Are you going delusional, the cookies are downstairs, you can't eat dreams!"

Orange is a door. Orange is west of bedroom. Orange is locked and lockable. The printed name is "Orange door". The description of orange is "I don't really like orange, also the door is old and faded."
Understand "Orange door" as Orange. 

Spare unlocks orange. Spare is in bedroom. The printed name of spare is "spare key". Spare is undescribed. 
Understand "spare key" as Spare.

Instead of attacking records:
	say "You shater the record on your bed and quickly clean up all the peices except for one large one which you keep to protect you from the bugs. You should be carefully, thankfully the walls kept you safe, but if you had done something this loud in the hallway, grandma would have waken up.";
	remove records from play;
	now player has broken disk.
	
Understand "lift [something]" as taking. 

Instead of taking sheets:
	if player has spare:
		say "Cough... cough... These sheets our even dustier than I thought!";
		now player has sheets;
	otherwise:
		if player has broken disk:
			say "You feel around under the bed with your disc shard ready, and you feel it... the Spare Key! You now have the spare key!";
			now player has spare;
		otherwise:
			say "I would have to feel around for a key, and I'm too scared to put my hand underneath this dark bed without something to kill any bugs that might jump out.";

[Next rooms:]

Hallway is a room. Hallway is west of Orange. The description is "There are windows on the side of the Hallway opposite of your door illumanting the objects in the room. There's a small wooden stool grandma stands on to clean the windows since their to tall for her. There's some old medals hanging on the wall my the bedroom door. Underneath the medals there is a table with a lamp. South of here the hallway extends to grandmas door. You also see the Hallway door to the stairs."

Stairs is scenery in Hallway. The printed name is "Hallway door". "Dang it I really wanted to go down stairs this way, I gess I'll have to find another way. What could I use to get downstairs?"
Understand "Hallway door" as stairs.

Grandmas entrance is a room. Grandmas entrance is south of Hallway. The description of grandmas entrance is "Still part of the hallway you see the sillouette of a wrench lying against the wall on the groud on the corner between the end of the line of windows and grandmas door. There is also a spare bell for the broken bike horn in your room and a rubber duck on the floor. The cat likes to play with pretty loud toys."

Spare bell is a thing in Grandmas entrance. The description of spare bell is "I heard the cat playing with it earlier. It was prettly loud so I wouldn't go near it if I were you.".
Understand "bell" as spare bell. 
Instead of taking spare bell:
	say "you reach for the bell and in the process of picking it up it rings alerting grandma. Your in big trouble for sneaking around a night!";
	end the story finally. 
	
Rubber duck is a thing in Grandmas entrance. The description of rubber duck is "I heard the cat playing with it earlier. It was prettly loud so I wouldn't go near it if I were you.".
Understand "duck" as rubber duck. 
Instead of taking rubber duck:
	say "you reach for the small duck and while picking it up you squeeze a bit to hard... Your in big trouble for sneaking around a night!";
	end the story finally. 

The wrench unlocks the stairs. The wrench is in Grandmas entrance. The description of wrench is "This wrench seems really good at cranking things open.".


[Rooms for last puzzle]
Landing Zone is a room. Landing zone is east of Glass. 

Woods is a room. Woods is east of Landing zone. 

Light Zone is a room. Light zone is north of Landing zone. 

Front Porch is a room. Front Porch is north of Light Zone. 

Kitchen is a room. Kitchen is west of of Green. 

Green is a door. Green is west of Front Porch. The printed name is "Outside door". 
Understand "Outside door" as Green. 


