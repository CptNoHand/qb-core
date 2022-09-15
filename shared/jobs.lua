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
                payment = 450
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
                payment = 1500
            },
			['1'] = {
                name = 'Bürgermeister',
				isboss = true,
                payment = 2000
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
                payment = 2500
            },
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
                payment = 1000
            },
			['2'] = {
                name = 'Officer First Class',
                payment = 1100
            },
			['3'] = {
                name = 'Detective',
                payment = 1150
            },
			['4'] = {
                name = 'Corporal',
                payment = 1200
            },
			['5'] = {
                name = 'Sergeant',
                payment = 1300
            },
			['6'] = {
                name = 'Staff Sergeant',
                payment = 1400
            },
			['7'] = {
                name = 'Sergeant Major',
                payment = 1500
            },
			['8'] = {
                name = 'Second Lieutenant',
                payment = 1750
            },
			['9'] = {
                name = 'Lieutenant',
                payment = 2000
            },
			['10'] = {
                name = 'Captain',
                payment = 2250
            },
			['11'] = {
                name = 'Inspector',
                payment = 2500
            },
			['12'] = {
                name = 'Deputy Chief',
				isboss = true,
                payment = 2750
            },
			['13'] = {
                name = 'Chief',
				isboss = true,
                payment = 3000
            },
            ['14'] = {
                name = 'Rekrut',
                payment = 500
            },
			['15'] = {
                name = 'Deputy I',
                payment = 1000
            },
			['16'] = {
                name = 'Deputy II',
                payment = 1100
            },
			['17'] = {
                name = 'Deputy III',
                payment = 1200
            },
			['18'] = {
                name = 'Investigator',
                payment = 1300
            },
			['19'] = {
                name = 'Master Investigator',
                payment = 1400
            },
			['20'] = {
                name = 'Sergeant',
                payment = 1500
            },
			['21'] = {
                name = 'Lieutenant',
                payment = 1750
            },
			['22'] = {
                name = 'Captain',
                payment = 2000
            },
			['23'] = {
                name = 'Chief Deputy',
                payment = 2250
            },
			['24'] = {
                name = 'Assistent Sheriff',
                payment = 2500
            },
			['25'] = {
                name = 'Under Sheriff',
                isboss = true,
                payment = 2750
            },
			['26'] = {
                name = 'Sheriff',
                isboss = true,
                payment = 3000
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
                payment = 800
            },
			['1'] = {
                name = 'Rettungshelfer',
                payment = 900
            },
			['2'] = {
                name = 'Rettungsanitäter',
                payment = 1000
            },
			['3'] = {
                name = 'Notfallsanitäter',
                payment = 1050
            },
			['4'] = {
                name = 'Assistentzarzt',
                payment = 1100
            },
			['5'] = {
                name = 'Arzt',
                payment = 1150
            },
			['6'] = {
                name = 'Facharzt',
                payment = 1200
            },
			['7'] = {
                name = 'Notarzt',
                payment = 1250
            },
			['8'] = {
                name = 'Oberarzt',
                payment = 1700
            },
			['9'] = {
                name = 'Chefarzt',
                payment = 2000
            },
			['10'] = {
                name = 'Ärtztliche Direktion',
				isboss = true,
                payment = 3000
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
	["redline"] = {
		label = "Redline Performance",
		defaultDuty = false,
		offDutyPay = false,
        type = "mechanic",
		grades = {
			['0'] = {
				name = "Help",
				payment = 0
			},
			['1'] = {
				name = "Trainee",
				payment = 0
			},
			['2'] = {
				name = "Mechanic",
				payment = 0
			},
			['3'] = {
				name = "Boss Mechanic",
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
}
