---
title: Промяна на стила на таблицата в Word документи
second_title: Aspose.Words за C++
articleTitle: Прилагане На Стил На Таблица
linktitle: Прилагане На Стил На Таблица
description: "Разширено форматиране на таблица C++. Създайте стил на таблица, като използвате C++. Прилагане на стил на таблица C++."
type: docs
weight: 80
url: /bg/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Стил на таблица дефинира набор от форматиране, които могат лесно да бъдат приложени към таблица. Форматирането, като например граници, оцветяване, подравняване и шрифт, може да бъде зададено в стил на таблица и приложено към много таблици за последователен вид.

Aspose.Words поддържа прилагане на стил на таблица към таблица, както и свойства за четене на всеки стил на таблица. Стиловете на таблиците се запазват по време на зареждането и записването по следните начини::

- Стилове на таблици във формати DOCX и WordML се запазват при зареждане и записване в тези формати
- Стиловете на таблиците се запазват при зареждане и записване във формат DOC (но не и в друг формат)
- Когато експортирате в други формати, рендиране или печат, стиловете на таблици се разширяват до директно форматиране в таблицата, така че цялото форматиране се запазва

## Създаване на стил на таблица

Потребителят може да създаде нов стил и да го добави към колекция от стилове. Методът [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) се използва за създаване на нов стил на таблица.

Следващият пример за код показва как да създадете нов стил на таблица, дефиниран от потребителя:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Копиране на съществуващ стил на таблица

Ако е необходимо, можете да копирате стил на таблица, който вече съществува в определен документ във вашата колекция от стилове, като използвате метода `AddCopy`.

Важно е да знаете, че с това Копиране се копират и свързаните стилове.

Следващият пример за код показва как да импортирате стил от един документ в друг документ:

EXAMPLE

## Прилагане на съществуващ стил на таблица

Aspose.Words осигурява [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) наследен от [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) клас. **TableStyle** улеснява потребителя да прилага различни опции за стил като засенчване, подложка, отстъп, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) и [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/) и т.н.

В допълнение Aspose.Words осигурява [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) класа и няколко свойства на `Table` класа, за да укажете с кой стил на таблица ще работим.: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), и [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words също така осигурява [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) клас, който представлява специално форматиране, приложено към някаква област от таблица с определен стил на таблица, и [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/), който представлява колекция от **ConditionalStyle** обекти. Тази колекция съдържа постоянен набор от артикули, представляващи по един артикул за всяка стойност от вида [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/) изброяване. **ConditionalStyleType** изброяването определя всички възможни области на таблицата, към които условното форматиране може да бъде дефинирано в стил на таблица.

В този случай условното форматиране може да бъде дефинирано за всички възможни области на таблицата, дефинирани под тип ConditionalStyleType изброяване.

Следващият пример за код показва как да дефинирате условно форматиране за заглавния ред на таблицата:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

Можете също да изберете Към кои части на таблицата да приложите стилове, като например първата колона, последната колона, редовете на ленти. Те са изброени в списъка [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) и се прилагат чрез имота [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). **TableStyleOptions** изброяването позволява побитова комбинация от тези характеристики.

Следващият пример за код показва как да създадете нова таблица с приложен стил на таблица:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

Снимките по-долу показват представяне на **Table Styles** в Microsoft Word и съответните им свойства в Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Вземете форматирането от стила на таблицата и го приложете като директно Форматиране

Aspose.Words също така предоставя [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) метод за вземане на форматирането, намерено в стил на таблица, и го разгъва върху редовете и клетките на таблицата като директно форматиране. Опитайте да комбинирате форматирането със стил на таблица и стил на клетка.

{{% alert color="primary" %}}

Този метод няма да замести всяко друго форматиране, което вече е приложено към таблицата чрез формат на ред или клетка.

{{% /alert %}}

Следващият пример за код показва как да разширите форматирането от стилове върху редове на таблица и клетки като директно форматиране:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}
