---
title: Работа с Управляющими Символами
second_title: Aspose.Words для Java
articleTitle: Работа с Управляющими Символами
linktitle: Работа с Управляющими Символами
description: "Введение в работу с управляющими символами в Aspose.Words для Java."
type: docs
weight: 400
url: /ru/java/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word документы могут содержать различные символы, которые имеют особое значение. Обычно они используются для форматирования и не отображаются в обычном режиме. Вы можете сделать их видимыми, нажав кнопку Показать/скрыть знаки форматирования, расположенную на стандартной панели инструментов.

Иногда вам может потребоваться добавить или удалить символы в текст или из него. Например, при программном получении текста из документа Aspose.Words сохраняет большинство управляющих символов, поэтому, если вам нужно работать с этим текстом, вам, вероятно, следует удалить или заменить символы.

Класс [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) является хранилищем констант, которые представляют управляющие символы, часто встречающиеся в документах. Он предоставляет как char, так и string версии одних и тех же констант. Например, string [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) и char [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) имеют одинаковое значение.

{{% alert color="primary" %}}

Используйте этот класс всякий раз, когда вы хотите иметь дело с управляющими символами.

{{% /alert %}}

В следующем примере кода показано, как использовать управляющие символы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
