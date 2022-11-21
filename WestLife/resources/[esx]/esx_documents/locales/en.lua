Locales['en'] = {
    ['document_deleted'] = "Документа е ~g~deleted~w~.",
    ['document_delete_failed'] = "Изтриване на документа ~r~failed~w~.",
    ['copy_from_player'] = "Ти ~g~received~w~ копие от документ.",
    ['from_copied_player'] = "Направи ~g~copied~w~ за играч",
    ['could_not_copy_form_player'] = "Could ~r~not~w~ copy form to player.",
    ['document_options'] = "Документи",
    ['public_documents'] = "Публични Документи",
    ['job_documents'] = "Служебни Документи",
    ['saved_documents'] = "Записани Документи",
    ['close_bt'] = "Затвори",
    ['no_player_found'] = "Не е намерен играч",
    ['go_back'] = "Назад",
    ['view_bt'] = "Виж",
    ['show_bt'] = "Покажи",
    ['give_copy'] = "Дай копие",
    ['delete_bt'] = "Заличи",
    ['yes_delete'] = "Да заличи",
}

Config.Documents['en'] = {
      ["public"] = {
        {
          headerTitle = "Формуляр",
          headerSubtitle = "Гражданин",
          elements = {
            { label = "СЪДЪРЖАНИЕ", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "Свидетелски Показания",
          headerSubtitle = "Гражданин",
          elements = {
            { label = "СЪДЪРЖАНИЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "СЪДЪРЖАНИЕ", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "ПРОДАЖБА НА ПРЕВОЗНО СРЕДСТВО",
          headerSubtitle = "Формуляр за продажба на превозно средство на друг гражданин",
          elements = {
            { label = "РЕГИСТРАЦИОНЕН НОМЕР", type = "input", value = "", can_be_emtpy = false },
            { label = "ГРАЖДАНСКО ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ДОГОВАРЕНА СУМА", type = "input", value = "", can_be_empty = false },
            { label = "ДРУГА ИНФОРМАЦИЯ", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "ИЗЛОЖЕНИЕ НА ДЪЛГА КЪМ ГРАЖДАНИТЕ",
          headerSubtitle = "Официален отчет за дълга към друг гражданин.",
          elements = {
            { label = "ИМЕ НА КРЕДИТОРЪТ", type = "input", value = "", can_be_emtpy = false },
            { label = "ФАМИЛИЯ НА КРЕДИТОРЪТ", type = "input", value = "", can_be_emtpy = false },
            { label = "ДЪЛЖИМА СУМА", type = "input", value = "", can_be_empty = false },
            { label = "КРАЙНА ДАТА НА ВРЪЩАНЕ", type = "input", value = "", can_be_empty = false },
            { label = "ДРУГА ИНФОРМАЦИЯ", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "ДЕКЛАРАЦИЯ ЗА ИЗЧИСТВАНЕ НА ДЪЛГ",
          headerSubtitle = "Декларация за изчистване на дългът от друг гражданин.",
          elements = {
            { label = "ИМЕ НА ДЛЪЖНИКА", type = "input", value = "", can_be_emtpy = false },
            { label = "ФАМИЛИЯ НА ДЛЪЖНИКА", type = "input", value = "", can_be_emtpy = false },
            { label = "ДЪЛЖИМА СУМА", type = "input", value = "", can_be_empty = false },
            { label = "ДРУГА ИНФОРМАЦИЯ", type = "textarea", value = "ДЕКЛАРИРАМ, ЧЕ ВЪПРОСНИЯТ ГРАЖДАНИН Е ВЪРНАЛ ЗАЕМ С ВЪПРОСНАТА ДЪЛЖИМА СУМА", can_be_emtpy = false, can_be_edited = false },
          }
        }
      },
      ["police"] = {
        {
          headerTitle = "СПЕЦИАЛНО ПАРКО МЯСТО",
          headerSubtitle = "Разрешение за паркиране без ограничение.",
          elements = {
            { label = "ИМЕ НА ПРИТЕЖИТЕЛЯ", type = "input", value = "", can_be_emtpy = false },
            { label = "ФАМИЛИЯ НА ПРИТЕЖАТЕЛЯ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДНО ДО", type = "input", value = "", can_be_empty = false },
            { label = "ИНФОРМАЦИЯ", type = "textarea", value = "ВЪПРОСНИЯТ ГРАЖДАНИН ИМА ПРАВОТО ДА СПИРА ВСЯКА ГРАДОВА ЗОНА.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "РАЗРЕШИТЕЛНО ЗА ОРЪЖИЕ",
          headerSubtitle = "Разрешително за оръжие предоставено от полицията",
          elements = {
            { label = "ИМЕ НА ПРИТЕЖАТЕЛЯТ", type = "input", value = "", can_be_emtpy = false },
            { label = "ФАМИЛИЯ НА ПРИТЕЖАТЕЛЯТ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДНО ДО", type = "input", value = "", can_be_empty = false },
            { label = "ИНФОРМАЦИЯ", type = "textarea", value = "ВЪПРОСНИЯТ ГРАЖДАНИН ИМА ПРАВОТО НА ОРЪЖИЕ.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "СВИДЕТЕЛСТВО ЗА СЪДИМОСТ",
          headerSubtitle = "Официално гражданско свидетелство за съдимост",
          elements = {
            { label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДНО ДО", type = "input", value = "", can_be_empty = false },
            { label = "RECORD", type = "textarea", value = "ПОЛИЦАТА ТУК ДЕКЛАРИРА, ЧЕ ВЪПРОСНИЯТ ГРАЖДАНИН ПРЕДСТАВЯ ЧИСТО ДОСИЕ. НАСТОЯЩИЯТ РЕЗУЛТАТ Е ГЕНЕРИРАН ОТ ДАННИ, ПРЕДОСТАВЕНИ В СИСТЕМАТА ЗА КРИМИНАЛНО ЗАПИСВАНЕ ДО ДАТА НА ПОДПИСАНЕ НА ДОКУМЕНТА.", can_be_emtpy = false, can_be_edited = false },
          }         }
      },
      ["ambulance"] = {
        {
          headerTitle = "МЕДИЦИНСКИ ДОКЛАД - ПАТОЛОГИЯ (МЕДИЦИНСКО)",
          headerSubtitle = "Официален медицински доклад, предоставен от патолог.",
          elements = {
            { label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДНО ДО", type = "input", value = "", can_be_empty = false },
            { label = "МЕДИЦИНСКИ БЕЛЕЖКИ", type = "textarea", value = "ВЪПРОСНИЯТ ЗАСТРАХОВАН ГРАЖДАНИН Е ПРЕГЛЕДАН ОТ ДОКТОР И Е ОПРЕДЕЛЕН КАТО ЗДРАВ, БЕЗ ОПРЕДЕЛЕНИ ДЪЛГОСРОЧНИ УСЛОВИЯ. НАСТОЯЩИЯТ ДОКЛАД Е ВАЛИДЕН ДО ДАТАТА НА ИЗТИЧАНЕТО НА ИЗПЪЛНЕНИЕТО", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "МЕДИЦИНСКИ ДОКЛАД - ПСИХОЛОГИЯ",
          headerSubtitle = "Официален медицински доклад, предоставен от психолог.",
          elements = {
            { label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДНО ДО", type = "input", value = "", can_be_empty = false },
            { label = "МЕДИЦИНСКИ БЕЛЕЖКИ", type = "textarea", value = "ВЪПРОСНИЯТ ГРАЖДАНИН Е ПРЕГЛЕДАН ОТ ДОКТОР И Е ОПРЕДЕЛЕН КАТО ЗДРАВ, БЕЗ ОПРЕДЕЛЕНИ ДЪЛГОСРОЧНИ УСЛОВИЯ. НАСТОЯЩИЯТ ДОКЛАД Е ВАЛИДЕН ДО ДАТАТА НА ИЗТИЧАНЕТО НА ИЗПЪЛНЕНИЕТО", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "МЕДИЦИНСКИ ДОКЛАД - ОЧЕН СПЕЦИАЛИСТ",
          headerSubtitle = "Официален медицински доклад, предоставен от очен специалист.",
          elements = {
            { label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДНО ДО", type = "input", value = "", can_be_empty = false },
            { label = "МЕДИЦИНСКИ БЕЛЕЖКИ", type = "textarea", value = "ВЪПРОСНИЯТ ЗАСТРАХОВАН ГРАЖДАНИН Е ПРЕГЛЕДАН ОТ ДОКТОР И Е ОПРЕДЕЛЕН КАТО ЗДРАВ, БЕЗ ОПРЕДЕЛЕНИ ДЪЛГОСРОЧНИ УСЛОВИЯ. НАСТОЯЩИЯТ ДОКЛАД Е ВАЛИДЕН ДО ДАТАТА НА ИЗТИЧАНЕТО НА ИЗПЪЛНЕНИЕТО", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "РАЗРЕШИТЕЛНО ЗА ИЗПОЛЗВАНЕ НА МАРИХУАНА",
          headerSubtitle = "Официално разрешение за употреба на марихуана за граждани.",
          elements = {
            { label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
            { label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДНО ДО", type = "input", value = "", can_be_empty = false },
            { label = "МЕДИЦИНСКИ БЕЛЕЖКИ", type = "textarea", value = "ВЪПРОСНИЯТ ЗАСТРАХОВАН ГРАЖДАНИН Е ПРЕГЛЕДАН ОТ ДОКТОР И Е ОПРЕДЕЛЕН КАТО ЗДРАВ, БЕЗ ОПРЕДЕЛЕНИ ДЪЛГОСРОЧНИ УСЛОВИЯ. НАСТОЯЩИЯТ ДОКЛАД Е ВАЛИДЕН ДО ДАТАТА НА ИЗТИЧАНЕТО НА ИЗПЪЛНЕНИЕТО", can_be_emtpy = false },
          }
        },

      ["avocat"] = {
        {
          headerTitle = "ДОГОВОР ЗА ПРАВНИ УСЛУГИ",
          headerSubtitle = "Договор за правни услуги предоставени от адвокат.",
          elements = {
            { label = "ИМЕ ", type = "input", value = "", can_be_emtpy = false },
            { label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
            { label = "ВАЛИДНО ДО", type = "input", value = "", can_be_empty = false },
            { label = "ИНФОРМАЦИЯ", type = "textarea", value = "ДОКУМЕНТЪТ Е ДОКАЗАТЕЛСТВО ЗА ПРАВНО ПРЕДСТАВЯНЕ И ПОКРИТИЕ НА АФОРМЕНТИРАНИТЕ ГРАЖДАНИ. ПРАВНИТЕ УСЛУГИ СА ВАЛИДНИ ДО ДАТАТА НА ИЗТИЧАНЕТО НА ИЗПЪЛНЕНИЕТО..", can_be_emtpy = false },
          }
        }
      }
    }
  }
