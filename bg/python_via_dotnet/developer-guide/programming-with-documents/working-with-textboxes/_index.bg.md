---
title: Работа с текстови кутии в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с текстови кутии
linktitle: Работа с текстови кутии
description: "Работа с текстови кутии в документ, използвайки Python."
type: docs
weight: 250
url: /bg/python-net/working-with-textboxes/
---

В Aspose.Words, [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) Класът се използва, за да се уточни как текст се показва във форма. Той предоставя публична собственост, наречена [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) за да получите формата на родителя за текстовата кутия, за да може клиентът да намери връзка [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) от свързани [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/).

## Създаване на връзка

[TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) Класът осигурява [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) метод, за да се провери дали [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) може да бъде свързан с целевата текстова кутия.

Следният пример с код показва как да се провери дали `TextBox` може да бъде свързан с целевата текстова кутия:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Проверка на текст Поредица от клетки

Има няколко начина да се покаже текст във форма. На [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) може да бъде главата, средата или опашката на редица.

Следният пример за код показва как да се провери дали **TextBox** е глава, опашка или средата на поредицата:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Прекъсване на връзката

Използване на [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) метод можете да прекъснете връзката към следващия **TextBox**.

Следният пример с код показва как да прекъснете връзката за a **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
