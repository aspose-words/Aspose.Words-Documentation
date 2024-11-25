---
title: Найти и заменить в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Найти и заменить
linktitle: Найти и заменить
type: docs
description: "Найдите в своем документе строку или шаблон регулярного выражения и замените его нужным текстом, используя Python."
weight: 100
url: /ru/python-net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Вы можете легко перемещаться по документу с помощью клавиатуры и мыши, но если вам нужно пролистать много страниц, поиск определенного текста в длинном документе займет довольно много времени. Если вы захотите заменить определенные символы или слова, которые вы использовали в документе, это займет больше времени. Функция "Найти и заменить" позволяет вам найти последовательность символов в документе и заменить ее другой последовательностью символов.

Aspose.Words позволяет найти в документе определенную строку или шаблон регулярного выражения и заменить его альтернативным вариантом без установки и использования дополнительных приложений, таких как Microsoft Word. Это ускорит выполнение многих задач по набору текста и форматированию, что потенциально сэкономит вам часы работы.

В этой статье объясняется, как применять замену строк и регулярные выражения с поддержкой метасимволов.

## Способы поиска и замены {#ways-to-find-and-replace}

Aspose.Words предоставляет два способа применить операцию поиска и замены, используя следующие:

1. *Simple string replacement* – чтобы найти и заменить определенную строку на другую, вам необходимо указать строку поиска (буквенно-цифровые символы), которая будет заменена в соответствии со всеми появлениями другой указанной заменяющей строкой. Обе строки не должны содержать символов. Примите во внимание, что сравнение строк может быть чувствительным к регистру, или вы можете быть не уверены в правильности написания, или у вас может быть несколько похожих вариантов написания.
2. *Regular expressions* – чтобы задать регулярное выражение для поиска точных совпадений строк и замены их в соответствии с вашим регулярным выражением. Обратите внимание, что слово определяется как состоящее только из буквенно-цифровых символов. Если замена выполняется с сопоставлением только целых слов, а входная строка содержит символы, то никакие фразы найдены не будут.

Кроме того, вы можете использовать специальные метасимволы с простой заменой строк и регулярные выражения для указания разрывов в рамках операции поиска и замены.

В Aspose.Words представлены функции поиска и замены с помощью модуля [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/). В процессе поиска и замены вы можете работать со многими параметрами, используя класс [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Найдите и замените текст с помощью простой замены строки {#find-and-replace-text-using-simple-string-replacement}

Вы можете использовать один из методов [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) и [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/), чтобы найти или заменить определенную строку и вернуть количество выполненных замен. В этом случае вы можете указать строку, подлежащую замене, строку, которая заменит все свои вхождения, будет ли замена чувствительна к регистру и будут ли затронуты только отдельные слова.

В следующем примере кода показано, как найти строку "_CustomerName_" и заменить ее строкой *"James Bond"*:

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

Вы можете заметить разницу между документами, прежде чем применять простую замену строк:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

И после применения простой замены строки:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Поиск и замена текста с помощью регулярных выражений {#find-and-replace-text-using-regular-expressions}

Регулярное выражение - это шаблон, который описывает определенную последовательность текста. Предположим, вы хотите заменить все двойные вхождения слова одним вхождением слова. Затем вы можете применить следующее регулярное выражение для указания шаблона из двух слов: `([a-zA-Z]+) \1`.

Используйте метод [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) для поиска и замены определенных комбинаций символов, установив параметр регулярного выражения в качестве шаблона для поиска совпадений.

В следующем примере кода показано, как заменить строки, соответствующие шаблону регулярного выражения, указанной заменяющей строкой:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Вы можете заметить разницу между документами, прежде чем применять замену строк регулярными выражениями:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

И после применения замены строк регулярными выражениями:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Найдите и замените строку с помощью метасимволов {#find-and-replace-text-using-metacharacters}

Вы можете использовать метасимволы в строке поиска или в строке замены, если определенный текст или фраза состоят из нескольких абзацев, разделов или страниц. Некоторые из метасимволов включают **&p** для обозначения разрыва абзаца, **&b** для обозначения разрыва раздела, **&m** для обозначения разрыва страницы и **&l** для обозначения разрыва строки.

{{% alert color="primary" %}}

Обратите внимание, что метасимвол **&&** равен **&**. Например, если вам нужно найти текст для **&p**, который не является разрывом абзаца, то вы можете использовать **&&p**.

{{% /alert %}}

В следующем примере кода показано, как заменить текст абзацем и разрывом страницы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Найти и заменить строку в верхнем/нижнем колонтитуле документа {#find-and-replace-string-in-header-or-footer-of-a-document}

Вы можете найти и заменить текст в верхнем и нижнем колонтитулах документа Word, используя класс [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/).

В следующем примере кода показано, как заменить текст раздела заголовка в вашем документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Вы можете заметить разницу между документами до применения замены строки заголовка:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

И после применения замены строки заголовка:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

Пример кода для замены текста нижнего колонтитула в вашем документе очень похож на предыдущий пример кода верхнего колонтитула. Все, что вам нужно сделать, это заменить следующие две строки:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Со следующим:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Вы можете заметить разницу между документами до того, как примените замену строки нижнего колонтитула:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

И после применения замены строки нижнего колонтитула:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Игнорировать текст во время поиска и замены {#ignore-text-during-find-and-replace}

Применяя операцию поиска и замены, вы можете игнорировать определенные фрагменты текста. Таким образом, определенные части текста могут быть исключены из поиска, а поиск и замена могут быть применены только к оставшимся частям.

Aspose.Words предоставляет множество свойств поиска и замены для игнорирования текста, таких как [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/) и [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

В следующем примере кода показано, как игнорировать текст внутри изменений удаления:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Настройка операции поиска и замены {#customize-find-and-replace-operation}

Aspose.Words предоставляет множество различных свойств для поиска и замены текста, таких как применение определенного формата со свойствами [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) и [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/), использование подстановок в шаблонах замены со свойством [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) и другие.

В следующем примере кода показано, как выделить определенное слово в вашем документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
