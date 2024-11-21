---
title: Что нового
second_title: Aspose.Words для C++
articleTitle: Что нового в Aspose.Words для C++
linktitle: Что нового в Aspose.Words для C++
type: docs
description: "Aspose.Words для C++ с каждым днем расширяется и усовершенствуется. На этой странице вы можете узнать об основных и наиболее интересных возможностях продукта."
weight: 2
url: /ru/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

На этой странице описаны наиболее интересные новые функции Aspose.Words, появившиеся в последних версиях.

## Aspose.Words для C++ 24.9

В Aspose.Words 24.9 введено group shape вставок и StructuredDocumentTag вставок с помощью DocumentBuilder, улучшен рендеринг радиальных диаграмм с градуировкой, улучшены цифровые подписи с поддержкой XAdES-EPES, добавлено распознавание подчеркивания Markdown и предоставлен доступ к разделителям сносок и концевых примечаний.

### Рендеринг и печать

#### Градуировка на радиальных диаграммах

Реализован рендеринг градаций на радиальных диаграммах.

### Преобразование, загрузка и сохранение документов

#### Подчеркивание форматирования при загрузке файлов Markdown

Возможность распознавать форматирование с подчеркиванием при загрузке документов Markdown была реализована путем добавления нового общедоступного свойства [ImportUnderlineFormatting]().

### Цифровые подписи

#### Подписывайте документы с помощью XAdES-EPES

Возможность подписывать документы с помощью XAdXML-подписей уровня ES-EPES-DSig была реализована путем добавления нового общедоступного свойства [XmlDsigLevel]() и нового общедоступного перечисления [XmlDsigLevel]().

### Другой

* В group shapes был добавлен новый общедоступный метод [InsertGroupShape]().
* Был добавлен новый общедоступный метод [InsertStructuredDocumentTag]() для вставки **StructuredDocumentTags** в документ.
* Открытый доступ к разделителям сносок и концевых примечаний был обеспечен путем добавления нескольких общедоступных классов и свойств.

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для C++ 24.9 Примечания к выпуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words для C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 расширяет возможности для сборок, улучшает возможности рендеринга и расширяет некоторые другие возможности.

Aspose.Words 24.6 улучшает параметры рендеринга, расширяет возможности поиска и сравнения, а также расширяет ряд других функций.

Aspose.Words 24.7 изменяет способ работы с ActiveX, расширяет возможности рендеринга, а также экспорта в форматы Markdown и XLSX.

### Поддерживаемые форматы

Начиная с версии 24.7, поддерживается экспорт в PDF/UA-2 для обеспечения доступности для пользователей с ограниченными возможностями.

### Рендеринг и печать

#### Изменения в диаграммах, фигурах и DrawingML <sup>24.5</sup>

- Реализован рендеринг эффектов DrawingML для SVG-графики, расширяющий предыдущую функциональность, ограниченную изображениями.
- Поддержка создания комбинированных диаграмм и настройки таких свойств, как ширина промежутка, перекрытие и пузырьковый масштаб, в группах рядов была реализована путем добавления классов **ChartSeriesGroup** и **ChartSeriesGroupCollection**, а также свойства **SeriesGroups**.
- Функциональность для управления эффектом SoftEdge фигур была реализована путем добавления класса **SoftEdgeFormat**.
- Возможность изменять корректирующие значения фигур была реализована путем добавления общедоступных классов **AdjustmentCollection** и **Adjustment** и свойства **Adjustments**.

#### Изменения в диаграммах, фигурах и чертежах <sup>24.6</sup>

- Возможности построения графиков были расширены. Теперь вы можете создавать более широкий спектр диаграмм, включая *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* графики, *Box & Whisker* диаграммы, *Waterfalls* и *Funnels*. Это позволяет вам визуализировать ваши данные более разнообразным и информативным образом.
- Улучшено управление цветом для форматирования теней. Вы можете получить более точный контроль над внешним видом ваших документов, получив доступ к цветам теней.
- Улучшена производительность при рендеринге фона. Вы можете значительно ускорить рендеринг фона, содержащего небольшие элементы, благодаря встроенной технологии тайлинга.
- Добавлены реалистичные градиенты для фигур. Теперь вы можете создавать фигуры в формате DML с нелинейными градиентами, имитируя визуальный стиль Microsoft Word для придания им более совершенного вида.

#### Настройка меток данных диаграммы <sup>24.7</sup>

Была добавлена возможность настраивать метки данных диаграммы, такие как **Orientation** и **Rotation**.

#### Пользовательское оформление номеров для уровней списка <sup>24.7</sup>

Добавлен параметр настройки для свойства public [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/). Теперь вы можете задать пользовательский стиль нумерации для уровней списка.

#### Изменения в работе с ActiveX <sup>24.7</sup>

- Свойства объектов ActiveX теперь можно изменять, что дает вам больше контроля над их поведением.
- Добавлена возможность изменять значение переключателя ActiveX для включения динамического взаимодействия.
- Добавлена возможность переключения флажка ActiveX на "установленный" или "снятый".

### Загрузка и сохранение документов

#### Экспорт ссылок в формат Markdown <sup>24.7</sup>

Возможность управлять экспортом ссылок в формате Markdown была добавлена благодаря реализации свойства [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/).

### Поиск и сравнение

#### Расширенные возможности сравнения <sup>24.6</sup>

Добавлена возможность оптимизации рабочих процессов анализа данных с улучшенной функциональностью сравнения. Это включает в себя новую опцию **IgnoreStoreItemId** и переработанный интерфейс для расширенных сравнений.

### Другой

- Функция удаления пустых страниц из документа была реализована путем добавления метода [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/). <sup>24.5</sup>
- Возможность проверять наличие макросов VBA без загрузки документа была предоставлена путем добавления свойства **HasMacros**. <sup>24.5</sup>
- Добавлено новое свойство **DateTimeUtc** – оно обеспечивает более точную временную метку для комментариев, улучшая организацию и отслеживаемость. <sup>24.6</sup>
- Формат даты и времени теперь автоматически определяется для беспрепятственного экспорта в формат XLSX. <sup>24.7</sup>
- Было добавлено общедоступное свойство [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), которое позволяет вам проверить, защищен ли проект VBA. <sup>24.7</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для C++ 24.5 Примечания к выпуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Узнайте больше о [Aspose.Words для C++ 24.6 Примечания к выпуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Узнайте больше о [Aspose.Words для C++ 24.7 Примечания к выпуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words для C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 улучшены возможности управления цветами обводки, расширены возможности OLE-объектов, а также представлен новый общедоступный API библиографических источников.

Aspose.Words 24.2 расширен API графиков и управление стилями. В этой версии Aspose.Words также появилась возможность указывать SvgSaveOptions во время рендеринга, более гибкое управление загрузкой Markdown файлов и работа со ссылочным текстом для сносок и концевых примечаний.

Aspose.Words 24.3 вводит эмуляцию бинарных растровых операций для метафайлов WMF, а также продолжает расширять API графиков.

Aspose.Words 24.4 расширяет некоторые возможности рендеринга, а также улучшает работу с цифровыми подписями.

### Рендеринг и печать

#### Управление цветом обводки <sup>24.1</sup>

Класс [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) был расширен набором новых общедоступных свойств, связанных с управлением цветами обводки: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) и [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) и [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### Расширение API для рисования графиков на языке ML <sup>24.2 / 24.3 / 24.4</sup>

Параметр **DrawingML Charts API** продолжает расширяться.

#### Вставлять шрифты, объявленные в правилах @font-face <sup>24.4</sup>

Добавлена возможность встраивать шрифты, объявленные в правилах @font-face, в определения шрифтов результирующего документа путем добавления нового свойства [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/).

#### Работа с форматированием свечения и отражения <sup>24.4</sup>

Реализована возможность работы с форматированием свечения и отражения для объекта рисования.

### Загрузка и сохранение документов

#### Укажите SvgSaveOptions Во время рендеринга <sup>24.2</sup>

Добавлена возможность указывать [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) во время рендеринга с использованием методов [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) и [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/).

#### Сохранять пустые строки при загрузке Markdown файлов <sup>24.2</sup>

Добавлена возможность сохранять пустые строки при загрузке файлов Markdown.

### Другой

- Возможность изменять текст элемента управления OLE `TextBox` была реализована путем добавления нового свойства **Text** к новому классу **TextBoxControl**. <sup>24.1</sup>
- Общедоступный API библиографических источников был реализован путем добавления нового пространства имен [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) с его новыми классами и перечислениями, а также путем добавления нового свойства [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) к классу [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). <sup>24.1</sup>
- В класс [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) добавлены новые общедоступные свойства [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) и [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) для улучшенного управления стилем. <sup>24.2</sup>
- Функциональность для получения фактического текста опорного знака для сносок и концевых сносок была расширена с помощью свойства [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) и метода [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- Реализована эмуляция бинарных растровых операций для метафайлов WMF. <sup>24.3</sup>
- Возможность определять параметры подписи для документов в пределах **SaveOptions** была включена путем добавления нового класса **DigitalSignatureDetails** с новыми открытыми членами, а также добавления новых свойств к классам [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) и [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для C++ 24.1 Примечания к выпуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Узнайте больше о [Aspose.Words для C++ 24.2 Примечания к выпуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Узнайте больше о [Aspose.Words для C++ 24.3 Примечания к выпуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Узнайте больше о [Aspose.Words для C++ 24.4 Примечания к выпуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words для C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 расширяет возможности рендеринга, эмуляции рендеринга метафайлов и markdown сохранения.

Aspose.Words 23.10 улучшает визуализацию, расширяет возможности загрузки и сохранения документов и позволяет пользователям объединять документы новыми способами.

Aspose.Words 23.11 расширяет работу с редакциями, форматом XLSX и шрифтами в условных обозначениях диаграммы с помощью дополнительных опций.

Aspose.Words 23.12 добавлены новые свойства и перечисления для работы с документами PDF и OOXML, а также поддержка WebP-изображений.

### Рендеринг и печать

#### Настройка названий осей в диаграммах DrawingML <sup>23.9</sup>

Возможность настраивать названия осей в диаграммах DrawingML появилась благодаря реализации нового свойства public class **ChartAxisTitle** и [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/).

#### Определение вертикального положения шрифтов в параграфе <sup>23.9</sup>

Теперь можно определять вертикальное расположение шрифтов в абзаце, используя новое свойство public [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) и новое перечисление [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/).

#### Управление цветом переднего плана <sup>23.10</sup>

Возможность извлекать цвет переднего плана без модификаторов была добавлена в классы [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) и [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) с помощью свойства **BaseForeColor**.

#### Расширение функциональности графиков <sup>23.10</sup>

Функциональность классов [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) и [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) была расширена за счет новых методов и свойств.

#### Автоматическая настройка и подгонка изображения под форму <sup>23.10</sup>

Новый метод [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/) предоставляет простой способ автоматической настройки и подгонки изображения под определенную форму.

#### Форматирование шрифта по умолчанию для записей легенды диаграммы DrawingML <sup>23.11</sup>

Добавлена возможность задавать форматирование шрифта по умолчанию для записей условных обозначений диаграмм DrawingML с помощью свойства [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/). Эта функция обеспечивает более упорядоченный и единообразный внешний вид элементов диаграммы, улучшая общую эстетику документа.

#### Укажите макет страницы при открытии PDF в Reader <sup>23.12</sup>

Возможность указывать макет страницы, который будет использоваться при открытии документа в PDF ридере, была добавлена благодаря введению нового свойства **PageLayout** для класса [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) и нового перечисления **PdfPageLayout**.

### Загрузка и сохранение документов

#### Указание имени папки для создания изображения URIs в Markdown <sup>23.9</sup>

Класс [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) был расширен за счет добавления свойства [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/), которое позволяет указать имя папки, используемой для создания изображения URIs, записанного в документ Markdown.

#### Уменьшить размер выходных данных PDF <sup>23.10</sup>

Были реализованы различные оптимизации PDF рендеринга для уменьшения размера выходных данных при использовании настроек [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/).

#### Распознавание гиперссылок при загрузке текстовых документов <sup>23.10</sup>

Функция распознавания гиперссылок при загрузке текстовых документов была реализована путем добавления нового свойства [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/).

### Другой

- Реализована эмуляция рендеринга метафайлов для определения размера растеризации, в частности, для ширины пера WMF и ширины косметического пера EMF. Для достижения этой цели свойство **ScaleWmfFontsToMetafileSize** было заменено на свойство [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) и добавлено свойство [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/). <sup>23.9</sup>
* С использованием метода [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/) был представлен упрощенный метод вставки одного документа в другой в текущем положении курсора. <sup>23.10</sup>
* Возможность доступа к свойствам стиля и их изменения была добавлена благодаря введению нового свойства [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/). <sup>23.10</sup>
* К методам класса [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) был добавлен параметр универсального типа. <sup>23.10</sup>
* С помощью методов [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) и [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/) был реализован способ контроля того, когда определенная редакция должна быть принята/отклонена или нет. Это усовершенствование предоставляет пользователям более точный контроль над процессом внесения изменений. <sup>23.11</sup>
* Возможность записывать все разделы документа на один и тот же рабочий лист XLSX была предоставлена благодаря новому типу перечисления [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) и новому свойству [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/). <sup>23.11</sup>
* Способ управления тем, как расширения формата ZIP64 будут использоваться для документов OOXML, был реализован с помощью нового свойства Zip64Mode класса `OoxmlSaveOptions` и нового перечисления Zip64Mode. <sup>23.12</sup>
* Добавлена поддержка WebP image. Пожалуйста, обратите внимание, что эта функция доступна только для версий .NetStandart и .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для C++ 23.9 Примечания к выпуску](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Узнайте больше о [Aspose.Words для C++ 23.10 Примечания к выпуску](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Узнайте больше о [Aspose.Words для C++ 23.11 Примечания к выпуску](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Узнайте больше о [Aspose.Words для C++ 23.12 Примечания к выпуску](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Смотрите также

{{% alert color="primary" %}}

На этой странице представлены последние новости о релизах за последние 2 лет. Более подробную информацию о предыдущих выпусках смотрите в [Примечания к выпуску'](/words/cpp/release-notes/) страницы в соответствующих разделах.

{{% /alert %}}
