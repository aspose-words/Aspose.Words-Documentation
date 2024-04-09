---
title: Работа с контрольными персонажами
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с контрольными персонажами
linktitle: Работа с контрольными персонажами
description: "Введение в работу с контрольными персонажами в Aspose.Words для Python."
type: docs
weight: 400
url: /ru/python-net/working-with-control-characters/
---

Microsoft Word Документы могут содержать различные символы, имеющие особое значение. Обычно они используются для форматирования и не рисуются в обычном режиме. Вы можете сделать их видимыми, если нажмете кнопку Show/Hide Formatting Marks, расположенную на панели инструментов Standard.

Иногда вам может потребоваться добавить или удалить символы в / из текста. Например, при программном получении текста из документа, Aspose.Words Сохраняет большинство управляющих символов, поэтому, если вам нужно работать с этим текстом, вы, вероятно, должны удалить или заменить символы.

The [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) Класс является хранилищем констант, которые представляют контрольные символы, часто встречающиеся в документах. Он предоставляет как char, так и струнные версии одних и тех же констант. Например, струна [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) и шар [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) имеет одинаковую ценность.

Следующий пример кода показывает, как использовать управляющие символы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
