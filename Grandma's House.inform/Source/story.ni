"Grandma's House" by Calien Somlak

Bedroom is a room. The description of Bedroom is "Completely dark, you lie on your bed. The wall arcross from you has a locked orange door named orange, bloking your exit. To your left is a bedside table with a stapler and broken bike horn on it. Some records lie in the corner next to the window. You can feel the despair in the room taking shape as an imaginary cookie that is out of reach. Furthermore there's gotta be a key somewhere in the room since grandma is always scared that she'll lose her keys in wich case you she can direct you to the key and you can get out. The question is where is the key..."

Bed is scenery in bedroom. The description is "It's a stiff bed with long sheets hanging down to the floor".

Bedside tabel is scenery in bedroom. The description is "Sorry, this is for the next puzzle."

Stapler is a thing in bedroom. The description is "Sorry, this is for the next puzzle."

Broken bike horn is a thing in bedroom. The description is "Sorry, this is for the next puzzle."

Sheets is a thing in bedroom. Sheets are undescribed. 

Despair is a thing in Bedroom. Despair is undescribed. The description is "I can just imagine breaking off a nice piece with lots of chocolate chunks... theres probably something else that can break like a cookie in this room...". 
Instead of taking despair:
	say "Are you going delusional, the cookies are downstairs, you can't eat dreams!"

Records is a thing in bedroom. The description is "ohhh nice, some Frank Sinatra".

Broken disk is a thing in bedroom. Broken disk is undescribed. 
	
Imaginary cookie is a thing in Bedroom. Imaginary cookie is undescribed. The description is "I can just imagine breaking off a nice piece with lots of chocolate chunks... theres probably something else that can break like a cookie in this room...". 
Instead of taking imaginary cookie:
	say "Are you going delusional, the cookies are downstairs, you can't eat dreams!"

Orange is a door. Orange is west of bedroom. Orange is locked and lockable. The description of orange is "I don't really like orange, also the door is old and faded."

Spare unlocks orange. Spare is in bedroom. The printed name of spare is "spare key". Spare is undescribed. 

Understand "break [something]" as breaking. Breaking is an action applying to one thing. 
Instead of breaking:
	say "You shater the record on your bed and quickly clean up all the peices except for one large one which you keep to protect you from the bugs. You should be carefully, thankfully the walls kept you safe, but if you had done something this loud in the hallway, grandma would have waken up.";
	remove records from play;
	now player has broken disk.
	
Understand "lift [something]" as taking. 

Instead of doing something to sheets:
	if examining sheets:
		say "These long sheets make it easy to hide something, of course to find anything you'd have to lift the sheets...";
	otherwise:
		if player has broken disk:
			say "You feel around under the bed with your disc shard ready, and you feel it... the Spare Key! You now have Spare!";
			now player has spare;
		otherwise:
			say "I would have to feel around for a key, and I'm too scared to put my hand underneath this dark bed without something to kill any bugs that might jump out.".

An every turn rule:
	if Orange is open, end the story. 



