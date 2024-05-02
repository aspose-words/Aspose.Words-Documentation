---
title: Работа с диапазонами в Java
second_title: Aspose.Words для Java
articleTitle: Работа с диапазонами
linktitle: Работа с диапазонами
description: "Введение в Range Feature in Aspose.Words для Java."
type: docs
weight: 130
url: /ru/java/working-with-ranges/
---

{{% alert color="primary" %}}

В Aspose.Words, Диапазон - это "плоское окно" в древовидную модель документа.

{{% /alert %}}

Если вы работали с Microsoft Word Автоматизация, вы, вероятно, знаете, что одним из основных инструментов для изучения и изменения содержания документа является `Range` объект. Диапазон похож на "окно" в содержание и форматирование документа.

Aspose.Words также имеет [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) класс, и он предназначен для того, чтобы выглядеть и действовать аналогично **Range** в Microsoft Word. Хотя **Range** не может охватывать произвольную часть документа и не имеет **Start** и **End**, Вы можете получить доступ к диапазону, охватываемому любым узлом документа, включая [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) себя. Другими словами, каждый узел имеет свой диапазон. The **Range** Объект позволяет получать доступ и изменять текст, закладки и поля формы в пределах диапазона.

## Восстановление простого текста

Используйте [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) свойство извлекать простой, неформатированный текст диапазона.

Следующий пример кода показывает, как получить простой, неформатированный текст диапазона:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Удалить текст

The `Range` Класс позволяет удалять все символы диапазона путем вызова [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

Следующий пример кода показывает, как удалить все символы диапазона:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 