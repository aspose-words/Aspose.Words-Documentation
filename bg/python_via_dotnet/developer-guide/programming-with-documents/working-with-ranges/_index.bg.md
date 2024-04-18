---
title: Работа с диапазони в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с диапазони
linktitle: Работа с диапазони
description: "Работа с диапазони в документ, използвайки Python."
type: docs
weight: 130
url: /bg/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

В Aspose.Words, a [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) е надуваем прозорец в друг подобен на дърво модел на документа.

{{% /alert %}}

Ако сте работили с Microsoft Word Автоматизация, вероятно знаете, че един от основните инструменти за проучване и промяна на съдържанието на документа е [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) Възразявам. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) е като "прозорец" в съдържанието на документа и форматирането. Aspose.Words също има [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) клас и е проектиран да изглежда и да действа подобно на **Range** в Microsoft Word. Въпреки че **Range** не може да покрие произволна част от документа и няма **Start** както и **End**, достъп до обхвата, обхванат от всеки документен възел, включително [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Самият той. С други думи, всеки възел има своя обхват. На [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) обект ви позволява достъп и промяна на текст, отметки и форма полета в рамките на обхвата.

## Изтегляне на обикновен текст

Използвайте [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) собственост за извличане на обикновен, неформиран текст на обхвата.

Следният пример за код показва как да се получи обикновен, неформализиран текст на диапазон:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Изтриване на текст

Диапазонът позволява изтриването на всички символи от обхвата чрез призоваване [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

Следният пример с код показва как да се изтрият всички символи от обхват:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}