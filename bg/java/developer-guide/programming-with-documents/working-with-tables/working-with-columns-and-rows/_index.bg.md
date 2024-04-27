---
title: Работа с колони и редове в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с колони и редове
linktitle: Работа с колони и редове
description: "Работа с части от таблица, колони и клетки, използващи Java. Посочване на реда на заглавните части Java."
type: docs
weight: 30
url: /bg/java/working-with-columns-and-rows/
---

За повече контрол върху това как работят таблиците, научете се как да манипулирате колони и редове.

## Търсене на индекс на елемента на таблица

Колони, редове и клетки се управляват чрез достъп до избрания документен възел чрез неговия индекс. Намирането на индекс на всеки възел включва събиране на всички детски възли от типа елемент от базовия възел, и след това използване на [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) метод за намиране на индекса на желания възел в колекцията.

### Търсене на индекс на таблица в документ

Понякога може да се наложи да направите промени в определена таблица в документ. За да направите това, можете да се позовавате на таблица по нейния индекс.

Следният пример за код показва как да се извлече индексът на таблица в документ:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Намиране на индекс на ред в таблица

Също така може да се наложи да направите промени в определен ред в избрана таблица. За да направите това, можете да се обърнете към ред по неговия индекс.

Следният пример за код показва как да се извлече индексът на ред в таблица:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Намиране на индекс на клетка в ред

И накрая, може да се наложи да се направят промени в определена клетка и можете да направите това по клетъчен индекс, както добре.

Следният пример за код показва как да се извлече индексът на клетка в ред:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Работа с колони

В Aspose.Words Document Object Model (DOM), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) Възелът се състои от [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) Възел и след това [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Възли. По този начин в `Document` Модел на обекта Aspose.Words, както и в Word документи, няма понятие за колона.

По проект, редовете в таблицата Microsoft Word както и Aspose.Words са напълно независими и основните свойства и операции се съдържат само в редовете и клетките на таблицата. Това дава на таблиците способността да имат някои интересни атрибути:

- Всеки ред може да има напълно различен брой клетки
- Вертикално, клетките на всеки ред могат да имат различни ширини
- Възможно е да се присъединят таблици с различни ред формати и брой клетки

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Всички операции, извършвани върху колони са всъщност "къси пътища," които извършват операцията чрез колективно смяна на редовите клетки по такъв начин, че изглежда, че те се прилагат към колони. Това означава, че можете да извършвате операции на колони, като просто итерирате върху същия индекс на редовете.

Следният пример за код опростява такива операции чрез доказване на фасаден клас, който събира клетките, които съставляват "колона" на таблица:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Следният пример за код показва как да се постави празна колона в таблица:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Следният пример за код показва как да се премахне колона от таблица в документ:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Задаване на редовете като заглавни редове

Можете да изберете да повторите първия ред в таблицата като Header Row само на първата страница или на всяка страница, ако таблицата е разделена на няколко. В Aspose.Words, Можете да повторите заглавието на всяка страница с помощта на [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) собственост.

Можете също така да маркирате няколко заглавни редове, ако тези редове са разположени един след друг в началото на таблицата. За да направите това, трябва да приложите **HeadingFormat** свойства на тези редове.

{{% alert color="primary" %}}

Обърнете внимание, че Header Rows не работят в гнездени маси. Това означава, че ако имате маса в друга маса, тази настройка няма да има ефект. Това е ограничение на Microsoft Word това не позволява това, не Aspose.Words.

{{% /alert %}}

Следният пример за код показва как да се изгради таблица, която включва заглавни редове, които се повтарят на следващите страници:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Запазване на таблици и редове от прекъсване на страници {#keep-tables-and-rows-from-breaking-across-pages}

Има моменти, когато съдържанието на таблицата не трябва да се разделя на страници. Например, ако заглавието е над една таблица, заглавието и таблицата трябва винаги да се държат заедно на една и съща страница, за да се запази правилното външен вид.

Има две отделни техники, които са полезни за постигане на тази функционалност:

- `Allow row break across pages`, за редове в таблицата
- `Keep with next`, които се прилагат към параграфи в таблиците

По подразбиране горните свойства са изключени.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Запазване на ред от прекъсване на страниците {#keep-a-row-from-breaking-across-pages}

Това включва ограничаване на съдържанието вътре в клетките на един ред от разделяне на една страница. В Microsoft Word, това може да се намери под Table Properties като опцията год. В Aspose.Words това е открито под [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) обект на a [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) като свойство [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Следният пример за код показва как да деактивирате редовете на страниците за всеки ред в таблица:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Запазване на таблица от прекъсване на страниците {#keep-a-table-from-breaking-across-pages}

За да спрем разделянето на масата през страниците, трябва да уточним, че искаме съдържанието в таблицата да остане заедно.

За да направя това, Aspose.Words използва метод, който позволява на потребителите да избират таблица и позволява [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) параметър към true за всеки параграф от таблицата. Изключението е последният параграф от таблицата, който следва да бъде определен false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Следният пример за код показва как да зададете таблица, за да останете заедно на една и съща страница:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}