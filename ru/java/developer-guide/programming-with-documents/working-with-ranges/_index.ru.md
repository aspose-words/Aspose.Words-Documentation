---
title: Работа с диапазонами в Java
second_title: Aspose.Words для Java
articleTitle: Работа с диапазонами
linktitle: Работа с диапазонами
description: "Введение в функцию диапазона в Aspose.Words для Java."
type: docs
weight: 130
url: /ru/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

В Aspose.Words диапазон представляет собой "плоское окно" в древовидной модели документа.

{{% /alert %}}

Если вы работали с системой автоматизации Microsoft Word, то, вероятно, знаете, что одним из основных инструментов для изучения и изменения содержимого документа является объект `Range`.Диапазон - это своего рода "окно" в содержимое и форматирование документа.

Aspose.Words также имеет класс [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) и спроектирован так, чтобы выглядеть и действовать аналогично **Range** в Microsoft Word. Хотя **Range** не может охватывать произвольную часть документа и не содержит **Start** и **End**, вы можете получить доступ к диапазону, охватываемому любым узлом документа, включая сам [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Другими словами, каждый узел имеет свой собственный диапазон. Объект **Range** позволяет вам получать доступ к тексту, закладкам и полям формы в пределах диапазона и изменять их.

## Извлечение обычного текста

Используйте свойство [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText), чтобы получить обычный неформатированный текст диапазона.

В следующем примере кода показано, как получить простой неформатированный текст из диапазона:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Удалить текст

Класс `Range` позволяет удалять все символы из диапазона, вызывая [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

В следующем примере кода показано, как удалить все символы из диапазона:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


