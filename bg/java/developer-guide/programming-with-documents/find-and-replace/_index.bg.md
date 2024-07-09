---
title: Търсене и заместване в Java
second_title: Aspose.Words вместо Java
articleTitle: Търсене и замяна
linktitle: Търсене и замяна
type: docs
description: "Намерете низ или регулярен израз в документа си и го заменете с текста, който искате да използвате Java."
weight: 100
url: /bg/java/find-and-replace/
---

Можете лесно да навигирате във вашия документ с помощта на клавиатура и мишка, но ако имате много страници, през които да преминете, ще отнеме доста време, за да намерите конкретен текст в дълъг документ. Ще отнеме повече време, когато искате да замените определени символи или думи, които сте използвали в документа си. Функционалността на почерка ви позволява да намерите поредица от символи в документ и да го замените с друга поредица от символи.

Aspose.Words позволява да намерите конкретен низ или регулярен израз в документа си и да го замените с алтернатива, без да инсталирате и използвате допълнителни приложения като Microsoft Word. Това ще ускори много писане и форматиране задачи, потенциално спестявайки ви часове работа.

Тази статия обяснява как да се прилагат низ замяна и редовни изрази с подкрепата на мета символи.

## Начини за намиране и замяна {#ways-to-find-and-replace}

Aspose.Words осигурява два начина за прилагане на операцията за намиране и замяна, като използва следното:

1. *Просто замяна на низ* за да намерите и замените конкретен низ с друг, трябва да посочите низ за търсене (алфачислителни символи), който ще бъде заменен според всички събития с друг определен заместващ низ. И двата низа не трябва да съдържат символи. Като се има предвид, че сравнението на низовете може да бъде чувствено за случая, или може да не сте сигурни в правописа или да имате няколко подобни правописа.
2. *Регулярни изрази* год. за да определите регулярен израз, за да намерите точния низ съвпадения и да ги замените според редовния си израз. Имайте предвид, че дадена дума се определя като съставена само от буквено-цифрови знаци. Ако заместващ се изпълнява само с цели думи, които се сравняват и входният низ съдържа символи, тогава няма да бъдат намерени фрази.

Също така, можете да използвате специални мета символи с прости низ замяна и редовни изрази, за да уточните прекъсвания в рамките на намирането и замяна на операция.

Aspose.Words представя функционалността на намиране и замяна с [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). Можете да работите с много опции по време на намирането и замяната на процеса, като използвате [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) Клас.

### Търсене и замяна на текст с помощта на проста замяна на низове {#find-and-replace-text-using-simple-string-replacement}

Можете да използвате един от [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) методи за намиране или замяна на определен низ и връщане на броя на направени заместители. В този случай можете да посочите низ, който да бъде заменен, низ, който ще замени всички негови събития, дали замяната е чувствителна към случай и дали ще бъдат засегнати само самостоятелни думи.

Следният пример за код показва как да намерите стринга гол._CriverName_ ..и да го замените със стринга * .James Bond .*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Можете да забележите разликата между документа, преди да приложите проста замяна на низове:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

И след прилагане на прост низ замяна:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Търсене и замяна на текст, използвайки редовни изрази {#find-and-replace-text-using-regular-expressions}

Редовен израз (regex) е модел, който описва определена последователност от текст. Предполагам, че искате да замените всички двойни събития на една дума с една дума явление. След това можете да приложите следния регулярен израз, за да посочите модела с две думи: `([a-zA-Z]+) \1`.

Използвай другото. [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) метод за търсене и замяна на специфични комбинации от символи чрез задаване на `Regex` параметър като регулярен израз модел за намиране на съвпадения.

Следният пример с код показва как да замените низовете, които съвпадат с регулярен израз с определен низ за замяна:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Можете да забележите разликата между документа, преди да приложите замяна на низ с редовни изрази:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

И след прилагане на низ замяна с редовни изрази:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Намиране и замяна Струн Използване на мета символи {#find-and-replace-text-using-metacharacters}

Можете да използвате мета символи в низа за търсене или заместващия низ, ако даден текст или фраза се състои от множество параграфи, раздели или страници. Някои от мета символите включват **&p** за прекъсване на параграфа, **&b** за прекъсване на раздел, **&m** за прекъсване на страницата, и **&l** за прекъсване на линията.

{{% alert color="primary" %}}

Имайте предвид, че мета символ **&&** равно на **&**. Например, ако трябва да намерите текста за **&p** Това не е прекъсване на параграфа, тогава можете да използвате **&&p**.

{{% /alert %}}

Следният пример за код показва как да замените текста с параграф и да прекъснете страницата:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Намерете и заменете низ в заглавна част/футър на документ {#find-and-replace-string-in-header-or-footer-of-a-document}

Можете да намерите и замените текст в раздела заглавна / крак на Word документ с помощта на [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) Клас.

Следният пример за код показва как да замените текста на заглавието във вашия документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Можете да забележите разликата между документа, преди да приложите замяна на низ:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

И след прилагане на заглавна низ замяна:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Примерът с кода за замяна на текста на секцията с подножието във вашия документ е много подобен на предишния заглавен код. Всичко, което трябва да направите, е да замените следните два реда:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Със следното:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Можете да забележите разликата между документа, преди да приложите замяна на низ:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

И след прилагане на подметката на низа:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Игнориране на текст по време на намиране и замяна {#ignore-text-during-find-and-replace}

Докато прилагате намерете и замените операцията, можете да игнорирате някои сегменти от текста. Така че някои части от текста могат да бъдат изключени от търсенето, а намирането и замяната могат да се прилагат само към останалите части.

Aspose.Words осигурява много намери и замени свойства за игнориране на текст като [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), както и [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

Следният пример за код показва как да игнорирате текст вътре изтрийте ревизиите:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Персонализиране Търсене и замяна на операция {#customize-find-and-replace-operation}

Aspose.Words осигурява много различни [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) да намери и замени текст, като например прилагане на специфичен формат с [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) както и [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) свойства, като се използват заместители в резервни модели с [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) собственост и други.

Следният пример за код показва как да се подчертае конкретна дума във вашия документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words Ви позволява да използвате [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) интерфейс за създаване и повикване на потребителски метод по време на замяна на операция. Можете да имате някои случаи на използване, когато трябва да персонализирате операцията за намиране и замяна, като например замяна на текст, посочен с редовен израз с HTML тагове, така че основно ще приложите замяна с вмъкване HTML.

Ако трябва да замените низ с HTML таг, нанесете **IReplacingCallback** интерфейс за персонализиране на намирането и подмяната на операцията, така че мачът започва в началото на тичане с възела на мача на вашия документ. Нека дадем няколко примера за използване **IReplacingCallback**.

Следният пример за код показва как да замените текста с HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Следният пример за код показва как да подчертаем положителни числа със зелен цвят и отрицателни числа с червен цвят:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Следният пример за код показва как да се прекара номер на линия на всеки ред:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
