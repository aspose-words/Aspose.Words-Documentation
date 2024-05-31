---
title: Работа с колони и редове
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с колони и редове
linktitle: Работа с колони и редове
description: "Работейки с части от таблица, колони и клетки, използващи Python. Задаване на реда на заглавните части Python."
type: docs
weight: 30
url: /bg/python-net/working-with-columns-and-rows/
---

За повече контрол върху това как работят таблиците, научете се как да манипулирате колони и редове.

## Намиране на индекса на елементите в таблицата

Колони, редове и клетки се управляват чрез достъп до избрания документен възел чрез неговия индекс. Намирането на индекс на всеки възел включва събиране на всички детски възли от типа елемент от базовия възел, и след това използване на [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) метод за намиране на индекса на желания възел в колекцията.

### Намиране на индекс на таблица в документ

Понякога може да се наложи да направите промени в определена таблица в документ. За да направите това, можете да се позовавате на таблица по нейния индекс.

Следният пример за код показва как да се извлече индексът на таблица в документ:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### Намиране на индекс на ред в таблица

По същия начин, може да се наложи да направите промени в определен ред в избрана таблица. За да направите това, можете да се обърнете към ред по неговия индекс.

Следният пример за код показва как да се извлече индексът на ред в таблица:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### Намиране на индекс на клетка в ред

И накрая, може да се наложи да се направят промени в определена клетка и можете да направите това по клетъчен индекс, както добре.

Следният пример с код показва как да се извлече индексът на клетка в ред:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## Работа с колони

В Aspose.Words Document Object Model (DOM), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Възелът се състои от [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) Възли и после [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) Възли. По този начин в `Document` Модел на обекта Aspose.Words, както в Word документи, няма понятие за колона.

По дизайн, редовете в таблицата Microsoft Word както и Aspose.Words са напълно независими и основните свойства и операции се съдържат само в редовете и клетките на таблицата. Това дава на таблиците способността да имат някои интересни атрибути:

- Всеки ред на масата може да има напълно различен брой клетки
- Вертикално, клетките на всеки ред могат да имат различни ширини
- Възможно е да се присъединят таблици с различен ред формати и брой клетки

Всички операции, извършвани върху колони са всъщност "къси пътища," които извършват операцията чрез колективно смяна на редовите клетки по такъв начин, че изглежда, че се прилагат към колони. Това означава, че можете да извършвате операции на колоните, като просто итерирате върху същия индекс на редовете.

Следният пример за код опростява такива операции чрез доказване на фасаден клас, който събира клетките, които съставляват "колони" на таблица:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

Следният пример с код показва как да се постави празна колона в таблица:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

Следният пример за код показва как да се премахне колона от таблица в документ:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## Задаване на редове като заглавни редове

Можете да изберете да повторите първия ред в таблицата като Header Row само на първата страница или на всяка страница, ако таблицата е разделена на няколко. В Aspose.Words, Можете да повторите заглавието на всяка страница с помощта на [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/) собственост.

Можете също така да маркирате няколко заглавни редове, ако тези редове са разположени един след друг в началото на таблицата. За да направите това, трябва да приложите **HeadingFormat** свойства на тези редове.

{{% alert color="primary" %}}

Обърнете внимание, че заглавните редове не работят на гнездени маси. Това означава, че ако имате маса в друга маса, тази настройка няма да има ефект. Това е ограничение на Microsoft Word това не позволява това, не Aspose.Words.

{{% /alert %}}

Следният пример за код показва как да се изгради таблица, която включва Заглавни редове, които се повтарят на следващите страници:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## Запазване на таблици и редове от прекъсване на страниците

Има моменти, когато съдържанието на таблицата не трябва да се разделя на страници. Например, ако заглавието е над една маса, заглавието и таблицата трябва винаги да се държат заедно на една и съща страница, за да се запази правилното външен вид.

Има две отделни техники, които са полезни за постигане на тази функционалност:

- `Allow row break across pages`, за редове в таблицата
- `Keep with next`, които се прилагат към параграфи в таблици

По подразбиране горните свойства са изключени.

### Запазване на ред от прекъсване на страниците

Това включва ограничаване на съдържанието в клетките на един ред от разделяне на една страница. В Microsoft Word, това може да се намери под Table Properties като опцията готварски ред да се прекъсне през страниците. В Aspose.Words това е открито под [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) обект на a [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) като свойство [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/).

Следният пример за код показва как да се деактивират редовете на страниците за всеки ред в таблица:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Запазване на таблица от прекъсване на страниците

За да спрем разделянето на таблицата между страниците, трябва да уточним, че искаме съдържанието в таблицата да остане заедно.

За да направите това, Aspose.Words използва метод, който позволява на потребителите да избират таблица и позволява [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) параметър към true за всеки параграф в рамките на таблиците. Изключението е последният параграф от таблицата, който следва да бъде определен false.

Следният пример за код показва как да се постави таблица, за да останем заедно на една и съща страница:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}