﻿---
title: Обработка метафайлов Windows на C++
second_title: Aspose.Words для C++
articleTitle: Обработка метафайлов Windows
linktitle: Обработка метафайлов Windows
description: "Aspose.Words для C++ реализован собственный проигрыватель метафайлов Windows для воспроизведения формата метафайла на всех платформах, поддерживает работу с основными функциями метафайла и может выполнять резервный переход к другому типу проигрывателя метафайлов."
type: docs
weight: 30
url: /ru/cpp/handling-windows-metafiles/
---

Формат метафайла Windows - это формат графических файлов, который может содержать как векторную, так и растровую графику. Этот формат используется для хранения графических данных в памяти или на диске. Метафайл хранит список вызовов функций в интерфейсе графических устройств Windows (GDI), которые должны быть выполнены для отображения изображения на экране. Система интерпретирует и выполняет эти команды в контексте отображения.

Ранее метафайл Windows был единственным форматом векторных изображений, поддерживаемым Microsoft Word. Microsoft Word теперь также поддерживает формат SVG, но формат метафайла по-прежнему широко используется в документах Word. Кроме того, метафайл может быть форматом обмена для некоторых других приложений, таких как Microsoft Visio. По сути, основное назначение метафайла - обеспечить обмен графической информацией между приложениями Windows.

Существует 3 версий метафайла Windows:

- WMF – сохраняет вызов 16-битного GDI.
- EMF – сохраняет вызов Win32/GDI.
- Метафайл EMF+ хранит вызов GDI+. Метафайл EMF+ также может быть двойным, описывая одну и ту же графику как с EMF, так и с EMF+ частями.

Существующая проблема с метафайлом Windows заключается в том, что он не поддерживается большинством форматов, отличных от Word, в которые обычно сохраняются документы. Поэтому требуется преобразовать формат метафайла в другие растровые или векторные форматы. Легко преобразовать метафайл Windows в растровое изображение в .NET, просто передав его в GDI+, но на других платформах это невозможно, поскольку даже GDI + не предоставляет функциональности для извлечения векторной графики из метафайла. Чтобы решить эти проблемы, Aspose.Words реализует свой собственный проигрыватель метафайлов Windows, который способен воспроизводить как векторную, так и растровую графику в формате метафайлов на всех платформах.

## Управление проигрывателем метафайлов Aspose.Words

Класс [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) позволяет управлять проигрывателем метафайлов. Например, вы можете определить, как должны отображаться изображения из метафайлов, используя свойство [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/), которое имеет особое значение при преобразовании в растровые изображения (см. также свойство [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)).

Сохранение в растровое изображение работает по-разному на платформах, отличных от .NET. Хотя рендеринг .NET GDI+ является эталонным и работает почти идеально даже для самых сложных форматов метафайлов, на других платформах он может вызывать проблемы или вообще не поддерживаться.

## Поддержка растровых операций

Операции с растрами - это сложная функция метафайла, которая в настоящее время имеет ограниченную поддержку. Операции с растрами доступны в форматах метафайлов WMF и EMF. Формат метафайла EMF+ не использует растровые операции напрямую, но может содержать части EMF, встроенные метафайлы WMF или EMF-файлов.

Существуют бинарные и троичные растровые операции:

- Бинарные растровые операции применяются к командам рисования пером, таким как рисование линий и кривых. При рисовании линии цвет пера комбинируется с цветом конечного растрового изображения (цветом соответствующего пикселя на поверхности устройства) с помощью определенных побитовых логических операций с шестнадцатеричными значениями цвета. Приведенный ниже пример изображения иллюстрирует эффект всех 16 бинарных растровых операций, примененных к 20 различным цветовым полосам. Сначала рисуются вертикальные цветные полосы, а горизонтальные полосы рисуются после применения каждой бинарной растровой операции. В простых случаях R2_BLACK рисует черным, R2_NOT меняет цвет на противоположный, R2_NOP не меняет фон, а R2_WHITE рисует белым.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- При рисовании растровых изображений применяются троичные растровые операции. Они объединяют цвета соответствующих пикселей растрового изображения, кисти и целевого растрового изображения с помощью побитовых логических операций с заданными шестнадцатеричными значениями цвета. Одной из наиболее распространенных целей использования троичных растровых операций является эмуляция прозрачности. Изображение, представленное в примере ниже, демонстрирует, как можно эмулировать прозрачность значка. Существует два типа растровых изображений: растровое изображение с черно-белой маской и цветное растровое изображение. Сначала с помощью операции SRCAND raster отрисовывается растровое изображение маски. Непрозрачная область значка изменяется на черно-белую, а прозрачная область остается неизменной. Затем с помощью операции SRCINVERT raster отрисовывается второе растровое изображение. Он отображает цветные пиксели на черной области, оставляя прозрачную область неизменной.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

Растровые операции не могут быть преобразованы непосредственно в векторную графику. Aspose.Words эмулирует растровые операции путем частичного растеризации поверхности устройства, на которую воздействуют растровые операции. Для этой цели используется свойство [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/).

{{% alert color="primary" %}}

Хотя бинарные растровые операции в настоящее время не поддерживаются, а Aspose.Words поддерживает ограниченное количество троичных растровых операций, он может напрямую обрабатывать основные случаи преобразования в векторную графику, например, R2_BLACK, R2_WHITE, R2_NOP. Кроме того, растеризация поверхности устройства существенно влияет на производительность, особенно когда задействовано значительное количество записей операций растрирования.

{{% /alert %}}

Приведенный ниже пример демонстрирует, как Aspose.Words преобразует метафайл в растровое изображение, когда невозможно корректно преобразовать некоторые записи метафайла в векторную графику:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## Резервные настройки метафайла

Aspose.Words не поддерживает ряд наиболее сложных или редких функций метафайла. Пользователи могут реализовать интерфейс [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) и получать предупреждающие сообщения. Если Aspose.Words обнаруживает неподдерживаемые функции в метафайле, он выдает предупреждающее сообщение с [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. В этом случае Aspose.Words может выполнить возврат к другому типу проигрывателя метафайлов. Также выдается предупреждающее сообщение о резервном варианте.

Во-первых, Aspose.Words выполняет переход от проигрывателя векторных метафайлов к растровому, который управляется свойством [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/). Если функция возврата отключена, Aspose.Words пытается отобразить некоторую графику-заменитель вместо функций, которые не поддерживаются.

Aspose.Words успешно преобразует метафайл в растр с помощью GDI+ в .NET, что делает этот вариант обратного вызова безопасным.

Во-вторых, для двойного метафайла EMF+ есть возможность отказаться от воспроизведения части EMF+ в пользу части EMF. Это регулируется параметром [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). Если при воспроизведении части EMF возникают какие-либо проблемы, то также может быть выполнен резервный переход к растру.

Что касается растровых операций, то если параметр [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) отключен, то растровые операции считаются неподдерживаемыми, что приводит к возврату к проигрывателю метафайлов bitmap, если он включен. Поэтому, если у вас есть метафайл с растровыми операциями, но вы не хотите использовать эмуляцию растровых операций и все же хотите получить векторный вывод с графикой подстановки, выберите [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.