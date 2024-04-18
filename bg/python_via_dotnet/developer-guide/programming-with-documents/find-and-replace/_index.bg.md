---
title: Търсене и заместване в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Търсене и замяна
linktitle: Търсене и замяна
type: docs
description: "Намерете низ или регулярен израз в документа си и го заменете с текста, който искате да използвате Python."
weight: 100
url: /bg/python-net/find-and-replace/
---

Можете лесно да навигирате във вашия документ с помощта на клавиатура и мишка, но ако имате много страници, през които да преминете, ще отнеме доста време, за да намерите конкретен текст в дълъг документ. Ще отнеме повече време, когато искате да замените определени символи или думи, които сте използвали в документа си. Фиксирането и подмяната на функционалността ви позволява да намерите поредица от символи в документ и да го замените с друга поредица от символи.

Aspose.Words позволява да намерите конкретен низ или регулярен израз в документа си и да го замените с алтернатива, без да инсталирате и използвате допълнителни приложения като Microsoft Word. Това ще ускори много писане и форматиране задачи, потенциално спестявайки ви часове работа.

Тази статия обяснява как да се прилагат низ замяна и редовни изрази с подкрепата на мета символи.

## Начини за намиране и замяна {#ways-to-find-and-replace}

Aspose.Words осигурява два начина за прилагане на операцията за намиране и замяна, като използва следното:

1. *Просто замяна на низ* за да намерите и замените конкретен низ с друг, трябва да посочите низ за търсене (алфачислителни символи), който ще бъде заменен според всички събития с друг определен низ за замяна. И двата низа не трябва да съдържат символи. Като се има предвид, че сравнението на низовете може да бъде от гледна точка на случая, или може да не сте сигурни в правописа или да имате няколко подобни правописа.
2. *Регулярни изрази* гответе регулярен израз, за да намерите точния низ мачове и да ги замените според редовния си израз. Имайте предвид, че думата се определя като съставена само от буквено-цифрови знаци. Ако заместването се изпълнява само с цели думи, които се сравняват и входният низ съдържа символи, тогава няма да бъдат намерени фрази.

В допълнение, можете да използвате специални метахарактери с прости низ замяна и редовни изрази, за да се определят прекъсвания в рамките на намирането и замяна на операция.

Aspose.Words представя функционалността за намиране и замяна с [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/) модул. Можете да работите с много възможности по време на намирането и замяната на процеса с помощта на [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) Клас.

### Търсене и замяна на текст с помощта на проста замяна на низове {#find-and-replace-text-using-simple-string-replacement}

Можете да използвате един от [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) както и [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) методи за намиране или замяна на определен низ и връщане на броя на направени заместители. В този случай можете да посочите низ, който да бъде заменен, низ, който ще замени всички негови събития, дали замяната е чувствителна към случая и дали ще бъдат засегнати само самостоятелни думи.

Следният пример за код показва как да се намери стринга ..._CnustrName_... и да го замените със стринга *.

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

Можете да забележите разликата между документа, преди да приложите проста замяна на низ:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

И след прилагане на прост низ замяна:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Търсене и замяна на текст с помощта на редовни изрази {#find-and-replace-text-using-regular-expressions}

Редовният израз е модел, който описва определена поредица от текстове. Предполагам, че искате да замените всички двойни събития на една дума с една дума явление. След това можете да приложите следния регулярен израз, за да уточните модела с две думи: `([a-zA-Z]+) \1`.

Използвайте [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) метод за търсене и замяна на специфични комбинации от символи чрез задаване на регулярен параметър на израз като модел за намиране на съвпадения.

Следният пример за код показва как да замените низове, които съвпадат с регулярен израз с определен заместващ низ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Можете да забележите разликата между документа преди прилагане на низ замяна с редовни изрази:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

И след прилагане на низ замяна с редовни изрази:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Намерете и сменете низ с помощта на мета символи {#find-and-replace-text-using-metacharacters}

Можете да използвате мета символи в низа за търсене или в низа за замяна, ако даден текст или фраза се състои от няколко параграфи, раздели или страници. Някои от мета символите включват **&p** за прекъсване на параграфа, **&b** за прекъсване на раздел, **&m** за прекъсване на страницата, и **&l** за прекъсване на линията.

{{% alert color="primary" %}}

Имайте предвид, че мета символ **&&** равно на **&**. Например, ако трябва да намерите текст за **&p** Това не е прекъсване на параграфа, тогава можете да използвате **&&p**.

{{% /alert %}}

Следният пример за код показва как да замените текст с параграф и страница с прекъсване:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Намерете и заменете низ в заглавната част/футър на документ {#find-and-replace-string-in-header-or-footer-of-a-document}

Можете да намерите и замените текста в раздела заглавна / крак на Word документ с помощта на [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) Клас.

Следният пример за код показва как да замените текста на заглавието в документа си:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Можете да забележите разликата между документа, преди да приложите замяна на низ:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

И след прилагане на заглавната низ замяна:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

Примерът с кода за замяна на текста на раздел footer във вашия документ е много подобен на предишния заглавен код пример. Всичко, което трябва да направите, е да замените следните два реда:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Със следното:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Можете да забележите разликата между документа, преди да приложите замяна на низ:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

И след като нанесете замяна на низ:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Игнориране на текст по време на намиране и замяна {#ignore-text-during-find-and-replace}

Докато прилагате намерете и замените операцията, можете да игнорирате някои сегменти от текста. Така че някои части от текста могат да бъдат изключени от търсенето, а намирането и замяната могат да се прилагат само към останалите части.

Aspose.Words осигурява много намери и замени свойства за игнориране на текст като [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/), както и [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

Следният пример за код показва как да игнорирате текст вътре изтрийте ревизиите:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Персонализиране Търсене и замяна на операция {#customize-find-and-replace-operation}

Aspose.Words предоставя много различни свойства за намиране и замяна на текст, като прилагане на специфичен формат с [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) както и [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/) свойства, като се използват заместители в резервни модели с [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) собственост и други.

Следният пример за код показва как да се подчертае конкретна дума във вашия документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
