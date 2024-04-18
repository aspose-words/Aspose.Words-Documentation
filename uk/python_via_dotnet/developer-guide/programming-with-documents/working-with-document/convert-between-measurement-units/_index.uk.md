---
title: Перетворення між блоками вимірювання
second_title: Aspose.Words для Python via .NET
articleTitle: Перетворення між блоками вимірювання
linktitle: Перетворення між блоками вимірювання
description: "Aspose.Words для Python via .NET може допомогти вам, як конвертувати між блоками вимірювання, наприклад, дюйми в точки і точки в дюйми, пікселі в точки, точки в пікселів."
type: docs
weight: 20
url: /uk/python-net/convert-between-measurement-units/
---

Більшість властивостей об'єкта, що надаються в Aspose.Words API що представляють деякі вимірювання, такі як ширина або висота, запаси та різні відстані, приймають значення в точках, де 1 дюйм дорівнює 72 балах. Іноді це не зручно і очки потрібно перетворювати на інші одиниці.

Aspose.Words забезпечує [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) клас, який надає функції помічника для перетворення між різними блоками вимірювання. Він дозволяє конвертувати дюйми, пікселів і міліметри на точки, точки в дюйми і пікселів, і перетворення пікселів з одного дозволу на іншу. Перетворення пікселів в точки і навпаки може бути виконано в 96 dpi (доти в дюймі) роздільної здатності або вказаний дозвіл dpi.

Про нас [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) клас особливо корисний при встановленні різних властивостей сторінок, оскільки, наприклад, дюйми є більш загальними блоками вимірювання, ніж точки.

Приклад коду показує, як вказати властивості сторінок в дюймах:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
