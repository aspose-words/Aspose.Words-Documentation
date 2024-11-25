---
title: Работа с Управляющими Символами
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с Управляющими Символами
linktitle: Работа с Управляющими Символами
description: "Введение в работу с управляющими символами в Aspose.Words для Python."
type: docs
weight: 400
url: /ru/python-net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word документы могут содержать различные символы, которые имеют особое значение. Обычно они используются для форматирования и не отображаются в обычном режиме. Вы можете сделать их видимыми, нажав кнопку Показать/скрыть знаки форматирования, расположенную на стандартной панели инструментов.

Иногда вам может потребоваться добавить или удалить символы в текст или из него. Например, при программном получении текста из документа Aspose.Words сохраняет большинство управляющих символов, поэтому, если вам нужно работать с этим текстом, вам, вероятно, следует удалить или заменить символы.

Класс [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) является хранилищем констант, которые представляют управляющие символы, часто встречающиеся в документах. Он предоставляет как char, так и string версии одних и тех же констант. Например, string [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) и char [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) имеют одинаковое значение.

Следующий пример кода демонстрирует, как использовать управляющие символы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
