QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 450
            },
        },
	},
	['police'] = {
		label = 'Law ',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 800
            },
			['1'] = {
                name = 'Officer',
                payment = 950
            },
			['2'] = {
                name = 'Officer First Class',
                payment = 975
            },
			['3'] = {
                name = 'Detective',
                payment = 1000
            },
			['4'] = {
                name = 'Corporal',
                payment = 1025
            },
			['5'] = {
                name = 'Sergeant',
                payment = 1050
            },
			['6'] = {
                name = 'Staff Sergeant',
                payment = 1075
            },
			['7'] = {
                name = 'Sergeant Major',
                payment = 1100
            },
			['8'] = {
                name = 'Second Lieutenant',
                payment = 1150
            },
			['9'] = {
                name = 'Lieutenant',
                payment = 1175
            },
			['10'] = {
                name = 'Captain',
                payment = 1200
            },
			['11'] = {
                name = 'Inspector',
                payment = 1300
            },
			['12'] = {
                name = 'Deputy Chief',
				isboss = true,
                payment = 1400
            },
			['13'] = {
                name = 'Chief',
				isboss = true,
                payment = 1500
            },
        },
	},
	['ambulance'] = {
		label = 'Rettungsdienst',
		defaultDuty = true,
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
	["tequilala"] = {
        label = "Tequi-la-la",
        defaultDuty = true,
		offDutyPay = false,
        grades = {
            ['0'] = {
                name = "DJ",
                payment = 0
            },
            ['1'] = {
                name = "Bartender",
                payment = 0
            },
            ['2'] = {
                name = "Bouncer",
                payment = 0
            },
            ['3'] = {
                name = "Manager",
                payment = 0
            },
            ['4'] = {
                name = "Owner",
                isboss = true,
                payment = 0
            },
        },
    },
	['fbi'] = {
		label = 'Federal Bureau of Investigation',
		defaultDuty = true,
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
		defaultDuty = true,
		offDutyPay = false,
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
		defaultDuty = true,
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
	['vu'] = {
		label = 'Vanilla Unicorn',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Trainee',
				payment = 0
			},
			['1'] = {
				name = 'Employee',
				payment = 0
			},
			['2'] = {
				name = 'Management',
				isboss = true,
				payment = 0
			},
		},
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
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
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 0
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 0
            },
			['2'] = {
                name = 'Business Sales',
                payment = 0
            },
			['3'] = {
                name = 'Finance',
                payment = 0
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 0
            },
        },
	},
	["burgershot"] = {
		label = "Burgershot Employee",
		defaultDuty = true,
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
		defaultDuty = true,
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
		defaultDuty = true,
		offDutyPay = false,
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
		defaultDuty = true,
		offDutyPay = false,
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
		defaultDuty = true,
		offDutyPay = false,
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
				payment = 0
			},
			['4'] = {
				name = "CEO",
				isboss = true,
				payment = 0
			},
		},
	},
	["redline"] = {
		label = "Redline Performance",
		defaultDuty = true,
		offDutyPay = false,
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
	["tuner"] = {
		label = "Tuner",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = "Prospect",
            },
			['1'] = {
                name = "Member",
            },
			['2'] = {
                name = "Freund",
            },
			['3'] = {
                name = "Familie",
            },
			['1'] = {
                name = "VIP",
				isboss = true,
            },
        },
	},
	['lsfd'] = {
		label = 'Los Santos Fire Department',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 800
            },
            ['1'] = {
                name = 'Officer',
                payment = 1000
            },
            ['2'] = {
                name = 'Sergeant',
                payment = 1200
            },
            ['3'] = {
                name = 'Lieutenant',
                payment = 1500
            },
            ['4'] = {
                name = 'Chief',
                isboss = true,
                payment = 2500
            },
        },
    },
	["sunrise"] = {
		label = "Sunrise Autos",
		defaultDuty = true,
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
		defaultDuty = true,
		offDutyPay = false,
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
		defaultDuty = true,
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
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 1000
            },
        },
	},
	['electrician'] = {
		label = 'Electrician',
		defaultDuty = true,
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
		defaultDuty = true,
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
		defaultDuty = true,
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
		defaultDuty = true,
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
		defaultDuty = true,
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
		defaultDuty = true,
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
		defaultDuty = true,
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
		defaultDuty = true,
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
		defaultDuty = true,
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
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 0
            },
        },
	},
}