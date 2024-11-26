---
title: Разделяне на документ Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Разделяне на документ
linktitle: Разделяне на документ
description: "Разделяне на документ на няколко файла, използвайки Python. Използвайте разделената функция, за да разделите ефективно документ по заглавия или раздели, както и по страници или по страници."
type: docs
weight: 90
url: /bg/python-net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* или * Разделяне на документ* е процес на разбиване на голям документ в по-голям брой по-малки файлове. Има различни причини да се раздели файл. Например, трябват ви само няколко страници от конкретен документ, а не цялата. Или поради лични причини, искате да споделите само някои части от документ с други. С разделителната функция можете да получите само необходимите части от документа и да направите необходимите действия с тях, например, за да маркирате, запишете или изпратите.

Aspose.Words осигурява ефективен начин за разделяне на един документ на няколко документа по заглавия или раздели. Можете също така да разделите документ по страници или по страници. И двете опции за разделяне ще бъдат описани в тази статия.

Разделяне на документ на по-малки файлове Aspose.Words, трябва да следвате следните стъпки:

1. Зареждане на документа във всеки поддържан формат.
1. Разделете документа.
1. Запис на изходните документи.

След като разделите документ, ще можете да отворите всички изходни документи, които ще започнат с необходимите страници, текст и т.н.

{{% alert color="primary" %}}

**Опитай онлайн**

Можете да опитате тази функционалност с нашия [Безплатен онлайн разделител на документи](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Разделяне на документ с помощта на различни критерии {#split-a-document-using-different-criteria}

Aspose.Words ви позволява да разделите EPUB или HTML документи на глави според различни критерии. В процеса стилът и оформлението на изходния документ са запазени за изходните документи.

Можете да посочите критерии с помощта на [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) Изброяване. Така че можете да разделите документ на глави, използвайки един от следните критерии или да комбинирате повече от един критерий:

- заглавие параграф,
- прекъсване на секцията,
- прекъсване на колоната,
- пауза на страницата.

При запис на изхода към HTML, Aspose.Words запишете всяка отделна глава като отделен HTML файл. В резултат на това документът ще бъде разделен на множество HTML файлове. При запазване на изхода към EPUB, Aspose.Words Запис на резултата в един EPUB файл независимо от [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) стойност сте използвали. Така че, използване [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) за документи на EPUB засяга само появата на тяхното съдържание в приложения за четене: съдържанието ще бъде разделено на глави и документът вече няма да се появява непрекъснато.

{{% alert color="primary" %}}

Не можете да разделите документ с помощта на [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) собственост при запис във формат MSTML.

{{% /alert %}}

В този раздел разглеждаме само някои от възможните критерии за разделяне.

### Разделяне на документ по заглавия {#split-a-document-by-headings}

За да се раздели документ на глави по заглавия, използвайте [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) стойност на [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) собственост.

Ако е необходимо да разделите документ на определено ниво на заглавия, като позиции 1, 2 и 3, използвайте също [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/) собственост. Изходът ще бъде разделен на параграфи, форматирани с посоченото ниво на заглавие.

Следният пример за код показва как да се раздели документ на по-малки части по заглавие:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

Моля, имайте предвид, че за тези критерии, Aspose.Words Поддържа запис в HTML формат при разделяне.

При запис в EPUB документът не се разделя на няколко файла и ще има само един изходен файл.

### Разделяне на документ по раздели {#split-a-document-by-sections}

Aspose.Words също така ви позволява да използвате раздел прекъсвания, за да разделите документи и да ги запазите в HTML. За тази цел използвайте [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break) като [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

Има и друг начин за разделяне на изходния документ на множество изходни документи и можете да изберете всеки формат на изхода, поддържан от Aspose.Words.

Следният пример за код показва как да се раздели документ на по-малки части по раздели прекъсвания (без използване на [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) собственост:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## Разделяне по страници {#splitting-by-pages}

Можете също така да разделите страница на документ по страница, по интервали от страници или да започнете с посочените номера на страници. В такъв случай [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) методът може да свърши работа.

Този раздел описва няколко случаи на използване на разделяне на документи чрез paged използване на [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) клас и [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) метод.

{{% alert color="primary" %}}

Можете да използвате всеки [Поддържани формати на документи](/words/bg/python-net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Поради многото нюанси, появяващи се при намаляване на броя на страниците, пълен мач с Microsoft Word оформлението е доста сложна задача. Следователно, в зависимост от сложността на документа, може да има малки разлики в структурата на получения документ от оригиналния документ.

{{% /alert %}}

### Разделяне на страница от документа по страница {#split-a-document-page-by-page}

Aspose.Words ви позволява да разделите страница по страница с много страници.

Следният пример за код показва как да се раздели документ и да се запази всяка страница като отделен документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### Разделяне на документ по интервали на страницата {#split-a-document-by-page-ranges}

Aspose.Words позволява разделяне на много страници документ по интервали от страници. Можете да разделите един файл на няколко файла с различни интервали от страници или просто да изберете един диапазон и да запишете само тази част от изходния документ. Имайте предвид, че можете да изберете обхвата на страницата според максималния и минимален номер на страницата на документа.

Следният пример за код показва как да се раздели документ на по-малки части по диапазон на страниците със специфични начални и крайни индекси:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## Сливане на разделения документ с друг файл {#merge-the-split-document-with-another-file}

Aspose.Words ви позволява да слеете изходния разделен документ с друг документ, за да формирате нов документ. Това може да се нарече сливане на документи.

Следният пример за код показва как да се слее разделен документ с друг документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
