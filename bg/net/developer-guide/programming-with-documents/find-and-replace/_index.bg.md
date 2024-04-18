---
title: Търсене и заместване в C#
second_title: Aspose.Words вместо .NET
articleTitle: Търсене и замяна
linktitle: Търсене и замяна
type: docs
description: "Намерете низ или регулярен израз в документа си и го заменете с текста, който искате да използвате C#."
weight: 100
url: /bg/net/find-and-replace/
---

Можете лесно да навигирате във вашия документ с помощта на клавиатура и мишка, но ако имате много страници, през които да преминете, ще отнеме доста време, за да намерите конкретен текст в дълъг документ. Ще отнеме повече време, когато искате да замените определени символи или думи, които сте използвали в документа си. Фиксирането и подмяната на функционалността ви позволява да намерите поредица от символи в документ и да го замените с друга поредица от символи.

Aspose.Words позволява да намерите конкретен низ или регулярен израз в документа си и да го замените с алтернатива, без да инсталирате и използвате допълнителни приложения като Microsoft Word. Това ще ускори много писане и форматиране задачи, потенциално спестявайки ви часове работа.

Тази статия обяснява как да се прилагат низ замяна и редовни изрази с подкрепата на мета символи.

## Начини за намиране и замяна {#ways-to-find-and-replace}

Aspose.Words осигурява два начина за прилагане на операцията за намиране и замяна, като използва следното:

1. *Просто замяна на низ* за да намерите и замените конкретен низ с друг, трябва да посочите низ за търсене (алфачислителни символи), който ще бъде заменен според всички събития с друг определен низ за замяна. И двата низа не трябва да съдържат символи. Като се има предвид, че сравнението на низовете може да бъде от гледна точка на случая, или може да не сте сигурни в правописа или да имате няколко подобни правописа.
2. *Регулярни изрази* гответе регулярен израз, за да намерите точния низ мачове и да ги замените според редовния си израз. Имайте предвид, че думата се определя като съставена само от буквено-цифрови знаци. Ако заместването се изпълнява само с цели думи, които се сравняват и входният низ съдържа символи, тогава няма да бъдат намерени фрази.

В допълнение, можете да използвате специални метахарактери с прости низ замяна и редовни изрази, за да се определят прекъсвания в рамките на намирането и замяна на операция.

Aspose.Words представя функционалността за намиране и замяна с [Aspose.Words.Replacing](https://reference.aspose.com/words/net/aspose.words.replacing/) пространство за имена. Можете да работите с много възможности по време на намирането и замяната на процеса с помощта на [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) Клас.

### Търсене и замяна на текст с помощта на прост низ замяна {#find-and-replace-text-using-simple-string-replacement}

Можете да използвате един от [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/#replace/) методи за намиране или замяна на определен низ и връщане на броя на направени заместители. В този случай можете да посочите низ, който да бъде заменен, низ, който ще замени всички негови събития, дали замяната е чувствителна към случая и дали ще бъдат засегнати само самостоятелни думи.

Следният пример за код показва как да се намери стринга ..._CnustrName_... и да го замените със стринга *.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

Можете да забележите разликата между документа, преди да приложите проста замяна на низ:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

И след прилагане на прост низ замяна:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Търсене и замяна на текст с помощта на редовни изрази {#find-and-replace-text-using-regular-expressions}

Редовен израз (regex) е модел, който описва определена последователност от текст. Предполагам, че искате да замените всички двойни събития на една дума с една дума явление. След това можете да приложите следния регулярен израз, за да уточните модела с две думи: `([a-zA-Z]+) \1`.

Използвай другото. [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) метод за търсене и замяна на специфични комбинации от символи чрез задаване на `Regex` параметър като регулярен израз модел за намиране на съвпадения.

Следният пример за код показва как да замените низове, които съвпадат с регулярен израз с определен заместващ низ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

Можете да забележите разликата между документа преди прилагане на низ замяна с редовни изрази:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

И след прилагане на низ замяна с редовни изрази:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Намерете и сменете низ използвайки мета символи {#find-and-replace-text-using-metacharacters}

Можете да използвате мета символи в низа за търсене или в низа за замяна, ако даден текст или фраза се състои от няколко параграфи, раздели или страници. Някои от мета символите включват **&p** за прекъсване на параграфа, **&b** за прекъсване на раздел, **&m** за прекъсване на страницата, и **&l** за прекъсване на линията.

{{% alert color="primary" %}}

Имайте предвид, че мета символ **&&** равно на **&**. Например, ако трябва да намерите текст за **&p** Това не е прекъсване на параграфа, тогава можете да използвате **&&p**.

{{% /alert %}}

Следният пример за код показва как да замените текст с параграф и страница с прекъсване:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Намерете и заменете низ в заглавната част/футър на документ {#find-and-replace-string-in-header-or-footer-of-a-document}

Можете да намерите и замените текста в раздела заглавна / крак на Word документ с помощта на [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) Клас.

Следният пример за код показва как да замените текста на заглавието в документа си:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

Можете да забележите разликата между документа, преди да приложите замяна на низ:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

И след прилагане на заглавната низ замяна:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

Примерът с кода за замяна на текста на раздел footer във вашия документ е много подобен на предишния заглавен код пример. Всичко, което трябва да направите, е да замените следните два реда:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Със следното:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

Можете да забележите разликата между документа, преди да приложите замяна на низ:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

И след като нанесете замяна на низ:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Игнориране на текст по време на намиране и замяна {#ignore-text-during-find-and-replace}

Докато прилагате намерете и замените операцията, можете да игнорирате някои сегменти от текста. Така че някои части от текста могат да бъдат изключени от търсенето, а намирането и замяната могат да се прилагат само към останалите части.

Aspose.Words осигурява много намери и замени свойства за игнориране на текст като [IgnoreDeleted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/), както и [IgnoreInserted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

Следният пример за код показва как да игнорирате текст вътре изтрийте ревизиите:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## Персонализиране Търсене и замяна на операция {#customize-find-and-replace-operation}

Aspose.Words осигурява много различни [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) да намери и замени текст, като например прилагане на специфичен формат с [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) както и [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) свойства, като се използват заместители в резервни модели с [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) собственост и други.

Следният пример за код показва как да се подчертае конкретна дума във вашия документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words Ви позволява да използвате [IReplacingCallback](https://reference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback/) интерфейс за създаване и повикване на персонализиран метод по време на операция за замяна. Можете да имате някои случаи на използване, където трябва да персонализирате намирането и да замените операцията, като например заместване на текст, посочен с редовен израз с HTML тагове, така че основно ще приложите замяна с вмъкване HTML.

Ако трябва да замените низ с HTML таг, нанесете **IReplacingCallback** интерфейс за персонализиране на операцията за намиране и замяна, така че мачът започва в началото на изпълнение с възела на мача на вашия документ. Нека дадем няколко примера за използване **IReplacingCallback**.

Следният пример за код показва как да замените текста с HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

Следният пример за код показва как да се подчертае положителни числа със зелен цвят и отрицателни числа с червен цвят:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

Следният пример с код показва как да се прекара номер на линия на всеки ред:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
