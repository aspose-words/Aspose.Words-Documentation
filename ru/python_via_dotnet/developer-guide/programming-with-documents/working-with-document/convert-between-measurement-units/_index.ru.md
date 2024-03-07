---
title: Преобразование между единицами измерения
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразование между единицами измерения
linktitle: Преобразование между единицами измерения
description: "Aspose.Words для Python via .NET может помочь вам конвертировать единицы измерения, например, дюймы в пункты и точки в дюймы, пиксели в точки, точки в пиксели."
type: docs
weight: 20
url: /ru/python-net/convert-between-measurement-units/
---

Большинство свойств объекта, представленных в Aspose.Words API, которые представляют собой некоторые измерения, такие как ширина или высота, поля и различные расстояния, принимают значения в пунктах, где 1 дюйм равен 72 пунктам. Иногда это неудобно и баллы приходится переводить в другие единицы.

Aspose.Words предоставляет класс [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/), который предоставляет вспомогательные функции для преобразования между различными единицами измерения. Он позволяет конвертировать дюймы, пиксели и миллиметры в точки, точки в дюймы и пиксели, а также преобразовывать пиксели из одного разрешения в другое. Преобразование пикселей в точки и наоборот можно выполнять с разрешением 96 точек на дюйм (точек на дюйм) или заданным разрешением dpi.

Класс [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) особенно полезен при настройке различных свойств страницы, поскольку, например, дюймы являются более распространенными единицами измерения, чем точки.

В следующем примере кода показано, как указать свойства страницы в дюймах:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
