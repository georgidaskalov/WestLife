Config = {}
Translation = {}

Config.Shopkeeper = 416176080 -- hash of the shopkeeper ped
Config.Locale = 'en' -- 'en', 'sv' or 'custom'

Config.Shops = {
    -- {coords = vector3(x, y, z), heading = peds heading, money = {min, max}, cops = amount of cops required to rob, blip = true: add blip on map false: don't add blip, name = name of the store (when cops get alarm, blip name etc)}
    {coords = vector3(24.03, -1345.63, 29.5-0.98), heading = 266.0, money = {3000, 5000}, cops = 2, blip = false, name = '7/11', cooldown = {hour = 4, minute = 0, second = 0}, robbed = false},
    {coords = vector3(-705.73, -914.91, 19.22-0.98), heading = 91.0, money = {3000, 5000}, cops = 2, blip = false, name = '7/11', cooldown = {hour = 4, minute = 0, second = 0}, robbed = false},
    {coords = vector3(-47.1724, -1758.96, 29.421-0.98), heading = 46.04, money = {3000, 5000}, cops = 2, blip = false, name = '7/11', cooldown = {hour = 4, minute = 0, second = 0}, robbed = false},
    {coords = vector3(1134.156, -982.456, 46.415-0.98), heading = 276.1, money = {3000, 5000}, cops = 2, blip = false, name = '7/11', cooldown = {hour = 4, minute = 0, second = 0}, robbed = false},
    {coords = vector3(1164.747, -322.631, 69.205-0.98), heading = 96.35, money = {3000, 5000}, cops = 2, blip = false, name = '7/11', cooldown = {hour = 4, minute = 0, second = 0}, robbed = false},
    {coords = vector3(372.5712, 326.5140, 103.56-0.98), heading = 280.77, money = {3000, 5000}, cops = 2, blip = false, name = '7/11', cooldown = {hour = 4, minute = 0, second = 0}, robbed = false},
    {coords = vector3(-1486.34, -377.974, 40.163-0.98), heading = 128.76, money = {3000, 5000}, cops = 2, blip = false, name = '7/11', cooldown = {hour = 4, minute = 0, second = 0}, robbed = false},
    {coords = vector3(2557.334, 380.7504, 108.62-0.98), heading = 351.5, money = {3000, 5000}, cops = 2, blip = false, name = '7/11', cooldown = {hour = 4, minute = 0, second = 0}, robbed = false}
}

Translation = {
    ['en'] = {
        ['shopkeeper'] = 'Магазинер',
        ['robbed'] = "Туко-що ме ограбиха и нямам пари!",
        ['cashrecieved'] = 'Ти взе:',
        ['currency'] = '$',
        ['scared'] = 'Scared:',
        ['no_cops'] = 'Няма достатъчно полицаи ~r~на смяна~w~ !',
        ['cop_msg'] = 'Обир на магазин,изпращаме ви снимка на извършителите!',
        ['set_waypoint'] = 'За да настроиш gps',
        ['hide_box'] = 'Скрий',
        ['robbery'] = 'Обир на магазин',
        ['walked_too_far'] = 'Твърде много се отдалечи!'
    },
    ['nl'] = {
        ['shopkeeper'] = 'winkelier',
        ['robbed'] = "Ik ben net beroofd en ik heb ~r~geen ~w~geld meer over!",
        ['cashrecieved'] = 'Je hebt:',
        ['currency'] = '$',
        ['scared'] = 'Bang:',
        ['no_cops'] = 'Er zijn ~r~niet ~w~genoeg agenten online!',
        ['cop_msg'] = 'We hebben een foto van de overvaller gestuurd die genomen is door de CCTV camera!',
        ['set_waypoint'] = 'Stel een waypoint in naar de winkel',
        ['hide_box'] = 'Sluit deze doos',
        ['robbery'] = 'Overval gaande',
        ['walked_too_far'] = 'Je bent te ver weg gelopen!'
    },    
    ['sv'] = {
        ['shopkeeper'] = 'butiksbiträde',
        ['robbed'] = 'Jag blev precis rånad och har inga pengar kvar!',
        ['cashrecieved'] = 'Du fick:',
        ['currency'] = 'SEK',
        ['scared'] = 'Rädd:',
        ['no_cops'] = 'Det är inte tillräckligt med poliser online!',
        ['cop_msg'] = 'Vi har skickat en bild på rånaren från övervakningskamerorna!',
        ['set_waypoint'] = 'Sätt GPS punkt på butiken',
        ['hide_box'] = 'Stäng denna rutan',
        ['robbery'] = 'Pågående butiksrån',
        ['walked_too_far'] = 'Du gick för långt bort!'
    },
    ['custom'] = { -- edit this to your language
        ['shopkeeper'] = '',
        ['robbed'] = '',
        ['cashrecieved'] = '',
        ['currency'] = '',
        ['scared'] = '',
        ['no_cops'] = '',
        ['cop_msg'] = '',
        ['set_waypoint'] = '',
        ['hide_box'] = '',
        ['robbery'] = '',
        ['walked_too_far'] = ''
    }
}