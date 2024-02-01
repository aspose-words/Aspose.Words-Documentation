---
title: Найти и заменить в C#
second_title: Aspose.Words для .NET
articleTitle: Найти и заменить
linktitle: Найти и заменить
type: docs
description: "Найдите в документе строку или шаблон регулярного выражения и замените его нужным текстом, используя номер C#."
weight: 100
url: /ru/net/find-and-replace/
---

Вы можете легко перемещаться по документу с помощью клавиатуры и мыши, но если вам нужно пролистывать много страниц, поиск определенного текста в длинном документе займет немало времени. Это займет больше времени, если вы захотите заменить определенные символы или слова, которые вы использовали в своем документе. Функционал "Найти и заменить" позволяет найти последовательность символов в документе и заменить ее другой последовательностью символов.

Aspose.Words позволяет вам найти определенную строку или шаблон регулярного выражения в вашем документе и заменить его альтернативой без установки и использования дополнительных приложений, таких как Microsoft Word. Это ускорит выполнение многих задач по набору текста и форматированию, потенциально сэкономив вам часы работы.

В этой статье объясняется, как применять замену строк и регулярные выражения с поддержкой метасимволов.

## Способы найти и заменить {#ways-to-find-and-replace}

Aspose.Words предоставляет два способа применения операций поиска и замены, используя следующее:

1. *Простая замена строки* – для поиска и замены определенной строки на другую необходимо указать строку поиска (буквенно-цифровые символы), которая будет заменена по всем вхождениям на другую указанную строку замены. Обе строки не должны содержать символы. Учтите, что сравнение строк может быть чувствительным к регистру, или вы можете быть не уверены в написании или иметь несколько похожих написаний.
2. *Регулярные выражения* — укажите регулярное выражение, чтобы найти точные совпадения строк и заменить их в соответствии с вашим регулярным выражением. Обратите внимание, что слово определяется как состоящее только из буквенно-цифровых символов. Если замена выполняется только с совпадением целых слов и входная строка содержит символы, то фразы найдены не будут.

Кроме того, вы можете использовать специальные метасимволы с простой заменой строк и регулярные выражения, чтобы указать разрывы в операции поиска и замены.

Aspose.Words представляет функцию поиска и замены в пространстве имен [Aspose.Words.Replacing](https://reference.aspose.com/words/net/aspose.words.replacing/). Вы можете работать со многими параметрами в процессе поиска и замены, используя класс [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/).

### Поиск и замена текста с помощью простой замены строк {#find-and-replace-text-using-simple-string-replacement}

Вы можете использовать один из [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/#replace/) методов, чтобы найти или заменить определенную строку и вернуть количество сделанных замен. В этом случае вы можете указать строку, которая будет заменена, строку, которая заменит все ее вхождения, будет ли замена учитывать регистр и будут ли затронуты только отдельные слова.

В следующем примере кода показано, как найти строку "_CustomerName_" и заменить ее строкой * "Джеймс Бонд"*:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

Вы можете заметить разницу между документом перед применением простой замены строки:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="перед простой заменой строки" style="width:600px"/>

И после применения простой замены строки:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="после простой замены строки" style="width:600px"/>

### Поиск и замена текста с помощью регулярных выражений {#find-and-replace-text-using-regular-expressions}

Регулярное выражение (regex) — это шаблон, описывающий определенную последовательность текста. Предположим, вы хотите заменить все двойные вхождения слова одним вхождением слова. Затем вы можете применить следующее регулярное выражение, чтобы указать шаблон двойного слова: `([a-zA-Z]+) \1`.

Используйте другой метод [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) для поиска и замены определенных комбинаций символов, установив параметр `Regex` в качестве шаблона регулярного выражения для поиска совпадений.

В следующем примере кода показано, как заменить строки, соответствующие шаблону регулярного выражения, указанной строкой замены:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

Вы можете заметить разницу между документом перед применением замены строк регулярными выражениями:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="перед заменой регулярными выражениями" style="width:600px"/>

И после применения замены строк регулярными выражениями:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="после замены регулярными выражениями" style="width:600px"/>

### Поиск и замена строки с помощью метасимволов {#find-and-replace-text-using-metacharacters}

Вы можете использовать метасимволы в строке поиска или строке замены, если определенный текст или фраза состоит из нескольких абзацев, разделов или страниц. Некоторые из метасимволов включают **&amp;п** для разрыва абзаца, **&amp;б** для разрыва раздела, **&amp;м** для разрыва страницы и **&amp;л** для разрыва строки.

{{% alert color="primary" %}}

Обратите внимание, что метасимвол **&&** равен **&**. Например, если вам нужно найти текст для **&amp;п**, который не является разрывом абзаца, вы можете использовать **&amp;&amp;п**.

{{% /alert %}}

В следующем примере кода показано, как заменить текст абзацем и разрывом страницы:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Найти и заменить строку в верхнем или нижнем колонтитуле документа {#find-and-replace-string-in-header-or-footer-of-a-document}

Вы можете найти и заменить текст в разделе верхнего и нижнего колонтитула документа Word, используя класс [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/).

В следующем примере кода показано, как заменить текст раздела заголовка в документе:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

Вы можете заметить разницу между документом перед применением замены строки заголовка:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="перед применением замены строки заголовка" style="width:600px"/>

И после применения замены строки заголовка:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="замена строки заголовка после применения" style="width:600px"/>

Пример кода для замены текста нижнего колонтитула в документе очень похож на предыдущий пример кода заголовка. Все, что вам нужно сделать, это заменить следующие две строки:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Со следующим:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

Вы можете заметить разницу между документом перед применением замены строки нижнего колонтитула:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="перед применением замены строки нижнего колонтитула" style="width:600px"/>

И после применения замены строки нижнего колонтитула:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="замена строки-нижнего колонтитула после применения" style="width:600px"/>

## Игнорировать текст во время поиска и замены {#ignore-text-during-find-and-replace}

Применяя операцию поиска и замены, вы можете игнорировать определенные сегменты текста. Так, отдельные части текста можно исключить из поиска, а поиск и замену применить только к оставшимся частям.

Aspose.Words предоставляет множество свойств поиска и замены для игнорирования текста, например [IgnoreDeleted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/) и [IgnoreInserted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

В следующем примере кода показано, как игнорировать текст внутри удаляемых ревизий:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## Настройка операции поиска и замены {#customize-find-and-replace-operation}

Aspose.Words предоставляет множество различных [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) для поиска и замены текста, например применение определенного формата со свойствами [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) и [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), использование замен в шаблонах замены со свойством [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) и другие.

В следующем примере кода показано, как выделить определенное слово в документе:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words позволяет использовать интерфейс [IReplacingCallback](https://reference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback/) для создания и вызова пользовательского метода во время операции замены. В некоторых случаях вам может потребоваться настроить операцию поиска и замены, например, заменить текст, указанный регулярным выражением, на теги HTML, поэтому в основном вы будете применять замену со вставкой HTML.

Если вам нужно заменить строку тегом HTML, примените интерфейс **IReplacingCallback**, чтобы настроить операцию поиска и замены, чтобы сопоставление начиналось в начале выполнения с узлом сопоставления вашего документа. Приведем несколько примеров использования **IReplacingCallback**.

В следующем примере кода показано, как заменить текст, указанный с помощью HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

В следующем примере кода показано, как выделить положительные числа зеленым цветом, а отрицательные числа — красным:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

В следующем примере кода показано, как добавить номер строки к каждой строке:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
