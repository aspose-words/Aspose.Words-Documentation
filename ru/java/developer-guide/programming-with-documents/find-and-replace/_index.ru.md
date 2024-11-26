---
title: Найти и заменить в Java
second_title: Aspose.Words для Java
articleTitle: Найти и заменить
linktitle: Найти и заменить
type: docs
description: "Найдите в своем документе строку или шаблон регулярного выражения и замените его нужным текстом, используя Java."
weight: 100
url: /ru/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Вы можете легко перемещаться по документу с помощью клавиатуры и мыши, но если вам нужно пролистать много страниц, поиск определенного текста в длинном документе займет довольно много времени. Если вы захотите заменить определенные символы или слова, которые вы использовали в документе, это займет больше времени. Функция "Найти и заменить" позволяет вам найти последовательность символов в документе и заменить ее другой последовательностью символов.

Aspose.Words позволяет найти в документе определенную строку или шаблон регулярного выражения и заменить его альтернативным вариантом без установки и использования дополнительных приложений, таких как Microsoft Word. Это ускорит выполнение многих задач по набору текста и форматированию, что потенциально сэкономит вам часы работы.

В этой статье объясняется, как применять замену строк и регулярные выражения с поддержкой метасимволов.

## Способы поиска и замены {#ways-to-find-and-replace}

Aspose.Words предоставляет два способа применить операцию поиска и замены, используя следующие:

1. *Simple string replacement* – чтобы найти и заменить определенную строку на другую, вам необходимо указать строку поиска (буквенно-цифровые символы), которая будет заменена в соответствии со всеми появлениями другой указанной заменяющей строкой. Обе строки не должны содержать символов. Примите во внимание, что сравнение строк может быть чувствительным к регистру, или вы можете быть не уверены в правильности написания, или у вас может быть несколько похожих вариантов написания.
2. *Regular expressions* – чтобы задать регулярное выражение для поиска точных совпадений строк и замены их в соответствии с вашим регулярным выражением. Обратите внимание, что слово определяется как состоящее только из буквенно-цифровых символов. Если при замене совпадают только целые слова, а входная строка содержит символы, то фразы найдены не будут.

Кроме того, вы можете использовать специальные метасимволы с простой заменой строк и регулярные выражения для указания разрывов в рамках операции поиска и замены.

В Aspose.Words функция поиска и замены представлена в виде [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). В процессе поиска и замены вы можете работать со многими параметрами, используя класс [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/).

### Найдите и замените текст с помощью простой замены строки {#find-and-replace-text-using-simple-string-replacement}

Вы можете использовать один из методов [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String), чтобы найти или заменить определенную строку и вернуть количество выполненных замен. В этом случае вы можете указать строку, подлежащую замене, строку, которая заменит все свои вхождения, будет ли замена чувствительна к регистру и будут ли затронуты только отдельные слова.

В следующем примере кода показано, как найти строку "_CustomerName_" и заменить ее строкой *"James Bond"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Вы можете заметить разницу между документами, прежде чем применять простую замену строк:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

И после применения простой замены строки:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Поиск и замена текста с помощью регулярных выражений {#find-and-replace-text-using-regular-expressions}

Регулярное выражение (regex) - это шаблон, который описывает определенную последовательность текста. Предположим, вы хотите заменить все двойные вхождения слова одним вхождением слова. Затем вы можете применить следующее регулярное выражение для указания шаблона из двух слов: `([a-zA-Z]+) \1`.

Используйте другой метод [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) для поиска и замены определенных комбинаций символов, установив параметр `Regex` в качестве шаблона регулярного выражения для поиска совпадений.

В следующем примере кода показано, как заменить строки, соответствующие шаблону регулярного выражения, указанной заменяющей строкой:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Вы можете заметить разницу между документами, прежде чем применять замену строк регулярными выражениями:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

И после применения замены строк регулярными выражениями:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Найдите и замените строку с помощью метасимволов {#find-and-replace-text-using-metacharacters}

Вы можете использовать метасимволы в строке поиска или в строке замены, если определенный текст или фраза состоят из нескольких абзацев, разделов или страниц. Некоторые из метасимволов включают **&p** для обозначения разрыва абзаца, **&b** для обозначения разрыва раздела, **&m** для обозначения разрыва страницы и **&l** для обозначения разрыва строки.

{{% alert color="primary" %}}

Обратите внимание, что метасимвол **&&** равен **&**. Например, если вам нужно найти текст для **&p**, который не является разрывом абзаца, то вы можете использовать **&&p**.

{{% /alert %}}

В следующем примере кода показано, как заменить текст абзацем и разрывом страницы:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Найти и заменить строку в верхнем/нижнем колонтитуле документа {#find-and-replace-string-in-header-or-footer-of-a-document}

Вы можете найти и заменить текст в верхнем и нижнем колонтитулах документа Word, используя класс [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/).

В следующем примере кода показано, как заменить текст раздела заголовка в вашем документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Вы можете заметить разницу между документами до применения замены строки заголовка:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

И после применения замены строки заголовка:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Пример кода для замены текста нижнего колонтитула в вашем документе очень похож на предыдущий пример кода верхнего колонтитула. Все, что вам нужно сделать, это заменить следующие две строки:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Со следующим:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Вы можете заметить разницу между документами до того, как примените замену строки нижнего колонтитула:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

И после применения замены строки нижнего колонтитула:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Игнорировать текст во время поиска и замены {#ignore-text-during-find-and-replace}

Применяя операцию поиска и замены, вы можете игнорировать определенные фрагменты текста. Таким образом, определенные части текста могут быть исключены из поиска, а поиск и замена могут быть применены только к оставшимся частям.

Aspose.Words предоставляет множество свойств поиска и замены для игнорирования текста, таких как [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), и [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

В следующем примере кода показано, как игнорировать текст внутри изменений удаления:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Настройка операции поиска и замены {#customize-find-and-replace-operation}

Aspose.Words предоставляет множество различных [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) способов поиска и замены текста, таких как применение определенного формата со свойствами [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) и [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat), использование подстановок в шаблонах замены со свойством [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) и другие.

В следующем примере кода показано, как выделить определенное слово в вашем документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words позволяет использовать интерфейс [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) для создания и вызова пользовательского метода во время операции замены. У вас могут быть некоторые варианты использования, когда вам нужно настроить операцию поиска и замены, например, заменить текст, указанный в регулярном выражении, тегами HTML, поэтому в основном вы будете применять замену с помощью вставки HTML.

Если вам нужно заменить строку тегом HTML, примените интерфейс **IReplacingCallback**, чтобы настроить операцию поиска и замены таким образом, чтобы сопоставление начиналось в начале выполнения с узла сопоставления вашего документа. Приведем несколько примеров использования **IReplacingCallback**.

В следующем примере кода показано, как заменить текст, указанный на HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


В следующем примере кода показано, как выделить положительные числа зеленым цветом, а отрицательные - красным:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

В следующем примере кода показано, как добавлять номер строки перед каждой строкой:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
