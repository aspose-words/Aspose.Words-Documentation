---
title: Работа с Управляющими Символами
second_title: Aspose.Words для C++
articleTitle: Работа с Управляющими Символами
linktitle: Работа с Управляющими Символами
description: "Введение в работу с управляющими символами в Aspose.Words для C++."
type: docs
weight: 400
url: /ru/cpp/working-with-control-characters/
---

Документы Microsoft Word могут содержать различные символы, которые имеют особое значение. Обычно они используются для форматирования и не отображаются в обычном режиме. Вы можете сделать их видимыми, нажав кнопку Показать/скрыть знаки форматирования, расположенную на стандартной панели инструментов.

Иногда вам может потребоваться добавить или удалить символы в текст или из него. Например, при программном получении текста из документа Aspose.Words сохраняет большинство управляющих символов, поэтому, если вам нужно работать с этим текстом, вам, вероятно, следует удалить или заменить символы.

Класс [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) является хранилищем констант, которые представляют управляющие символы, часто встречающиеся в документах. Он предоставляет как char, так и string версии одних и тех же констант. Например, string [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) и char **ControlChar.LineBreakChar** имеют одинаковое значение.

В следующем примере кода показано, как использовать управляющие символы:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}