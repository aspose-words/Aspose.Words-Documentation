---
title: Работа с контрольными персонажами
second_title: Aspose.Words для .NET
articleTitle: Работа с контрольными персонажами
linktitle: Работа с контрольными персонажами
description: "Введение в работу с контрольными персонажами в Aspose.Words для .NET."
type: docs
weight: 400
url: /ru/net/working-with-control-characters/
---

Microsoft Word Документы могут содержать различные символы, имеющие особое значение. Обычно они используются для форматирования и не рисуются в обычном режиме. Вы можете сделать их видимыми, если нажмете кнопку Show/Hide Formatting Marks, расположенную на панели инструментов Standard.

Иногда вам может потребоваться добавить или удалить символы в / из текста. Например, при программном получении текста из документа, Aspose.Words Сохраняет большинство управляющих символов, поэтому, если вам нужно работать с этим текстом, вы, вероятно, должны удалить или заменить символы.

The [ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/) Класс является хранилищем констант, которые представляют контрольные символы, часто встречающиеся в документах. Он предоставляет как char, так и струнные версии одних и тех же констант. Например, струна [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) и шар [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) имеет одинаковую ценность.

Следующий пример кода показывает, как использовать управляющие символы:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
