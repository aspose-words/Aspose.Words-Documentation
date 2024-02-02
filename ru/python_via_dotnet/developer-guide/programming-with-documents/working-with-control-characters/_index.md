---
title: Работа с управляющими символами
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с управляющими символами
linktitle: Работа с управляющими символами
description: "Введение в работу с управляющими символами в Aspose.Words для Python."
type: docs
weight: 400
url: /ru/python-net/working-with-control-characters/
---

Microsoft Word документов могут содержать различные символы, имеющие особое значение. Обычно они используются для форматирования и не рисуются в обычном режиме. Вы можете сделать их видимыми, нажав кнопку "Показать/Скрыть знаки форматирования", расположенную на стандартной панели инструментов.

Иногда вам может потребоваться добавить или удалить символы в тексте. Например, при программном получении текста из документа Aspose.Words сохраняет большую часть управляющих символов, поэтому, если вам нужно работать с этим текстом, вам, вероятно, следует удалить или заменить символы.

Класс [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) — это хранилище констант, представляющих управляющие символы, часто встречающиеся в документах. Он предоставляет как символьные, так и строковые версии одних и тех же констант. Например, строка [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) и символ [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) имеют одинаковое значение.

В следующем примере кода показано, как использовать управляющие символы:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
