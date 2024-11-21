---
title: Работа с контрольными персонажами
second_title: Aspose.Words для Java
articleTitle: Работа с контрольными персонажами
linktitle: Работа с контрольными персонажами
description: "Введение в работу с контрольными персонажами в Aspose.Words для Java."
type: docs
weight: 400
url: /ru/java/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word Документы могут содержать различные символы, имеющие особое значение. Обычно они используются для форматирования и не рисуются в обычном режиме. Вы можете сделать их видимыми, если нажмете кнопку Show/Hide Formatting Marks, расположенную на панели инструментов Standard.

Иногда вам может потребоваться добавить или удалить символы в / из текста. Например, при программном получении текста из документа, Aspose.Words Сохраняет большинство управляющих символов, поэтому, если вам нужно работать с этим текстом, вы, вероятно, должны удалить или заменить символы.

The [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) Класс является хранилищем констант, которые представляют контрольные символы, часто встречающиеся в документах. Он предоставляет как char, так и струнные версии одних и тех же констант. Например, струна [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) и шар [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) имеет одинаковую ценность.

{{% alert color="primary" %}}

Используйте этот класс, когда вы хотите иметь дело с контрольными символами.

{{% /alert %}}

Следующий пример кода показывает, как использовать управляющие символы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
