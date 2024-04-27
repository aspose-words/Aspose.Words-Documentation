---
title: Как да създадете таблица в Java
second_title: Aspose.Words вместо Java
articleTitle: Създаване на таблица
linktitle: Създаване на таблица
description: "Различни начини за създаване на таблици във вашия документ използване Java."
type: docs
weight: 20
url: /bg/java/create-a-table/
---

Aspose.Words позволява на потребителите да създават таблици в документ от нулата и предоставя няколко различни методи за това. Тази статия представя подробности за това как да добавите форматирани таблици към вашия документ, използвайки всеки метод, както и сравнение на всеки метод в края на статията.

## Стилове по подразбиране

На новосъздадената таблица са дадени стойности по подразбиране, подобни на тези, използвани в Microsoft Word:

| Имоти в таблицата | По подразбиране Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| Цвят на границите |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Масата може да бъде включена, ако е плътно разположена или плаваща, ако може да бъде разположена навсякъде на страницата. По подразбиране, Aspose.Words Винаги създава маси.

{{% /alert %}}

## Създаване на таблица с Documentbuilder

В Aspose.Words, Потребителите могат да създадат таблица в документ с помощта на [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Основният алгоритъм за създаване на таблица е следният:

1. Започнете масата с [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Добавяне на клетка към таблицата с използване [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) Това автоматично започва нов ред
3. По избор използвайте [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) свойство за определяне на форматирането на клетки
4. Вмъкване на съдържанието на клетката, като се използва съответното **DocumentBuilder** методи като [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), и други
5. Повторете стъпки 2-4 докато редът е завършен
6. Обаждане [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) за край на текущия ред
7. По избор използвайте [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) собственост за определяне на форматирането на реда
8. Повторете стъпки 2-7 докато таблицата е завършена
9. Обаждане [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) да завърши изграждането на масата

{{% alert color="primary" %}}

Важни подробности:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) може да се нарече и вътре в клетка, в който случай започва създаването на гнездова маса в клетката.
- След обаждането. [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), създаването на нова клетка и всяко съдържание, което добавите, използвайки други методи на [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) класа ще бъде добавен към текущата клетка. За да създадете нова клетка на същия ред, се обадете **InsertCell** Отново.
- Ако **InsertCell** се нарича веднага след [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) и в края на един ред, масата ще продължи на нов ред.
- На [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) метод за край на таблицата трябва да се нарича само веднъж след обаждане **EndRow**. Обаждане **EndTable** Премества курсора от текущата клетка на позицията веднага след таблицата.

{{% /alert %}}

Процесът на създаване на таблица може ясно да се види на следната картина:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

Следният пример за код показва как да се създаде проста таблица с помощта на **DocumentBuilder** с форматиране по подразбиране:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

Следният пример за код показва как да се създаде форматирана таблица с помощта на DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

Следният пример с код показва как да се постави гнездяща таблица с използване на DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Създаване на таблица чрез DOM (Document Object Model)

Можете да поставите маси директно в DOM чрез добавяне на нов [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) Възел на определена позиция.

Моля, имайте предвид, че веднага след създаването на възела на таблицата самата таблица ще бъде напълно празна, т.е. тя все още не съдържа редове и клетки. За да поставите редове и клетки в таблица, добавете съответната [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) както и [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Детски възли на DOM.

{{% alert color="primary" %}}

Този метод за създаване на таблица използва същата таблица по подразбиране, както при използване на **DocumentBuilder**.

{{% /alert %}}

Следният пример за код показва как да се изгради нова таблица от нулата чрез добавяне на подходящите детски възли към дървото на документа:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Създаване на таблица от HTML

Aspose.Words поддържа вмъкването на съдържание в документ от HTML източник с помощта на [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) метод. Входът може да бъде пълна HTML страница или само частичен откъс.

Използване на това **InsertHtml** метод, потребителите могат да вмъкнат таблици в документа чрез тагове като `<table>`, `<tr>`, `<td>`.

Следният пример за код показва как да се въведе таблица в документ от низ, съдържащ HTML тагове:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Вмъкване на копие на съществуваща таблица

Има често пъти, когато трябва да се създаде таблица, базирана на вече съществуваща таблица в документ. Най-лесният начин да дублирате таблица при запазване на всички форматиране е клониране на възела на таблицата с помощта на [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) метод.

Същата техника може да се използва за добавяне на копия на съществуващ ред или клетка към таблица.

Следният пример за код показва как да дублирате таблица с помощта на конструктори на възли:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Следният пример за код показва как да клонирате последния ред от таблицата и да я добавите към таблицата:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Ако търсите създаване на таблици в документ, който расте динамично с всеки запис от вашия източник на данни, тогава горният метод не се препоръчва. Вместо това, желаният изход се постига по-лесно чрез използване Mail merge с региони. Можете да научите повече за тази техника в [Mail Merge с региони](/words/java/types-of-mail-merge-operations/) Секция.

## Сравняване на начините за създаване на таблица

Aspose.Words предоставя няколко метода за създаване на нови таблици в документ. Всеки метод има свои предимства и недостатъци, така че изборът на които да се използва често зависи от конкретната ситуация.

Нека разгледаме по-отблизо тези начини за създаване на таблици и да сравним техните плюсове и минуси:

|  Метод | Предимства |  Недостатъци |
|  :-  |  :-  |  :-  |
| Via `DocumentBuilder` | Стандартен метод за поставяне на таблици и други документи | Понякога е трудно да се създаде много разновидности на масите в същото време със същия строителен случай |
| Via DOM |  Пасва по-добре с околния код, който създава и вмъква възли директно в DOM без да се използва **DocumentBuilder** | Масата е създадена "празна": преди извършване на повечето операции, трябва да се обадите [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) за създаване на липсващи детски възли |
| От HTML | Създаване на нова таблица от HTML източник с тагове като `<table>`, `<tr>`, `<td>` | Не е възможно. Microsoft Word формат на таблицата може да се приложи към HTML |
| Клониране на съществуваща таблица | Можете да създадете копие на съществуваща таблица, като запазите формата на всички редове и клетки | Подходящите детски възли трябва да бъдат отстранени преди масата да е готова за употреба |
