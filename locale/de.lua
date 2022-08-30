local Translations = {
    error = {
        not_online = 'Spieler nicht online',
        wrong_format = 'falsches Format',
        missing_args = 'Nicht alle Argumente wurden ausgefüllt (x, y, z)',
        missing_args2 = 'Alle Argumente müssen ausgefüllt sein!',
        no_access = 'Kein Zugriff auf den Command',
        company_too_poor = 'Dein Arbeitgeber ist zu arm',
        item_not_exist = 'Item existiert nicht',
        too_heavy = 'Inventar zu voll',
        location_not_exist = 'Ort existiert nicht',
        duplicate_license = 'Doppelte Rockstar Lizenz',
        no_valid_license  = 'Keine verifizierte Rockstar Lizenz',
        not_whitelisted = 'Du bist nicht gewhitelisted',
        server_already_open = 'Server schon geöffnet',
        server_already_closed = 'Server schon geschlossen',
        no_permission = 'Du hast keine Rechte dafür..',
        no_waypoint = 'Kein Wegpunkt gesetzt.',
        tp_error = 'Error beim teleportieren.',
    },
    success = {
        server_opened = 'Server wurde geöffnet',
        server_closed = 'Server wurde geschlossen',
        teleported_waypoint = 'Zum Wegpunkt teleportiert.',
    },
    info = {
        received_paycheck = 'Gehalt in Höhe von $%{value} erhalten',
        job_info = 'Job: %{value} | Rang: %{value2} | Duty: %{value3}',
        gang_info = 'Gang: %{value} | Rang: %{value2}',
        on_duty = 'Du bist nun eingestempelt!',
        off_duty = 'Du bist nun ausgestempelt!',
        checking_ban = 'Hallo %s. Wir checken, ob du gebannt wurdest.',
        join_server = 'Willkommen %s zu {Server Name}.',
        checking_whitelisted = 'Hallo %s. Wir checken deine Erlaubnis.',
        exploit_banned = 'Du wurdest fürs cheaten gebannt. Check unseren Discord: %{discord}',
        exploit_dropped = 'Du wurdest gekickt fürs ausnutzen von Fehlern',
    },
    command = {
        tp = {
            help = 'TP zu Spieler oder Coords (Admin Only)',
            params = {
                x = { name = 'id/x', help = 'ID of player or X position'},
                y = { name = 'y', help = 'Y position'},
                z = { name = 'z', help = 'Z position'},
            },
        },
        tpm = { help = 'TP zum Marker (Admin Only)' },
        togglepvp = { help = 'Toggle PVP on the server (Admin Only)' },
        addpermission = {
            help = 'Give Player Permissions (God Only)',
            params = {
                id = { name = 'id', help = 'ID of player' },
                permission = { name = 'permission', help = 'Permission level' },
            },
        },
        removepermission = {
            help = 'Remove Player Permissions (God Only)',
            params = {
                id = { name = 'id', help = 'ID of player' },
                permission = { name = 'permission', help = 'Permission level' },
            },
        },
        openserver = { help = 'Open the server for everyone (Admin Only)' },
        closeserver = {
            help = 'Close the server for people without permissions (Admin Only)',
            params = {
                reason = { name = 'reason', help = 'Reason for closing (optional)' },
            },
        },
        car = {
            help = 'Spawn Vehicle (Admin Only)',
            params = {
                model = { name = 'model', help = 'Model name of the vehicle' },
            },
        },
        dv = { help = 'Delete Vehicle (Admin Only)' },
        givemoney = {
            help = 'Give A Player Money (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        setmoney = {
            help = 'Set Players Money Amount (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        job = { help = 'Check dein Job' },
        setjob = {
            help = 'Set A Players Job (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                job = { name = 'job', help = 'Job name' },
                grade = { name = 'grade', help = 'Job grade' },
            },
        },
        gang = { help = 'Check deine Gang' },
        setgang = {
            help = 'Set A Players Gang (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                gang = { name = 'gang', help = 'Gang name' },
                grade = { name = 'grade', help = 'Gang grade' },
            },
        },
        ooc = { help = 'OOC Chat Message' },
        me = {
            help = 'Show local message',
            params = {
                message = { name = 'message', help = 'Message to send' }
            },
        },
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})