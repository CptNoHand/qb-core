QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 250
            },
        },
	},
    ['casino'] = {
        label = 'Casino',
        defaultDuty = true,
        grades = {
            ['0'] = { name = 'Novice', payment = 50 },
            ['1'] = { name = 'Experienced', payment = 100 },
            ['2'] = { name = 'Boss', isboss = true, payment = 200 },
        },
    },
    ['upnatom'] = {
		label = "Up n Atom",
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 0 },
			['1'] = { name = 'Novice', payment = 0 },
			['2'] = { name = 'Experienced', payment = 0 },
			['3'] = { name = 'Advanced', payment = 0 },
			['4'] = { name = 'Manager', isboss = true, payment = 0 },
        },
	},
	['hornys'] = {
		label = "Horny's",
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 0 },
			['1'] = { name = 'Novice', payment = 0 },
			['2'] = { name = 'Experienced', payment = 0 },
			['3'] = { name = 'Advanced', payment = 0 },
			['4'] = { name = 'Manager', isboss = true, payment = 0 },
        },
	},
    ['midnightclubs'] = {
		label = 'Midnight Club',
        defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Assiociate',
                payment = 0
            },
			['1'] = {
                name = 'Informant',
                payment = 0
            },
			['2'] = {
                name = 'Racer',
                payment = 0
            },
			['3'] = {
                name = 'Tuner',
                payment = 0
            },
			['4'] = {
                name = 'Co Leader',
                isboss = true,
                payment = 0
            },
			['5'] = {
                name = 'Leader',
                isboss = true,
                payment = 0
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
                payment = 3500
            },
		},
    },
    ['inkit'] = {
        label = 'Ink It!',
        defaultDuty = false,
        offDutyPay = true,
        grades = {
            ['0'] = {
                name = 'Employee',
                payment = 0
            },
            ['1'] = {
                name = 'Artist',
                payment = 0
            },
            ['2'] = {
                name = 'CEO',
                isboss = true,
                payment = 0
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
                payment = 5000
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
			['1'] = { name = 'Azubi', payment = 0 },
			['2'] = { name = 'Mechaniker', payment = 0 },
			['3'] = { name = 'Meister', payment = 0 },
			['4'] = { name = 'Otto', isboss = true, payment = 0 },
        },
	},
    ['redline'] = {
		label = 'Redline Performance',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Praktikant', payment = 0 },
			['1'] = { name = 'Azubi', payment = 0 },
			['2'] = { name = 'Mechaniker', payment = 0 },
			['3'] = { name = 'Meister', payment = 0 },
			['4'] = { name = 'CEO', isboss = true, payment = 0 },
        },
	},
	['yellowjack'] = {
		label = 'Yellow Jack',
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
	['cyberbar'] = {
		label = 'Cyber Bar',
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
	['irishpub'] = {
		label = 'Irish Pub',
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
	['splitsides'] = {
		label = 'Split Sides',
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
    ['vanilla'] = {
		label = 'Vanilla Unicorn',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Azubi', payment = 0 },
			['1'] = { name = 'Security', payment = 0 },
			['2'] = { name = 'Barista', payment = 0 },
			['3'] = { name = 'Mitarbeiter', payment = 0 },
			['4'] = { name = 'Manager', isboss = true, payment = 0 },
        },
	},
    ['popsdiner'] = {
		label = "Pop's Diner",
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
    ['beanmachine'] = {
		label = 'Bean Machine',
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
	['police'] = {
		label = 'Los Santos Police Department',
        type = "leo",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 1000
            },
			['1'] = {
                name = 'Officer I',
                payment = 1100
            },
			['2'] = {
                name = 'Officer II',
                payment = 1200
            },
			['3'] = {
                name = 'Officer III',
                payment = 1300
            },
			['4'] = {
                name = 'Senior Officer',
                payment = 1500
            },
			['5'] = {
                name = 'Sergeant I',
                payment = 1600
            },
			['6'] = {
                name = 'Sergeant II',
                payment = 1750
            },
			['7'] = {
                name = 'Lieutenant',
                payment = 2000
            },
			['8'] = {
                name = 'Captain',
                isboss = true,
                payment = 2250
            },
			['9'] = {
                name = 'Commander',
                isboss = true,
                payment = 2500
            },
			['10'] = {
                name = 'Deputy Chief',
                isboss = true,
                payment = 2750
            },
			['11'] = {
                name = 'Chief of Police',
				isboss = true,
                payment = 3000
            },
        },
	},
    ['detectives'] = {
		label = 'Detectives',
        type = "leo",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Detective I',
                payment = 1750
            },
			['1'] = {
                name = 'Detective II',
                payment = 1850
            },
			['2'] = {
                name = 'Detective III',
                payment = 2000
            },
			['3'] = {
                name = 'Lieutenant',
                isboss = true,
                payment = 2250
            },
			['4'] = {
                name = 'Davis | Captain',
                isboss = true,
                payment = 2500
            },
        },
	},
    ['sheriff'] = {
		label = 'Los Santos Sheriff Department',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Deputy Sheriff Trainee',
                payment = 1000
            },
			['1'] = {
                name = 'Deputy Sheriff',
                payment = 1500
            },
			['2'] = {
                name = 'Detective',
                payment = 2000
            },
			['3'] = {
                name = 'Sergeant',
                payment = 2050
            },
			['4'] = {
                name = 'Lieutenant',
                payment = 2100
            },
			['5'] = {
                name = 'Captain',
                payment = 2200
            },
			['6'] = {
                name = 'Commander',
                payment = 2300
            },
			['7'] = {
                name = 'Chief',
                payment = 2400
            },
			['8'] = {
                name = 'Assistant Sheriff',
                payment = 2500
            },
			['9'] = {
                name = 'Undersheriff',
                payment = 2750
            },
			['10'] = {
                name = 'Sheriff',
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
    ['lto'] = {
        label = 'Los Tabernucho',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 0
            },
            ['1'] = {
                name = 'Service',
                payment = 0
            },
            ['2'] = {
                name = 'Manager',
                isboss = true,
                payment = 0
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
		defaultDuty = true,
		offDutyPay = false,
        type = "ems",
		grades = {
            ['0'] = {
                name = 'Azubi',
                payment = 1000
            },
			['1'] = {
                name = 'Rettungshelfer',
                payment = 1250
            },
			['2'] = {
                name = 'Rettungsanitäter',
                payment = 1500
            },
			['3'] = {
                name = 'Notfallsanitäter',
                payment = 1750
            },
			['4'] = {
                name = 'Assistentzarzt',
                payment = 2000
            },
			['5'] = {
                name = 'Arzt',
                payment = 2250
            },
			['6'] = {
                name = 'Facharzt',
                payment = 2450
            },
			['7'] = {
                name = 'Notarzt',
                payment = 2500
            },
			['8'] = {
                name = 'Oberarzt',
                payment = 2750
            },
			['9'] = {
                name = 'Chefarzt',
                payment = 2850
            },
			['10'] = {
                name = 'Ärtztliche Direktion',
				isboss = true,
                payment = 3000
            },
        },
	},
	['tequilala'] = {
		label = 'Tequila-la',
		defaultDuty = false,
        offDutyPay = false,
		grades = {
            ['0'] = { name = 'Rechtsanwalt', payment = 0 },
			['1'] = { name = 'Sicherheitschef', payment = 0 },
			['2'] = { name = 'Manager', payment = 0 },
			['3'] = { name = 'Geschäftsführer', isboss = true, payment = 0 },
			['4'] = { name = 'Inhaber', isboss = true, payment = 0 },
        },
	},
	['fib'] = {
		label = 'Federal Investigation Bureau',
		defaultDuty = false,
		offDutyPay = false,
        type = "leo",
		grades = {
            ['0'] = {
                name = 'Special Agent',
                payment = 4000
            },
			['1'] = {
                name = 'Senior Agent',
                payment = 4250
            },
			['2'] = {
                name = 'Special Agent in-Charge',
                payment = 4500
            },
			['3'] = {
                name = 'Assistant Director',
                isboss = true,
                payment = 4750
            },
			['4'] = {
                name = 'Director',
				isboss = true,
                payment = 5000
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
                payment = 500
            },
			['1'] = {
                name = 'Rezeption',
                payment = 700
            },
			['2'] = {
                name = 'Radiosprecher',
                payment = 800
            },
			['3'] = {
                name = 'Mitarbeiter',
                payment = 900
            },
			['4'] = {
                name = 'CEO',
				isboss = true,
                payment = 1000
            },
        },
	},
	realestate = {
		label = 'Real Estate',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 600
            },
			['1'] = {
                name = 'House Sales',
                payment = 700
            },
			['2'] = {
                name = 'Business Sales',
                payment = 800
            },
			['3'] = {
                name = 'Broker',
                payment = 900
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1000
            },
        },
	},
	taxi = {
		label = 'Taxi',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 1000
            },
			['1'] = {
                name = 'Driver',
                payment = 1250
            },
			['2'] = {
                name = 'Event Driver',
                payment = 1500
            },
			['3'] = {
                name = 'Sales',
                payment = 1750
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 2000
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
    ["bennystuners"] = {
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
                name = "Mechanic",
                payment = 0
            },
			['3'] = {
                name = "Master",
                isboss = true,
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
				name = "Praktikant",
				payment = 0
			},
			['1'] = {
				name = "Azubi",
				payment = 0
			},
			['2'] = {
				name = "Geselle",
				payment = 0
			},
			['3'] = {
				name = "Meister",
				payment = 0
			},
            ['4'] = {
				name = "CEO",
                isboss = true,
				payment = 0
			},
		},
	},
	["lsmotors"] = {
		label = "LS Motors",
		defaultDuty = true,
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
				name = "Verkäufer",
				payment = 0
			},
			['3'] = {
				name = "Mechaniker",
				payment = 0
			},
			['4'] = {
				name = "Meister",
				payment = 0
			},
            ['5'] = {
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
        type = "ems",
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 800
            },
            ['1'] = {
                name = 'Firefighter',
                payment = 3500
            },
            ['2'] = {
                name = 'Sergeant',
                payment = 3800
            },
            ['3'] = {
                name = 'Lieutenant',
                payment = 4100
            },
            ['4'] = {
                name = 'Captain',
                payment = 4400
            },
            ['5'] = {
                name = 'Battalion Chief',
                payment = 4700
            },
            ['6'] = {
                name = 'Assistant Chief',
                isboss = true,
                payment = 4950
            },
            ['7'] = {
                name = 'Chief',
                isboss = true,
                payment = 5000
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
    ["lsdream"] = {
		label = "LS Dream Cars",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = "Verkäufer",
            },
            ['1'] = {
                name = "Profi Verkäufer",
            },
			['2'] = {
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
	['judge'] = {
		label = 'Gerichtshof',
		defaultDuty = false,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Bewährungshelfer',
                payment = 2000
            },
            ['1'] = {
                name = 'Chief Bewährungshelfer',
                payment = 2500
            },
            ['2'] = {
                name = 'Pflichtverteidiger',
                payment = 3000
            },
            ['3'] = {
                name = 'Amtsanwalt',
                payment = 3750
            },
            ['4'] = {
                name = 'Staatsanwalt',
                payment = 4000
            },
            ['5'] = {
                name = 'Oberstaatsanwalt',
                payment = 4250
            },
            ['6'] = {
                name = 'Stv. Secretary of Justice',
                isboss = true,
                payment = 4500
            },
            ['7'] = {
                name = 'Secretary of Justice /Richter',
                isboss = true,
                payment = 5000
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
