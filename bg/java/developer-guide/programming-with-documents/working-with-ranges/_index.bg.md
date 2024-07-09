---
title: Работа с диапазони в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с диапазони
linktitle: Работа с диапазони
description: "Въведение в Range функция в Aspose.Words вместо Java."
type: docs
weight: 130
url: /bg/java/working-with-ranges/
---

{{% alert color="primary" %}}

В Aspose.Words, a Range е прозорец на пода в друг подобен на дърво модел на документа.

{{% /alert %}}

Ако сте работили с Microsoft Word Автоматизация, вероятно знаете, че един от основните инструменти за проучване и промяна на съдържанието на документа е `Range` Възразявам. Обхватът е като "прозорец" в съдържанието на документа и форматирането.

Aspose.Words също има [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) клас и е проектиран да изглежда и да действа по подобен начин **Range** в Microsoft Word. Въпреки че **Range** не може да покрие произволна част от документа и няма **Start** както и **End**, достъп до обхвата, обхванат от всеки документен възел, включително [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Самият той. С други думи, всеки възел си има обхват. На **Range** обект ви позволява достъп и промяна на текст, отметки и форма полета в рамките на обхвата.

## Изтегляне на обикновен текст

Използвайте [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) собственост за извличане на обикновен, неформализиран текст на обхвата.

Следният пример за код показва как да се получи обикновен, неформализиран текст на диапазон:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Изтриване на текст

На `Range` клас позволява заличаването на всички символи от обхвата чрез повикване [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

Следният пример за код показва как да изтриете всички символи от диапазон:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 