Config = {
    Debug = false,
    Framework = "esx", -- esx or qb
    Align = "bottom-right", -- menu alignment (esx)
    Command = "keys", -- false to disable
    Keybind = "PAGEUP", -- false to disable, requires command
    UseRPName = true, -- use the in-game name instead of fivem name + id?
}

Strings = {
    ["keybind"] = "Меню с всички ключове.",
    ["no_keys"] = "Нямате никакви ключове.",

    -- menu
    ["main_menu"] = "Вашите ключове",

    ["transfer_nearby"] = "Дайте ключ",
    ["use_key"] = "Използвайте ключ",
    ["delete_key"] = "Изтрийте ключ",

    ["confirm_delete"] = "Изтрийте ключ %s?",
    ["yes"] = "Да",
    ["no"] = "Не",

    ["give_to"] = "Дайте на %s (%i)",
    ["noone_nearby"] = "Няма никой наоколо.",
    
    ["confirm_give"] = "Сигурен ли си че искаш да дадеш ключа на %s?",
    ["couldnt_transfer"] = "Не можа да дадеш ключа.",
    ["transferred"] = "Даде ключ %s на %s.",

    -- notifications
    ["not_your_key"] = "Нямате този ключ.",
    ["couldnt_delete"] = "Не можа да изтиреш ключа",
    ["deleted"] = "~r~Deleted~s~ ключ \"%s\".",
    ["received_key"] = "Получихте ключ.",

    -- logs
    ["LOG_transferred_key"] = "Трансферира техния ключ %s (уникално ид: %s) на %s [id %i]",
    ["LOG_received_key"] = "Получи ключ %s (уникално ид: %s) трансферирано от %s [id %i]",
    ["LOG_removed_key"] = "Изтри техния ключ %s (уникално ид: %s)",
    ["LOG_create_key"] = "Получи ключ създаден от скрипт %s. Key data:\nname: %s\nkey id: %s\nunique id: %s",
    ["LOG_delete_all"] = "Всички ключове с ид %s са изтрити от скрипт %s",
    ["LOG_delete_specific"] = "Скрипт %s изтри ключ с уникално ид %s",
    ["LOG_delete_key"] = "Имаше техен ключ %s (уникално ид: %s) изтрит от скрипт %s."
}

-- IGNORE EVERYTHING BELOW THIS LINE --
setmetatable(Strings, {
    __index = function(self, key)
        return "Error: Missing translation for \""..key.."\""
    end
})

_print = print
function print(...)
    if not Config.Debug then return end
    _print("[^3DEBUG^0]", ...)
end

function printf(s, ...)
    if not Config.Debug then return end
    print(s:format(table.unpack({...})))
end