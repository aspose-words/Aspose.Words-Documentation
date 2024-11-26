---
title: Что нового
second_title: Aspose.Words для Java
articleTitle: Что нового в Aspose.Words для Java
linktitle: Что нового в Aspose.Words для Java
type: docs
description: "Aspose.Words для Java с каждым днем расширяется и усовершенствуется. На этой странице вы можете узнать об огромных и наиболее интересных возможностях продукта."
weight: 2
url: /ru/java/what-s-new-in-aspose-words-for-java/
timestamp: 2024-10-14-12-53-06
---

На этой странице описаны наиболее интересные новые функции Aspose.Words, появившиеся в последних версиях.

## Aspose.Words для Java 24.9, 24.10

Aspose.Words 24.9 реализована вставка group shape и вставка StructuredDocumentTag с помощью DocumentBuilder, улучшен рендеринг радиальных диаграмм с градуировкой, улучшены цифровые подписи с поддержкой XAdES-EPES, добавлено распознавание подчеркивания Markdown и предоставлен доступ к разделителям сносок/концевых примечаний.

Aspose.Words 24.10 добавлена расширенная поддержка элементов управления ActiveX с возможностью создания CommandButton, новый элемент управления видимостью фигур, возможность group shapes, улучшенный Markdown экспорт таблиц, форматирование диаграмм для Pie и Doughnut графиков, улучшенная обработка кодировки Big5 и поддержка устаревших тайваньских шрифтов..

### Рендеринг и печать

#### Градуировки на радиальных графиках <sup>24.9</sup>

Реализован рендеринг градаций на радиальных диаграммах.

#### CommandButton Элементы управления ActiveX <sup>24.10</sup>

Возможность создавать CommandButton элементы управления ActiveX была реализована путем добавления нового общедоступного метода [InsertForms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertForms2OleControl-com.aspose.words.Forms2OleControl) и нового общедоступного класса [Forms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/forms2olecontrol/).

#### Контролируйте видимость фигуры <sup>24.10</sup>

Было добавлено новое общедоступное свойство [Hidden](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getHidden) для управления видимостью фигур.

#### Изменения на графиках Pie и Doughnut <sup>24.10</sup>

В диаграммы формата Pie и Doughnut было добавлено несколько новых общедоступных свойств.

### Преобразование, загрузка и сохранение документов

#### Подчеркивание форматирования при загрузке Markdown файлов <sup>24.9</sup>

Возможность распознавать форматирование с подчеркиванием при загрузке документов Markdown была реализована путем добавления нового общедоступного свойства [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting).

#### Экспорт таблиц как HTML при сохранении в Markdown <sup>24.10</sup>

Возможность экспортировать таблицы в формате HTML при сохранении документов в формате Markdown была реализована путем добавления нового общедоступного свойства [ExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportAsHtml) и перечисления [MarkdownExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownexportashtml/).

### Цифровые подписи

#### Подписывайте документы с помощью XAdES-EPES <sup>24.9</sup>

Возможность подписывать документы подписями XAdES-EPES уровня XML-DSig была введена путем добавления нового публичного свойства [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) и нового публичного перечисления [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)

### Другой

* В group shapes был добавлен новый общедоступный метод [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...). <sup>24.9</sup>
* Был добавлен новый общедоступный метод [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int) для вставки **StructuredDocumentTags** в документ. <sup>24.9</sup>
* Открытый доступ к разделителям сносок и концевых примечаний был обеспечен путем добавления нескольких общедоступных классов и свойств. <sup>24.9</sup>
* Возможность группировать отдельные фигуры, group shapes вместе, а также напрямую группировать обе фигуры и group shapes появилась благодаря добавлению метода [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-double-double-double-double-com.aspose.words.ShapeBase...). <sup>24.10</sup>
* Улучшена обработка кодировки Big5 для TrueType таблиц cmap. <sup>24.10</sup>
* Была улучшена поддержка устаревших тайваньских шрифтов. <sup>24.10</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 24.9 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

Узнайте больше о [Aspose.Words для Java 24.10 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words для Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 расширяет возможности для сборок, улучшает возможности рендеринга и расширяет некоторые другие возможности.

Aspose.Words 24.6 улучшены параметры рендеринга, расширены возможности поиска и сравнения, а также расширен ряд других функций.

Aspose.Words 24.7 изменяет способ работы с ActiveX, расширяет возможности рендеринга, а также экспорта в форматы Markdown и XLSX.

Aspose.Words 24.8 расширяет возможности настройки диаграмм за счет точного управления метками осей, расширяет возможности управления шрифтами, улучшает работу со структурой документа и добавляет новые возможности для экспорта HTML/XAML, функциональности PDF, преобразования документов и цифровых подписей.

### Поддерживаемые форматы

Начиная с версии 24.7, поддерживается экспорт в PDF/UA-2 для обеспечения доступности для пользователей с ограниченными возможностями.

### Рендеринг и печать

#### Изменения в графиках, фигурах и DrawingML <sup>24.5</sup>

- DrawingML реализован рендеринг эффектов для SVG графики, расширяющий предыдущую функциональность, ограниченную изображениями.
- Поддержка создания комбинированных диаграмм и настройки таких свойств, как ширина промежутка, перекрытие и пузырьковый масштаб, в группах рядов была реализована путем добавления классов [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) и [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) и свойства [SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups).
- Функциональность для управления эффектом SoftEdge фигур была реализована путем добавления класса [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- Возможность изменять корректирующие значения фигур была реализована путем добавления общедоступных классов [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) и [Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/) и свойства [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments).

#### Изменения в диаграммах, фигурах и чертежах <sup>24.6</sup>

- Возможности построения графиков были расширены. Теперь вы можете создавать более широкий спектр диаграмм, включая *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* графики, *Box & Whisker* диаграммы, *Waterfalls* и *Funnels*. Это позволяет вам визуализировать ваши данные более разнообразным и информативным образом.
- Улучшено управление цветом для форматирования теней. Вы можете получить более точный контроль над внешним видом ваших документов, получив доступ к цветам теней.
- Улучшена производительность при рендеринге фона. Вы можете значительно ускорить рендеринг фона, содержащего небольшие элементы, благодаря встроенной технологии тайлинга.
- Добавлены реалистичные градиенты для фигур. Теперь вы можете создавать фигуры DML с нелинейными градиентами, имитируя визуальный стиль Microsoft Word для придания им более совершенного вида.

#### Настройка меток данных диаграммы <sup>24.7</sup>

Была добавлена возможность настраивать метки данных диаграммы, такие как **Orientation** и **Rotation**.

#### Пользовательский стиль нумерации для уровней списка <sup>24.7</sup>

Добавлен параметр настройки для свойства public [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat). Теперь вы можете задать пользовательский стиль нумерации для уровней списка.

#### Изменения в работе с ActiveX <sup>24.7</sup>

* Свойства объектов ActiveX теперь можно изменять, что дает вам больше контроля над их поведением.
* Добавлена возможность изменять значение переключателя ActiveX для включения динамического взаимодействия.
* Добавлена возможность переключения ActiveX checkbox на "проверенный" или "непроверенный".

#### Управление ориентацией и поворотом меток на оси графика <sup>24.8</sup>

Для более удобной настройки графика был добавлен точный контроль над ориентацией и поворотом меток отметок на оси графика – класс [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) был расширен новыми свойствами **Orientation** и **Rotation**.

#### Замена обратной косой черты знаком иены <sup>24.8</sup>

Улучшен экспорт с обратной совместимостью HTML и XAML для замены символа обратной косой черты знаком иены. Для достижения этой цели в классы [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) и [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) было добавлено свойство **ReplaceBackslashWithYenSign**.

#### Использование тегов SDT в качестве имен полей формы при экспорте в PDF <sup>24.8</sup>

PDF экспорт с поддержкой использования тегов SDT в качестве имен полей формы был расширен за счет добавления нового свойства **UseSdtTagAsFormFieldName** к классу [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Преобразование, загрузка и сохранение документов

#### Экспорт ссылок в формат Markdown <sup>24.7</sup>

Возможность управлять экспортом ссылок в формате Markdown была добавлена благодаря реализации свойства [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode 24.8 <sup>24.8</sup>

Был представлен новый класс **LowCode.Converter**, предназначенный для предоставления набора методов преобразования различных типов документов с помощью одной строки кода.

### Поиск и сравнение

#### Расширенные параметры сравнения <sup>24.6</sup>

Добавлена возможность оптимизации рабочих процессов анализа данных с улучшенной функциональностью сравнения. Это включает в себя новую опцию [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) и переработанный интерфейс для расширенных сравнений.

### Другой

* Функция удаления пустых страниц из документа была реализована путем добавления метода [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* Возможность проверки наличия макросов VBA без загрузки документа была предоставлена путем добавления свойства [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros). <sup>24.5</sup>
* Теперь поддерживается сохранение нумерации источников при вставке документа с помощью механизма создания отчетов LINQ. <sup>24.5</sup>
* Добавлено новое свойство [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) – оно обеспечивает более точную временную метку для комментариев, улучшая организацию и отслеживаемость. <sup>24.6</sup>
* Улучшен механизм создания отчетов LINQ. Выборочно удалены пустые абзацы и определены пользовательские сообщения для отсутствующих элементов объекта, что привело к созданию более чистых и информативных отчетов. <sup>24.6</sup>
* Формат даты и времени теперь автоматически определяется для беспрепятственного экспорта в формат XLSX. <sup>24.7</sup>
* Было добавлено общедоступное свойство [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), которое позволяет вам проверить, защищен ли проект VBA. <sup>24.7</sup>
* Информация о шрифте была расширена за счет добавления свойства **EmbeddingLicensingRights** к классам [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) и [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* Для более точной работы со структурой документа был добавлен способ эффективной очистки верхних и нижних колонтитулов разделов с сохранением водяных знаков. Чтобы очистить верхние и нижние колонтитулы разделов, используйте новый общедоступный метод **ClearHeadersFooters**. <sup>24.8</sup>
* Включена цифровая подпись XPS документов с использованием [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) – для этой цели добавлено новое свойство **DigitalSignatureDetails**. <sup>24.8</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 24.5 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Узнайте больше о [Aspose.Words для Java 24.6 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Узнайте больше о [Aspose.Words для Java 24.7 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Узнайте больше о [Aspose.Words для Java 24.8 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words для Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 улучшены возможности управления цветами обводки, улучшены OLE объекты и LINQ отчеты, а также представлена новая библиография общедоступных источников API.

Aspose.Words 24.2 расширены диаграммы API, управление стилем и LINQ опции. В этой версии Aspose.Words также появилась возможность указывать SvgSaveOptions во время рендеринга, более гибкое управление загрузкой Markdown файлов и работа со ссылочным текстом для сносок и концевых примечаний.

Aspose.Words 24.3 представлен новый TIFF режим чтения/записи и эмуляция бинарных растровых операций для WMF метафайлов. Aspose.Words 24.3 также продолжает расширять диаграммы API.

Aspose.Words 24.4 расширены форматы сохранения, некоторые параметры рендеринга, а также улучшена работа с цифровыми подписями.

### Поддерживаемые форматы <sup>24.4</sup>

Современный формат изображений **WebP** теперь поддерживается в формате Aspose.Words. Теперь вы можете читать и вставлять изображения WebP в документы, а также сохранять изображения в формате WebP.

### Рендеринг и печать

#### Управление цветом обводки <sup>24.1</sup>

Класс [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) был расширен набором новых общедоступных свойств, связанных с управлением цветами обводки: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) и [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) и [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### DrawingML Расширение графиков API <sup>24.2 / 24.3 / 24.4</sup>

Параметр **DrawingML Charts API** продолжает расширяться.

#### Вставлять шрифты, объявленные в правилах @font-face <sup>24.4</sup>

Добавлена возможность встраивать шрифты, объявленные в правилах @font-face, в определения шрифтов результирующего документа была введена путем добавления нового свойства [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### Работа с форматированием свечения и отражения <sup>24.4</sup>

Реализована возможность работы с форматированием свечения и отражения для объекта рисования.

### Загрузка и сохранение документов

#### Укажите SvgSaveOptions Во время рендеринга <sup>24.2</sup>

Добавлена возможность указывать [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) во время рендеринга с использованием методов [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) и [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions).

#### Сохранять пустые строки при загрузке Markdown файлов <sup>24.2</sup>

Добавлена возможность сохранять пустые строки при загрузке файлов Markdown.

#### Новый пользователь TIFF для чтения/записи <sup>24.3</sup>

Был разработан новый TIFF модуль чтения/записи для Aspose.Words, .NET Standard, .NET 6 и более поздних версий. Aspose.Words для .NET 24.3 добавлена поддержка чтения TIFF изображений с JPEG и старыми типами сжатия JPEG, а также значительно улучшено качество операций чтения и записи.

### Другой

* Возможность изменять текст элемента управления `TextBox` OLE была реализована путем добавления нового свойства [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) к новому классу [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/). 24.1 <sup>24.1</sup>
* Общедоступные источники библиографии API были реализованы путем добавления нескольких новых классов [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) и [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) и перечисления [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/), а также путем добавления нового свойства [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) к классу [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). <sup>24.1</sup>
* Было предусмотрено API ограничение доступа к элементам типа с использованием синтаксиса шаблона для механизма создания отчетов LINQ. <sup>24.1</sup>
* В класс [Style](https://reference.aspose.com/words/net/aspose.words/style/) добавлены новые общедоступные свойства [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) и [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) для улучшенного управления стилем. <sup>24.2</sup>
* Функциональность для получения фактического текста опорного знака для сносок и концевых сносок была расширена с помощью свойства [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) и метода [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* Включена совместимость с графиками `Word 2016` для `LINQ Reporting Engine`. <sup>24.2</sup>
* Реализована эмуляция бинарных растровых операций для метафайлов WMF. <sup>24.3</sup>
* Возможность определять параметры подписи для документов в **SaveOptions** была включена путем добавления нового класса [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) с новыми открытыми членами, а также добавления новых свойств к классам [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) и [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 24.1 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Узнайте больше о [Aspose.Words для Java 24.2 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/).

Узнайте больше о [Aspose.Words для Java 24.3 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/).

Узнайте больше о [Aspose.Words для Java 24.4 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words для Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 расширяет возможности рендеринга, эмуляции рендеринга метафайлов и markdown сохранения.

Aspose.Words 23.10 улучшен рендеринг, расширены возможности загрузки и сохранения документов, а также пользователи могут по-новому объединять документы.

Aspose.Words 23.11 расширяет возможности работы с изменениями, XLSX форматированием и шрифтами в легенде диаграммы с помощью дополнительных опций.

Aspose.Words 23.12 добавлены новые свойства и перечисления для работы с PDF документами, поддержка WebP изображений и обновленная библиотека Bouncy Castle.

### Рендеринг и печать

#### Настройка названий осей в DrawingML диаграммах <sup>23.9</sup>

Возможность настраивать названия осей на диаграммах DrawingML появилась благодаря внедрению нового свойства public class [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) и [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle).

#### Определение вертикального расположения шрифтов в абзаце <sup>23.9</sup>

Теперь можно определять вертикальное расположение шрифтов в абзаце, используя новое свойство public [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) и новое перечисление [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/).

#### Управление цветом переднего плана <sup>23.10</sup>

Возможность извлекать цвет переднего плана без модификаторов была добавлена в классы [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) и [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) с помощью свойства **BaseForeColor**.

#### Расширение функциональности графиков <sup>23.10</sup>

Функциональность классов [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) и [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) была расширена за счет новых методов и свойств.

#### Автоматическая настройка и подгонка изображения под форму <sup>23.10</sup>

Новый метод [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) предоставляет простой способ автоматической настройки и подгонки изображения под определенную форму.

#### Форматирование шрифта по умолчанию для DrawingML записей в условных обозначениях диаграммы <sup>23.11</sup>

Добавлена возможность задавать форматирование шрифта по умолчанию для записей условных обозначений диаграмм DrawingML с помощью свойства **Font**. Эта функция обеспечивает более упорядоченный и единообразный внешний вид элементов диаграммы, улучшая общую эстетику документа.

#### Укажите макет страницы при открытии PDF в Reader <sup>23.12</sup>

Возможность указывать макет страницы, который будет использоваться при открытии документа в PDF ридере, была добавлена благодаря введению нового свойства [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) для класса [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) и нового перечисления [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/).

### Загрузка и сохранение документов

#### Указание имени папки для создания изображения URIs в Markdown <sup>23.9</sup>

Класс [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) был расширен за счет добавления свойства [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias), которое позволяет указать имя папки, используемой для создания изображения URIs, записанного в документ Markdown.

#### Уменьшить PDF Размер выходных данных <sup>23.10</sup>

Были реализованы различные оптимизации PDF рендеринга для уменьшения размера выходных данных при использовании настроек [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput).

#### Распознавать гиперссылки при загрузке TXT документов <sup>23.10</sup>

Функция распознавания гиперссылок при загрузке документов TXT была реализована путем добавления нового свойства [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks).

### Другой

- Реализована эмуляция рендеринга метафайлов для определения размера растеризации, в частности, для WMF ширины пера и EMF косметической ширины пера. Для достижения этой цели свойство **ScaleWmfFontsToMetafileSize** было заменено свойством [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) и добавлено свойство [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution). <sup>23.9</sup>
- С использованием метода [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) был представлен упрощенный метод вставки одного документа в другой в текущем положении курсора. <sup>23.10</sup>
- Возможность доступа к свойствам стиля и их изменения была добавлена благодаря введению нового свойства [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked). <sup>23.10</sup>
- К методам класса [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) был добавлен параметр универсального типа. <sup>23.10</sup>
- С помощью методов [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) и [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) был реализован способ контроля того, когда определенная редакция должна быть принята/отклонена или нет. Это усовершенствование предоставляет пользователям более точный контроль над процессом внесения изменений. <sup>23.11</sup>
- Возможность записывать все разделы документа на один и тот же рабочий лист XLSX была предоставлена благодаря новому типу перечисления [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) и новому свойству [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode). <sup>23.11</sup>
- Добавлена поддержка изображений WebP. Пожалуйста, обратите внимание, что эта функция доступна только для версий .NetStandart и .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 23.9 Примечаний к выпуску](/words/java/aspose-words-for-java-23-9-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.10 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.11 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.12 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words для Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 расширяет возможности работы с данными рядов диаграмм и документами ODT, а также улучшает верхние и нижние колонтитулы и их текстовое оформление.

Aspose.Words 23.6 расширены возможности визуализации, добавлен новый формат экспорта, улучшены LINQ отчеты и LowCode инструменты.

Aspose.Words 23.7 расширены возможности создания отчетов, добавлен новый формат экспорта и внесены изменения в работу с таблицами и цифровыми подписями.

Aspose.Words 23.8 расширяет возможности различных форматов, улучшает визуализацию и добавляет новые опции для работы с полями.

### Поддерживаемые форматы

* Начиная с версии 23.6, можно сохранять документы в формате XLSX. Теперь вы можете конвертировать свои документы в формат Excel. <sup>23.6</sup>

* Начиная с версии 23.7, можно сохранять страницу документа или фигуру в формате EPS. <sup>23.7</sup>

* ### Новые возможности формата

  - Добавлена функциональность для автоматического создания оглавления (TOC) для MOBI документов. <sup>23.8</sup>
  - Конструктор [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) был расширен до [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - Реализовано формирование вертикального текста для метафайлов EMF. <sup>23.8</sup>

### Визуализация

#### Получение и изменение данных ряда диаграмм <sup>23.5</sup>

Возможность получать и изменять данные рядов диаграмм была предоставлена путем добавления:

- новые классы: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- новые типы перечислений: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Поддержка расширенной типографики <sup>23.6</sup>

Добавлена поддержка расширенной типографики при рендеринге WMF, EMF и EMF+.

#### Цветной контент на странице <sup>23.6</sup>

Было добавлено общедоступное свойство [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), указывающее, является ли страница цветной или нет.

#### Форматирование меток данных диаграммы <sup>23.6</sup>

Реализована возможность настройки форматирования заливки, обводки и выносок для меток данных диаграммы.

### Mail Merge и отчетность

#### Динамическая HTML вставка для LINQ Механизма создания отчетов <sup>23.6</sup>

Добавлен новый способ динамической вставки HTML для механизма создания отчетов LINQ.

#### Mustache Поддержка тегов <sup>23.7</sup>

Mustache теги теперь поддерживаются в методах [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) и [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String).

#### LINQ Обновления синтаксиса шаблона механизма создания отчетов <sup>23.7</sup>

Синтаксис шаблона механизма создания отчетов LINQ теперь поддерживает методы расширения `ElementAt` и ElementAtOrDefault.

#### Указание размера отображаемых изображений <sup>23.8</sup>

Введено новое общедоступное свойство **ImageSize** для указания размера визуализируемых изображений в пикселях.

#### Сохранить пробелы для JSON строковых значений – LINQ <sup>23.8</sup>

В механизм создания отчетов LINQ добавлена опция для сохранения пробелов для строковых значений JSON.

### LowCode <sup>23.6</sup>

Добавлены новые LowCode методы, предназначенные для объединения различных типов документов в единый выходной документ.

### Другой

- Реализована поддержка переноса текста в верхние и нижние колонтитулы. <sup>23.5</sup>
- Добавлена возможность удалять цифровые подписи из ODT документов с помощью метода [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream). <sup>23.5</sup>
- Добавлено общедоступное свойство [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) для получения базового и ruby-текста фонетического руководства [Run](https://reference.aspose.com/words/java/com.aspose.words/run/). <sup>23.5</sup>
- Добавлена возможность извлекать значение цифровой подписи из документа с цифровой подписью в виде массива байт, введя новое свойство [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue). <sup>23.7</sup>
- Классы [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) и [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) были расширены за счет новых открытых участников – [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), и [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- Добавлена поддержка полей CITATION и BIBLIOGRAPHY. <sup>23.8</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 23.5 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.6 Примечаний к выпуску](/words/java/aspose-words-for-java-23-6-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.7 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.8 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words для Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 повышает производительность эмуляции растровых операций, а также улучшает экспорт документов и качество рендеринга.

Aspose.Words 23.2 позволяет сохранять документы в формате MOBI, улучшает отображение диаграмм и вносит заметные изменения в детали внешнего вида документа.

Aspose.Words 23.3 расширяет возможности импорта и сохранения документов благодаря новым свойствам, а также улучшает качество работы с цветом фона и переднего плана и радиальным градиентом.

Aspose.Words 23.4 улучшен расчет некоторых параметров и расположение таблицы и окружающего текста.

### Повышение производительности

#### Эмуляция растровых операций <sup>23.1</sup>

Значительно улучшена производительность и качество эмуляции растровых операций с метафайлами.

### Поддерживаемые форматы

#### Экспорт в MOBI <sup>23.2</sup>

Начиная с версии 23.2, можно сохранять документы в формате MOBI (который также называется PRC, AZW – Amazon Собственный формат файлов электронных книг Kindle). Теперь вы можете не только загружать документы MOBI, но и экспортировать свои файлы в формат MOBI.

### Визуализация

#### Работа с цветами темы затенения <sup>23.1</sup>

Реализована возможность работы с затеняющими цветами темы.

#### Поддержка коэффициента R-квадрат в графиках DML <sup>23.1</sup>

Добавлена поддержка R-квадратичного коэффициента в надписях линий тренда на графике DML при рендеринге.

#### Улучшения в отображении диаграмм <sup>23.2</sup>

Начиная с 23.2, рендеринг диаграммы был значительно улучшен.

#### Управление цветом фона и переднего плана <sup>23.3</sup>

Класс [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) был расширен набором новых общедоступных свойств, связанных с цветами фона и переднего плана: **ForeThemeColor** и **BackThemeColor**, **ForeTintAndShade** и **BackTintAndShade**.

#### Радиальные градиенты с использованием собственного шейдера `SkiaSharp` <sup>23.3</sup>

Реализован рендеринг радиальных градиентов с использованием встроенного шейдера `SkiaSharp` для .NET Standard.

#### Расстояние между таблицей и окружающим текстом <sup>23.4</sup>

Возможность устанавливать расстояние между таблицей и окружающим текстом была добавлена путем добавления новых свойств в классы [Table](https://reference.aspose.com/words/java/com.aspose.words/table/): [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), и [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Загрузка и сохранение документов

#### Сгенерировать `TOC` для AZW3 документов <sup>23.1</sup>

Благодаря использованию свойства [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) была добавлена возможность генерировать `TOC` (оглавление) для AZW3 документов.

#### Экспорт элементов списка в Markdown <sup>23.1</sup>

Способ управления экспортом элементов списка в формат Markdown был предоставлен путем добавления свойства [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) к классу [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/).

#### Уведомления о ходе сохранения документов <sup>23.3</sup>

Реализовано сохранение уведомлений о ходе выполнения в форматах MOBI и AZW3.

#### Настройка интервалов между предложениями и словами <sup>23.3</sup>

Добавлена возможность указать, следует ли автоматически корректировать интервалы между предложениями и словами при импорте документа, введя свойство **AdjustSentenceAndWordSpacing**.

### Другой

- Благодаря реализации свойства [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) <sup>23.2 добавлена возможность настройки интервала между символами в документе</sup>
- Способ указать Aspose.Words, следует ли включать текстовые поля, сноски и концевые сноски в статистику количества слов, был предоставлен путем добавления свойства [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) <sup>23.2</sup>
- Новая опция для стиля документа, которая позволяет указать, будет ли стиль автоматически переопределяться на основе соответствующего значения, была введена через свойство [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) <sup>23.2</sup>
- Добавлена возможность определять, является ли [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) прогоном фонетического руководства, используя свойство **IsPhoneticGuide** <sup>23.4</sup>
- Простой способ работы с рядами и осями комбинированных диаграмм был реализован путем введения класса **ChartAxisCollection** и добавления свойства **Chart.Axes** <sup>23.4</sup>
- В класс <sup>[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 23.4 добавлены новые общедоступные свойства, связанные с относительным расположением и размером фигуры</sup>
- Точность и производительность расчета яркости цвета для автоматического разрешения цвета текста были улучшены в соответствии с последними версиями Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 23.1 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.2 Примечаний к выпуску](/words/java/aspose-words-for-java-23-2-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.3 Примечаний к выпуску](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.4 Примечаний к выпуску](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Смотрите также

{{% alert color="primary" %}}

На этой странице представлены последние новости о релизах за последние 2 года. Более подробную информацию о предыдущих выпусках смотрите в [Примечания к выпуску'](https://releases.aspose.com/words/java/release-notes/) страницы в соответствующих разделах.

{{% /alert %}}
