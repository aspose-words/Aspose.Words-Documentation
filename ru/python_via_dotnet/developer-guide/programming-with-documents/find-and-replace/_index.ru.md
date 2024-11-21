---
title: Найти и заменить в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Найти и заменить
linktitle: Найти и заменить
type: docs
description: "Найдите строку или шаблон регулярного выражения в вашем документе и замените его текстом, который вы хотите использовать. Python."
weight: 100
url: /ru/python-net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Вы можете легко перемещаться по документу с помощью клавиатуры и мыши, но если у вас есть много страниц для прокрутки, потребуется довольно много времени, чтобы найти конкретный текст в длинном документе. Это займет больше времени, если вы хотите заменить определенные символы или слова, которые вы использовали в своем документе. Функция "Найти и заменить" позволяет найти последовательность символов в документе и заменить ее другой последовательностью символов.

Aspose.Words позволяет найти определенную строку или шаблон регулярного выражения в документе и заменить его альтернативой без установки и использования дополнительных приложений, таких как: Microsoft Word. Это ускорит многие задачи набора и форматирования, что потенциально сэкономит вам часы работы.

В этой статье объясняется, как применять замену строк и регулярные выражения с поддержкой метахарактеров.

## Способы найти и заменить {#ways-to-find-and-replace}

Aspose.Words Предусмотрены два способа применения операции нахождения и замены с использованием следующего:

1. *Простая замена строки* - чтобы найти и заменить конкретную строку другой, необходимо указать поисковую строку (альфа-цифровые символы), которая будет заменена в соответствии со всеми событиями другой указанной заменой строки. Обе строки не должны содержать символов. Учтите, что сравнение строк может быть чувствительным к случаю, или вы можете быть не уверены в правописании или иметь несколько похожих правописаний.
2. *Регулярные выражения * - указать регулярное выражение, чтобы найти точные совпадения строк и заменить их в соответствии с вашим регулярным выражением. Обратите внимание, что слово определяется как состоящее только из буквенно-цифровых символов. Если замена выполняется только целыми словами и строка ввода содержит символы, то фразы не будут найдены.

Кроме того, вы можете использовать специальные метахарактеры с простой заменой строки и регулярными выражениями, чтобы указать перерывы в операции поиска и замены.

Aspose.Words Найти и заменить функциональность на [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/) Модуль. Вы можете работать со многими вариантами во время процесса поиска и замены. [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) класс.

### Найти и заменить текст с помощью простой замены строки {#find-and-replace-text-using-simple-string-replacement}

Вы можете использовать один из [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) и [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) Способы поиска или замены конкретной строки и возврата количества произведенных замен. В этом случае вы можете указать строку, которая будет заменена, строку, которая заменит все ее события, является ли замена чувствительной к случаю, и будут ли затронуты только отдельные слова.

Следующий пример кода показывает, как найти строку "_CustomerName_" и заменить ее строкой * "James Bond"*:

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

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

И после применения простой замены струны:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Найти и заменить текст с помощью регулярных выражений {#find-and-replace-text-using-regular-expressions}

Регулярное выражение - это шаблон, описывающий определенную последовательность текста. Допустим, вы хотите заменить все двойные случаи слова на одно слово. Затем вы можете применить следующее регулярное выражение, чтобы указать шаблон с двумя словами: `([a-zA-Z]+) \1`.

Используйте [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) Способ поиска и замены определенных комбинаций символов путем установки параметра регулярного выражения в качестве шаблона для поиска совпадений.

Следующий пример кода показывает, как заменить строки, которые соответствуют обычному шаблону выражения, определенной строкой замены:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Вы можете заметить разницу между документом перед применением замены строки с регулярными выражениями:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

А после нанесения замены строки регулярными выражениями:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Найти и заменить строку с помощью метахарактеров {#find-and-replace-text-using-metacharacters}

Вы можете использовать метасимволы в строке поиска или строке замены, если конкретный текст или фраза состоит из нескольких абзацев, разделов или страниц. Некоторые метахарактеры включают **&p** для перерыва в абзаце, **&b** для перерыва в секции, **&м** для перерыва страницы, и **&л** Для перерыва.

{{% alert color="primary" %}}

Обратите внимание, что метахарактер **&&** равным **&**. Например, если вам нужно найти текст для **&p** Это не пункт перерыва, то вы можете использовать **&p&p**.

{{% /alert %}}

Следующий пример кода показывает, как заменить текст абзацем и перерывом страницы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Найти и заменить строку в заголовке / футере документа {#find-and-replace-string-in-header-or-footer-of-a-document}

Вы можете найти и заменить текст в разделе заголовка / футера документа Word, используя [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) класс.

Следующий пример кода показывает, как заменить текст раздела заголовка в вашем документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Вы можете заметить разницу между документом перед применением замены строки заголовка:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

И после применения замены струны заголовка:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

Пример кода для замены текста нижнего колонтитула в вашем документе очень похож на предыдущий пример кода заголовка. Все, что вам нужно сделать, это заменить следующие две строки:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Со следующим:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Вы можете заметить разницу между документом перед применением замены нижнего колонтитула:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

И после применения замены нижнего колонтитула:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Игнорировать текст во время поиска и замены {#ignore-text-during-find-and-replace}

Применяя операцию поиска и замены, можно игнорировать определенные сегменты текста. Так, некоторые части текста могут быть исключены из поиска, а найти и заменить можно только оставшиеся части.

Aspose.Words предоставляет множество свойств поиска и замены для игнорирования текста. [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/), и [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

Следующий пример кода показывает, как игнорировать текст внутри изменений удаления:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Настройка и замена операции {#customize-find-and-replace-operation}

Aspose.Words предоставляет множество различных свойств для поиска и замены текста, таких как применение определенного формата. [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) и [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/) свойств, используя замещения в моделях замены [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) собственности и других.

Следующий пример кода показывает, как выделить конкретное слово в вашем документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
