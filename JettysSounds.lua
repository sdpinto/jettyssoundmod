--------------------------------------
-- Namespaces
--------------------------------------
local _, core = ...;
core.Config = {}; -- adds Config table to addon namespace
core.Sounds = {};
core.Desc = {};

local Config = core.Config;
--------------------------------------
-- Data
--------------------------------------
local defaults = {
	theme = {
		r = 0, 
		g = 0.8, -- 204/255
		b = 1,
		hex = "00ccff"
	}
}

local sounds = core.Sounds;
local desc = core.Desc;

-- Old
sounds["!ben"] = "Interface\\AddOns\\JettysSoundMod\\1\\benny.mp3"
desc["!ben"] = "Benny Hill Theme"
sounds["!veg"] = "Interface\\AddOns\\JettysSoundMod\\tv\\veg.mp3"
desc["!veg"] = "DBZ: Vegeta, what does the scouter say about his power level?"
sounds["!9000"]	= "Interface\\AddOns\\JettysSoundMod\\tv\\9000.mp3"
desc["!9000"] = "DBZ: It's over 9000!"
sounds["!respect"] = "Interface\\AddOns\\JettysSoundMod\\tv\\respect.mp3"
desc["!respect"] = "TV:  You want some respect?  Go out there and get it for yourself"
sounds["!ginger"] = "Interface\\AddOns\\JettysSoundMod\\tv\\ginger.mp3"
desc["!ginger"] = "South Park:  Cartman on a roll"
sounds["!callforf"] = "Interface\\AddOns\\JettysSoundMod\\1\\forf.mp3"
desc["!callforf"] = "Transformers: Autobots!  Transform!"
sounds["!diss"] = "Interface\\AddOns\\JettysSoundMod\\1\\dissa.mp3"
desc["!diss"] = "Hercules:  Dissappointed!"
sounds["!whistle"] = "Interface\\AddOns\\JettysSoundMod\\1\\whistle1.mp3"
desc["!whistle"] = "Old: Whistling 1"
sounds["!whistlee"] = "Interface\\AddOns\\JettysSoundMod\\1\\whistle2.mp3"
desc["!whistlee"] = "Old: Whistling 2"

-- American Dad
sounds["!buddy"] = "Interface\\AddOns\\JettysSoundMod\\ad\\buddy.mp3"
desc["!buddy"] = "American Dad: You're a freakin' joke, buddy."
sounds["!gethigh"] = "Interface\\AddOns\\JettysSoundMod\\ad\\gethigh.mp3"
desc["!gethigh"] = "American Dad: Let's go get high and talk about other times we got high"
sounds["!radar"] = "Interface\\AddOns\\JettysSoundMod\\ad\\radar.mp3"
desc["!radar"] = "American Dad: C'mon, bud!  You're not even on my radar"
sounds["!ohshit"] = "Interface\\AddOns\\JettysSoundMod\\ad\\ohshit.mp3"
desc["!ohshit"] = "American Dad: Oh shit!"

-- Beau
sounds["!root"] = "Interface\\AddOns\\JettysSoundMod\\beau\\rooting.mp3"
desc["!root"] = "Beau:  I was rooting for you!"
sounds["!gl"] = "Interface\\AddOns\\JettysSoundMod\\beau\\dfiu.mp3"
desc["!gl"] = "Beau:  Good luck!  And don't fuck it up!"

-- Chapelle
sounds["!cm"] = "Interface\\AddOns\\JettysSoundMod\\chapelle\\charliemurphy.mp3"
desc["!cm"] = "Chapelle:  Charlie Murphy!"
sounds["!cocaine"] = "Interface\\AddOns\\JettysSoundMod\\chapelle\\cocaine.mp3"
desc["!cocaine"] = "Chapelle:  Cocaine's a helluva drug"
sounds["!five"] = "Interface\\AddOns\\JettysSoundMod\\chapelle\\fivefingers1.mp3"
desc["!five"] = "Chapelle:  What did the five fingers say to the face?"
sounds["!fivee"] = "Interface\\AddOns\\JettysSoundMod\\chapelle\\fivefingers2.mp3"
desc["!fivee"] = "Chapelle: SLAP "
sounds["!couch"] = "Interface\\AddOns\\JettysSoundMod\\chapelle\\fuckyourcouch.mp3"
desc["!couch"] = "Chapelle:  Fuck yo couch!"
sounds["!couchh"] = "Interface\\AddOns\\JettysSoundMod\\chapelle\\fuckyourcouch2.mp3"
desc["!couchh"] = "Chapelle: Buy another one you rich motherfucker.  Fuck yo couch! "
sounds["!couchhh"] = "Interface\\AddOns\\JettysSoundMod\\chapelle\\fuckyourcouch3.mp3"
desc["!couchhh"] = "Chapelle:  Fuck yo couch!"
sounds["!gave"] = "Interface\\AddOns\\JettysSoundMod\\chapelle\\gaveyoumoney.mp3"
desc["!gave"] = "Chapelle:  They shoulda never gave you money"
sounds["!kobe"] = "Interface\\AddOns\\JettysSoundMod\\chapelle\\kobe.mp3"
desc["!kobe"] = "Chapelle:  Kobe!"
sounds["!show"] = "Interface\\AddOns\\JettysSoundMod\\chapelle\\showmeyourtits1.mp3"
desc["!show"] = "Chapelle:  Shoe me your titties, I'm Rick James"
sounds["!showw"] = "Interface\\AddOns\\JettysSoundMod\\chapelle\\showmeyourtits2.mp3"
desc["!showw"] = "Chapelle:  I wish I had more hands, so I could give those tities 4 thumbs down."
sounds["!b"] = "Interface\\AddOns\\JettysSoundMod\\simpsons\\suchabitch.mp3"
desc["!b"] = "Simpsons:  He's such a bitch"
sounds["!bb"] = "Interface\\AddOns\\JettysSoundMod\\simpsons\\bitchbitchbitch.mp3"
desc["!bb"] = "Simpsons:  Oh bitch bitch bitch"

-- Comedy
sounds["!hey"] = "Interface\\AddOns\\JettysSoundMod\\comedy\\hey.mp3"
desc["!hey"] = "Comedy: Hey ya!"
sounds["!sup"] = "Interface\\AddOns\\JettysSoundMod\\comedy\\sup.mp3"
desc["!sup"] = "Comedy: Sup Caine"
sounds["!supd"] = "Interface\\AddOns\\JettysSoundMod\\comedy\\supd.mp3"
desc["!supd"] = "Comedy:  Sup D"

-- Metal
sounds["!backoff"] = "Interface\\AddOns\\JettysSoundMod\\metal\\backoff.mp3"
desc["!backoff"] = "Metal: Backoff jackoff"
sounds["!cocaine1"] = "Interface\\AddOns\\JettysSoundMod\\metal\\cocaine1.mp3"
desc["!cocaine1"] = "Metal: I do cocaaaaaine"
sounds["!cocaine2"] = "Interface\\AddOns\\JettysSoundMod\\metal\\cocaine2.mp3"
desc["!cocaine2"] = "Metal: (whisper) I do cocaine"
sounds["!makes"] = "Interface\\AddOns\\JettysSoundMod\\metal\\makesmelaugh.mp3"
desc["!makes"] = "Metal:  He makes me laugh! Hahaha"
sounds["!rockso"] = "Interface\\AddOns\\JettysSoundMod\\metal\\rockso1.mp3"
desc["!rockso"] = "Metal: It's me Dr. Rockso"
sounds["!rocksoo"] = "Interface\\AddOns\\JettysSoundMod\\metal\\rockso2.mp3"
desc["!rocksoo"] = "Metal: It's me Dr. Rockso... I do cocaine"

-- Step Brothers
sounds["!shit"] = "Interface\\AddOns\\JettysSoundMod\\stepbrothers\\shit.mp3"
desc["!shit"] = "Step Brothers: Shit!"
sounds["!embarass"] = "Interface\\AddOns\\JettysSoundMod\\stepbrothers\\embarassing.mp3"
desc["!embarass"] = "Step Brothers: Hey you're embarassing yourself you geriatric fuck!"
sounds["!fudale"] = "Interface\\AddOns\\JettysSoundMod\\stepbrothers\\fudale.mp3"
desc["!fudale"] = "Step Brothers: Fuck you, Dale!"
sounds["!intheballs"] = "Interface\\AddOns\\JettysSoundMod\\stepbrothers\\intheballs.mp3"
desc["!intheballs"] = "Step Brothers: Sticks and stones may break my bones..."
sounds["!santa"] = "Interface\\AddOns\\JettysSoundMod\\stepbrothers\\santa.mp3"
desc["!santa"] = "Step Brothers:  Holy Santa Clause shit!"
sounds["!sofunny"] = "Interface\\AddOns\\JettysSoundMod\\stepbrothers\\sofunny.mp3"
desc["!sofunny"] = "Step Brothers: Hahaha.  That's so funny last time I heard that I fell off my dinosaur"
sounds["!whatt"] = "Interface\\AddOns\\JettysSoundMod\\stepbrothers\\whathappened.mp3"
desc["!whatt"] = "Step Brothers: What the fuck happened?"
sounds["!isntme"] = "Interface\\AddOns\\JettysSoundMod\\stepbrothers\\isntme.mp3"
desc["!isntme"] = "Step Brothers: This isn't me!"

-- Baseketball
sounds["!c1"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\chick.mp3"
desc["!c1"] = "Baseketball:  How am I supposed to get a chick in that?"
sounds["!c2"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\chick2.mp3"
desc["!c2"] = "Baseketball: Don't worry dude you couldn't get a chick..."
sounds["!c3"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\chick3.mp3"
desc["!c3"] = "Baseketball: Yeah I could."
sounds["!c4"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\chick4.mp3"
desc["!c4"] = "Baseketball: Nah, dude.  You're a little bitch."
sounds["!c5"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\chick5.mp3"
desc["!c5"] = "Baseketball: I am not, I don't even know why I hang out with you guys."
sounds["!c6"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\chick6.mp3"
desc["!c6"] = "Baseketball: Cuz you're a piece of shit."
sounds["!c7"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\chick7.mp3"
desc["!c7"] = "Baseketball: I am not a piece of shit"
sounds["!c8"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\chick8.mp3"
desc["!c8"] = "Baseketball: Yeah, but you're a little bitch"
sounds["!c9"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\chick9.mp3"
desc["!c9"] = "Baseketball: Goddamnit man!  I swear you guys rip on me 13 or 14 more times, I'm out of here"
sounds["!weak"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\weak.mp3"
desc["!weak"] = "Baseketball: Dude!  That is so fucking weak."
sounds["!happydance"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\happydance.mp3"
desc["!happydance"] = "Baseketball: Doin the happy dance."
sounds["!dr"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\drdickhead.mp3"
desc["!dr"] = "Baseketball: Thanks a lot, Dr. Dickhead!  You totally fucked me there."
sounds["!jobs"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\jobs.mp3"
desc["!jobs"] = "Baseketball: That sucks dude!  I'm telling you we gotta get jobs..."
sounds["!closet"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\closet.mp3"
desc["!closet"] = "Baseketball: I don't know where he is.  For all I care, he could be hanging by his neck in his closet"
sounds["!update"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\update.mp3"
desc["!update"] = "Baseketball: Update:  We still have no fucking cluse where this guy is."
sounds["!dude1"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\dude1.mp3"
desc["!dude1"] = "Baseketball: Dude, quit thinking about yourself"
sounds["!dude2"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\dude2.mp3"
desc["!dude2"] = "Baseketball: Dude, I'm not going to cave in..."
sounds["!dude3"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\dude3.mp3"
desc["!dude3"] = "Baseketball: Duuude?"
sounds["!dude4"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\dude4.mp3"
desc["!dude4"] = "Baseketball: Duude!"
sounds["!dude5"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\dude5.mp3"
desc["!dude5"] = "Baseketball: DUUDE!"
sounds["!dude6"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\dude6.mp3"
desc["!dude6"] = "Baseketball: (angry) DUDE!"
sounds["!dude7"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\dude7.mp3"
desc["!dude7"] = "Baseketball: DUDE!"
sounds["!dude8"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\dude8.mp3"
desc["!dude8"] = "Baseketball: (low) Dude."
sounds["!dude9"] = "Interface\\AddOns\\JettysSoundMod\\baseketball\\dude9.mp3"
desc["!dude9"] = "Baseketball: I guess you've got a point there."

-- Hotrod
sounds["!a"] = "Interface\\AddOns\\JettysSoundMod\\hotrod\\ancestors.mp3"
desc["!a"] = "Hotrod: (chanting) Ancestors protect me..."
sounds["!aa"] = "Interface\\AddOns\\JettysSoundMod\\hotrod\\godsofwar.mp3"
desc["!aa"] = "Hotrod: (singing) Gods of waaaaar.  May your hammer be mighty."
sounds["!stunt"] = "Interface\\AddOns\\JettysSoundMod\\hotrod\\bigassstunt.mp3"
desc["!stunt"] = "Hotrod: Who wants to see me do a big ass stunt?"
sounds["!dazzled"] = "Interface\\AddOns\\JettysSoundMod\\hotrod\\dazzled.mp3"
desc["!dazzled"] = "Hotrod: Alright boys.  Prepare to be dazzled."
sounds["!havefun"] = "Interface\\AddOns\\JettysSoundMod\\hotrod\\havefun.mp3"
desc["!havefun"] = "Hotrod: Have fun being married to SATAN!"
sounds["!jealous"] = "Interface\\AddOns\\JettysSoundMod\\hotrod\\jealous.mp3"
desc["!jealous"] = "Hotrod: I am just green with jealous rage right now."
sounds["!letsparty"] = "Interface\\AddOns\\JettysSoundMod\\hotrod\\letsparty.mp3"
desc["!letsparty"] = "Hotrod: Ok.  Let's Party"
sounds["!ohshit"] = "Interface\\AddOns\\JettysSoundMod\\hotrod\\ohshit.mp3"
desc["!ohshit"] = "Hotrod: Oooh shit"
sounds["!quiet"] = "Interface\\AddOns\\JettysSoundMod\\hotrod\\quietplace.mp3"
desc["!quiet"] = "Hotrod: I need to go to my quiet place"
sounds["!talking"] = "Interface\\AddOns\\JettysSoundMod\\hotrod\\talking.mp3"
desc["!talking"] = "Hotrod:  Now you're talkin'"
sounds["!flavor"] = "Interface\\AddOns\\JettysSoundMod\\hotrod\\theflavor.mp3"
desc["!flavor"] = "Hotrod: Boom!  There's the flavor!"
sounds["!yoohoo"] = "Interface\\AddOns\\JettysSoundMod\\hotrod\\yoohoo.mp3"
desc["!yoohoo"] = "Hotrod:  Yoohoo, shitheads!"

-- People
sounds["!dh"] = "Interface\\AddOns\\JettysSoundMod\\people\\mel-dickhole.mp3"
desc["!dh"] = "Mel: I'm not all about shoving shit up my dickhole."
sounds["!jc"] = "Interface\\AddOns\\JettysSoundMod\\people\\mel-jc.mp3"
desc["!jc"] = "Mel: Jesus Christ"
sounds["!no"] = "Interface\\AddOns\\JettysSoundMod\\people\\mel-no.mp3"
desc["!no"] = "Mel:  uh no."
sounds["!got"] = "Interface\\AddOns\\JettysSoundMod\\people\\mel-ohyea.mp3"
desc["!got"] = "Mel:  Oh yeah, got it, bitches!"
sounds["!skeet"] = "Interface\\AddOns\\JettysSoundMod\\people\\sycho-skeet.mp3"
desc["!skeet"] = "Sycho:  skeet skeet skeet skeeet"
sounds["!yea"] = "Interface\\AddOns\\JettysSoundMod\\people\\sycho-hellyea.mp3"
desc["!yea"] = "Sycho: Hell yeah"
sounds["!fuck"] = "Interface\\AddOns\\JettysSoundMod\\people\\scream.mp3"
desc["!fuck"] = "Oh fuck!  Goddammit guys!"
sounds["!notdrunk"] = "Interface\\AddOns\\JettysSoundMod\\people\\notdrunk.mp3"
desc["!notdrunk"] = "I'm not drunk tonight, so I'm not going to be fucking patient"
sounds["!wipe"] = "Interface\\AddOns\\JettysSoundMod\\people\\wipe2.mp3"
desc["!wipe"] = "No, that's a wipe.  Good job, assholes.  Thanks for fuckin' wastin' our time"
sounds["!wipeit"] = "Interface\\AddOns\\JettysSoundMod\\people\\wipeit.mp3"
desc["!wipeit"] = "Fucking wipe it"

-- Sick Animation
sounds["!rice"] = "Interface\\AddOns\\JettysSoundMod\\sa\\yourface.mp3"
desc["!rice"] = "SA: Everytime I look at your face, I get the rice and gravy shits."
sounds["!tonya1"] = "Interface\\AddOns\\JettysSoundMod\\sa\\tonya1.mp3"		
desc["!tonya1"] = "SA: What the hell, Tonya.  You did that on purpose you ugly bitch!"		
sounds["!tonya2"] = "Interface\\AddOns\\JettysSoundMod\\sa\\tonya2.mp3"				
desc["!tonya2"] = "SA: Just get outta my face, Tonya. With your tiny little teeth..."				
sounds["!tonya3"] = "Interface\\AddOns\\JettysSoundMod\\sa\\tonya3.mp3"		
desc["!tonya3"] = "SA: I'm so sorry.  It was disappearing ink tho."		
sounds["!tonya4"] = "Interface\\AddOns\\JettysSoundMod\\sa\\tonya4.mp3"		
desc["!tonya4"] = "SA: I'm so sorry I called you all that stuff"		
sounds["!tonya5"] = "Interface\\AddOns\\JettysSoundMod\\sa\\tonya5.mp3"		
desc["!tonya5"] = "SA: That's cool.  Frickin' love shark week."		
sounds["!subway"] = "Interface\\AddOns\\JettysSoundMod\\sa\\subway.mp3"		
desc["!subway"] = "SA: Damn Tonya, your breath smells like Subway."		
sounds["!shutup"] = "Interface\\AddOns\\JettysSoundMod\\sa\\turtles-shutup.mp3"		
desc["!shutup"] = "SA: You weren't there, you don't know, so shutup."		
sounds["!pay"] = "Interface\\AddOns\\JettysSoundMod\\sa\\turtles-pay.mp3"
desc["!pay"] = "SA: And pay for it with what, dude?  My good looks?  Womp womp"
sounds["!ugly2"] = "Interface\\AddOns\\JettysSoundMod\\sa\\turtles-ugly.mp3"
desc["!ugly2"] = "SA: Dude she's so ugly.  She looks like a big fat worm..."
sounds["!fuckus"] = "Interface\\AddOns\\JettysSoundMod\\sa\\turtles-fuckus.mp3"
desc["!fuckus"] = "SA: What's all the fuckus ruckus noise in here, dudes?"
sounds["!killu"] = "Interface\\AddOns\\JettysSoundMod\\1\\killu.mp3"
desc["!killu"] = "SA: What you say to me?  I'm going to kill you!"
sounds["!fu"] = "Interface\\AddOns\\JettysSoundMod\\1\\fu.mp3"
desc["!fu"] = "SA: I fuck you in the butt.  I fuck you today.  Fuck you big boi..."
sounds["!booty"] = "Interface\\AddOns\\JettysSoundMod\\1\\booty.mp3"
desc["!booty"] = "SA: I got some booty!"
sounds["!chinese"] = "Interface\\AddOns\\JettysSoundMod\\1\\chinese.mp3"
desc["!chinese"] = "SA: Hello I need to speak to somebooty that can speak Chinese"
sounds["!cute"] = "Interface\\AddOns\\JettysSoundMod\\sa\\cute.mp3"
desc["!cute"] = "SA: Oh you look so cute in your little cape."
sounds["!slug"] = "Interface\\AddOns\\JettysSoundMod\\sa\\slug.mp3"
desc["!slug"] = "SA: Mmmmm.. I'd like to pour some salt on that little slug."
sounds["!poison"] = "Interface\\AddOns\\JettysSoundMod\\sa\\poison.mp3"
desc["!poison"] = "SA: I'd rather not put poison in my mouth..."
sounds["!chilldo"] = "Interface\\AddOns\\JettysSoundMod\\sa\\chilldo.mp3"
desc["!chilldo"] = "SA: Oh, sounds like someone needs to borrow my chill-do"
sounds["!jammy"] = "Interface\\AddOns\\JettysSoundMod\\sa\\jammy.mp3"
desc["!jammy"] = "SA: Oh, you know what we should do?  Have a pajama jammy jam"
sounds["!hismol"] = "Interface\\AddOns\\JettysSoundMod\\sa\\hismol.mp3"
desc["!hismol"] = "SA: I feel like I drank a whole gallon of Pepto-his-mal"
sounds["!guypod"] = "Interface\\AddOns\\JettysSoundMod\\sa\\guypod.mp3"
desc["!guypod"] = "SA: Let's just say I got 3 hot new downloads to my Guy-Pod"
sounds["!firm"] = "Interface\\AddOns\\JettysSoundMod\\sa\\firm.mp3"
desc["!firm"] = "SA: I'd like to get in touch with his big firm."
sounds["!nw"] = "Interface\\AddOns\\JettysSoundMod\\sa\\nw.mp3"
desc["!nw"] = "SA: Nigga-watts"
sounds["!nw2"] = "Interface\\AddOns\\JettysSoundMod\\sa\\nw2.mp3"
desc["!nw2"] = "SA: Everything ran on nigga-watts"
sounds["!nw3"] = "Interface\\AddOns\\JettysSoundMod\\sa\\nw3.mp3"
desc["!nw3"] = "SA: (song) Everything ran on nigga-watts"
sounds["!won"] = "Interface\\AddOns\\JettysSoundMod\\sa\\won.mp3"
desc["!won"] = "SA: Oh my gosh you guys! I finally won something."
sounds["!dance"] = "Interface\\AddOns\\JettysSoundMod\\sa\\dance.mp3"
desc["!dance"] = "SA: (song) Dance!  Baby slide down that pole..."
sounds["!dance2"] = "Interface\\AddOns\\JettysSoundMod\\sa\\dance2.mp3"
desc["!dance2"] = "SA: (song) Bend over girl, and use your titties like a broom..."
sounds["!dance3"] = "Interface\\AddOns\\JettysSoundMod\\sa\\dance3.mp3"
desc["!dance3"] = "SA: (song) There's a roach on the floor and some dust..."
sounds["!dance4"] = "Interface\\AddOns\\JettysSoundMod\\sa\\dance4.mp3"
desc["!dance4"] = "SA: (song) I got some people comin' over so you better bend over and sweep it."
sounds["!jesus"] = "Interface\\AddOns\\JettysSoundMod\\sa\\jesus.mp3"
desc["!jesus"] = "SA: (song) Can I get 2 scratches for my homeboy Jesus?"
sounds["!jesuss"] = "Interface\\AddOns\\JettysSoundMod\\sa\\jesus2.mp3"
desc["!jesuss"] = "SA: (song) Better gibe him one more."
sounds["!doit"] = "Interface\\AddOns\\JettysSoundMod\\sa\\shag1.mp3"
desc["!doit"] = "SA: I'm gunna do it Shaggy.  I'm gunna frickin' do it Shaggy!"
sounds["!psyche"] = "Interface\\AddOns\\JettysSoundMod\\sa\\shag2.mp3"
desc["!psyche"] = "SA: (song) Psyche! Shaggy just played you!"
sounds["!talk"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red1.mp3"
desc["!talk"] = "SA: So are you going to talk or am I going to have to make you talk?"
sounds["!faithful"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red2.mp3"
desc["!faithful"] = "SA: You'll never get a word from me Murtagh..."
sounds["!diamond"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red3.mp3"
desc["!diamond"] = "SA: Where's the diamond?  Tony has it.  Fuck."
sounds["!awn"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red4.mp3"
desc["!awn"] = "SA: Brian's patios and awnings?  More like Brian's patios and yawnings."
sounds["!fall"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red5.mp3"
desc["!fall"] = "SA:  Fall colors during spring?"
sounds["!honest"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red6.mp3"
desc["!honest"] = "SA: Well you're honest, I'll give you that.  Honest and stupid."
sounds["!brian"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red7.mp3"
desc["!brian"] = "SA: Oh, Brian"
sounds["!hated"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red8.mp3"
desc["!hated"] = "SA: I hated it"
sounds["!joking"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red9.mp3"
desc["!joking"] = "SA: Ah he's just joking..."
sounds["!stop"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red10.mp3"
desc["!stop"] = "SA: OK OK, that's enough, we need to stop quarreling amongst ourselves."
sounds["!toilet"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red11.mp3"
desc["!toilet"] = "SA: I think we should make him use my mouth as a toilet..."
sounds["!jackmy"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red12.mp3"
desc["!jackmy"] = "SA: Well I think we should make him jack my horn off into Randy's mouth..."
sounds["!randy"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red13.mp3"
desc["!randy"] = "SA: Well Randy's not here.  What else you got?"
sounds["!hungry"] = "Interface\\AddOns\\JettysSoundMod\\sa\\red14.mp3"
desc["!hungry"] = "SA: Boss I'm hungry for shit"
sounds["!king1"] = "Interface\\AddOns\\JettysSoundMod\\sa\\king1.mp3"
desc["!king1"] = "SA: Fuck you, nigga. I'm the king"
sounds["!king2"] = "Interface\\AddOns\\JettysSoundMod\\sa\\king2.mp3"
desc["!king2"] = "SA: Fuck you.  I'm the king, nigga."
sounds["!king3"] = "Interface\\AddOns\\JettysSoundMod\\sa\\king3.mp3"
desc["!king3"] = "SA: Fuck you, nigga.  I'm the fuckin' king."
sounds["!king4"] = "Interface\\AddOns\\JettysSoundMod\\sa\\king4.mp3"
desc["!king4"] = "SA: Fuck you.  Ya white honky nigga."
sounds["!king5"] = "Interface\\AddOns\\JettysSoundMod\\sa\\king5.mp3"
desc["!king5"] = "SA: Can I have some ketchup?  To put on all these harsh-browns.."
sounds["!king6"] = "Interface\\AddOns\\JettysSoundMod\\sa\\king6.mp3"
desc["!king6"] = "SA: Fuck you.  Ya white honky nordic nigga bitch."
sounds["!slip"] = "Interface\\AddOns\\JettysSoundMod\\sa\\band1.mp3"
desc["!slip"] = "SA: C'mon man.  Lemme just slip it in real quick."
sounds["!fudge"] = "Interface\\AddOns\\JettysSoundMod\\sa\\band2.mp3"
desc["!fudge"] = "SA: Who's daddy's little fudge hole?  ..."
sounds["!tatted"] = "Interface\\AddOns\\JettysSoundMod\\sa\\band3.mp3"
desc["!tatted"] = "SA: Yeah, man.  You get all tatted up, and I'll get all fatted up."
sounds["!bomb"] = "Interface\\AddOns\\JettysSoundMod\\sa\\band5.mp3"
desc["!bomb"] = "SA:  You guys are gunna be the bomb"
sounds["!cow"] = "Interface\\AddOns\\JettysSoundMod\\sa\\band6.mp3"
desc["!cow"] = "SA: No, fuck you.  Eat your own shit and die you fucking cow."
sounds["!sucku"] = "Interface\\AddOns\\JettysSoundMod\\sa\\band7.mp3"
desc["!sucku"] = "SA: Well, I'm almost more than positive that Todd would suck you off for free"
sounds["!snort"] = "Interface\\AddOns\\JettysSoundMod\\sa\\band8.mp3"
desc["!snort"] = "SA: I'd snort some coke out of Maury Povich's ass crack to be on MTV"
sounds["!piss"] = "Interface\\AddOns\\JettysSoundMod\\sa\\lg1.mp3"
desc["!piss"] = "SA: Come piss in my mouth"
sounds["!what"] = "Interface\\AddOns\\JettysSoundMod\\sa\\lg2.mp3"
desc["!what"] = "SA: Wait, what happened?"
sounds["!pwnd"] = "Interface\\AddOns\\JettysSoundMod\\sa\\lg3.mp3"
desc["!pwnd"] = "SA: Those motherfucking newbies have pwnd me for the last time!"
sounds["!blowup"] = "Interface\\AddOns\\JettysSoundMod\\sa\\lg4.mp3"
desc["!blowup"] = "SA: Well then blow up that planet that looks like 2 guys putting their nuts on a dude's face."
sounds["!poo"] = "Interface\\AddOns\\JettysSoundMod\\sa\\lg5.mp3"
desc["!poo"] = "SA: Well, I pooed a couple times"
sounds["!coke"] = "Interface\\AddOns\\JettysSoundMod\\sa\\lg6.mp3"
desc["!coke"] = "SA: That's my last Diet Coke you asshole!"
sounds["!find"] = "Interface\\AddOns\\JettysSoundMod\\sa\\lg7.mp3"
desc["!find"] = "C'mon boys.  Let's go find some girls to fuck."
sounds["!jay"] = "Interface\\AddOns\\JettysSoundMod\\sa\\lg8.mp3"
desc["!jay"] = "SA: We were supposed to take the day off to J-off"
sounds["!hardon"] = "Interface\\AddOns\\JettysSoundMod\\sa\\lg9.mp3"
desc["!hardon"] = "SA: Don't tell me you're suddenly getting a hard on for your pussy faggot boyfriend Martinez"
sounds["!metallica"] = "Interface\\AddOns\\JettysSoundMod\\sa\\lg10.mp3"
desc["!metallica"] = "SA: Plus he sucked my dick through the whole Metallica movie"
sounds["!slater"] = "Interface\\AddOns\\JettysSoundMod\\sa\\lg11.mp3"
desc["!slater"] = "SA: I know yeah.  Tell Slater not to wash his dick"
sounds["!really"] = "Interface\\AddOns\\JettysSoundMod\\sa\\really.mp3"
desc["!really"] = "SA: Reeaaaaheeally (repeat 5 times)"
sounds["!really1"] = "Interface\\AddOns\\JettysSoundMod\\sa\\really1.mp3"
desc["!really1"] = "Reeaahheeaaally... haaaha.. You know, like from Ace Ventura"
sounds["!really2"] = "Interface\\AddOns\\JettysSoundMod\\sa\\really2.mp3"
desc["!really2"] = "SA: Reeaaaheally hahaha You know what I'm Reaaaheaaally.. That's what I wanted to tell you from earlier"
sounds["!really3"] = "Interface\\AddOns\\JettysSoundMod\\sa\\really3.mp3"
desc["!really3"] = "SA: Reaaa... hahahahaha you know cause when I paged you"
sounds["!really4"] = "Interface\\AddOns\\JettysSoundMod\\sa\\really4.mp3"
desc["!really4"] = "SA: I wanted you to call me back right there on the spot..."
sounds["!really5"] = "Interface\\AddOns\\JettysSoundMod\\sa\\really5.mp3"
desc["!really5"] = "SA: Reaheeheeaaaly.. you know he had a whole bunch of lines in that movie..."
sounds["!really6"] = "Interface\\AddOns\\JettysSoundMod\\sa\\really6.mp3"
desc["!really6"] = "SA: Reaheheealll... hahaha.. oh fuck."
sounds["!really7"] = "Interface\\AddOns\\JettysSoundMod\\sa\\really7.mp3"
desc["!really7"] = "SA: I mean, there were a whole bunch of really good lines in that movie."
sounds["!really8"] = "Interface\\AddOns\\JettysSoundMod\\sa\\really8.mp3"
desc["!really8"] = "SA: I dunno, I just thought that was kinda cool.  Ok.  Well, goodbye."
sounds["!titty"] = "Interface\\AddOns\\JettysSoundMod\\sa\\tittyfuck.mp3"
desc["!titty"] = "SA: I'll tittyfuck your asshole"
sounds["!keanu"] = "Interface\\AddOns\\JettysSoundMod\\sa\\keanu.mp3"
desc["!keanu"] = "SA: Lemme tell you something, Keanu.  You've never experienced a wild stallion like me before."
sounds["!cokecan"] = "Interface\\AddOns\\JettysSoundMod\\sa\\cokecan.mp3"
desc["!cokecan"] = "SA: You got something to say about it, I'll stick a fuckin coke can up your pussy"
sounds["!cokecann"] = "Interface\\AddOns\\JettysSoundMod\\sa\\cokecan3.mp3"
desc["!cokecann"] = "SA: I'll stick a fuckin coke can up your pussy"
sounds["!pooo"] = "Interface\\AddOns\\JettysSoundMod\\sa\\poo.mp3"
desc["!pooo"] = "SA: Wassup baby? Having a good poo?"
sounds["!ghost"] = "Interface\\AddOns\\JettysSoundMod\\sa\\ghost.mp3"
desc["!ghost"] = "SA: One time I saw a ghost"
sounds["!ok"] = "Interface\\AddOns\\JettysSoundMod\\sa\\ok.mp3"
desc["!ok"] = "SA: OK"
sounds["!ookk"] = "Interface\\AddOns\\JettysSoundMod\\sa\\ookk.mp3"
desc["!ookk"] = "SA: OooooK"
sounds["!dont"] = "Interface\\AddOns\\JettysSoundMod\\sa\\dont.mp3"
desc["!dont"] = "SA: Well goddamn, don't everybody answer at once"
sounds["!cool"] = "Interface\\AddOns\\JettysSoundMod\\sa\\cool.mp3"
desc["!cool"] = "SA: Cool"
sounds["!cooll"] = "Interface\\AddOns\\JettysSoundMod\\sa\\cool2.mp3"
desc["!cooll"] = "SA: Thas cool"
sounds["!blew"] = "Interface\\AddOns\\JettysSoundMod\\sa\\blewit.mp3"
desc["!blew"] = "SA: Looks like I really... blew it."
sounds["!died"] = "Interface\\AddOns\\JettysSoundMod\\sa\\died.mp3"
desc["!died"] = "SA: That guy died."
sounds["!d1"] = "Interface\\AddOns\\JettysSoundMod\\sa\\d1.mp3"
desc["!d1"] = "SA: (song) Who's got the juiciest B-hole in town?"
sounds["!d2"] = "Interface\\AddOns\\JettysSoundMod\\sa\\d2.mp3"
desc["!d2"] = "SA: (song) The dragon does"
sounds["!d3"] = "Interface\\AddOns\\JettysSoundMod\\sa\\d3.mp3"
desc["!d3"] = "SA: (song) Who's got the slimiest scaliest dick around?"
sounds["!d4"] = "Interface\\AddOns\\JettysSoundMod\\sa\\d4.mp3"
desc["!d4"] = "SA: (song) He's got a dick that'll put ya on your knees"
sounds["!d5"] = "Interface\\AddOns\\JettysSoundMod\\sa\\d5.mp3"
desc["!d5"] = "SA: (song) Biggest slimiest can I have a little bite please?"
sounds["!b0"] = "Interface\\AddOns\\JettysSoundMod\\sa\\black0.mp3"
desc["!b0"] = "SA: (song) Don't make it such a mystery, black history..."
sounds["!b1"] = "Interface\\AddOns\\JettysSoundMod\\sa\\black1.mp3"
desc["!b1"] = "SA: (song soft) Don't make it such a mystery, black history..."
sounds["!b2"] = "Interface\\AddOns\\JettysSoundMod\\sa\\black2.mp3"
desc["!b2"] = "SA: (song) It's black history month, son, and what have you done? ..."
sounds["!b3"] = "Interface\\AddOns\\JettysSoundMod\\sa\\black3.mp3"
desc["!b3"] = "SA: (song) Now listen to my words because I've just begun..."
sounds["!b4"] = "Interface\\AddOns\\JettysSoundMod\\sa\\black4.mp3"
desc["!b4"] = "SA: (song) Martin Luther King told white supremecy to fuck off... "
sounds["!b5"] = "Interface\\AddOns\\JettysSoundMod\\sa\\black5.mp3"
desc["!b5"] = "SA: (song) My name is Malcolm X, and I came to have sex..."
sounds["!b6"] = "Interface\\AddOns\\JettysSoundMod\\sa\\black6.mp3"
desc["!b6"] = "SA: (song) My name is George Washington Carver a lot of people think I'm just a peanut farmer..."
sounds["!b7"] = "Interface\\AddOns\\JettysSoundMod\\sa\\black7.mp3"
desc["!b7"] = "SA: (song) I'm Louis Farrakhan and no I didn't make starch..."
sounds["!joe1"] = "Interface\\AddOns\\JettysSoundMod\\sa\\joe1.mp3"
desc["!joe1"] = "SA: (song) Yo, one time I sucked six in a row"
sounds["!joe2"] = "Interface\\AddOns\\JettysSoundMod\\sa\\joe2.mp3"
desc["!joe2"] = "SA: (song) One time I sucked six dirty dicks in a row"
sounds["!joe3"] = "Interface\\AddOns\\JettysSoundMod\\sa\\joe3.mp3"
desc["!joe3"] = "SA: (song) One time I got my kicks with Joe and I sucked his dick and..."
sounds["!joe4"] = "Interface\\AddOns\\JettysSoundMod\\sa\\joe4.mp3"
desc["!joe4"] = "SA: (song) One time I sucked six in a row.  One time I sucked six dirty dicks in a row."
sounds["!joe5"] = "Interface\\AddOns\\JettysSoundMod\\sa\\joe5.mp3"
desc["!joe5"] = "SA: (song duo) One time I got my kicks with Joe and I sucked his dick and..."
sounds["!yeaa"] = "Interface\\AddOns\\JettysSoundMod\\sa\\hellbutfuckyea.mp3"
desc["!yeaa"] = "SA:  Oh hell but fuck yeah!"
sounds["!yousaw"] = "Interface\\AddOns\\JettysSoundMod\\sa\\yousawmydick.mp3"
desc["!yousaw"] = "SA: Bitch, you saw my dick"
sounds["!badguys"] = "Interface\\AddOns\\JettysSoundMod\\sa\\sherlock1.mp3"
desc["!badguys"] = "SA: I guess I just kinda get off on outsmartin' badguys."
sounds["!youwanna"] = "Interface\\AddOns\\JettysSoundMod\\sa\\sherlock2.mp3"
desc["!youwanna"] = "SA: You wanna suck my dick or sumthin?"

-- Morty
sounds["!screens"] = "Interface\\AddOns\\JettysSoundMod\\morty\\screens.mp3"
desc["!screens"] = "R&M: Unbelievable, we got a bunch of robot computer people..."
sounds["!pv1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\pv1.mp3"
desc["!pv1"] = "R&M: What the hell, man.  I liked her."
sounds["!pv2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\pv2.mp3"
desc["!pv2"] = "R&M: You dodged a bullet Morty, trust me puffy vagina"
sounds["!pv3"] = "Interface\\AddOns\\JettysSoundMod\\morty\\pv3.mp3"
desc["!pv3"] = "R&M: Well what's wrong with that?  Doesn't sound like a problem to me."
sounds["!fuckem"] = "Interface\\AddOns\\JettysSoundMod\\morty\\fuckem.mp3"
desc["!fuckem"] = "R&M: Fuck em.  Fuck those people.  Fuck this whole thing"
sounds["!awwbitch"] = "Interface\\AddOns\\JettysSoundMod\\morty\\awwbitch.mp3"
desc["!awwbitch"] = "R&M: Awww Bitch"
sounds["!fme"] = "Interface\\AddOns\\JettysSoundMod\\morty\\fme.mp3"
desc["!fme"] = "R&M: Fuck me pal"
sounds["!fyou"] = "Interface\\AddOns\\JettysSoundMod\\morty\\fyou.mp3"
desc["!fyou"] = "R&M: Fuck you?  No no no fuck me"
sounds["!buzzkill"] = "Interface\\AddOns\\JettysSoundMod\\morty\\buzzkill.mp3"
desc["!buzzkill"] = "R&M: It's crazy right?  Am I being an asshole?  I feel like everyone is looking at me like I'm the buzzkill"
sounds["!laststraw"] = "Interface\\AddOns\\JettysSoundMod\\morty\\laststraw.mp3"
desc["!laststraw"] = "R&M: Are you kidding me?  That's it Rick.  That's the last straw"
sounds["!hitler"] = "Interface\\AddOns\\JettysSoundMod\\morty\\likehitler.mp3"
desc["!hitler"] = "R&M: You're like Hitler, but even Hitler cared about Germany"
sounds["!nighttime"] = "Interface\\AddOns\\JettysSoundMod\\morty\\nighttime.mp3"
desc["!nighttime"] = "R&M: What so everyone's supposed to sleep every single night now?"
sounds["!nogod"] = "Interface\\AddOns\\JettysSoundMod\\morty\\nogod.mp3"
desc["!nogod"] = "R&M: There is no god Summer.  Gotta rip that bandaid off now."
sounds["!questions"] = "Interface\\AddOns\\JettysSoundMod\\morty\\questions.mp3"
desc["!questions"] = "R&M: You ask a lot of questions Morty.  Not very charismatic..."
sounds["!shit1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\shit1.mp3"
desc["!shit1"] = "R&M: Well then get your shit together.  Put it in a backpack..."
sounds["!shit2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\shit2.mp3"
desc["!shit2"] = "R&M: And if you gotta take it somewhere, take it to the shit store and sell it."
sounds["!shit3"] = "Interface\\AddOns\\JettysSoundMod\\morty\\shit3.mp3"
desc["!shit3"] = "R&M: Put it in a shit museum..."
sounds["!tr"] = "Interface\\AddOns\\JettysSoundMod\\morty\\tinyrick.mp3"
desc["!tr"] = "R&M: I'm Tiny Rick"
sounds["!trdance"] = "Interface\\AddOns\\JettysSoundMod\\morty\\tinyrickdance.mp3"
desc["!trdance"] = "R&M: I'll see you motherfuckers at the dance.  Tiny Rick!"
sounds["!20p"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\20p.mp3"
desc["!20p"] = "R&M: 20% Accurate as usual, Morty"
sounds["!2bros"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\2bros.mp3"
desc["!2bros"] = "R&M: It's two brothers and they're gunna..."
sounds["!ants1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\ants1.mp3"
desc["!ants1"] = "R&M: I'm ants in my eyes Johnson..."
sounds["!ants2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\ants2.mp3"
desc["!ants2"] = "R&M: And there's so many TVs, microwaves, radios..."
sounds["!ants3"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\ants3.mp3"
desc["!ants3"] = "R&M: Our prices I hope aren't too low..."
sounds["!ants4"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\ants4.mp3"
desc["!ants4"] = "R&M: I can't feel anything either, but that's not very catchy..."
sounds["!ants5"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\ants5.mp3"
desc["!ants5"] = "R&M: All my nerves don't allow sensation of touch..."
sounds["!baby1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\baby1.mp3"
desc["!baby1"] = "R&M: Babylegs, you're a good detective, but not good enough..."
sounds["!baby2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\baby2.mp3"
desc["!baby2"] = "R&M: So I'm partnering you up with Regularlegs..."
sounds["!baby3"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\baby3.mp3"
desc["!baby3"] = "R&M: Babylegs, don't talk back to me..."
sounds["!baby4"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\baby4.mp3"
desc["!baby4"] = "R&M: You sure found this guy quick..."
sounds["!baby5"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\baby5.mp3"
desc["!baby5"] = "R&M: Babylegs here we go! ..."
sounds["!baby6"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\baby6.mp3"
desc["!baby6"] = "R&M: Alright, I'm not going to get him.  I just learned a real valuable lesson"
sounds["!baby7"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\baby7.mp3"
desc["!baby7"] = "R&M: I'm coming babylegs..."
sounds["!baby8"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\baby8.mp3"
desc["!baby8"] = "R&M: Hey that was good teamwork"
sounds["!baby9"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\baby9.mp3"
desc["!baby9"] = "R&M: Babylegs and Regularlegs, I'm proud of you..."
sounds["!canteat"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\canteat.mp3"
desc["!canteat"] = "R&M: Glen, this is a court order.  It says you can't eat shit anymore."
sounds["!cereal1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\cereal1.mp3"
desc["!cereal1"] = "R&M: Oh, I love my strawberry sniggles."
sounds["!cereal2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\cereal2.mp3"
desc["!cereal2"] = "R&M: Oooo I hope nobody ever steals my sniggles"
sounds["!cereal3"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\cereal3.mp3"
desc["!cereal3"] = "R&M: And then they'll be in my stomach..."
sounds["!cereal4"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\cereal4.mp3"
desc["!cereal4"] = "R&M: My name is Mr Top Hat Jones..."
sounds["!cereal5"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\cereal5.mp3"
desc["!cereal5"] = "R&M: I'm keepin' em all for me..."
sounds["!cereal6"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\cereal6.mp3"
desc["!cereal6"] = "R&M: OOoo am I feeling good... NO get away from me... aaaaah..."
sounds["!cereal7"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\cereal7.mp3"
desc["!cereal7"] = "R&M: Jesus Christ it hurts!  My entrails are out!"
sounds["!cereal8"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\cereal8.mp3"
desc["!cereal8"] = "R&M: Why would you want to eat these?  They're soaked in my stomach acid."
sounds["!cereal9"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\cereal9.mp3"
desc["!cereal9"] = "R&M: Aw Jesus Christ, Lord Savior and Spirit.  Take me to the light..."
sounds["!doingcoke1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\doingcoke1.mp3"
desc["!doingcoke1"] = "R&M: You're my best friend.  I love doing cocaine with you"
sounds["!doingcoke2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\doingcoke2.mp3"
desc["!doingcoke2"] = "R&M: Woah I love doing cocaine with you too Johnny Depp"
sounds["!dgaf"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\dontgivea.mp3"
desc["!dgaf"] = "R&M: I don't give a fuck what you think Jerry"
sounds["!fake1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\fake1.mp3"
desc["!fake1"] = "R&M: Hey are you tired of real doors cluttering up your house? ..."
sounds["!fake2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\fake2.mp3"
desc["!fake2"] = "R&M: Get on down to Real Fake Doors..."
sounds["!fake3"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\fake3.mp3"
desc["!fake3"] = "R&M: Won't open... Won't open...  None of em open."
sounds["!fake4"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\fake4.mp3"
desc["!fake4"] = "R&M: FakeDoors.com is our website..."
sounds["!fake5"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\fake5.mp3"
desc["!fake5"] = "R&M: Hey, wait a minute, Rick.  I thought this was a commercial..."
sounds["!fake6"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\fake6.mp3"
desc["!fake6"] = "R&M: Step on it.  We all got places to be..."
sounds["!fake7"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\fake7.mp3"
desc["!fake7"] = "R&M: Ah that must be where he lives..."
sounds["!fake8"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\fake8.mp3"
desc["!fake8"] = "R&M: Hey everybody, so this is my house.  Just made a sandwich... still selling fake doors."
sounds["!fake9"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\fake9.mp3"
desc["!fake9"] = "R&M: OMG it's still the commercial"
sounds["!fake0"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\fake0.mp3"
desc["!fake0"] = "R&M: Fake doors like you wouldn't believe..."
sounds["!gaz1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\gaz1.mp3"
desc["!gaz1"] = "R&M: I Hate Mumunmunundsdays. And I could really go for some enchiladas. "
sounds["!gaz2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\gaz2.mp3"
desc["!gaz2"] = "R&M: Hey John, it's me Gazorpazorpfield"
sounds["!gaz3"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\gaz3.mp3"
desc["!gaz3"] = "R&M: Boy, fuck you John, you fuckin dumb stupid idiot."
sounds["!gaz4"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\gaz4.mp3"
desc["!gaz4"] = "R&M: C'mon Gazorpazorpfield go easy on me, huh?"
sounds["!gaz5"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\gaz5.mp3"
desc["!gaz5"] = "R&M: You dumb stupid weak pathetic white white... white guilt melt toast piece of human garbage."
sounds["!gaz6"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\gaz6.mp3"
desc["!gaz6"] = "R&M: Geez Gazorpazorpfield, you're pretty mean to me but that takes the cake"
sounds["!gaz7"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\gaz7.mp3"
desc["!gaz7"] = "R&M: I don't give a fuck"
sounds["!gaz8"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\gaz8.mp3"
desc["!gaz8"] = "R&M: I'm Gazorpazorp-fucking-field bitch..."
sounds["!heaven"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\heaven.mp3"
desc["!heaven"] = "R&M: I'm in heaven right now.  This might be the best day of my life."
sounds["!letswatch"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\letswatch.mp3"
desc["!letswatch"] = "R&M: Let's watch some crazy stuff, yo!"
sounds["!nobody"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\nobody.mp3"
desc["!nobody"] = "R&M: Nobody exists on purpose..."
sounds["!nowget"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\nowget.mp3"
desc["!nowget"] = "R&M: Now get the fuck outta here"
sounds["!nowwhat"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\nowwhat.mp3"
desc["!nowwhat"] = "R&M: So now what do we do?  That show..."
sounds["!thisshit"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\thisshit.mp3"
desc["!thisshit"] = "R&M: This shit is delicious"
sounds["!whocould"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\whocould.mp3"
desc["!whocould"] = "R&M: I just want to know who could have done something like this? It's a travesty"
sounds["!death"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\antsdeath.mp3"
desc["!death"] = "R&M: Everything's black, I can't see a thing, and also I can't feel a thing..."
sounds["!black"] = "Interface\\AddOns\\JettysSoundMod\\morty\\8\\black.mp3"
desc["!black"] = "R&M: Everything's black, I can't see a thing"
sounds["!meeseeks1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\meeseeks1.mp3"
desc["!meeseeks1"] = "R&M: (shout) I'm Mr. Meeseeks loot at me"
sounds["!meeseeks2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\meeseeks2.mp3"
desc["!meeseeks2"] = "R&M: I'm Mr. Meeseeks loot at me"
sounds["!luck"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\beginnersluck.mp3"
desc["!luck"] = "R&M: Yeah (belch) beginner's luck"
sounds["!wrong"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\doinitwrong.mp3"
desc["!wrong"] = "R&M: You guys are doin' it wrong."
sounds["!donext"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\donext.mp3"
desc["!donext"] = "R&M: Allright Morty, we're in your stupid giant's castle.  What do we do next?"
sounds["!dofind"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\findtreasure.mp3"
desc["!dofind"] = "R&M: Just relax, Rick.  All we gotta do is find the treasure room."
sounds["!choke1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\golf-choke.mp3"
desc["!choke1"] = "R&M: OK Jerry just choke up on the CLUB"
sounds["!choke2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\golf-choke2.mp3"
desc["!choke2"] = "R&M: Which is it?  Choke up or follow through?"
sounds["!choke3"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\golf-choke3.mp3"
desc["!choke3"] = "R&M: Oh C'mon Jerry.  We been over this.  You know you gotta do boooth."
sounds["!damnit"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\golf-damnit.mp3"
desc["!damnit"] = "R&M: DAMNIT DAMNIT DAMNIT"
sounds["!relax"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\golf-relax.mp3"
desc["!relax"] = "R&M: Well it's both, but most importantly, you gotta relax"
sounds["!relaxx"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\golf-relax2.mp3"
desc["!relaxx"] = "R&M: Have you ever tried to relax?  It is a paradox"
sounds["!gonnadie"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\gonnadie.mp3"
desc["!gonnadie"] = "R&M: Innocent people are going to die because of me."
sounds["!iaccept"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\iaccept.mp3"
desc["!iaccept"] = "R&M: You know what?  I accept your call to adventure"
sounds["!imout"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\imout.mp3"
desc["!imout"] = "R&M: You know what Rick?  I'm done with these insane adventures..."
sounds["!cando"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\meeseeks-cando.mp3"
desc["!cando"] = "R&M: Oooooo Yeah!  Can do!"
sounds["!wannadie"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\meeseeks-die.mp3"
desc["!wannadie"] = "R&M: I can't take it anymore.  I just want to die."
sounds["!yess"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\meeseeks-yes.mp3"
desc["!yess"] = "R&M: Yessirree"
sounds["!rope1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\rope1.mp3"
desc["!rope1"] = "R&M: Why did you even rope me into this?"
sounds["!rope2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\rope2.mp3"
desc["!rope2"] = "R&M: Cuz he roped me into this"
sounds["!rope3"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\rope3.mp3"
desc["!rope3"] = "R&M: Him over there?  He roped me into this"
sounds["!rope4"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\rope4.mp3"
desc["!rope4"] = "R&M: Well he roped me into this"
sounds["!rope5"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\rope5.mp3"
desc["!rope5"] = "R&M: What about me?  He roped me into this"
sounds["!rope6"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\rope6.mp3"
desc["!rope6"] = "R&M: That one over there roped me into this"
sounds["!rope7"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\rope7.mp3"
desc["!rope7"] = "R&M: Well he roped me into this"
sounds["!sh1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\schmeckel1.mp3"
desc["!sh1"] = "R&M: I'll take you down there for 25 schmeckells"
sounds["!sh2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\schmeckel2.mp3"
desc["!sh2"] = "R&M: 25 schmeckells, I don't know what that is.  Is it a lot? a little?"
sounds["!sh3"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\schmeckel3.mp3"
desc["!sh3"] = "R&M: Well that's exactly how much I spent on my fake boobies"
sounds["!sh4"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\schmeckel4.mp3"
desc["!sh4"] = "R&M: Hi, I'm Mr. Booby-buyer.  I'll buy those for 25 schmeckells"
sounds["!sh5"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\schmeckel5.mp3"
desc["!sh5"] = "R&M: It's a tempting offer, but decline."
sounds["!sh6"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\schmeckel6.mp3"
desc["!sh6"] = "R&M: Rats what a shame"
sounds["!wru"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\whatareyou.mp3"
desc["!wru"] = "R&M: What are you looking at Motherfucker?"
sounds["!wtff"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\whatthef.mp3"
desc["!wtff"] = "R&M: What the fuck is going on?"
sounds["!wub"] = "Interface\\AddOns\\JettysSoundMod\\morty\\5\\wub.mp3"
desc["!wub"] = "R&M: Wubba dubba dub dub"
sounds["!shw1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\16\\schwifty1.mp3"
desc["!shw1"] = "R&M: Oh yeah.  You gotta get schwifty"
sounds["!shw2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\16\\schwifty2.mp3"
desc["!shw2"] = "R&M: You gotta get schwifty in here."
sounds["!shw3"] = "Interface\\AddOns\\JettysSoundMod\\morty\\16\\schwifty3.mp3"
desc["!shw3"] = "R&M: Take off your pants and your panties.  Shit on the floor"
sounds["!shw4"] = "Interface\\AddOns\\JettysSoundMod\\morty\\16\\schwifty4.mp3"
desc["!shw4"] = "R&M: Time to get schwifty in here.  I'm Mr. Bulldog"
sounds["!shw5"] = "Interface\\AddOns\\JettysSoundMod\\morty\\16\\schwifty5.mp3"
desc["!shw5"] = "R&M: Hey, take your pants off.  It's schwifty time today."
sounds["!showme"] = "Interface\\AddOns\\JettysSoundMod\\morty\\16\\showme.mp3"
desc["!showme"] = "R&M: SHOW ME WHAT YOU GOT"
sounds["!m1"] = "Interface\\AddOns\\JettysSoundMod\\morty\\bloopers\\moment1.mp3"
desc["!m1"] = "R&M: hahahahahaaha - hold on - hahaha... this momement is so fucking good."
sounds["!m2"] = "Interface\\AddOns\\JettysSoundMod\\morty\\bloopers\\moment2.mp3"
desc["!m2"] = "R&M: hahahaha - Mmm.. Ok - hahahaha - ok"
sounds["!m3"] = "Interface\\AddOns\\JettysSoundMod\\morty\\bloopers\\moment3.mp3"
desc["!m3"] = "R&M: hahahah - one more time"
sounds["!m4"] = "Interface\\AddOns\\JettysSoundMod\\morty\\bloopers\\moment4.mp3"
desc["!m4"] = "R&M: hahaha I can't fucking..."
sounds["!m5"] = "Interface\\AddOns\\JettysSoundMod\\morty\\bloopers\\moment5.mp3"
desc["!m5"] = "R&M: hahaha OMG - fucking Christ"
sounds["!m6"] = "Interface\\AddOns\\JettysSoundMod\\morty\\bloopers\\moment6.mp3"
desc["!m6"] = "R&M: This next one's going to be hard too... To get through... hahaha"
sounds["!m7"] = "Interface\\AddOns\\JettysSoundMod\\morty\\bloopers\\moment7.mp3"
desc["!m7"] = "R&M: Morty... hahahaah - alright"
sounds["!m8"] = "Interface\\AddOns\\JettysSoundMod\\morty\\bloopers\\moment8.mp3"
desc["!m8"] = "R&M: hahah.. alright.. fuck... ok.. Morty.. haha.. fuck ok.."
sounds["!around"] = "Interface\\AddOns\\JettysSoundMod\\morty\\aroundme.mp3"
desc["!around"] = "R&M: Who's around me right now?  Who's around me?"
sounds["!stepup"] = "Interface\\AddOns\\JettysSoundMod\\morty\\stepup.mp3"
desc["!stepup"] = "R&M: Now why don't we step up here?  And everybody get stepped up."


-- Movies
sounds["!bye"] = "Interface\\AddOns\\JettysSoundMod\\movies\\byefelicia.mp3"
desc["!bye"] = "Friday:  Bye Felicia"
sounds["!milkk"] = "Interface\\AddOns\\JettysSoundMod\\movies\\milk1.mp3"
desc["!milkk"] = "Grandma's Boy:  Baby wants some milk? "
sounds["!milk"] = "Interface\\AddOns\\JettysSoundMod\\movies\\milk2.mp3"
desc["!milk"] = "Grandma's Boy:  Baby loves milk "
sounds["!ktfo"] = "Interface\\AddOns\\JettysSoundMod\\movies\\ktfo.mp3"
desc["!ktfo"] = "Friday:  You got knocked the fuck out man "
sounds["!listen"] = "Interface\\AddOns\\JettysSoundMod\\movies\\ron2.mp3"
desc["!listen"] = "Anchorman:  I need all of you to stop what you're doing and listen "
sounds["!hello"] = "Interface\\AddOns\\JettysSoundMod\\movies\\ron3.mp3"
desc["!hello"] = "Anchorman:  Well hello"
sounds["!boy"] = "Interface\\AddOns\\JettysSoundMod\\movies\\ron4.mp3"
desc["!boy"] = "Anchorman: Boy, that escalated quickly... "
sounds["!pirate"] = "Interface\\AddOns\\JettysSoundMod\\movies\\ron6.mp3"
desc["!pirate"] = "Anchorman: You are a smelly pirate hooker"
sounds["!whore"] = "Interface\\AddOns\\JettysSoundMod\\movies\\ron7.mp3"
desc["!whore"] = "Anchorman: Why don't you go back to your home on Whore Island "
sounds["!choice"] = "Interface\\AddOns\\JettysSoundMod\\movies\\ron8.mp3"
desc["!choice"] = "Anchorman: Milk was a bad choice!"
sounds["!regret"] = "Interface\\AddOns\\JettysSoundMod\\movies\\ron9.mp3"
desc["!regret"] = "Anchorman: I immediately regret this decision"
sounds["!bitch"] = "Interface\\AddOns\\JettysSoundMod\\movies\\bitch.mp3"
desc["!bitch"] = "Pulp Fiction:  Does he look like a bitch?"
sounds["!bitchh"] = "Interface\\AddOns\\JettysSoundMod\\movies\\bitch2.mp3"
desc["!bitchh"] = "Pulp Fiction:  (yelling) Does he look like a bitch?"
sounds["!english"] = "Interface\\AddOns\\JettysSoundMod\\movies\\english.mp3"
desc["!english"] = "Pulp Fiction: English, motherfucker.  Do you speak it?"
sounds["!ask"] = "Interface\\AddOns\\JettysSoundMod\\movies\\ask.mp3"
desc["!ask"] = "Pulp Fiction: I don't remember asking you a god damn thing"
sounds["!gil"] = "Interface\\AddOns\\JettysSoundMod\\movies\\shutup.mp3"
desc["!gil"] = "Mallrats:  Ah, Gil, just shut the fuck up."
sounds["!adios"] = "Interface\\AddOns\\JettysSoundMod\\movies\\adios.mp3"
desc["!adios"] = "Grandma's Boy:  Adios, turd-nuggets."
sounds["!car"] = "Interface\\AddOns\\JettysSoundMod\\movies\\car.mp3"
desc["!car"] = "Grandma's Boy:  Your bed is a car... Yeah, but it's a fuckin sweet car."
sounds["!burger"] = "Interface\\AddOns\\JettysSoundMod\\movies\\burger.mp3"
desc["!burger"] = "Pulp Fiction: Mmmm.  This is a tasty burger"
sounds["!cb1"] = "Interface\\AddOns\\JettysSoundMod\\movies\\cb1.mp3"
desc["!cb1"] = "Hotrod:  Coolbeans 1"
sounds["!cb2"] = "Interface\\AddOns\\JettysSoundMod\\movies\\cb2.mp3"
desc["!cb2"] = "Hotrod:  Coolbeans 2"
sounds["!cb3"] = "Interface\\AddOns\\JettysSoundMod\\movies\\cb3.mp3"
desc["!cb3"] = "Hotrod:  Coolbeans 3"
sounds["!cb4"] = "Interface\\AddOns\\JettysSoundMod\\movies\\cb4.mp3"
desc["!cb4"] = "Hotrod:  Cooolbeans"
sounds["!cb5"] = "Interface\\AddOns\\JettysSoundMod\\movies\\cb5.mp3"
desc["!cb5"] = "Hotrod:  Cool-cool beans-beans"
sounds["!cb6"] = "Interface\\AddOns\\JettysSoundMod\\movies\\cb6.mp3"
desc["!cb6"] = "Hotrod:  (music) Cooooolbea-bea-bea-beans"
sounds["!trynot"] = "Interface\\AddOns\\JettysSoundMod\\movies\\trynot.mp3"
desc["!trynot"] = "Clerks:  Try not to suck any dick on the way through the parking lot."
sounds["!buttons"] = "Interface\\AddOns\\JettysSoundMod\\movies\\buttons.mp3"
desc["!buttons"] = "Clerks:  You push fucking buttons.  Anyone could waltz in here and do our jobs"
sounds["!37"] = "Interface\\AddOns\\JettysSoundMod\\movies\\37.mp3"
desc["!37"] = "Clerks:  37!  My girlfriend sucked 37 dicks!"
sounds["!lick"] = "Interface\\AddOns\\JettysSoundMod\\movies\\lick.mp3"
desc["!lick"] = "Zoolander:  I guess you can Deri-lick-t my balls, Capitain"
sounds["!lickk"] = "Interface\\AddOns\\JettysSoundMod\\movies\\lickk.mp3"
desc["!lickk"] = "Zoolander:  I can you Deri-lick-t my own balls.  Thank you very much"
sounds["!z1"] = "Interface\\AddOns\\JettysSoundMod\\movies\\z1.mp3"
desc["!z1"] = "Zoolander: Earth to Brent!  I was making a joke"
sounds["!z2"] = "Interface\\AddOns\\JettysSoundMod\\movies\\z2.mp3"
desc["!z2"] = "Zoolander: Earth to Meekus! Duh ok"
sounds["!z3"] = "Interface\\AddOns\\JettysSoundMod\\movies\\z3.mp3"
desc["!z3"] = "Zoolander: Earth to Brent!  I'm not so sure you did, because you were all I didn't know it was a joke"
sounds["!z4"] = "Interface\\AddOns\\JettysSoundMod\\movies\\z4.mp3"
desc["!z4"] = "Zoolander: I knew it was a joke, Meekus.  I just didn't get it right away"
sounds["!hy"] = "Interface\\AddOns\\JettysSoundMod\\movies\\hellyeabitch.mp3"
desc["!hy"] = "Jay and Silent Bob: Hell yeah, bitch."
sounds["!internet"] = "Interface\\AddOns\\JettysSoundMod\\movies\\internet.mp3"
desc["!internet"] = "Jay and Silent Bob: What the fuck is the internet?"
sounds["!suck"] = "Interface\\AddOns\\JettysSoundMod\\movies\\suck.mp3"
desc["!suck"] = "Jay and Silent Bob: Oooo, I'm gunna suck those guys dicks off"
sounds["!well"] = "Interface\\AddOns\\JettysSoundMod\\movies\\well.mp3"
desc["!well"] = "Jay and Silent Bob: Well fuck that"
sounds["!cuz"] = "Interface\\AddOns\\JettysSoundMod\\movies\\cuz.mp3"
desc["!cuz"] = "Jay and Silent Bob: Cuz you're doin it all wrong"
sounds["!you"] = "Interface\\AddOns\\JettysSoundMod\\movies\\balllickers.mp3"
desc["!you"] = "Jay and Silent Bob: You are the ones who are the ball lickers"
sounds["!fat"] = "Interface\\AddOns\\JettysSoundMod\\movies\\fat.mp3"
desc["!fat"] = "Jay and Silent Bob: Look, fuck that fat fuck."
sounds["!youever"] = "Interface\\AddOns\\JettysSoundMod\\movies\\asshole-licked.mp3"
desc["!youever"] = "Jay and Silent Bob: Yo Baby, you ever had your asshole licked by a fat man in an overcoat?"
sounds["!hottest"] = "Interface\\AddOns\\JettysSoundMod\\movies\\hottest.mp3"
desc["!hottest"] = "Jay and Silent Bob: Sure as I am that you're the hottest bitch I ever seen"
sounds["!clit"] = "Interface\\AddOns\\JettysSoundMod\\movies\\clit.mp3"
desc["!clit"] = "Jay and Silent Bob: I am the master of the clit! ..."
sounds["!clit2"] = "Interface\\AddOns\\JettysSoundMod\\movies\\clit2.mp3"
desc["!clit2"] = "Jay and Silent Bob: No one rules the clit like me..."
sounds["!dunno"] = "Interface\\AddOns\\JettysSoundMod\\movies\\you-just-said.mp3"
desc["!dunno"] = "Jay and Silent Bob: I don't know what the fuck you just said, little kid."
sounds["!start"] = "Interface\\AddOns\\JettysSoundMod\\movies\\start-suckin.mp3"
desc["!start"] = "Jay and Silent Bob: The fuck you waitin for bitch? Start suckin."
sounds["!wtf"] = "Interface\\AddOns\\JettysSoundMod\\movies\\what-the-fuck.mp3"
desc["!wtf"] = "Jay and Silent Bob: What the fuck are you bitches babblin about?"
sounds["!watch"] = "Interface\\AddOns\\JettysSoundMod\\movies\\hey-watch.mp3"
desc["!watch"] = "Jay and Silent Bob: Hey, watch the language"
sounds["!up"] = "Interface\\AddOns\\JettysSoundMod\\movies\\upyours.mp3"
desc["!up"] = "Blazing Saddles: Up yours, nigger"
sounds["!surprise"] = "Interface\\AddOns\\JettysSoundMod\\movies\\surprise.mp3"
desc["!surprise"] = "Team America:  Surprise Cockfags"
sounds["!ftalk"] = "Interface\\AddOns\\JettysSoundMod\\movies\\fagtalk.mp3"
desc["!ftalk"] = "Idiocracy: Theres that fag talk we talked about "
sounds["!beat1"] = "Interface\\AddOns\\JettysSoundMod\\movies\\beat1.mp3"
desc["!beat1"] = "21 Jump Street: You want me to beat your dick off?"
sounds["!beat2"] = "Interface\\AddOns\\JettysSoundMod\\movies\\beat2.mp3"
desc["!beat2"] = "21 Jump Street: You want to beat my dick off?"
sounds["!beat3"] = "Interface\\AddOns\\JettysSoundMod\\movies\\beat3.mp3"
desc["!beat3"] = "21 Jump Street: I'll beat your dick off with both hands.  Wassup?  Let's go."
sounds["!escalated"] = "Interface\\AddOns\\JettysSoundMod\\movies\\escalated.mp3"
desc["!escalated"] = "Anchorman:  Boy that escalated quickly..."
sounds["!work"] = "Interface\\AddOns\\JettysSoundMod\\movies\\workmyassoff.mp3"
desc["!work"] = "21 Jump Street: Well guess what motherfuckers?  I'm black.  And I worked my ass off"
sounds["!weird"] = "Interface\\AddOns\\JettysSoundMod\\movies\\weird.mp3"
desc["!weird"] = "21 Jump Street:  That's weird man"
sounds["!beg"] = "Interface\\AddOns\\JettysSoundMod\\movies\\beg.mp3"
desc["!beg"] = "Mallrats: I mean look at you, you're the kinda guy that would beg for sex"
sounds["!crap"] = "Interface\\AddOns\\JettysSoundMod\\movies\\crap.mp3"
desc["!crap"] = "Mallrats:  That was the biggest load of crap I've ever heard!"


-- TV
sounds["!boring"] = "Interface\\AddOns\\JettysSoundMod\\tv\\boring.mp3"
desc["!boring"] = "Simpsons:  It's boring.  You're boring everybody.  Quit boring everyone."
sounds["!gay"] = "Interface\\AddOns\\JettysSoundMod\\tv\\gay.mp3"
desc["!gay"] = "Community:  Ha!  Gaaaaay!"
sounds["!grizzly"] = "Interface\\AddOns\\JettysSoundMod\\tv\\grizzly.mp3"
desc["!grizzly"] = "Workaholics:  Lookin straight Grizzly"
sounds["!honey"] = "Interface\\AddOns\\JettysSoundMod\\tv\\honey.mp3"
desc["!honey"] = "Workaholics: Bitch better have my honey "
sounds["!weird"] = "Interface\\AddOns\\JettysSoundMod\\tv\\weird.mp3"
desc["!weird"] = "Workaholics: You guys ready to get weird tonight?"
sounds["!punch"] = "Interface\\AddOns\\JettysSoundMod\\tv\\punch.mp3"
desc["!punch"] = "Workaholics:  I'd punch you in the face for asking something like that"
sounds["!fur"] = "Interface\\AddOns\\JettysSoundMod\\tv\\fur.mp3"
desc["!fur"] = "Workaholics:  Fur-sure"
sounds["!fully"] = "Interface\\AddOns\\JettysSoundMod\\tv\\fully.mp3"
desc["!fully"] = "Workaholics:  You are fully torqued bro"
sounds["!mike"] = "Interface\\AddOns\\JettysSoundMod\\tv\\mike.mp3"
desc["!mike"] = "Workaholics: You totally just M. Mike Solomon-ed me"
sounds["!story"] = "Interface\\AddOns\\JettysSoundMod\\tv\\story.mp3"
desc["!story"] = "Workaholics: Dude, tell that story again"
sounds["!cz"] = "Interface\\AddOns\\JettysSoundMod\\tv\\cz.mp3"
desc["!cz"] = "Workaholics: Catherine Zeta Jones..."
sounds["!bonds"] = "Interface\\AddOns\\JettysSoundMod\\tv\\bonds.mp3"
desc["!bonds"] = "Chapelle:  You need to diversify your bonds, nigga."
sounds["!prison1"] = "Interface\\AddOns\\JettysSoundMod\\tv\\prison1.mp3"
desc["!prison1"] = "Workaholics: Hot dudes like us do not do well in prison, guys!"
sounds["!prison2"] = "Interface\\AddOns\\JettysSoundMod\\tv\\prison2.mp3"
desc["!prison2"] = "Workaholics: We are like three fresh meat butt steaks just waitin' for a dry rub!"
sounds["!prison3"] = "Interface\\AddOns\\JettysSoundMod\\tv\\prison3.mp3"
desc["!prison3"] = "Workaholics: Oh god, Blake's right.  His American Idol Hairdo, your norseness, my pecs, my hammies."
sounds["!prison4"] = "Interface\\AddOns\\JettysSoundMod\\tv\\prison4.mp3"
desc["!prison4"] = "Workaholics: My glutes man!  They're just waiting for a good dicking"
sounds["!prison5"] = "Interface\\AddOns\\JettysSoundMod\\tv\\prison5.mp3"
desc["!prison5"] = "Workaholics: Oh shit.  Gunna get pounded.  Maybe over time it gets ok..."
sounds["!prison6"] = "Interface\\AddOns\\JettysSoundMod\\tv\\prison6.mp3"
desc["!prison6"] = "Workaholics: I don't know, I'm just trying to be a glas half full guy."
sounds["!prison7"] = "Interface\\AddOns\\JettysSoundMod\\tv\\prison7.mp3"
desc["!prison7"] = "Workaholics: You're going to have an ass half full. Of prison -bleep-"
sounds["!areyou"] = "Interface\\AddOns\\JettysSoundMod\\tv\\areyouforreal.mp3"
desc["!areyou"] = "Workaholics: Are you being for real?"
sounds["!forreal"] = "Interface\\AddOns\\JettysSoundMod\\tv\\areyouforreal2.mp3"
desc["!forreal"] = "Workaholics: I'm as real as the streets"
sounds["!fair"] = "Interface\\AddOns\\JettysSoundMod\\tv\\fair.mp3"
desc["!fair"] = "Workaholics: Guy what part of Irwindale Rennaisance Pleasure Faire sounds like a joke to you?"
sounds["!crack"] = "Interface\\AddOns\\JettysSoundMod\\tv\\crackopen.mp3"
desc["!crack"] = "Workaholics: If you would have even bothered to crack the player's handbook open"
sounds["!pout"] = "Interface\\AddOns\\JettysSoundMod\\tv\\pout.mp3"
desc["!pout"] = "Workaholics: And what is up with you, Ms. Pouting Princess, in the corner?"
sounds["!bigdick"] = "Interface\\AddOns\\JettysSoundMod\\tv\\bigdick.mp3"
desc["!bigdick"] = "Workaholics: I wanna see that big dick.  I wanna see it!  Ahh!  It's a big dick."
sounds["!wtrash"] = "Interface\\AddOns\\JettysSoundMod\\tv\\watertrash.mp3"
desc["!wtrash"] = "Workaholics: You smell like water trash"
sounds["!ruin"] = "Interface\\AddOns\\JettysSoundMod\\tv\\ruin.mp3"
desc["!ruin"] = "Workaholics: you're ruining my life"
sounds["!shaman"] = "Interface\\AddOns\\JettysSoundMod\\tv\\shaman.mp3"
desc["!shaman"] = "Workaholics: We're not barbarians.  You're dressed like some goddamn farm shaman"
sounds["!rutrying"] = "Interface\\AddOns\\JettysSoundMod\\tv\\areyoutrying.mp3"
desc["!rutrying"] = "Workaholics: Are you trying to seduce me?"
sounds["!seders"] = "Interface\\AddOns\\JettysSoundMod\\tv\\seders.mp3"
desc["!seders"] = "Workaholics: I'm trying ot seders you"
sounds["!handy"] = "Interface\\AddOns\\JettysSoundMod\\tv\\handy.mp3"
desc["!handy"] = "Workaholics: Is that an over the pants handy?"
sounds["!house"] = "Interface\\AddOns\\JettysSoundMod\\tv\\house.mp3"
desc["!house"] = "Workaholics: Weee! Welcome to my house."
sounds["!rude"] = "Interface\\AddOns\\JettysSoundMod\\tv\\rude.mp3"
desc["!rude"] = "Workaholics: Ruuuude"
sounds["!swoll"] = "Interface\\AddOns\\JettysSoundMod\\tv\\swoll.mp3"
desc["!swoll"] = "Workaholics: Just gettin swole with it, brother."
sounds["!thisis"] = "Interface\\AddOns\\JettysSoundMod\\tv\\thisis.mp3"
desc["!thisis"] = "Workaholics: This is my pen, and this is my wrench. Oooooaaaaaaah"
sounds["!wizard1"] = "Interface\\AddOns\\JettysSoundMod\\tv\\wizard1.mp3"
desc["!wizard1"] = "Workaholics:  Wizard Song Part 1"
sounds["!wizard2"] = "Interface\\AddOns\\JettysSoundMod\\tv\\wizard2.mp3"
desc["!wizard2"] = "Workaholics:  Wizard Song Part 2"
sounds["!wizard3"] = "Interface\\AddOns\\JettysSoundMod\\tv\\wizard3.mp3"
desc["!wizard3"] = "Workaholics:  Wizard Song Part 3"
sounds["!why"] = "Interface\\AddOns\\JettysSoundMod\\tv\\whyrip.mp3"
desc["!why"] = "Workaholics: Why are you ripping your shirt off?"
sounds["!whyy"] = "Interface\\AddOns\\JettysSoundMod\\tv\\whyrip2.mp3"
desc["!whyy"] = "Workaholics: Why aren't you guys ripping your shirt off?"
sounds["!madness"] = "Interface\\AddOns\\JettysSoundMod\\tv\\whyrip3.mp3"
desc["!madness"] = "Workaholics: The world needs to see the madness that is my upper torso, ok?"
sounds["!noo"] = "Interface\\AddOns\\JettysSoundMod\\tv\\no.mp3"
desc["!noo"] = "American Dad:  Noooo "
sounds["!nooo"] = "Interface\\AddOns\\JettysSoundMod\\tv\\noo.mp3"
desc["!nooo"] = "American Dad:  (kazoo) Noooo "
sounds["!notgay"] = "Interface\\AddOns\\JettysSoundMod\\tv\\notgay.mp3"
desc["!notgay"] = "American Dad: I am not gay, Señor. You just make me do gay things."

-- South Park
sounds["!clue1"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\clue1.mp3"
desc["!clue1"] = "South Park: I think I'm getting a clue.  Yeah, this is totally giving me a clue right now."
sounds["!clue2"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\clue2.mp3"
desc["!clue2"] = "South Park: I'm starting to get a clue too."
sounds["!clue3"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\clue3.mp3"
desc["!clue3"] = "South Park: Yeah, now I've got a total clue."
sounds["!clue4"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\clue4.mp3"
desc["!clue4"] = "South Park: I've still got a raging clue"
sounds["!clue5"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\clue5.mp3"
desc["!clue5"] = "South Park: Oh I just started getting a clue.  Yeah I'm totally getting a clue."
sounds["!clue6"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\clue6.mp3"
desc["!clue6"] = "South Park: Oh that's giving me a clue.  Yeah, I've got a raging clue right now."
sounds["!clue7"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\clue7.mp3"
desc["!clue7"] = "South Park: Oh Frank seriously, I have such a raging clue right now."
sounds["!clue8"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\clue8.mp3"
desc["!clue8"] = "South Park: I was getting a clue like every two minutes"
sounds["!clue9"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\clue9.mp3"
desc["!clue9"] = "South Park: I got such a raging clue that I almost shot clue-goo all over Joe"
sounds["!huge"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\hardlyboys-huge.mp3"
desc["!huge"] = "South Park: It was huuuuge."
sounds["!mystery"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\hardlyboys-mystery.mp3"
desc["!mystery"] = "South Park: That sure is a mystery"
sounds["!f1"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\f1.mp3"
desc["!f1"] = "South Park: I'm not your buddy, friend."
sounds["!f2"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\f2.mp3"
desc["!f2"] = "South Park: He's not your friend, guy."
sounds["!f3"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\f3.mp3"
desc["!f3"] = "South Park: I'm not your guy, buddy."
sounds["!f4"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\f4.mp3"
desc["!f4"] = "South Park: He's not your buddy, friend."
sounds["!f5"] = "Interface\\AddOns\\JettysSoundMod\\southpark\\f5.mp3"
desc["!f5"] = "South Park: I'm not your friend, guy."

-- Archer
sounds["!lana"] = "Interface\\AddOns\\JettysSoundMod\\archer\\lana.mp3"
desc["!lana"] = "Archer: Lana"
sounds["!lanaa"] = "Interface\\AddOns\\JettysSoundMod\\archer\\lana2.mp3"
desc["!lanaa"] = "Archer: Lana!"
sounds["!lanaaa"] = "Interface\\AddOns\\JettysSoundMod\\archer\\lana3.mp3"
desc["!lanaaa"] = "Archer: LANA!"
sounds["!lanaaaa"] = "Interface\\AddOns\\JettysSoundMod\\archer\\lana4.mp3"
desc["!lanaaaa"] = "Archer: LAAAAAANNNAAAAAAAAA! What?!"
sounds["!dz"] = "Interface\\AddOns\\JettysSoundMod\\archer\\lana5.mp3"
desc["!dz"] = "Archer: Dangerzone"
sounds["!toogay"] = "Interface\\AddOns\\JettysSoundMod\\archer\\toogay.mp3"
desc["!toogay"] = "Archer: Oh please!  You are entirely too gay."
sounds["!macho"] = "Interface\\AddOns\\JettysSoundMod\\archer\\macho.mp3"
desc["!macho"] = "Archer: Out macho a gay guy?  Oh my stars"
sounds["!ritz"] = "Interface\\AddOns\\JettysSoundMod\\archer\\ritz.mp3"
desc["!ritz"] = "Archer: That's puttin on the Ritz man."
sounds["!jump"] = "Interface\\AddOns\\JettysSoundMod\\archer\\jump.mp3"
desc["!jump"] = "Archer: Jump up your own ass and die."
sounds["!ugly"] = "Interface\\AddOns\\JettysSoundMod\\archer\\ugly.mp3"
desc["!ugly"] = "Archer: Oh ugly duckling.."
sounds["!fan"] = "Interface\\AddOns\\JettysSoundMod\\archer\\fan.mp3"
desc["!fan"] = "Archer: Hi, I'm a huge fan of cock and my name is-"
sounds["!whoree"] = "Interface\\AddOns\\JettysSoundMod\\archer\\whoree.mp3"
desc["!whoree"] = "Archer: Sorry I was picturing Whore Island"
sounds["!tip"] = "Interface\\AddOns\\JettysSoundMod\\archer\\tip.mp3"
desc["!tip"] = "Archer: Just the tip?"
sounds["!cry"] = "Interface\\AddOns\\JettysSoundMod\\archer\\cry.mp3"
desc["!cry"] = "Archer: No, don't.. You're so ugle when you cry."
sounds["!ready"] = "Interface\\AddOns\\JettysSoundMod\\archer\\ready.mp3"
desc["!ready"] = "Archer: (whispering) I'm ready..."
sounds["!suppressing"] = "Interface\\AddOns\\JettysSoundMod\\archer\\suppressing-fire.mp3"
desc["!suppressing"] = "Archer: Suppressing FIIIIIIREEEE!!! (gunshots)  Goddammit, Cyril."

-- Sports
sounds["!mora1"] = "Interface\\AddOns\\JettysSoundMod\\sports\\mora1.mp3"
desc["!mora1"] = "Jim Mora: Well I'll start off by saying this, do not blame that game on the defense. Ok?"
sounds["!mora2"] = "Interface\\AddOns\\JettysSoundMod\\sports\\mora2.mp3"
desc["!mora2"] = "Jim Mora: And that was a disgraceful performance in my opinion."
sounds["!mora3"] = "Interface\\AddOns\\JettysSoundMod\\sports\\mora3.mp3"
desc["!mora3"] = "Jim Mora: In my opinion, that sucked."
sounds["!mora4"] = "Interface\\AddOns\\JettysSoundMod\\sports\\mora4.mp3"
desc["!mora4"] = "Jim Mora: Playoffs?  Don't talk about playoffs?  I just hope we can win a game."
sounds["!practice1"] = "Interface\\AddOns\\JettysSoundMod\\sports\\practice.mp3"
desc["!practice1"] = "Allen Iverson: But we talking about practice man"
sounds["!practice2"] = "Interface\\AddOns\\JettysSoundMod\\sports\\practice2.mp3"
desc["!practice2"] = "Allen Iverson: How in the hell can I make my teammates better by practicing?"
sounds["!practice3"] = "Interface\\AddOns\\JettysSoundMod\\sports\\practice3.mp3"
desc["!practice3"] = "Allen Iverson: Practice?"
sounds["!garbage"] = "Interface\\AddOns\\JettysSoundMod\\sports\\garbage.mp3"
desc["!garbage"] = "Mike Gundy: Because it's garbage!"
sounds["!man"] = "Interface\\AddOns\\JettysSoundMod\\sports\\man.mp3"
desc["!man"] = "Mike Gundy: I'm a man!"


-- Always Sunny
sounds["!fatpig"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\fatpig.mp3"
desc["!fatpig"] = "IASIP: Woah I'll wait.  I'll wait for you to send your taxes.  You fat pig!"
sounds["!fatcow"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\fatcow.mp3"
desc["!fatcow"] = "IASIP: Hey hey hey!  Slow down!  Children play here you fat cow!"
sounds["!fatbitch"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\fatbitch.mp3"
desc["!fatbitch"] = "IASIP: You old fat bitch!"
sounds["!ine"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\inefficient.mp3"
desc["!ine"] = "IASIP: So goddamn inefficient"
sounds["!sieze"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\sieze.mp3"
desc["!sieze"] = "IASIP: I don't care if you're old, sieze the gap!"
sounds["!wyp"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\whatsyourplan.mp3"
desc["!wyp"] = "IASIP: What's your plan huh? 2 miles an hour..."
sounds["!signal"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\yoursignal.mp3"
desc["!signal"] = "IASIP: Use your signal you cow!"
sounds["!assblast"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\assblast.mp3"
desc["!assblast"] = "IASIP: These guys are blasting us in the ass"
sounds["!bd"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\babydick.mp3"
desc["!bd"] = "IASIP: Shut up, babydick"
sounds["!bleached"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\bleached.mp3"
desc["!bleached"] = "IASIP: I have a bleached asshole"
sounds["!line"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\cokeboner.mp3"
desc["!line"] = "IASIP: C'mon you old sonuvagun and let Buster do a line off your boner"
sounds["!dying"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\everyonesdying.mp3"
desc["!dying"] = "IASIP: Everybody's dying, bitch."
sounds["!trash"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\gravetrash.mp3"
desc["!trash"] = "IASIP: I'm not going to be buried in a grave.  When I'm dead, just throw me in the trash."
sounds["!jay1"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\jayallover.mp3"
desc["!jay1"] = "IASIP: Uh, later dudes, S you in your As, don't wear a C in jail over your Bs"
sounds["!jay2"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\jayallover2.mp3"
desc["!jay2"] = "IASIP: Why would he not wear a C?  I don't even know what he's talking about half the time, bro."
sounds["!loveman1"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\loveman1.mp3"
desc["!loveman1"] = "IASIP: Here's a confession, I'm in love with a man."
sounds["!loveman2"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\loveman2.mp3"
desc["!loveman2"] = "IASIP: I'm in love with a man.  A man called God."
sounds["!loveman3"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\loveman3.mp3"
desc["!loveman3"] = "IASIP: Does that make me gay?  Am I gay for God? You betcha."
sounds["!swear"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\noogie1.mp3"
desc["!swear"] = "IASIP: I swear to god, if you try to give me a noogie..."
sounds["!onion"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\onion.mp3"
desc["!onion"] = "IASIP: I'm gunna stop you right there, your breath smells like an old lady fart..."
sounds["!plowing"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\plowing.mp3"
desc["!plowing"] = "IASIP: Lets pull up our bootstraps, oil up our asses, and do a little plowing of our own."
sounds["!regress"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\regress.mp3"
desc["!regress"] = "IASIP: So then I'll just regress, because I feel like I made myself perfectly redundant."
sounds["!yourmom"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\yourmom.mp3"
desc["!yourmom"] = "IASIP: Your mom doesn't know dick.  She's a dumb fat cow.  And your sister..."
sounds["!fm"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\fm.mp3"
desc["!fm"] = "IASIP: Fight milk!"
sounds["!fm1"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\fm1.mp3"
desc["!fm1"] = "IASIP: Fight milk!"
sounds["!fm2"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\fm2.mp3"
desc["!fm2"] = "IASIP: First alcoholic, dairy based protein drink."
sounds["!fm3"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\fm3.mp3"
desc["!fm3"] = "IASIP: For body guards"
sounds["!fm4"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\fm4.mp3"
desc["!fm4"] = "IASIP: By body guards!"
sounds["!fm5"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\fm5.mp3"
desc["!fm5"] = "IASIP: I drink it every morning"
sounds["!ga"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\goodafternoon.mp3"
desc["!ga"] = "IASIP: Haaaa Good afternoon hehehe"
sounds["!ryan1"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\ryan1.mp3"
desc["!ryan1"] = "IASIP: What's going on ok.  I thought you were living with your brother, Ryan.  What's Ryan think of all this?"
sounds["!ryan2"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\ryan2.mp3"
desc["!ryan2"] = "IASIP: Ryan's dead."
sounds["!ryan3"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\ryan3.mp3"
desc["!ryan3"] = "IASIP: He's deaaaaad?!"
sounds["!callher"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\callher.mp3"
desc["!callher"] = "IASIP: You will call her!"
sounds["!callherr"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\callherr.mp3"
desc["!callherr"] = "IASIP: You will call HEEEEERR!"
sounds["!callherrr"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\callher0.mp3"
desc["!callherrr"] = "IASIP: I'm not going to call her alright?"
sounds["!getoff1"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\getoff1.mp3"
desc["!getoff1"] = "IASIP: That's how you get off"
sounds["!getoff2"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\getoff2.mp3"
desc["!getoff2"] = "IASIP: Don't you guys want to get off with me?"
sounds["!getoff3"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\getoff3.mp3"
desc["!getoff3"] = "IASIP: I want you to get off with me"
sounds["!getoff4"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\getoff4.mp3"
desc["!getoff4"] = "IASIP: Just follow my lead guys.  We're going ot get off.  Together."
sounds["!dennis"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\dennis.mp3"
desc["!dennis"] = "IASIP: D-E-N-N-I-S.  The Dennis System"
sounds["!d"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\d.mp3"
desc["!d"] = "IASIP: D.  Demonstrate your value"
sounds["!e"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\e.mp3"
desc["!e"] = "IASIP: E.  Engage physically."
sounds["!n"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\n.mp3"
desc["!n"] = "IASIP: First N.  Nurturing dependance."
sounds["!nn"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\nn.mp3"
desc["!nn"] = "IASIP: Second N.  Neglect emotionally."
sounds["!i"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\i.mp3"
desc["!i"] = "IASIP: I.  Inspire hope."
sounds["!s"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\s.mp3"
desc["!s"] = "IASIP: S.  Separate entirely."
sounds["!magnum"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\magnum.mp3"
desc["!magnum"] = "IASIP: Whoops I dropped my monster condom that I use for my magnum dong."
sounds["!command"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\stop.mp3"
desc["!command"] = "IASIP: I command you to stop."
sounds["!def1"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\def1.mp3"
desc["!def1"] = "IASIP: Arrogance, vanity.  All over.  He's underwater like a Range Rover."
sounds["!def2"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\def2.mp3"
desc["!def2"] = "IASIP: Makeup. Smearin.  No power steerin.  He be talkin but we don't be hearin."
sounds["!def3"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\def3.mp3"
desc["!def3"] = "IASIP: Speaks like Zeus.  Smells like poops.  Rage all over from his head down to his shoes."
sounds["!dgas"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\dgas.mp3"
desc["!dgas"] = "IASIP: I don't give a shit. Why are you here?"
sounds["!dflyer"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\dickflyer.mp3"
desc["!dflyer"] = "IASIP: You should have seen how pationate he got when I showed him the dick flyer"
sounds["!laugh"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\laugh.mp3"
desc["!laugh"] = "IASIP: (laughs)"
sounds["!justends"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\justends.mp3"
desc["!justends"] = "IASIP: Well sometimes you don't fake it and it just ends naturally."
sounds["!stahp"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\stopcharlie.mp3"
desc["!stahp"] = "IASIP: Stop Charlie.  This game has gone on long enough."
sounds["!pullin"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\pullin.mp3"
desc["!pullin"] = "IASIP: Are you pulling my dick, bro?"
sounds["!noyou"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\weretalkingaboutyou.mp3"
desc["!noyou"] = "IASIP: We're talking about you!"
sounds["!youhad"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\youeverhadsex.mp3"
desc["!youhad"] = "IASIP: Yo, you ever had sex, man?"
sounds["!cch"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\cch.mp3"
desc["!cch"] = "IASIP: GOd dammit Dutch!  What other errands you have us running for the DA?"
sounds["!obama"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\obama1.mp3"
desc["!obama"] = "IASIP: Ay yo whatup son?  What's up with congress being all up in my ass?"
sounds["!obamaa"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\obama2.mp3"
desc["!obamaa"] = "IASIP: Ay yo, where my Senators at dawg?"
sounds["!spoton"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\spoton.mp3"
desc["!spoton"] = "IASIP: Wooooah!  You nailed it!  That was spot on."
sounds["!say"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\ifisay.mp3"
desc["!say"] = "IASIP: If I say it one more time. x3"
sounds["!outside"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\outside.mp3"
desc["!outside"] = "IASIP: Let's go outside, let's get some fresh air..."
sounds["!shut"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\shutup.mp3"
desc["!shut"] = "IASIP: SHUT UP! OMG I don't care!"
sounds["!woman"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\woman.mp3"
desc["!woman"] = "IASIP: hahaha... No no no.. You're a woman."
sounds["!whattt"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\what.mp3"
desc["!whattt"] = "IASIP: Fuck man, what?!"
sounds["!how"] = "Interface\\AddOns\\JettysSoundMod\\iasip\\how.mp3"
desc["!how"] = "IASIP: Fuck man, what!? How do you not get that?"

--------------------------------------
-- Configs
--------------------------------------

function Config:Toggle(bool)
	if (bool) then
		JettyToggle = not JettyToggle;
	end
	local onoff;
	if ( JettyToggle) then
		onoff = "|cff00cc66active|r";
	else
		onoff = "|cffcc0000inactive|r";
	end
	return onoff
end

function Config:List()
	if JettyListFrame:IsShown() then
		JettyListFrame:Hide()
	else
		JettyListFrame:Show()
	end

end

function Config:GetThemeColor()
	local c = defaults.theme;
	return c.r, c.g, c.b, c.hex;
end


-------------------------------------------
-- Sound List Frame
------------------------------------------

local list = {};
local values = {};
local keys ={};

    function pairsByKeys (t, f)
      local a = {}
      for n in pairs(t) do table.insert(a, n) end
      table.sort(a, f)
      local i = 0      -- iterator variable
      local iter = function ()   -- iterator function
        i = i + 1
        if a[i] == nil then return nil
        else return a[i], t[a[i]]
        end
      end
      return iter
    end


for key,value in pairsByKeys(sounds) do
	table.insert(keys,key)
	table.insert(list,desc[key])
end

local addon, ns = ...
local UIP = UIParent
local CF = CreateFrame
local _G = _G
local unpack = unpack
local wipe = wipe

local width = 600
local height = 300

-- content data func

local function generateScrollChildData(scrollChild,maxx)

 
-- Create a table that will contain the strings themselves
scrollChild.fstrings = scrollChild.fstrings or {}
scrollChild.fbtn = scrollChild.fbtn or {}
 
-- This changes the padding between strings vertically
local PADDING = 5
 
-- Store the max width and overall height of the scroll child
local height = 0
local width = 0

-- Iterate the list collected
for idx, fname in ipairs(list) do

   -- If the string is not created, do so
   if not scrollChild.fstrings[idx] then
      scrollChild.fstrings[idx] = scrollChild:CreateFontString("FPreviewFS" .. idx, "OVERLAY")
   end
   
    if not scrollChild.fbtn[idx] then
      scrollChild.fbtn[idx] = CreateJetButton(scrollChild, keys[idx])
   end
   
   -- Set the string to the correct object, set the text to be the
   -- name and set the height/width of the string based on
   -- the size of the resulting 'string'.
   local fs = scrollChild.fstrings[idx]
   local fb = scrollChild.fbtn[idx]
   fs:SetFontObject("GameFontNormal")
   fs:SetText(fname)
   local fwidth = fs:GetStringWidth()+100
   local fheight = fs:GetStringHeight()
   --fs:SetSize(fwidth, fheight)
   fs:SetHeight(fheight)
   fb:SetWidth(100); 
   fb:SetHeight(fheight);
   -- Place the strings in rows starting at the top-left
   if idx == 1 then
   
	  fb:SetPoint("TOPLEFT", 0,0);
      fs:SetPoint("TOPLEFT", 100,0);
      height = height + fheight
   else
      fb:SetPoint("TOPLEFT", scrollChild.fbtn[idx - 1], "BOTTOMLEFT", 0, - PADDING)
      fs:SetPoint("TOPLEFT", scrollChild.fstrings[idx - 1], "BOTTOMLEFT", 0, - PADDING)
      height = height + fheight + PADDING
   end
   -- Update the 'max' width of the frame
   width = (fwidth > width) and fwidth or width
end
  scrollChild:SetSize(width, height)
  scrollChild:SetHeight(height)
end

local function genData(scrollChild,maxx)
  if not maxx then maxx = 99 end
  scrollChild.data = scrollChild.data or {}
  local padding = 10
  local height = 0
  local width = 0
  for i=1, maxx  do
     scrollChild.data[i] = scrollChild.data[i] or scrollChild:CreateFontString(nil, nil, "GameFontBlackMedium")
     local fs = scrollChild.data[i]
     fs:SetText("String"..i)
     local fheight = fs:GetStringHeight()
     if i == 1 then
        fs:SetPoint("TOPLEFT", 0, 0)
     else
        fs:SetPoint("TOPLEFT", scrollChild.data[i - 1], "BOTTOMLEFT", 0, -padding)
     end
     height = height + fheight + padding
  end
  scrollChild:SetHeight(height)
end

function CreateJetButton(fs,k)
		local btn = CF("button", "JetButton"..k, fs, "UIPanelButtonTemplate")
		btn:SetText(k);
		btn:RegisterForClicks("AnyUp");
		btn:SetScript("OnClick", function (self, button, down)
			PlaySoundFile(sounds[k]);
		end
		);
		return btn
    
end
 


--scroll frame
local scrollFrame = CreateFrame("ScrollFrame", "JettyListFrame", UIP, "UIPanelScrollFrameTemplate")

scrollFrame:SetSize(width, height)
scrollFrame:SetPoint("CENTER", UIParent, 0, 0)
scrollFrame:SetMovable(true)
scrollFrame:EnableMouse(true)
scrollFrame:RegisterForDrag("LeftButton")
scrollFrame:SetScript("OnMouseDown", function(self, button)
  if button == "LeftButton" and not self.isMoving then
   self:StartMoving();
   self.isMoving = true;
  end
end)
scrollFrame:SetScript("OnMouseUp", function(self, button)
  if button == "LeftButton" and self.isMoving then
   self:StopMovingOrSizing();
   self.isMoving = false;
  end
end)
scrollFrame:SetScript("OnHide", function(self)
  if ( self.isMoving ) then
   self:StopMovingOrSizing();
   self.isMoving = false;
  end
end)

local scrollBar = _G["JettyListFrameScrollBar"]
print(scrollBar:GetWidth())

--debug texture
local tex = scrollFrame:CreateTexture(nil, "BACKGROUND")
tex:SetTexture(1,1,1)
tex:SetVertexColor(0,0,0,0)
tex:SetAllPoints()


--hack for the UIPanelScrollBarTemplate template that UIPanelScrollFrameTemplate is using
--I want the cosmetic border, so we add it manually
local tex = scrollFrame:CreateTexture(nil,"BACKGROUND",nil,-6)
tex:SetPoint("TOP",scrollFrame)
tex:SetPoint("RIGHT",scrollBar,3.7,0)
tex:SetPoint("BOTTOM",scrollFrame)
tex:SetWidth(scrollBar:GetWidth()+10)
tex:SetTexture("Interface\\PaperDollInfoFrame\\UI-Character-ScrollBar")
tex:SetTexCoord(0,0.45,0.1640625,1)
--debug texture
local tex2 = scrollFrame:CreateTexture(nil,"BACKGROUND",nil,-8)
tex2:SetTexture(1,1,1)
tex2:SetVertexColor(0,0,0,0.3)
tex2:SetAllPoints(tex)

--scroll child
local scrollChild = CreateFrame("Frame", "$parentScrollChild1")
scrollChild:SetWidth(scrollFrame:GetWidth())

local tex = scrollChild:CreateTexture(nil, "BACKGROUND")
tex:SetTexture(1,1,1)
tex:SetVertexColor(0,0,0,0.3)
tex:SetAllPoints()

--LOAD SOME DATA and set the framesize
generateScrollChildData(scrollChild,20)
--genData(scrollChild,20)
scrollFrame:SetScrollChild(scrollChild)
scrollFrame:EnableMouse(true)

--make sure you cannot move the panel out of the screen
scrollFrame:SetClampedToScreen(true)
scrollFrame:SetMovable(true)
scrollFrame:SetResizable(true)
scrollFrame:SetUserPlaced(false)
scrollFrame:SetScript("OnSizeChanged", function(self) scrollChild:SetWidth(self:GetWidth()) end)

local frame = CF("Frame", "$parentResize", scrollFrame)
frame:SetSize(26,26)
frame:SetPoint("BOTTOMRIGHT",30,-30)

frame:EnableMouse(true)
frame:RegisterForDrag("LeftButton")
frame:SetScript("OnDragStart", function(self)
  if InCombatLockdown() then return end
  self:GetParent():StartSizing()
end)
frame:SetScript("OnDragStop", function(self)
  if InCombatLockdown() then return end
  self:GetParent():StopMovingOrSizing()
end)
frame:SetScript("OnEnter", function(self)
  GameTooltip:SetOwner(self, "ANCHOR_TOP")
  GameTooltip:AddLine(addon, 0, 1, 0.5, 1, 1, 1)
  GameTooltip:AddLine("Resize me!", 1, 1, 1, 1, 1, 1)
  GameTooltip:Show()
end)
frame:SetScript("OnLeave", function(self) GameTooltip:Hide() end)

local btnClose = CF("button", "JettyClose", frame, "UIPanelButtonTemplate")
btnClose:SetWidth(50); btnClose:SetHeight(24); btnClose:SetPoint("LEFT", -60,0);
btnClose:SetText("Close");
btnClose:RegisterForClicks("AnyUp");
btnClose:SetScript("OnClick", function (self, button, down)
   JettyListFrame:Hide();
 end
);

JettyListFrame:Hide()  -- Don't show frame by default