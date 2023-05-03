QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = false -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {} -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 400
            },
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
    ['midnightnation'] = {
		label = 'Midnight Nation',
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
                payment = 3000
            },
			['1'] = {
                name = 'Bürgermeister',
				isboss = true,
                payment = 7500
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
		label = 'Los Santos Police Department',
        type = "leo",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 800
            },
			['1'] = {
                name = 'Officer I',
                payment = 1500
            },
			['2'] = {
                name = 'Officer II',
                payment = 1750
            },
			['3'] = {
                name = 'Officer III',
                payment = 2200
            },
			['4'] = {
                name = 'Senior Officer',
                payment = 2450
            },
			['5'] = {
                name = 'Sergeant I',
                payment = 2800
            },
			['6'] = {
                name = 'Sergeant II',
                payment = 3050
            },
			['7'] = {
                name = 'Lieutenant',
                payment = 3300
            },
			['8'] = {
                name = 'Captain',
                isboss = true,
                payment = 3500
            },
			['9'] = {
                name = 'Commander',
                isboss = true,
                payment = 4000
            },
			['10'] = {
                name = 'Deputy Chief',
                isboss = true,
                payment = 4750
            },
			['11'] = {
                name = 'Chief of Police',
				isboss = true,
                payment = 5000
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
                payment = 3500
            },
			['1'] = {
                name = 'Detective II',
                payment = 3750
            },
			['2'] = {
                name = 'Detective III',
                payment = 4000
            },
			['3'] = {
                name = 'Lieutenant',
                isboss = true,
                payment = 4250
            },
			['4'] = {
                name = 'Davis | Captain',
                isboss = true,
                payment = 4500
            },
        },
	},
    ['sheriff'] = {
		label = 'Los Santos Sheriff Department',
        type = "leo",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Rekrut',
                payment = 800
            },
			['1'] = {
                name = 'Deputy I',
                payment = 2400
            },
			['2'] = {
                name = 'Deputy II',
                payment = 2500
            },
			['3'] = {
                name = 'Deputy III',
                payment = 2600
            },
			['4'] = {
                name = 'Investigator',
                payment = 2800
            },
			['5'] = {
                name = 'Master Investigator',
                payment = 3000
            },
			['6'] = {
                name = 'Sergeant',
                payment = 3200
            },
			['7'] = {
                name = 'Lieutenant',
                payment = 3400
            },
			['8'] = {
                name = 'Captain',
                payment = 3600
            },
			['9'] = {
                name = 'Chief Deputy',
                payment = 3800
            },
			['10'] = {
                name = 'Assistent Sheriff',
                payment = 4000
            },
			['11'] = {
                name = 'Under Sheriff',
                isboss = true,
                payment = 4250
            },
			['12'] = {
                name = 'Sheriff',
                isboss = true,
                payment = 4500
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
		defaultDuty = false,
		offDutyPay = false,
        type = "ems",
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
