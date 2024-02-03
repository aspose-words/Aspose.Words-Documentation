---
title: Работа с управляющими символами
second_title: Aspose.Words для .NET
articleTitle: Работа с управляющими символами
linktitle: Работа с управляющими символами
description: "Введение в работу с управляющими символами в Aspose.Words для .NET."
type: docs
weight: 400
url: /ru/net/working-with-control-characters/
---

Документы Microsoft Word могут содержать различные символы, имеющие особое значение. Обычно они используются для форматирования и не рисуются в обычном режиме. Вы можете сделать их видимыми, нажав кнопку "Показать/Скрыть знаки форматирования", расположенную на стандартной панели инструментов.

Иногда вам может потребоваться добавить или удалить символы в тексте. Например, при программном получении текста из документа Aspose.Words сохраняет большую часть управляющих символов, поэтому, если вам нужно работать с этим текстом, вам, вероятно, следует удалить или заменить символы.

Класс [ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/) — это хранилище констант, представляющих управляющие символы, часто встречающиеся в документах. Он предоставляет как символьные, так и строковые версии одних и тех же констант. Например, строка [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) и символ [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) имеют одинаковое значение.

В следующем примере кода показано, как использовать управляющие символы:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
