---
title: Обработка Windows Метафильмы в C#
second_title: Aspose.Words для .NET
articleTitle: Обработка Windows Метафилы
linktitle: Обработка Windows Метафилы
description: "Aspose.Words для .NET реализует собственную Windows Metafile Player для воспроизведения формата Metafile на всех платформах и поддерживает обработку основных функций метафайла и может выполнять резервное копирование на другой тип метафайлового плеера с использованием C#."
type: docs
weight: 30
url: /ru/net/handling-windows-metafiles/
timestamp: 2024-07-10-14-38-57
---

Windows Формат Metafile - это формат файла изображения, который может содержать как векторную, так и растровую графику. Этот формат используется для хранения графических данных в памяти или файлах на диске. Метафайл хранит список вызовов функций в Windows Графический интерфейс устройства (GDI), который должен быть выполнен для отображения изображения на экране. Система интерпретирует и выполняет эти команды в контексте дисплея.

Раньше, Windows Metafile был единственным форматом векторного изображения, поддерживаемым Microsoft Word. Microsoft Word В настоящее время также поддерживается формат SVG, но формат метафайлов по-прежнему широко используется в документах Word. Кроме того, Metafile может быть форматом обмена для некоторых других приложений. Microsoft Визио. Основной целью Metafile является обеспечение обмена графической информацией между Windows приложения.

Существует 3 версии Windows Метафильм:

- WMF - магазины звонят в 16bit GDI.
- EMF - магазины звонят в Win32/GDI.
- Магазины EMF+ Metafile звонят в GDI+. EMF + Metafile также может быть двойным, описывая одну и ту же графику с частями EMF и EMF +.

Существующий вопрос с Windows Metafile не поддерживается большинством форматов, к которым обычно сохраняются документы. Поэтому необходимо преобразовать формат Metafile в другие растровые или векторные форматы. Легко конвертировать Windows Metafile для растрового изображения на .NET просто передавая его в GDI+, но это невозможно на других платформах, так как даже GDI+ не обеспечивает функциональность для извлечения векторной графики из Metafile. Для решения этих вопросов, Aspose.Words реализует собственную Windows Metafile Player, который способен воспроизводить формат Metafile как векторной, так и растровой графики на всех платформах.

## Контролировать Aspose.Words Игрок Metafile

The [MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/) Класс позволяет контролировать метафайл плеера. Например, вы можете определить, как изображения метафайлов должны быть визуализированы с помощью [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) свойство, которое имеет особое значение при преобразовании в растровые карты (см. [MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/) собственности).

Экономия на растровой карте работает иначе на платформах, чем .NET. Хотя .NET Рендеринг GDI+ - это ссылка, которая работает почти идеально даже для самого сложного формата метафайлов, на других платформах это может вызвать проблемы или вообще не поддерживаться.

## Поддержка растровых операций

Растровые операции - это сложная функция метафайла, которая в настоящее время имеет ограниченную поддержку. Растровые операции доступны в форматах метафайлов WMF и EMF. Формат метафайла EMF+ не использует растровые операции напрямую, но может содержать части ЭМП, встроенные метафайлы WMF или ЭМП.

Существуют бинарные и тройные растровые операции:

- Бинарные растровые операции применяются к командам рисования пером, таким как линии рисования и кривые. При прорисовке линии цвет ручки сочетается с цветом растровой карты назначения (цвет соответствующего пикселя на поверхности устройства) с помощью заданных по битам логических операций с значениями шести цветов. Приведенный ниже пример изображения иллюстрирует эффект всех 16 операций двоичного растра, применяемых к 20 различным цветовым полосам. Сначала рисуются вертикальные цветовые полосы, горизонтальные полосы рисуются после каждой операции бинарного растра. Для простых случаев, R2Черный чернеет, R2не переворачивает цвет, R2_NOP не изменяет фон, и R2Белый рисует белым.

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- Тернарные растровые операции применяются при рисовании растровых изображений. Они объединяют цвета соответствующих пикселей изображения растровой карты, кисти и растровой карты назначения, используя побитовые логические операции с заданными значениями шести цветов. Одной из наиболее распространенных целей использования тройных растровых операций является эмуляция прозрачности. Изображение, представленное в приведенном ниже примере, демонстрирует, как можно эмулировать прозрачность значка. Существует два типа растровых изображений: растровая карта маски b/w и растровая карта цвета. Во-первых, растровая карта маски рисуется с помощью растровой операции SRCAND. Он меняет область непрозрачных икон на черно-белую, оставляя прозрачную область неизменной. Затем вторая растровая карта рисуется с помощью растровой операции SRCINVERT. Он отображает цветовые пиксели на черной области, оставляя прозрачную область без изменений.

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-net-2" style="width:650px"/>

Растровые операции не могут быть преобразованы непосредственно в векторную графику. Aspose.Words эмулирует растровые операции путем частичной растеризации поверхности устройства, пораженной растровыми операциями. Для этой цели, [EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) используется собственность.

{{% alert color="primary" %}}

В то время как операции с бинарными растрами в настоящее время не поддерживаются и ограниченное количество операций с тернарными растрами поддерживаются. Aspose.Words, он может обрабатывать основные случаи преобразования в векторную графику непосредственно, например, R2Черный, R2Белый, R2Нет. Кроме того, растеризация поверхности устройства значительно влияет на производительность, особенно когда задействовано значительное количество записей об операции растра.

{{% /alert %}}

Приведенный ниже пример показывает, как Aspose.Words Отображает метафайл в растровую карту, когда невозможно правильно отобразить некоторые записи метафайла в векторной графике:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cs" >}}

## Настройки Metafile Fallback

Aspose.Words не поддерживает ряд функций метафайлов, которые являются наиболее сложными или редкими. Пользователи могут реализовать [IWarningCallBack](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) Интерфейс и получение предупреждающих сообщений. Если Aspose.Words сталкивается с неподдерживаемыми функциями в метафайле, выдает предупреждающее сообщение [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/).**Metafile**. В этом случае Aspose.Words может выполнять резервное копирование на другой тип проигрывателя метафайлов. Предупреждающее сообщение о запасе также выдается.

Во-первых, Aspose.Words выполняет откат от векторного метафильного плеера к растру, которым он управляется [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) собственность. Если функция резервного копирования отключена, Aspose.Words пытается воспроизвести некоторую графику замены вместо функций, которые не поддерживаются.

Aspose.Words успешно проигрывает метафайл в растр, используя GDI+ .NET, Что делает этот вариант обратного вызова безопасным.

Во-вторых, есть опция EMF+. Двойной метафайл, чтобы отыграть часть EMF + до части EMF. Он контролируется [EmfPlusDualRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emfplusdualrenderingmode/). Если есть некоторые проблемы, возникающие при игре части ЭМП, то также может быть выполнен возврат к растру.

Что касается растровых операций, то [EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) отключается, затем растровые операции рассматриваются как не поддерживаемые, что вызывает откат к растровому метафайловому проигрывателю, если он включен. Поэтому, если у вас есть метафайл с растровыми операциями, но вы не хотите использовать эмуляцию растровых операций и все же хотите получить векторный выход с замещающей графикой, то выберите [MetafileRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingmode/).**Vector**.
