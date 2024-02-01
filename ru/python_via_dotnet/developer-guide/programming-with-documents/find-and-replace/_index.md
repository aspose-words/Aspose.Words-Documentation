---
title: Найти и заменить в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Найти и заменить
linktitle: Найти и заменить
type: docs
description: "Найдите в документе строку или шаблон регулярного выражения и замените его нужным текстом, используя Python."
weight: 100
url: /ru/python-net/find-and-replace/
---

Вы можете легко перемещаться по документу с помощью клавиатуры и мыши, но если вам нужно пролистывать много страниц, поиск определенного текста в длинном документе займет немало времени. Это займет больше времени, если вы захотите заменить определенные символы или слова, которые вы использовали в своем документе. Функционал "Найти и заменить" позволяет найти последовательность символов в документе и заменить ее другой последовательностью символов.

Aspose.Words позволяет вам найти определенную строку или шаблон регулярного выражения в вашем документе и заменить его альтернативой без установки и использования дополнительных приложений, таких как Microsoft Word. Это ускорит выполнение многих задач по набору текста и форматированию, потенциально сэкономив вам часы работы.

В этой статье объясняется, как применять замену строк и регулярные выражения с поддержкой метасимволов.

## Способы найти и заменить {#ways-to-find-and-replace}

Aspose.Words предоставляет два способа применения операций поиска и замены, используя следующее:

1. *Простая замена строки* — для поиска и замены определенной строки на другую необходимо указать строку поиска (буквенно-цифровые символы), которая будет заменена по всем вхождениям на другую указанную строку замены. Обе строки не должны содержать символы. Учтите, что сравнение строк может быть чувствительным к регистру, или вы можете быть не уверены в написании или иметь несколько похожих написаний.
2. *Регулярные выражения* — укажите регулярное выражение, чтобы найти точные совпадения строк и заменить их в соответствии с вашим регулярным выражением. Обратите внимание, что слово определяется как состоящее только из буквенно-цифровых символов. Если замена выполняется только с совпадением целых слов и входная строка содержит символы, то фразы найдены не будут.

Кроме того, вы можете использовать специальные метасимволы с простой заменой строк и регулярные выражения, чтобы указать разрывы в операции поиска и замены.

Aspose.Words представляет функцию поиска и замены с помощью модуля [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/). Вы можете работать со многими параметрами в процессе поиска и замены, используя класс [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Поиск и замена текста с помощью простой замены строк {#find-and-replace-text-using-simple-string-replacement}

Вы можете использовать один из методов [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) и [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/), чтобы найти или заменить определенную строку и вернуть количество сделанных замен. В этом случае вы можете указать строку, которая будет заменена, строку, которая заменит все ее вхождения, будет ли замена учитывать регистр и будут ли затронуты только отдельные слова.

В следующем примере кода показано, как найти строку "_CustomerName_" и заменить ее строкой * "Джеймс Бонд"*:

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

Вы можете заметить разницу между документом перед применением простой замены строки:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="перед простой заменой строки" style="width:600px"/>

И после применения простой замены строки:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="после простой замены строки" style="width:600px"/>

### Поиск и замена текста с помощью регулярных выражений {#find-and-replace-text-using-regular-expressions}

Регулярное выражение — это шаблон, описывающий определенную последовательность текста. Предположим, вы хотите заменить все двойные вхождения слова одним вхождением слова. Затем вы можете применить следующее регулярное выражение, чтобы указать шаблон двойного слова: `([a-zA-Z]+) \1`.

Используйте метод [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) для поиска и замены определенных комбинаций символов, задав параметр регулярного выражения в качестве шаблона для поиска совпадений.

В следующем примере кода показано, как заменить строки, соответствующие шаблону регулярного выражения, указанной строкой замены:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Вы можете заметить разницу между документом перед применением замены строк регулярными выражениями:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="перед заменой регулярными выражениями" style="width:600px"/>

И после применения замены строк регулярными выражениями:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="после замены регулярными выражениями" style="width:600px"/>

### Найти и заменить строку с помощью метасимволов {#find-and-replace-text-using-metacharacters}

Вы можете использовать метасимволы в строке поиска или строке замены, если определенный текст или фраза состоит из нескольких абзацев, разделов или страниц. Некоторые из метасимволов включают **&amp;п** для разрыва абзаца, **&amp;б** для разрыва раздела, **&amp;м** для разрыва страницы и **&amp;л** для разрыва строки.

{{% alert color="primary" %}}

Обратите внимание, что метасимвол **&&** равен **&**. Например, если вам нужно найти текст для **&amp;п**, который не является разрывом абзаца, вы можете использовать **&amp;&amp;п**.

{{% /alert %}}

В следующем примере кода показано, как заменить текст абзацем и разрывом страницы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Найти и заменить строку в верхнем или нижнем колонтитуле документа {#find-and-replace-string-in-header-or-footer-of-a-document}

Вы можете найти и заменить текст в разделе верхнего и нижнего колонтитула документа Word, используя класс [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/).

В следующем примере кода показано, как заменить текст раздела заголовка в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Вы можете заметить разницу между документом перед применением замены строки заголовка:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="перед применением замены строки заголовка" style="width:600px"/>

И после применения замены строки заголовка:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="замена строки заголовка после применения" style="width:600px"/>

Пример кода для замены текста нижнего колонтитула в документе очень похож на предыдущий пример кода заголовка. Все, что вам нужно сделать, это заменить следующие две строки:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Со следующим:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Вы можете заметить разницу между документом перед применением замены строки нижнего колонтитула:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="перед применением замены строки нижнего колонтитула" style="width:600px"/>

И после применения замены строки нижнего колонтитула:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="замена строки-нижнего колонтитула после применения" style="width:600px"/>

## Игнорировать текст во время поиска и замены {#ignore-text-during-find-and-replace}

Применяя операцию поиска и замены, вы можете игнорировать определенные сегменты текста. Так, отдельные части текста можно исключить из поиска, а поиск и замену применить только к оставшимся частям.

Aspose.Words предоставляет множество свойств поиска и замены для игнорирования текста, таких как [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/) и [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

В следующем примере кода показано, как игнорировать текст внутри удаляемых ревизий:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Настройка операции поиска и замены {#customize-find-and-replace-operation}

Aspose.Words предоставляет множество различных свойств для поиска и замены текста, например применение определенного формата со свойствами [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) и [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/), использование замен в шаблонах замены свойством [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) и другие.

В следующем примере кода показано, как выделить определенное слово в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
