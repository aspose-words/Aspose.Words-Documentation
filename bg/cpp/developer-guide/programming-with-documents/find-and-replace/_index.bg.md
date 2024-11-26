---
title: Търсене и замяна в C++
second_title: Aspose.Words за C++
articleTitle: Намерете и заменете
linktitle: Намерете и заменете
type: docs
description: "Намерете низ или шаблон на регулярен израз във вашия документ и го заместете с текста, който искате да използвате C++."
weight: 100
url: /bg/cpp/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Можете лесно да навигирате в документа си с помощта на клавиатура и мишка, но ако имате много страници, през които да преминете, ще отнеме доста време, за да намерите конкретен текст в дълъг документ. Ще отнеме повече време, когато искате да замените определени знаци или думи, които сте използвали във вашия документ. Функцията" Намиране и заместване " ви позволява да намерите последователност от знаци в документ и да я замените с друга последователност от знаци.

Aspose.Words ви позволява да намерите конкретен низ или шаблон на регулярен израз във вашия документ и да го замените с алтернатива, без да инсталирате и използвате допълнителни приложения като Microsoft Word. Това ще ускори много задачи за въвеждане и форматиране, което потенциално ще ви спести часове работа.

Тази статия обяснява как да приложите замяна на низове и регулярни изрази с подкрепата на метачарактери.

## Начини за намиране и замяна {#ways-to-find-and-replace}

Aspose.Words предоставя два начина за прилагане на операцията търсене и замяна с помощта на следните:

1. *Simple string replacement* - за да намерите и замените определен низ с друг, трябва да зададете низ за търсене (буквено-цифрови знаци), който ще бъде заменен според всички случаи с друг определен заместващ низ. И двата низа не трябва да съдържат символи. Имайте предвид, че сравнението на низове може да бъде чувствително към малки и големи букви, или може да не сте сигурни в правописа или да имате няколко подобни правописа.
2. *Regular expressions* - за да зададете Регулярен израз, за да намерите точните съвпадения на низове и да ги заместите според вашия Регулярен израз. Имайте предвид, че думата се определя като съставена само от буквено-цифрови знаци. Ако заместването се изпълнява само с цели думи, които се съпоставят и входният низ съдържа символи, тогава няма да бъдат намерени фрази.

Освен това можете да използвате специални метахарактери с прости заместващи низове и регулярни изрази, за да зададете прекъсванията в операцията търсене и заместване.

Aspose.Words представя функцията Търсене и заместване с [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing) пространство от имена. Можете да работите с много опции по време на процеса на търсене и заместване, като използвате клас [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/).

### Намерете и заменете текста, като използвате проста замяна на низ {#find-and-replace-text-using-simple-string-replacement}

Можете да използвате един от методите [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/), за да намерите или замените определен низ и да върнете броя на направените замени. В този случай можете да зададете низ, който да бъде заменен, низ, който ще замести всички негови срещания, дали замяната е чувствителна към малки и малки букви и дали ще бъдат засегнати само самостоятелни думи.

Следващият пример за код показва как да намерите низа "_CustomerName_ " и да го замените с низа *"James Bond"*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

Можете да забележите разликата между документа, преди да приложите проста замяна на низ:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

И след прилагане на проста замяна низ:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### Търсене и заместване на текст с регулярни изрази {#find-and-replace-text-using-regular-expressions}

Регулярен израз (Регулярен израз) е модел, който описва определена последователност от текст. Да предположим, че искате да заместите всички двойни срещания на една дума с едно срещане на една дума. След това можете да приложите следния Регулярен израз, за да зададете шаблона с двойни думи: `([a-zA-Z]+) \1`.

Използвайте другия метод [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/), за да търсите и замествате конкретни комбинации от знаци, като зададете параметъра `Regex` като шаблон на регулярен израз, за да намерите съвпадения.

Следващият пример за код показва как да заместите низове, които съответстват на шаблон на регулярен израз с определен заместващ низ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

Можете да забележите разликата между документа, преди да приложите замяна на низ с регулярни изрази:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

И след прилагане на низ замяна с регулярни изрази:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### Търсене и замяна на низ с помощта на Метахарактери {#find-and-replace-text-using-metacharacters}

Можете да използвате метачарактери в низа за търсене или заместващия низ, ако определен текст или фраза се състои от няколко параграфа, секции или страници. Някои от метахарактерите включват **&p** за знак за нов знак за раздел, **&b** за знак за нов знак за раздел, **&m** за знак за нов знак за страница и **&l** за знак за нов знак за ред.

{{% alert color="primary" %}}

Обърнете внимание, че метахарактерът **&&** е равен на **&**. Например ако трябва да намерите текст за **&p**, който не е нов абзац, можете да използвате **&&p**.

{{% /alert %}}

Следният пример за код показва как да заместите текста с абзац и нов знак за страница:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## Намиране и заместване на низ в горен/долен колонтитул на документ {#find-and-replace-string-in-header-or-footer-of-a-document}

Можете да намерите и замените текста в секцията горен/долен колонтитул на документ Word, като използвате класа [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/).

Следващият пример за код показва как да заместите текста на заглавната секция във вашия документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

Можете да забележите разликата между документа, преди да приложите замяна на горен низ:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

И след прилагане на заглавната низ замяна:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Примерът за код, който замества текста на секцията долен колонтитул във вашия документ, е много подобен на предишния пример за горен код. Всичко, което трябва да направите, е да замените следните два реда::

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

Със следното:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

Можете да забележите разликата между документа, преди да приложите замяна на низове на долния колонтитул:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

И след прилагане на подмяната на долния колонтитул:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## Игнориране на текста по време на търсене и заместване {#ignore-text-during-find-and-replace}

Докато прилагате операцията търсене и заместване, можете да игнорирате определени сегменти от текста. Така че някои части от текста могат да бъдат изключени от търсенето, а намирането и заместването могат да бъдат приложени само към останалите части.

Aspose.Words осигурява много намери и замени свойства за игнориране на текст като [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), и [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

Следният пример за код показва как да игнорирате текст вътре изтриване на ревизии:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## Персонализирайте операцията за търсене и замяна {#customize-find-and-replace-operation}

Aspose.Words предоставя много различни [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) за намиране и заместване на текст, като например прилагане на специфичен формат с [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) и [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) свойства, използване на замествания в модели за замяна с [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) свойства и други.

Следният пример за код показва как да маркирате конкретна дума в документа си:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words Позволява ви да използвате [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) интерфейс за създаване и извикване на потребителски метод по време на операция за замяна. Може да имате някои случаи на използване, в които трябва да персонализирате операцията за търсене и заместване, като например заместване на текст, зададен с регулярен израз с HTML тагове, така че основно ще приложите заместване с вмъкване HTML.

Ако трябва да заместите низ с етикет HTML, приложете интерфейса **IReplacingCallback**, за да персонализирате операцията за търсене и заместване, така че съвпадението да започне в началото на изпълнението с възела на съвпадението на вашия документ. Нека дадем няколко примера за използване на **IReplacingCallback**.

Следният пример за код показва как да заместите текста, посочен с HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

Следващият пример за код показва как да подчертаете положителните числа със зелен цвят и отрицателните числа с червен цвят:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

Следващият пример за код показва как да предплатим номер на ред към всеки ред:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
