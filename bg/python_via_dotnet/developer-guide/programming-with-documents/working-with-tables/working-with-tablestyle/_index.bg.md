---
title: Промяна на стила на таблицата Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Прилагане на стил на таблица
linktitle: Прилагане на стил на таблица
description: "Разширено форматиране на таблицата C#. Създаване на стил на таблица с помощта Python. Прилагане стил на таблица Python."
type: docs
weight: 80
url: /bg/python-net/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Стил на таблица определя набор от форматиране, което може лесно да се приложи към таблица. Форматирането като граници, засенчване, подравняване и шрифт може да бъде поставено в стил маса и се прилага към много таблици за последователен външен вид.

Aspose.Words поддържа прилагането на стил маса на масата и също така чете свойства на всяка таблица стил. Стиловете на таблиците се запазват по време на товарене и спестяване по следните начини:

- Table styles in DOCX and WordML формати са запазени при зареждане и запис към тези формати
- Стиловете на таблица се запазват при зареждане и запис във формат DOC (но не и в друг формат)
- При износ към други формати, обработка или печат, стиловете на масата се разширяват до директно форматиране в таблицата, така че всички форматиране се запазва

## Създаване на стил на таблица

Потребителят може да създаде нов стил и да го добави към колекцията. На [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) метод се използва за създаване на нов стил маса.

Следният пример за код показва как да се създаде нов потребителски дефиниран стил на таблица:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## Копиране на съществуващ стил на таблица

Ако е необходимо, можете да копирате стил на масата, който вече съществува в определен документ във вашата колекция стил с помощта на `AddCopy` метод.

Важно е да знаете, че с това копиране, свързаните стилове също се копират.

Следният пример за код показва как се внася стил от един документ в друг документ:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## Прилагане на съществуващ стил на таблица

Aspose.Words а [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) наследствено от [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) Клас. **TableStyle** улеснява потребителя да прилага различни опции стил като сензация, подплънки, вдлъбнатини, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) както и [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/), и т.н.

Освен това, Aspose.Words осигурява [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) клас и няколко свойства на `Table` клас за определяне на стила на масата, с който ще работим: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/), както и [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words също така предвижда [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) клас, който представлява специален форматиране, приложен към част от таблица с определен стил на таблица, и [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) Това представлява колекция от **ConditionalStyle** Обекти. Тази колекция съдържа постоянен набор от елементи, представляващи един елемент за всяка стойност на [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) тип на изброяване. На **ConditionalStyleType** Изброяването определя всички възможни зони на таблицата, за които може да се определи условно форматиране в стил на таблица.

В този случай условното форматиране може да се определи за всяка възможна зона на таблицата, определена съгласно типа на изброяване на ConditionalStyleType.

Следният пример за код показва как да се определи условно форматиране за заглавния ред на таблицата:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

Можете също така да изберете коя таблица части да се прилагат стилове, като например първата колона, последната колона, ленти редове. Те са изброени в [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) изброяване и се прилагат чрез [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/) собственост. На **TableStyleOptions** изброяването позволява малко комбинация от тези функции.

Следният пример за код показва как да се създаде нова таблица с приложен стил на таблица:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

Снимките по-долу показват представяне на **Table Styles** в Microsoft Word и съответните им свойства в Aspose.Words.

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## Работа със стилове на масата

Стил на таблица определя набор от форматиране, което може лесно да се приложи към таблица. Форматирането като граници, засенчване, подравняване и шрифт може да бъде поставено в стил таблица и се прилага към много таблици за последователен външен вид.

Aspose.Words поддържа прилагането на стил маса на масата и също така чете свойства на всяка таблица стил. Стиловете на таблиците се запазват по време на товарене и спестяване по следните начини:

- Таблични стилове в DOCX и WordML формати се запазват при зареждане и записване на тези формати.
- Стиловете на таблица се запазват при зареждане и запис във формат DOC (но не и в друг формат).
- При износ към други формати, представяне или печат, стиловете на масата се разширяват до директно форматиране на масата, така че всички форматиране се запазва.

В момента не можете да създавате нови стилове на хранене. Можете да прилагате само вградени стилове на маса или потребителски стилове на маса, които вече съществуват в документа към таблица

## Вземете форматиране от стила на таблица и го нанесете като директно форматиране

Aspose.Words и осигурява [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) метод за вземане на форматиране, намерени в стил маса и го разширява върху редовете и клетките на таблицата като пряко форматиране. Опитайте се да комбинирате форматиране с стил маса и мобилен стил.

{{% alert color="primary" %}}

Този метод няма да отмени никое друго форматиране, вече приложено към таблицата чрез ред или формат клетка.

{{% /alert %}}

Следният пример за код показва как да се разшири форматирането от стилове върху редове на таблица и клетки като директно форматиране:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}
