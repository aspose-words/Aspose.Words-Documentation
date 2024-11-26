---
title: Как да създадете таблица в C++
second_title: Aspose.Words за C++
articleTitle: Създаване на таблица
linktitle: Създаване на таблица
description: "Различни начини за създаване на таблици, използващи C++. Създаване на таблица в C++ за вашия документ. Добавете таблица в C++."
type: docs
weight: 20
url: /bg/cpp/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words позволява на потребителите да създават таблици в документ от самото начало и предоставя няколко различни метода за това. Тази статия представя подробности за това как да добавите форматирани таблици към вашия документ, като използвате всеки метод, както и сравнение на всеки метод в края на статията.

## Стилове На Таблици По Подразбиране

Новосъздадената таблица получава стойности по подразбиране, подобни на тези, използвани в Microsoft Word:

| Свойства На Таблицата | По подразбиране Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2 пт |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

Таблицата може да бъде вградена, ако е плътно разположена, или плаваща, ако може да бъде разположена навсякъде на страницата. По подразбиране Aspose.Words винаги създава вградени таблици.

{{% /alert %}}

## Създаване на таблица с DocumentBuilder

В Aspose.Words потребителите могат да създадат таблица в документ, като използват [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Основният алгоритъм за създаване на таблица е както следва::

1. Започнете таблицата с [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)
2. Добавяне на клетка в таблицата с [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) - това автоматично стартира нов ред
3. По желание използвайте свойството [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/), за да зададете форматиране на клетки
4. Въведете съдържанието на клетката, като използвате подходящи **DocumentBuilder** методи като [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) и други
5. Повторете стъпки 2-4, докато редът е завършен
6. Повикване [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) за край на текущия ред
7. По желание използвайте свойството [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/), за да зададете форматиране на редове
8. Повторете стъпки 2-7, докато таблицата е пълна
9. Обадете се [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/), за да завършите изграждането на масата

{{% alert color="primary" %}}

Важни детайли:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) може да бъде извикан и вътре в клетката, като в този случай започва създаването на вложена таблица в клетката.
- След повикване [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) се създава нова клетка и всяко съдържание, което добавите с помощта на други методи от класа [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), ще бъде добавено към текущата клетка. За да създадете нова клетка на същия ред, обадете се отново **InsertCell**.
- Ако **InsertCell** е извикан веднага след [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) и края на ред, таблицата ще продължи на нов ред.
- Методът [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) за завършване на таблицата трябва да бъде извикан само веднъж след извикване на **EndRow**. Извикването **EndTable** премества курсора от текущата клетка в позицията веднага след таблицата.

{{% /alert %}}

Процесът на създаване на таблица може да се види ясно на следващата снимка:

![creating-table-process](creating-table-process.jpg)

Следващият пример за код показва как да създадете проста таблица с **DocumentBuilder** с форматиране по подразбиране:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

Следващият пример за код показва как да създадете форматирана таблица с DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

Следващият пример за код показва как да вмъкнете вложена таблица, като използвате DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## Създаване на таблица чрез DOM (модел на обект на документ)

Можете да вмъквате таблици директно в DOM, като добавите нов [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) възел на определена позиция.

Моля, обърнете внимание, че веднага след създаването на възела на таблицата, самата таблица ще бъде напълно празна, т.е. все още не съдържа редове и клетки. За да вмъкнете редове и клетки в таблица, добавете съответните [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) дъщерни възли към DOM.

{{% alert color="primary" %}}

Този метод за създаване на таблица използва същите стойности по подразбиране, както при използване на **DocumentBuilder**.

{{% /alert %}}

Следващият пример за код показва как да се изгради нова таблица от самото начало чрез добавяне на съответните дъщерни възли към дървото на документа:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## Създаване на таблица от HTML

Aspose.Words поддържа вмъкване на съдържание в документ от източник HTML, като се използва методът [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/). Входът може да бъде пълна HTML страница или само частичен фрагмент.

Използвайки метода **InsertHtml**, потребителите могат да вмъкват таблици в документа чрез етикети на таблица като `<table>`, `<tr>`, `<td>`.

Следващият пример за код показва как да вмъкнете таблица в документ от низ, съдържащ етикети HTML:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## Вмъкване на копие на съществуваща таблица

Често има случаи, когато трябва да създадете таблица въз основа на вече съществуваща таблица в документ. Най-лесният начин да дублирате таблица, като запазите цялото форматиране, е да клонирате възела на таблицата, като използвате метода [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/).

Същата техника може да се използва за добавяне на копия на съществуващ ред или клетка в таблица.

Следващият пример за код показва как да дублирате таблица с помощта на конструктори на възли:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

Следващият пример за код показва как да клонирате последния ред на таблица и да го добавите към таблицата:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

Ако търсите в създаване на таблици в документ, който расте динамично с всеки запис от вашия източник на данни, след това по-горе метод не се препоръчва. Вместо това желаният резултат се постига по-лесно чрез използване на Mail merge с региони. Можете да научите повече за тази техника в [Mail Merge с региони](/words/cpp/types-of-mail-merge-operations/) отдел.

## Сравнете начините за създаване на таблица

Aspose.Words предоставя няколко метода за създаване на нови таблици в документ. Всеки метод има своите предимства и недостатъци, така че изборът кой да се използва често зависи от конкретната ситуация.

Нека да разгледаме по-отблизо тези начини за създаване на таблици и да сравним техните плюсове и минуси:

| Метод | Предимства | Недостатъци |
| :- | :- | :- |
| `DocumentBuilder` | Стандартният метод за вмъкване на таблици и друго съдържание на документ | Понякога е трудно да се създадат много разновидности на таблици по едно и също време с един и същ строител инстанция |
| DOM | Вписва се по-добре със заобикалящия код, който създава и вмъква възли директно в DOM, без да използва **DocumentBuilder** | Таблицата е създадена "празна": преди да извършите повечето операции, трябва да се обадите [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/), за да създадете липсващи дъщерни възли |
| От HTML | Може да създаде нова таблица от HTML източник с помощта на етикети като `<table>`, `<tr>`, `<td>` | Не всички възможни формати на таблица Microsoft Word могат да бъдат приложени към HTML |
| Клониране на съществуваща таблица | Можете да създадете копие на съществуваща таблица, като запазите форматирането на всички редове и клетки | Подходящите детски възли трябва да бъдат отстранени, преди таблицата да е готова за употреба |
