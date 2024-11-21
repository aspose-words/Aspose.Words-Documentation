---
title: Преобразование между единицами измерения
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразование между единицами измерения
linktitle: Преобразование между единицами измерения
description: "Aspose.Words для Python via .NET Может помочь вам с тем, как преобразовать между единицами измерения, например, дюймы в точки и точки в дюймы, пиксели в точки, точки в пиксели."
type: docs
weight: 20
url: /ru/python-net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Большинство свойств объекта, представленных в Aspose.Words API которые представляют собой некоторые измерения, такие как ширина или высота, поля и различные расстояния, принимают значения в точках, где 1 дюйм равен 72 точкам. Иногда это неудобно и точки нужно переоборудовать в другие единицы.

Aspose.Words обеспечивает [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) Класс, который обеспечивает функции помощника для преобразования между различными единицами измерения. Он позволяет преобразовывать дюймы, пиксели и миллиметры в точки, точки в дюймы и пиксели и преобразовывать пиксели с одного разрешения в другое. Преобразование пикселей в точки и наоборот может быть выполнено с разрешением 96 dpi (точки на дюйм) или указанным разрешением dpi.

The [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) Класс особенно полезен при установке различных свойств страницы, потому что, например, дюймы являются более распространенными единицами измерения, чем точки.

Следующий пример кода показывает, как указать свойства страницы в дюймах:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
