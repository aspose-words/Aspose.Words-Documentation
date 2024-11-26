---
title: Преобразование между единицами Измерения
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразование между единицами Измерения
linktitle: Преобразование между единицами Измерения
description: "Aspose.Words для Python via .NET может помочь вам с преобразованием единиц измерения, например, дюймов в точки, точек в дюймах, пикселей в точках, точек в пикселях."
type: docs
weight: 20
url: /ru/python-net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Большинство свойств объектов, представленных в Aspose.Words API и представляющих некоторые измерения, такие как ширина или высота, поля и различные расстояния, принимают значения в пунктах, где 1 дюйм равен 72 точкам. Иногда это неудобно, и точки необходимо переводить в другие единицы измерения.

Aspose.Words предоставляет класс [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/), который предоставляет вспомогательные функции для преобразования между различными единицами измерения. Он позволяет преобразовывать дюймы, пиксели и миллиметры в точки, точки в дюймы и пиксели, а также преобразовывать пиксели из одного разрешения в другое. Преобразование пикселей в точки и наоборот может выполняться с разрешением 96 точек на дюйм (dpi) или с заданным разрешением dpi.

Класс [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) особенно полезен при настройке различных свойств страницы, поскольку, например, дюймы являются более распространенными единицами измерения, чем точки.

В следующем примере кода показано, как указать свойства страницы в дюймах:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
