"Grandma's House" by Calien Somlak

When play begins: say "You are a small ten year old having a sleep over at grandmas house. You helped her make homemade chocolate cookies during the day and couldn't get enough of them after dinner. Of course bed time is way to early, and you just had cookies so you lay in your bed awake, wondering about the cookies down stairs. Is there any way you could get to them?"

The description of the player is "You are a small ten year old who has one desire: cookies. You have orange curly hair and are pretty coordinated".

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

Bedroom is a room. The description of Bedroom is "Completely dark, you lie on your bed. The wall arcross from you has an orange door. To your left is a bedside table [if player is not carrying stapler] with a stapler on it. [end if] [if player is not carrying broken bike horn] There is also a broken bike horn. [end if] [if records is visible] Some records lie in the corner next to the window. [end if] You can feel the despair in the room taking shape as an imaginary cookie that is out of reach. [if player is not carrying spare] Furthermore there's gotta be a key somewhere in the room since grandma is always scared that she'll lose her keys in wich case you she can direct you to the key and you can get out. The question is where is the key..."

Bed is scenery in bedroom. The description is "It's a stiff bed with long sheets hanging down to the floor".

Bedside table is scenery in bedroom. The description is "This table seems really stury, so sturdy you could hang off of it."
Understand "beside table's legs" as bedside table.

Stapler is a thing in bedroom. The description is "Seems like it could be good at hanging things up."

Broken bike horn is a thing in bedroom. The description is "The ringer is broken, however it seems like it could still be attached to any poles about as thick as the bedside table's legs with the comand combine."

Sheets is a thing in bedroom. Sheets are undescribed. The description is "These long sheets make it easy to hide something, of course to find anything you'd have to lift the sheets...".

Understand "crank [something] with [something]" as unlocking it with. 
Understand "crank open [something] with [something]" as unlocking it with.
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
Understand "door" as orange.

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
			say "While the long sheets sure look like they could be hidding something useful I am not willing to reveal any bugs or monsters under my bed without some sort of Sharp object like broken glass.".
			
Bugs is scenery in bedroom. The description is "Uhhh... they give me the creeps". 
Understand "Bug" as Bugs.

Monsters is scenery in bedroom. The description is "ahhhhhhhhhhh......"

			
[The combining action from Tonic.]
Understand "combine [something] with [something]" as combining it with.
Combining it with is an action applying to two things.

[The line below tells Inform7 that combining produces something. From Tonic.]
The combining it with action has an object called the Contraption.

Setting action variables for combining something with something: 
	let X be a list of objects;
	add the noun to X;
	add the second noun to X;
	sort X; 
	repeat through the Table of ropes: 
		let Y be the parts list entry; 
		sort Y; 
		if X is Y: 
			now the Contraption is the results entry.

[if there is no match for the combination of things, there is no result for the combining, so STOP the action from Tonic.]
Check combining it with:
	if Contraption is nothing:
		say "You can't combine [the noun] and [the second noun] into anything useful.[line break]Try another combination of things.";
		stop the action.

[If action is not stopped, continue to… From tonic]
Carry out combining it with: 
	say "You fuse together [the noun] and [the second noun].";
	remove the noun from play;
	remove the second noun from play;
	move the Contraption to location;
	say "You have made [contraption]!"
	
Table of Ropes
Parts List	Results
{Broken bike horn, bedside table}	Hook
{Hook, Medal}	Hanger
{Hanger, sheets}	Homemade rope

Hook is an object. The description is "Now you've made a hook that you can tie things to. This will be super good for climbing out the window. The only problem is you can't attach something as big as a bed sheet to this make shift hook, you have to combine something else to the hook in order to attach your sheets.".

Instead of taking hook:
	say "It's attached to the table, which is gonna be good for getting you down stairs, so I wouldn't undo it".

Instead of combining Hook with sheets:
	say "The only problem is you can't combine something as big as a bed sheet to this make shift hook, you have to combine something else to the hook in order to attach your sheets.".

Hanger is an object. The description is "Great now you have a big enough loop to attach all your sheets to!"

Instead of taking hanger:
	say "It's attached to the table, which is gonna be good for getting you down stairs, so I wouldn't undo it".
	
Homemade rope is an object. The description is "Just like in the movies you have made your own escape line! Good Job!".

Instead of taking homemade rope:
	say "It's attached to the table, which is gonna be good for getting you down stairs, so I wouldn't undo it".

Instead of going down:
	if Glass is closed:
		say "You gotta open the window before you can get down there!";
	otherwise:
		if Homemade rope is in bedroom:
			say "You swing down the outside of the house, feeling the cool night breeze softly landing on the grass outside.";
			now player is in Landing zone;
		otherwise:
			say "You're gona kill yourself kid! Haven't you seen the movies, at least make a homemade rope out of the sheets and slide down on that.".
		
		
[Next rooms:]

Hallway is a room. Hallway is west of Orange. The description is "There are hallway windows on the side of the Hallway opposite of your door illumanting the objects in the room. [if player is not carrying wooden stool] There's a small wooden stool grandma stands on to clean the windows since they're to tall for her. [end if] There's some old medals hanging on the wall by the bedroom door. Underneath the medals there is a table with a lamp. South of here the hallway extends to grandmas door. You also see the Hallway door which leads to the stairs, leading down to the kitchen!"

Wooden stool is a supporter in Hallway. The Wooden stool is not fixed in place. Stool is enterable. The description is "Small wooden stool. It can fold in on itself so you can carry it around. Pretty nice!" 
Understand "stool" as wooden stool.
Understand "climb on [something]" as entering.
Instead of dropping stool:
	say "You quietly place down the stool.";		
	now stool is in location.
			
Marble is scenery in hallway. The description is "Nice old marble table, nothing much.".
Understand "table" as Marble.

Lamp is a device in Hallway. Lamp is fixed in place. The description is "Heavy metal lamp with a switch on the top. It's a really bright lamp, the light will probably leak through to grandma's room if you try and turn it on, so don't."
Instead of switching on lamp:
	say "You turn on the light, ignoring my advice like an idiot and grandma wakes up. Maybe you'll trust me more next time.";
	end the story finally.
	
Medals is a thing in Hallway. The description is "A bunch of old medals. The long neck straps seem good for tying down things.".

Medal is a thing in Hallway. Medal is undescribed. The description of medal is "It's a nice medal, bronze. Further more the strap that goes around the neck seems thin enough to pass through an attached bike horn, but wide enough to let sheets slide through."

Instead of taking Medals:
	say "You, scared that grabbing to many could make extra noise grab the first medal that you touch on the wall. You now have a medal.";
	now player has medal;
	remove medals from play.
		
Halldows are scenery in Hallway. The printed name is "Hallway windows".The description is "Tall windows. They're never opened and are really dusty."
Understand "Hallway windows" as Halldows.
Understand "windows" as Halldows.

Stairs is scenery in Hallway. The printed name is "Hallway door". "Dang it I really wanted to go down stairs this way, I gess I'll have to find another way. What could I use to get downstairs?"
Understand "Hallway door" as stairs.

Grandmas entrance is a room. Grandmas entrance is south of Hallway. The description of grandmas entrance is "Still part of the hallway you see [if player is not carrying wrench] the sillouette of a wrench lying against the wall on the ground on the corner between the end of the line of hallway windows and [end if] grandmas door. There is also a spare bell for the broken bike horn in your room and a rubber duck on the floor. The cat likes to play with pretty loud toys."

Grandows are scenery in grandmas entrance. The printed name is "Hallway windows".The description is "Tall windows. They're never opened and are really dusty."
Understand "Hallway windows" as grandows.
Understand "windows" as grandows.

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
Landing Zone is a room. Landing zone is east of Glass. The description is "You are now outside at, there is a cool breeze and moonlight illuminating the grass. To the east you see the woods and the north leads towards the door, which leads to the kitchen... and the cookies!!"

Grass is scenery in Landing zone. The description is "Green blades blowing in the wind".

Woods is a room. Woods is east of Landing zone. The description is "It's just a plain field. [if leaves are in woods] Oh look it's the cat, he's playing with a pile of leaves. I love the cat. Whats that? Did I just hear the cat speak to me??"

Cat is a man in woods. Cat is undescribed. The description is "Just a regular black cat playing in the leaves. It also talks, wadda ya know!"

Talking to is an action applying to one visible thing.
Understand "talk to [someone]" or “converse with [someone]” as talking to.
Check talking to: say "[The noun] doesn't reply."

Instead of talking to Cat:
	say "[one of]'Is that you?' you say hesitantly. [paragraph break]'Yup it's really me, though I have to point out you are a very imaginative child.' the cat replies casually.[or] 'Umm.... is there anything taht you have to say, you know, as a cat?' [paragraph break] 'I mean I'm a cat so I'm good at sneaking around, I could give you some pointers' the cat replies in a friendly manner.' [or]'How do I get to the door of the house' you ask the cat. [paragraph break] 'Okay I can see your persistance, so I'll give you a hint. Take these leave that I've gathered so nicely for you, and simply staple___' the cat says and then dashes into the bushes! [or] the cat left for some reason.[stopping]".

Leaves are a thing in woods. The description is "Large thick leaves that look like they come from a thick jungle plant and leave you wondering where the cat goes in his free time. They are thick enough to block light, but thin enough that if you really tried to you could probably staple them up.".

Light Zone is a room. Light zone is north of Landing zone. "Between landing zone and the door to the kitchen. [if leaves are not in light zone] Wait! There's a motion activated light north of here, it's between you and the door. If you go that way the light will turn on and give you away!"

Bright is a thing in light zone. The printed name is "Light". The description is "Motion activated, and bright enough to take up grandma. Advance with caution."
Understand "light" as bright.
Instead of taking bright:
	if leaves are not in light zone:
		say "you move towards the lights and bam... I think those are footsteps I hear coming down the stairs";
		end the story finally;
	Otherwise:
		say "You carefully remove the light under the safety of the leaves...";
		now player has bright.

Understand "staple [something]" as smelling. 
Instead of smelling:
	if noun is leaves:
		if player has stapler:
			if player is in Light zone:
				say "You staple the leaves to the wall bloking the light from reaching upstairs. Now safely go to the porch up north!";
				now noun is in location;
			otherwise:
				say "what are stapled leaves over here gonna do for you? The cat obviously meant for you to staple them somewhere useful.";	
		otherwise:
			say "What are you going to staple the leaves with?? You should find a stapler or something!";	
	if noun is sheets:
		say "These shees are way to thick to be stapled. Try combining sheets to something!";	
	otherwise:
		say "I think you should try stapling something else. You're on the right track though!".	
		
Instead of going to front porch:
	if player has bright:
		now player is in front porch;
	otherwise:	
		if leaves are in light zone:
			say "The light turns on, but thankfully your leaves dim the light.";
			now player is in front porch;
		otherwise:
			say "The light turns on, and grandma's six sence wakes her up... Looks like you'll never even see cookies at grandma's house again.";
			end the story finally.	

Front Porch is a room. Front Porch is north of Light Zone. "Your right in front of outside door now! Lucky for you grandma doesn't lock this door. (She isn't scared of getting robbed, but is scared of you running around in the woods a night)"

Kitchen is a room. Kitchen is west of of Green. The description of kitchen is "You've made it! [if player is not carrying bright] However it's really dark and you can't find the cookies. All you have to do is take them, but stumbling around could wake up grandma! [end if] [if player has bright] You see the cookies on the top shelf above the sink. To take them however you have to be able to reach them. Now the only question is, how are you going to reach them? [end if]".


Cookies are a thing in kitchen. Cookies are undescribed. The description is "Declicious amazing, soft, chocolate chip cookies!"
Understand "eat [something]" as taking.
Instead of taking cookies:
	if player is not carrying bright:
		say "You search the counters feriously feeling for the cookies and then you nock grandmas favorite vase on the floor!!! Right after the falling sound you see an upstairs light turn on... You were so close, you just needed a light!";
		end the story finally;
	otherwise:
		if player is on wooden stool:
			say "You reach up safely feel the crumbly, soft, mouth watering, delicious cookies. Nothing could have made this day better!";
			end the story finally;
		otherwise:
			say "You can see them now, but you cant reach them!".		

Green is a door. Green is west of Front Porch. The printed name is "Outside door". 
Understand "Outside door" as Green. The description is "A really green door."
Understand "green door" as green. 
Understand "door" as green.

[Shortest route:

Break records, Lift sheets, take stapler, unlock orange door with spare key, w, take medals, take wooden stool, s, take wrench, n, e, crank open window with wrench, combine bedside table with broken bike horn, combine hook with medal, combine hanger with sheets, open window, down, e, take leaves, w, n, staple leaves, take light, n, w, drop stool, stand on stool, take cookies!]

