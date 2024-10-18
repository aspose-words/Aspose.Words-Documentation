---
title: Поиск и замена в C++
second_title: Aspose.Words для C++
articleTitle: Найти и заменить
linktitle: Найти и заменить
type: docs
description: "Найдите в своем документе строку или шаблон регулярного выражения и замените его нужным текстом, используя C++."
weight: 100
url: /ru/cpp/find-and-replace/
---

Вы можете легко перемещаться по документу с помощью клавиатуры и мыши, но если вам нужно пролистать много страниц, поиск определенного текста в длинном документе займет довольно много времени. Если вы захотите заменить определенные символы или слова, которые вы использовали в документе, это займет больше времени. Функция "Найти и заменить" позволяет вам найти последовательность символов в документе и заменить ее другой последовательностью символов.

Aspose.Words позволяет найти в документе определенную строку или шаблон регулярного выражения и заменить его альтернативным вариантом без установки и использования дополнительных приложений, таких как Microsoft Word. Это ускорит выполнение многих задач по набору текста и форматированию, что потенциально сэкономит вам часы работы.

В этой статье объясняется, как применять замену строк и регулярные выражения с поддержкой метасимволов.

## Способы поиска и замены {#ways-to-find-and-replace}

Aspose.Words предоставляет два способа применить операцию поиска и замены, используя следующие:

1. *Simple string replacement* – чтобы найти и заменить определенную строку на другую, вам необходимо указать строку поиска (буквенно-цифровые символы), которая будет заменена в соответствии со всеми совпадениями с другой указанной строкой замены. Обе строки не должны содержать символов. Примите во внимание, что сравнение строк может быть чувствительным к регистру, или вы можете быть не уверены в правильности написания, или у вас может быть несколько похожих вариантов написания.
2. *Regular expressions* – чтобы задать регулярное выражение для поиска точных совпадений строк и замены их в соответствии с вашим регулярным выражением. Обратите внимание, что слово определяется как состоящее только из буквенно-цифровых символов. Если при замене совпадают только целые слова, а входная строка содержит символы, то фразы найдены не будут.

Кроме того, вы можете использовать специальные метасимволы с простой заменой строк и регулярные выражения для указания разрывов в рамках операции поиска и замены.

Aspose.Words представляет функциональность поиска и замены в пространстве имен [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing). В процессе поиска и замены вы можете работать со многими параметрами, используя класс [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/).

### Найдите и замените текст с помощью простой замены строки {#find-and-replace-text-using-simple-string-replacement}

Вы можете использовать один из методов [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/), чтобы найти или заменить определенную строку и вернуть количество выполненных замен. В этом случае вы можете указать строку, подлежащую замене, строку, которая заменит все свои вхождения, будет ли замена чувствительна к регистру и будут ли затронуты только отдельные слова.

В следующем примере кода показано, как найти строку "_CustomerName_" и заменить ее строкой *"Джеймс Бонд".*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

Вы можете заметить разницу между документами, прежде чем применять простую замену строк:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

И после применения простой замены строки:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### Поиск и замена текста с помощью регулярных выражений {#find-and-replace-text-using-regular-expressions}

Регулярное выражение (regex) - это шаблон, который описывает определенную последовательность текста. Предположим, вы хотите заменить все двойные вхождения слова одним вхождением слова. Затем вы можете применить следующее регулярное выражение для указания шаблона из двух слов: `([a-zA-Z]+) \1`.

Используйте другой метод [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) для поиска и замены определенных комбинаций символов, установив параметр `Regex` в качестве шаблона регулярного выражения для поиска совпадений.

В следующем примере кода показано, как заменить строки, соответствующие шаблону регулярного выражения, указанной заменяющей строкой:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

Вы можете заметить разницу между документами, прежде чем применять замену строк регулярными выражениями:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

И после применения замены строк регулярными выражениями:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### Найдите и замените строку с помощью метасимволов {#find-and-replace-text-using-metacharacters}

Вы можете использовать метасимволы в строке поиска или в строке замены, если определенный текст или фраза состоят из нескольких абзацев, разделов или страниц. Некоторые из метасимволов включают **&amp;p** для обозначения разрыва абзаца, **&amp;b** для обозначения разрыва раздела, **&amp;m** для обозначения разрыва страницы и **&amp;l** для обозначения разрыва строки.

{{% alert color="primary" %}}

Обратите внимание, что метасимвол **&amp;&amp;** равен **&amp;**. Например, если вам нужно найти текст для **&amp;p**, который не является разрывом абзаца, вы можете использовать **&amp;&amp;p**.

{{% /alert %}}

В следующем примере кода показано, как заменить текст абзацем и разрывом страницы:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## Найти и заменить строку в верхнем/нижнем колонтитуле документа {#find-and-replace-string-in-header-or-footer-of-a-document}

Вы можете найти и заменить текст в верхнем и нижнем колонтитулах документа Word, используя класс [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/).

В следующем примере кода показано, как заменить текст раздела заголовка в вашем документе:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

Вы можете заметить разницу между документами до применения замены строки заголовка:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

И после применения замены строки заголовка:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Пример кода для замены текста нижнего колонтитула в вашем документе очень похож на предыдущий пример кода верхнего колонтитула. Все, что вам нужно сделать, это заменить следующие две строки:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

Со следующим:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

Вы можете заметить разницу между документами до того, как примените замену строки нижнего колонтитула:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

И после применения замены строки нижнего колонтитула:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## Игнорировать текст во время поиска и замены {#ignore-text-during-find-and-replace}

Применяя операцию поиска и замены, вы можете игнорировать определенные фрагменты текста. Таким образом, определенные части текста могут быть исключены из поиска, а поиск и замена могут быть применены только к оставшимся частям.

Aspose.Words предоставляет множество свойств поиска и замены для игнорирования текста, таких как [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), и [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

В следующем примере кода показано, как игнорировать текст внутри изменений удаления:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## Настройка операции поиска и замены {#customize-find-and-replace-operation}

Aspose.Words предоставляет множество различных [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) способов поиска и замены текста, таких как применение определенного формата со свойствами [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) и [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), использование подстановок в шаблонах замены со свойством [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) и другие.

В следующем примере кода показано, как выделить определенное слово в вашем документе:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words позволяет использовать интерфейс [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) для создания и вызова пользовательского метода во время операции замены. Возможно, у вас есть некоторые варианты использования, когда вам нужно настроить операцию поиска и замены, например, заменить текст, указанный в регулярном выражении, тегами HTML, поэтому в основном вы будете применять замену с помощью вставки HTML.

Если вам нужно заменить строку HTML-тегом, примените интерфейс **IReplacingCallback**, чтобы настроить операцию поиска и замены таким образом, чтобы сопоставление начиналось в начале выполнения с узла сопоставления вашего документа. Приведем несколько примеров использования **IReplacingCallback**.

В следующем примере кода показано, как заменить текст, указанный в HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

В следующем примере кода показано, как выделить положительные числа зеленым цветом, а отрицательные - красным:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

В следующем примере кода показано, как добавлять номер строки перед каждой строкой:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
