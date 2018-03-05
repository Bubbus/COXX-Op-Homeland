//	Zeus extensions for CA, by Bubbus.
//	
//	This is the configuration file for the gearscript spawner.
//	The default example in this file covers all factions of vanilla Arma.  You can modify it to spawn your own custom units.
//	The NATO example has comments to help understanding.


if (isDedicated) exitWith {};	// Don't remove this line!


_units = 
[
	[
		"Pergmarda Infantry",	// This is the name of the category which you will see in-game.
		"inf", 					// "inf" marks this as an infantry category.
		"blu_f", 				// "blu_f" means that gear will be taken from the BLUFOR gearscript (aka NATO).
		west,					// west means the units will bear allegiance to the western side (aka NATO).
		[
			[
				"Pergmarda Rifleman",
				["r"]
			],
			
			[
				"Pergmarda Squad 6x",
				["ftl", "m", "lat", "ar", "r", "r"]
			],
			
			[
				"Pergmarda Weapons Team 6x",
				["sl", "mat", "lmg", "mk", "ar", "mk"]
			],
			
			[
				"Zeus Player",
				["zeus"]
			]
		]
	], 
	
	
	[
		"ISIT Infantry",		// This is the name of the category which you will see in-game.
		"inf", 					// "inf" marks this as an infantry category.
		"opf_f", 				// "blu_f" means that gear will be taken from the BLUFOR gearscript (aka NATO).
		east,					// west means the units will bear allegiance to the western side (aka NATO).
		[
			[
				"ISIT Rifleman",
				["donkey"]
			],
			
			[
				"ISIT Squad 6x",
				["ftl", "donkey", "m", "shotgun", "ar", "lat"]
			],
			
			[
				"ISIT Weapons Team 6x",
				["ftl", "mat", "lmg", "sniper", "ar", "sniper"]
			],
			
			[
				"ISIT Shit Squad 4x",
				["shit1", "shit2", "shit1", "shit2"]
			],
			
			[
				"Thermobaric Barry",
				["thermo"]
			],
			
			[
				"Kebab Commander",
				["kebab"]
			]
		]
	]
	
];	// <-- Comma rule does not apply here - do not edit.

ca_zeus_unitsStructure = _units; // Don't remove this line!