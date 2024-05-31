---
title: Перетворення між блоками вимірювання в C#
second_title: Aspose.Words для .NET
articleTitle: Перетворення між блоками вимірювання
linktitle: Перетворення між блоками вимірювання
description: "Aspose.Words для .NET може допомогти вам, як конвертувати між блоками вимірювання, наприклад, дюйми в точки і точки в дюйми, пікселів в точки, точки для пікселів, використовуючи C#й"
type: docs
weight: 20
url: /uk/net/convert-between-measurement-units/
---

Більшість властивостей об'єкта, що надаються в Aspose.Words API що представляють деякі вимірювання, такі як ширина або висота, запаси та різні відстані, приймають значення в точках, де 1 дюйм дорівнює 72 балах. Іноді це не зручно і очки потрібно перетворювати на інші одиниці.

Aspose.Words забезпечує [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) клас, який надає функції помічника для перетворення між різними блоками вимірювання. Дозволяє конвертувати:

- дюйми, пікселів, міліметри до точок
- точки в дюймах і пікселях
- пікселів з одного дозволу на іншу

Перетворення пікселів в точки і навпаки може бути виконано в 96 dpi (доти в дюймі) роздільної здатності або вказаний дозвіл dpi.

Про нас **ConvertUtil** клас особливо корисний при встановленні різних властивостей сторінок, оскільки, наприклад, дюйми є більш загальними блоками вимірювання, ніж точки.

Приклад коду показує, як вказати властивості сторінок в дюймах:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}