QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = false -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 400
            },
        },
	},
    ['cityhall'] = {
        label = 'Rathaus',
        defaultDuty = false,
        offDutyPay = true,
        grades = {
            ['0'] = {
                name = 'Rathaus Mitarbeiter',
				isboss = false,
                payment = 3000
            },
			['1'] = {
                name = 'Bürgermeister',
				isboss = true,
                payment = 7500
            },
		},
    },
    ['government'] = {
        label = 'Regierung',
        defaultDuty = false,
        offDutyPay = true,
        grades = {
            ['0'] = {
                name = 'Regierung',
				isboss = true,
                payment = 7500
            },
		},
    },
    ['arcade'] = {
        label = 'GameOn Arcade Bar',
        defaultDuty = false,
        grades = {
            ['0'] = { name = 'Recruit', payment = 0 },
            ['1'] = { name = 'Novice', payment = 0 },
            ['2'] = { name = 'Experienced', payment = 0 },
            ['3'] = { name = 'Advanced', payment = 0 },
            ['4'] = { name = 'Manager', isboss = true, payment = 0 },
        },
    },
    ['bahamamamas'] = {
		label = 'Bahama Mamas',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 0 },
			['1'] = { name = 'Novice', payment = 0 },
			['2'] = { name = 'Experienced', payment = 0 },
			['3'] = { name = 'Advanced', payment = 0 },
			['4'] = { name = 'Manager', isboss = true, payment = 0 },
        },
	},
    ['ottos'] = {
		label = 'Ottos Autos',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Praktikant', payment = 0 },
			['1'] = { name = 'Azubi', payment = 50 },
			['2'] = { name = 'Mechaniker', payment = 150 },
			['3'] = { name = 'Meister', payment = 300 },
			['4'] = { name = 'Otto', isboss = true, payment = 0 },
        },
	},
	['yellowjack'] = {
		label = 'Yellow Jack',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
	},
	['cyberbar'] = {
		label = 'Cyber Bar',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
	},
	['irishpub'] = {
		label = 'Irish Pub',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
	},
	['splitsides'] = {
		label = 'Split Sides',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
	},
    ['vanilla'] = {
		label = 'Vanilla Unicorn',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 0 },
			['1'] = { name = 'Novice', payment = 0 },
			['2'] = { name = 'Experienced', payment = 0 },
			['3'] = { name = 'Advanced', payment = 0 },
			['4'] = { name = 'Manager', isboss = true, payment = 0 },
        },
	},
    ['popsdiner'] = {
		label = "Pop's Diner",
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
	},
    ['beanmachine'] = {
		label = 'Bean Machine',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
	},
	['police'] = {
		label = 'Gesetzeshüter',
        type = "leo",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 800
            },
			['1'] = {
                name = 'Officer',
                payment = 1500
            },
			['2'] = {
                name = 'Officer First Class',
                payment = 1750
            },
			['3'] = {
                name = 'Corporal',
                payment = 2200
            },
			['4'] = {
                name = 'Sergeant',
                payment = 2450
            },
			['5'] = {
                name = 'Staff Sergeant',
                payment = 2800
            },
			['6'] = {
                name = 'Sergeant Major',
                payment = 3050
            },
			['7'] = {
                name = 'Second Lieutenant',
                payment = 3300
            },
			['8'] = {
                name = 'Lieutenant',
                payment = 3500
            },
			['9'] = {
                name = 'Captain',
                payment = 4000
            },
			['10'] = {
                name = 'Inspector',
                payment = 4500
            },
			['11'] = {
                name = 'Deputy Chief',
				isboss = true,
                payment = 4750
            },
			['12'] = {
                name = 'Chief',
				isboss = true,
                payment = 5000
            },
            ['13'] = {
                name = 'Rekrut',
                payment = 500
            },
			['14'] = {
                name = 'Deputy I',
                payment = 1000
            },
			['15'] = {
                name = 'Deputy II',
                payment = 1250
            },
			['16'] = {
                name = 'Deputy III',
                payment = 1500
            },
			['17'] = {
                name = 'Investigator',
                payment = 1750
            },
			['18'] = {
                name = 'Master Investigator',
                payment = 2000
            },
			['19'] = {
                name = 'Sergeant',
                payment = 2250
            },
			['20'] = {
                name = 'Lieutenant',
                payment = 2500
            },
			['21'] = {
                name = 'Captain',
                payment = 2750
            },
			['22'] = {
                name = 'Chief Deputy',
                payment = 3000
            },
			['23'] = {
                name = 'Assistent Sheriff',
                payment = 3250
            },
			['24'] = {
                name = 'Under Sheriff',
                isboss = true,
                payment = 3500
            },
			['25'] = {
                name = 'Sheriff',
                isboss = true,
                payment = 4000
            },
			['26'] = {
                name = 'Detective',
                payment = 2200
            },
			['27'] = {
                name = 'Detective II',
                payment = 2600
            },
			['28'] = {
                name = 'Detective III',
                payment = 3000
            },
			['29'] = {
                name = 'Lieutenant',
                isboss = true,
                payment = 3500
            },
			['30'] = {
                name = 'Captain',
                isboss = true,
                payment = 4000
            },
        },
	},
    ['banker'] = {
        label = 'Pacific Standard Bank',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Teller',
                payment = 800
            },
            ['1'] = {
                name = 'Supervisor',
                payment = 1050
            },
            ['2'] = {
                name = 'Guard',
                payment = 1150
            },
            ['3'] = {
                name = 'Broker',
                payment = 1250
            },
            ['4'] = {
                name = 'Manager',
                isboss = true,
                payment = 1500
            },
        },
    },
    ['pizzathis'] = {
		label = 'Pizza This',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 0 },
			['1'] = { name = 'Novice', payment = 0 },
			['2'] = { name = 'Experienced', payment = 0 },
			['3'] = { name = 'Advanced', payment = 0 },
			['4'] = { name = 'Manager', isboss = true, payment = 0 },
        },
	},
	['ambulance'] = {
		label = 'Rettungsdienst',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Azubi',
                payment = 1750
            },
			['1'] = {
                name = 'Rettungshelfer',
                payment = 2500
            },
			['2'] = {
                name = 'Rettungsanitäter',
                payment = 2750
            },
			['3'] = {
                name = 'Notfallsanitäter',
                payment = 3000
            },
			['4'] = {
                name = 'Assistentzarzt',
                payment = 3250
            },
			['5'] = {
                name = 'Arzt',
                payment = 3500
            },
			['6'] = {
                name = 'Facharzt',
                payment = 3750
            },
			['7'] = {
                name = 'Notarzt',
                payment = 4000
            },
			['8'] = {
                name = 'Oberarzt',
                payment = 4250
            },
			['9'] = {
                name = 'Chefarzt',
                payment = 4500
            },
			['10'] = {
                name = 'Ärtztliche Direktion',
				isboss = true,
                payment = 5000
            },
        },
	},
	['tequilala'] = {
		label = 'Tequilala',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
	},
	['fbi'] = {
		label = 'Federal Bureau of Investigation',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 1000
            },
			['1'] = {
                name = 'Executive Agent',
                payment = 1200
            },
			['2'] = {
                name = 'Special Agent in-Charge',
                payment = 1300
            },
			['3'] = {
                name = 'Special Agent L3',
                payment = 1400
            },
			['4'] = {
                name = 'General',
				isboss = true,
                payment = 1500
            },
        },
	},
	['rockfordrecords'] = {
		label = 'Rockford Records',
		defaultDuty = false,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Praktikant',
                payment = 800
            },
			['1'] = {
                name = 'Rezeption',
                payment = 1000
            },
			['2'] = {
                name = 'Radiosprecher',
                payment = 1100
            },
			['3'] = {
                name = 'Mitarbeiter',
                payment = 1200
            },
			['4'] = {
                name = 'CEO',
				isboss = true,
                payment = 1250
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 0
            },
			['1'] = {
                name = 'House Sales',
                payment = 25
            },
			['2'] = {
                name = 'Business Sales',
                payment = 50
            },
			['3'] = {
                name = 'Broker',
                payment = 75
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 100
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 0
            },
			['1'] = {
                name = 'Driver',
                payment = 0
            },
			['2'] = {
                name = 'Event Driver',
                payment = 0
            },
			['3'] = {
                name = 'Sales',
                payment = 0
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 0
            },
        },
	},
    ['bus'] = {
		label = 'Bus',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
		},
	},
	["burgershot"] = {
		label = "Burgershot Employee",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 0
            },
			['1'] = {
                name = "Employee",
                payment = 0
            },
			['2'] = {
                name = "Burger Flipper",
                payment = 0
            },
			['3'] = {
                name = "Manager",
                payment = 0
            },
			['4'] = {
                name = "CEO",
				isboss = true,
                payment = 0
            },
        },
	},
	["dealership"] = {
		label = "Autohändler",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = "Prakikant",
                payment = 0
            },
			['1'] = {
                name = "Verkäufer",
                payment = 0
            },
			['2'] = {
                name = "Senior Verkäufer",
                payment = 0
            },
			['3'] = {
                name = "Finazen",
                payment = 0
            },
			['4'] = {
                name = "Manager",
				isboss = true,
                payment = 0
            },
        },
	},
	["mechanic"] = {
		label = "Mechanic",
		defaultDuty = false,
		offDutyPay = false,
        type = "mechanic",
		grades = {
            ['0'] = {
                name = "Recruit",
                payment = 0
            },
			['1'] = {
                name = "Novice",
                payment = 0
            },
			['2'] = {
                name = "Experienced",
                payment = 0
            },
			['3'] = {
                name = "Advanced",
                payment = 0
            },
			['4'] = {
                name = "Manager",
				isboss = true,
                payment = 0
            },
        },
	},
	["bennys"] = {
		label = "Benny's",
		defaultDuty = false,
		offDutyPay = false,
        type = "mechanic",
		grades = {
            ['0'] = {
                name = "Recruit",
                payment = 0
            },
			['1'] = {
                name = "Novice",
                payment = 0
            },
			['2'] = {
                name = "Experienced",
                payment = 0
            },
			['3'] = {
                name = "Advanced",
                payment = 0
            },
			['4'] = {
                name = "Manager",
				isboss = true,
                payment = 0
            },
        },
	},
	["lscustoms"] = {
		label = "Los Santos Customs",
		defaultDuty = false,
		offDutyPay = false,
        type = "mechanic",
		grades = {
			['0'] = {
				name = "Zeitarbeiter",
				payment = 500
			},
			['1'] = {
				name = "Azubi",
				payment = 1000
			},
			['2'] = {
				name = "Angestellter",
				payment = 1250
			},
			['3'] = {
				name = "Schichtleiter",
				payment = 1500
			},
            ['4'] = {
				name = "Meister",
				payment = 1750
			},
			['5'] = {
				name = "CEO",
				isboss = true,
				payment = 2000
			},
		},
	},
	["eastcustoms"] = {
		label = "East Customs",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = "Praktikant",
				payment = 0
			},
			['1'] = {
				name = "Azubi",
				payment = 0
			},
			['2'] = {
				name = "Mechaniker",
				payment = 0
			},
			['3'] = {
				name = "Meister",
				isboss = true,
				payment = 0
			},
			['4'] = {
				name = "CEO",
				isboss = true,
				payment = 0
			},
		},
	},
	['lsfd'] = {
		label = 'Los Santos Fire Department',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 1000
            },
            ['1'] = {
                name = 'Officer',
                payment = 1750
            },
            ['2'] = {
                name = 'Sergeant',
                payment = 2000
            },
            ['3'] = {
                name = 'Lieutenant',
                payment = 2500
            },
            ['4'] = {
                name = 'Chief',
                isboss = true,
                payment = 3000
            },
        },
    },
	["sunrise"] = {
		label = "Sunrise Autos",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
			['1'] = {
                name = "Manager",
				isboss = true,
            },
        },
	},
	['custommotors'] = {
		label = "Custom Motors",
		defaultDuty = false,
		offDutyPay = false,
        type = "mechanic",
		grades = {
            ['0'] = {
                name = "Recruit",
                payment = 0
            },
			['1'] = {
                name = "Novice",
                payment = 0
            },
			['2'] = {
                name = "Experienced",
                payment = 0
            },
			['3'] = {
                name = "Advanced",
                payment = 0
            },
			['4'] = {
                name = "Manager",
				isboss = true,
                payment = 0
            },
        },
	},
	['catcafe'] = {
		label = 'Cat Cafe',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 0 },
			['1'] = { name = 'Novice', payment = 0 },
			['2'] = { name = 'Experienced', payment = 0 },
			['3'] = { name = 'Advanced', payment = 0 },
			['4'] = { name = 'Manager', isboss = true, payment = 0 },
        },
    },
	['catcafe'] = {
		label = 'Cat Cafe',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = { name = 'Recruit', payment = 0 },
			['1'] = { name = 'Novice', payment = 0 },
			['2'] = { name = 'Experienced', payment = 0 },
			['3'] = { name = 'Advanced', payment = 0 },
			['4'] = { name = 'Manager', isboss = true, payment = 0 },
        },
	},
	['judge'] = {
		label = 'Gerichtshof',
		defaultDuty = false,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Staatsanwalt',
                payment = 1500
            },
            ['1'] = {
                name = 'Richter',
                payment = 2000
            },
            ['2'] = {
                name = 'Oberster Richter',
                isboss = true,
                payment = 2500
            },
        },
	},
	['electrician'] = {
		label = 'Electrician',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Electrician',
                payment = 0
            },
        },
	},
	["rooksbar"] = {
		label = "Rooks Bar",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = "Help",
                payment = 0
            },
			['1'] = {
                name = "Boss",
				isboss = true,
                payment = 0
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 500
            },
        },
	},
	['farmer'] = {
		label = 'Farmer',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Farmer',
                payment = 0
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 0
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 0
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 0
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 0
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 0
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 0
            },
        },
	},
    ['oilwell'] = {
        label = 'Oil Company',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Oilwell Operator',
                payment = 500
            },
            ['1'] = {
                name = 'Oilwell Operator tier 2',
                payment = 750
            },
            ['2'] = {
                name = 'Event Driver tier 2',
                payment = 1000
            },
            ['3'] = {
                name = 'Sales',
                payment = 1250
            },
            ['4'] = {
                name = 'CEO',
                isboss = true,
                payment = 1500
            },
        },
    },
}
