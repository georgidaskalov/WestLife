local labels = {
  ['en'] = {
    ['Entry']       = "Вход",
    ['Exit']        = "Изход",
    ['Garage']      = "Гараж",
    ['Wardrobe']    = "Гардероб",
    ['Inventory']   = "Инвентар",
    ['InventoryLocation']   = "Инвентар",

    ['LeavingHouse']      = "Напусни къщата",

    ['AccessHouseMenu']   = "Достъп до къща-меню",

    ['InteractDrawText']  = "["..Config.TextColors[Config.MarkerSelection].."E~s~] ",
    ['InteractHelpText']  = "~INPUT_PICKUP~ ",

    ['AcceptDrawText']    = "["..Config.TextColors[Config.MarkerSelection].."G~s~] ",
    ['AcceptHelpText']    = "~INPUT_DETONATE~ ",

    ['FurniDrawText']     = "["..Config.TextColors[Config.MarkerSelection].."F~s~] ",
    ['CancelDrawText']    = "["..Config.TextColors[Config.MarkerSelection].."F~s~] ",

    ['VehicleStored']     = "Автомобила е прибран",
    ['CantStoreVehicle']  = "Не можеш да прибереш този автомобил",

    ['HouseNotOwned']     = "Не притежаваш тази къща",
    ['InvitedInside']     = "Приеми покана",
    ['MovedTooFar']       = "Далеч си от вратата",
    ['KnockAtDoor']       = "Някой чука на врата",

    ['TrackMessage']      = "Проследяване",

    ['Unlocked']          = "Къща-отключване",
    ['Locked']            = "Къща-заключване",

    ['WardrobeSet']       = "Гардероб",
    ['InventorySet']      = "Инвентар",

    ['ToggleFurni']       = "Прегледай/купи мебели",

    ['GivingKeys']        = "Дай ключове на играч",
    ['TakingKeys']        = "Вземи ключ от играч",

    ['GarageSet']         = "Гаражи",
    ['GarageTooFar']      = "Гаража е твърде далеч",

    ['PurchasedHouse']    = "Ти получи къщата от $%d",
    ['CantAffordHouse']   = "Не можете да си позволите тази къща",

    ['MortgagedHouse']    = "Вие сте ипотекирали къщата за $%d",

    ['NoLockpick']        = "Нямате шперц",
    ['LockpickFailed']    = "Не успяхте да пробиете ключалката",
    ['LockpickSuccess']   = "Успяхте да пробиете ключалката",

    ['NotifyRobbery']     = "Някой се опитва да ограби къща в %s",

    ['ProgressLockpicking'] = "Отключване/заключване на врата",

    ['InvalidShell']        = "Невалиден интериор: %s, моля съобщете на деволъпърите!.",
    ['ShellNotLoaded']      = "Интериора не зарежда : %s, моля съобщете на деволъпърите!",
    ['BrokenOffset']        = "Дизайнът на къщата не зарежда : %s, моля съобщете на деволъпърите.",

    ['UpgradeHouse']        = "Обновяване на къщата: %s",
    ['CantAffordUpgrade']   = "Не може да си позволите това обновяване",

    ['SetSalePrice']        = "Задайте цена за продан",
    ['InvalidAmount']       = "Невалидна сума",
    ['InvalidSale']         = "Не може да продадете къща,която е на ипотека",
    ['InvalidMoney']        = "Нямате достатъчно пари",

    ['EvictingTenants']     = "Изгонване на наематели",

    ['NoOutfits']           = "Нямате запазени дрехи",

    ['EnterHouse']          = "Влез",
    ['KnockHouse']          = "Почукай на вратата",
    ['RaidHouse']           = "Влез със злом",
    ['BreakIn']             = "Разбиване",
    ['InviteInside']        = "Покани",
    ['HouseKeys']           = "Ключове",
    ['UpgradeHouse2']       = "Престрой къщата",
    ['UpgradeShell']        = "Престрой къщата",
    ['SellHouse']           = "Продай имота си",
    ['FurniUI']             = "Обзавеждане",
    ['SetWardrobe']         = "Задайте гардероб",
    ['SetInventory']        = "Задай инвентар",
    ['SetGarage']           = "Задай гараж",
    ['LockDoor']            = "Заключи вратата",
    ['UnlockDoor']          = "Отключи врата",
    ['LeaveHouse']          = "Излез",
    ['Mortgage']            = "Ипотека",
    ['Buy']                 = "Купи",
    ['View']                = "Разгледай",
    ['Upgrades']            = "Престройки",
    ['MoveGarage']          = "Задай гараж",

    ['GiveKeys']            = "Дай ключове",
    ['TakeKeys']            = "Вземи ключове",

    ['MyHouse']             = "Ваш имот",
    ['PlayerHouse']         = "Чужд имот",
    ['EmptyHouse']          = "Имот",

    ['NoUpgrades']          = "Няма валидни опции",
    ['NoVehicles']          = "Нямате коли",
    ['NothingToDisplay']    = "Нищо за показване",

    ['ConfirmSale']         = "Да,продължи!",
    ['CancelSale']          = "Не,откажи",
    ['SellingHouse']        = "Продай къща ($%d)",

    ['MoneyOwed']           = "Остатъчна сума: $%s",
    ['LastRepayment']       = "Последна вноска: %s",
    ['PayMortgage']         = "Плати ипотека",
    ['MortgageInfo']        = "Ипотека",

    ['SetEntry']            = "Задайте Вход",
    ['CancelGarage']        = "Откажете гараж",
    ['UseInterior']         = "Използвайте MLO ",
    ['UseShell']            = "Използвайте Shell",
    ['InteriorType']        = "Задайте вид на интериор",
    ['SetInterior']         = "Задайте сегашен интериор",
    ['SelectDefaultShell']  = "Задайте по подразбиране",
    ['ToggleShells']        = "Задайте опция за престройки",
    ['AvailableShells']     = "Всички Shells",
    ['Enabled']             = "~g~ENABLED~s~",
    ['Disabled']            = "~r~DISABLED~s~",
    ['NewDoor']             = "Добави врата",
    ['Done']                = "Готово",
    ['Doors']               = "Врата",
    ['Interior']            = "Интериор",

    ['CreationComplete']    = "Имота е завършен.",

    ['HousePurchased'] = " Ваш имот бе закупен за $%d",
    ['HouseEarning']   = ",вие спечелихте $%d от продажбата."
  }
}

Labels = labels[Config.Locale]

