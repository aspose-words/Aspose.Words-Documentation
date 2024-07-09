---
title: Найти и заменить в Java
second_title: Aspose.Words для Java
articleTitle: Найти и заменить
linktitle: Найти и заменить
type: docs
description: "Найдите строку или шаблон регулярного выражения в вашем документе и замените его текстом, который вы хотите использовать. Java."
weight: 100
url: /ru/java/find-and-replace/
---

Вы можете легко перемещаться по документу с помощью клавиатуры и мыши, но если у вас есть много страниц для прокрутки, потребуется довольно много времени, чтобы найти конкретный текст в длинном документе. Это займет больше времени, если вы хотите заменить определенные символы или слова, которые вы использовали в своем документе. Функция "Найти и заменить" позволяет найти последовательность символов в документе и заменить ее другой последовательностью символов.

Aspose.Words позволяет найти конкретную строку или шаблон регулярного выражения в документе и заменить его альтернативой без установки и использования дополнительных приложений, таких как: Microsoft Word. Это ускорит многие задачи набора и форматирования, что потенциально сэкономит вам часы работы.

В этой статье объясняется, как применять замену строк и регулярные выражения с поддержкой метахарактеров.

## Способы найти и заменить {#ways-to-find-and-replace}

Aspose.Words Обеспечивает два способа применения операции поиска и замены, используя следующее:

1. *Простая замена строки* - чтобы найти и заменить конкретную строку другой, необходимо указать поисковую строку (альфа-цифровые символы), которая будет заменена в соответствии со всеми событиями другой указанной заменой строки. Обе строки не должны содержать символов. Учтите, что сравнение строк может быть чувствительным к случаю, или вы можете быть не уверены в правописании или иметь несколько подобных правописаний.
2. *Регулярные выражения * - указать регулярное выражение, чтобы найти точные совпадения строк и заменить их в соответствии с вашим регулярным выражением. Обратите внимание, что слово определяется как состоящее только из буквенно-цифровых символов. Если замена выполняется только целыми словами и строка ввода содержит символы, то фразы не будут найдены.

Кроме того, вы можете использовать специальные метахарактеры с простой заменой строк и регулярными выражениями, чтобы указать перерывы в операции поиска и замены.

Aspose.Words Найти и заменить функциональность с помощью [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). Вы можете работать со многими вариантами во время процесса поиска и замены. [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) класс.

### Найти и заменить текст с помощью простой замены строки {#find-and-replace-text-using-simple-string-replacement}

Вы можете использовать один из [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) Способы поиска или замены конкретной строки и возврата количества произведенных замен. В этом случае вы можете указать строку, которая будет заменена, строку, которая заменит все ее случаи, является ли замена чувствительной к случаю, и будут ли затронуты только отдельные слова.

Следующий пример кода показывает, как найти строку "_CustomerName_" и заменить ее строкой * "James Bond"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Вы можете заметить разницу между документом перед применением простой замены строки:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

И после применения простой замены строки:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Найти и заменить текст с помощью регулярных выражений {#find-and-replace-text-using-regular-expressions}

Регулярное выражение (регекс) - это шаблон, описывающий определенную последовательность текста. Допустим, вы хотите заменить все двойные случаи слова на одно слово. Затем вы можете применить следующее регулярное выражение, чтобы указать шаблон с двумя словами: `([a-zA-Z]+) \1`.

Используйте другой [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) метод поиска и замены конкретных комбинаций символов путем установки `Regex` параметр как шаблон регулярного выражения для поиска совпадений.

Следующий пример кода показывает, как заменить строки, которые соответствуют обычному шаблону выражения, определенной строкой замены:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Вы можете заметить разницу между документом перед применением замены строки с регулярными выражениями:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

А после нанесения замены строки регулярными выражениями:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Найти и заменить струны с помощью метахарактеров {#find-and-replace-text-using-metacharacters}

Вы можете использовать метасимволы в строке поиска или строке замены, если конкретный текст или фраза состоит из нескольких абзацев, разделов или страниц. Некоторые метахарактеры включают **&p** для перерыва в абзаце, **&b** для перерыва в секции, **&m** Для перерыва страницы и **&l** Для перерыва.

{{% alert color="primary" %}}

Обратите внимание, что метахарактер **&&** равным **&**. Например, если вам нужно найти текст для **&p** Это не пункт перерыва, то вы можете использовать **&&p**.

{{% /alert %}}

Следующий пример кода показывает, как заменить текст абзацем и разрывом страницы:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Найти и заменить строку в заголовке / футере документа {#find-and-replace-string-in-header-or-footer-of-a-document}

Вы можете найти и заменить текст в разделе заголовка / футера документа Word, используя [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) класс.

Следующий пример кода показывает, как заменить текст раздела заголовка в вашем документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Вы можете заметить разницу между документом перед применением замены строки заголовка:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

И после применения замены струны заголовка:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Пример кода для замены текста нижнего колонтитула в вашем документе очень похож на предыдущий пример кода заголовка. Все, что вам нужно сделать, это заменить следующие две строки:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Со следующим:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Вы можете заметить разницу между документом перед применением замены нижнего колонтитула:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

И после применения замены нижнего колонтитула:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Игнорировать текст во время поиска и замены {#ignore-text-during-find-and-replace}

Применяя операцию поиска и замены, можно игнорировать определенные сегменты текста. Так, некоторые части текста могут быть исключены из поиска, а найти и заменить можно только оставшиеся части.

Aspose.Words предоставляет множество свойств поиска и замены для игнорирования текста. [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), и [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

Следующий пример кода показывает, как игнорировать текст внутри изменений удаления:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Настройка и замена операции {#customize-find-and-replace-operation}

Aspose.Words Предоставляет множество различных [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) находить и заменять текст, например, при использовании определенного формата; [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) и [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) свойств, используя замещения в моделях замены [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) собственности и других.

Следующий пример кода показывает, как выделить конкретное слово в вашем документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words позволяет вам использовать [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) интерфейс для создания и вызова пользовательского метода во время операции замены. У вас могут быть некоторые случаи использования, когда вам нужно настроить операцию поиска и замены, например, заменить текст, указанный обычным выражением, тегами HTML, поэтому в основном вы будете применять замену с вставкой HTML.

Если вам нужно заменить строку тегом HTML, примените **IReplacingCallback** Интерфейс для настройки операции поиска и замены, чтобы матч начинался в начале выполнения с узлом соответствия вашего документа. Приведем несколько примеров использования **IReplacingCallback**.

Следующий пример кода показывает, как заменить текст, указанный в HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Следующий пример кода показывает, как выделить положительные числа с зеленым цветом и отрицательные числа с красным цветом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Следующий пример кода показывает, как прикрепить номер строки к каждой строке:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
