---
title: Работа с диапазони в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с диапазони
linktitle: Работа с диапазони
description: "Въведение в гама функция в Aspose.Words вместо .NET."
type: docs
weight: 130
url: /bg/net/working-with-ranges/
---

{{% alert color="primary" %}}

В Aspose.Words, a Range е прозорец на пода в друг подобен на дърво модел на документа.

{{% /alert %}}

Ако сте работили с Microsoft Word Автоматизация, вероятно знаете, че един от основните инструменти за проучване и промяна на съдържанието на документа е **Range** Възразявам. **Range** е като "прозорец" в съдържанието на документа и форматирането.

Aspose.Words също има [Range](https://reference.aspose.com/words/net/aspose.words/range/) клас и е проектиран да изглежда и да действа подобно на **Range** в Microsoft Word. Въпреки че **Range** не може да покрие произволна част от документа и няма **Start** както и **End**, достъп до обхвата, обхванат от всеки документен възел, включително [Document](https://reference.aspose.com/words/net/aspose.words/document/) Самият той. С други думи, всеки възел има своя обхват. На **Range** обект ви позволява достъп и промяна на текст, отметки и форма полета в рамките на обхвата.

## Изтегляне на обикновен текст

Използвайте [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) собственост за извличане на обикновен, неформиран текст на обхвата.

Следният пример за код показва как да се получи обикновен, неформализиран текст на диапазон:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Изтриване на текст

Диапазонът позволява изтриването на всички символи от обхвата чрез призоваване [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

Следният пример с код показва как да се изтрият всички символи от обхват:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}