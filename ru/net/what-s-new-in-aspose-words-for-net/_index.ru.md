---
title: Что нового
second_title: Aspose.Words для .NET
articleTitle: Что нового в Aspose.Words для .NET
linktitle: Что нового в Aspose.Words для .NET
type: docs
description: "Aspose.Words для .NET Расширяется и усиливается ежедневно. На этой странице можно узнать об огромных и самых интересных особенностях продукта."
weight: 10
url: /ru/net/what-s-new-in-aspose-words-for-net/
timestamp: 2024-12-11-13-48-02
---

На этой странице описаны самые интересные новые Aspose.Words Особенности, представленные в последних выпусках.

## Aspose.Words для .NET 24.9, 24.10, 24.11, 24.12

Aspose.Words 24.9 представляет вставку групповых фигур и вставку StructuredDocumentTag через DocumentBuilder, улучшает визуализацию радиальных диаграмм с помощью градуировок, улучшает цифровые подписи с поддержкой XAdES-EPES, добавляет распознавание подчеркивания Markdown и предоставляет доступ к разделителям сносок/концевых сносок.

Aspose.Words 24.10 представляет улучшенную поддержку элементов управления ActiveX с созданием CommandButton, новый элемент управления видимостью фигур, возможность группировать фигуры, улучшенный экспорт Markdown для таблиц, форматирование диаграмм для круговых и кольцевых диаграмм, улучшенную обработку кодировки Big5 и поддержку устаревших тайваньских шрифтов.

Aspose.Words 24.11 реализована функция обобщения документов на основе AI, расширены возможности визуализации, улучшен доступ к свойствам документа и субтитрам элементов управления ActiveX.

Aspose.Words 24.8 представляет настраиваемое размещение меток данных, перевод текста на основе искусственного интеллекта Google, улучшенные параметры очистки почтовых сообщений и новые классы обработки LowCode.

### Функции на базе AI

#### Резюмирование документов с использованием OpenAI и Google <sup>24.11</sup>

Поддержка обобщения документов с использованием моделей порождающего языка **OpenAI** и **Google** была интегрирована путем добавления пространства имен [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) с его общедоступными членами.

#### Перевод текста с использованием генеративных языковых моделей Google <sup>24.12</sup>

Возможность перевода текста с использованием генеративных языковых моделей Google была реализована в Aspose.Words путем добавления метода [Translate](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/translate/) и перечисления [Language](https://reference.aspose.com/words/net/aspose.words.ai/language/) в пространство имен [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/).

### Low Code <sup>24.12</sup>

Введены новые классы LowCode, такие как [Comparer](https://reference.aspose.com/words/net/aspose.words.lowcode/comparer/), [MailMerger](https://reference.aspose.com/words/net/aspose.words.lowcode/mailmerger/), [Replacer](https://reference.aspose.com/words/net/aspose.words.lowcode/replacer/), [Splitter](https://reference.aspose.com/words/net/aspose.words.lowcode/splitter/) и т. д., предлагающие набор методов, которые обеспечивают идеальный баланс между простотой и гибкостью для обработки документов.

### Рендеринг и печать

#### Градуировки на радиальных диаграммах <sup>24.9</sup>

Реализована визуализация градуировок на радиальных диаграммах.

#### Элементы управления ActiveX CommandButton <sup>24.10</sup>

Возможность создания элементов управления ActiveX CommandButton была введена путем добавления нового открытого метода [InsertForms2OleControl](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertforms2olecontrol/) и нового открытого класса [Forms2OleControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/).

#### Управление видимостью фигур <sup>24.10</sup>

Добавлено новое публичное свойство [Hidden](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/hidden/) для управления видимостью фигур.

#### Изменения в круговых и кольцевых диаграммах <sup>24.10</sup>

Добавлено несколько новых публичных свойств для форматирования круговых и кольцевых диаграмм.

#### Управлять отображением границ поля формы выбора PDF <sup>24.11</sup>

Новая опция для управления отображением границ полей формы выбора PDF была реализована путем добавления новой общедоступной опции [RenderChoiceFormFieldBorder](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/renderchoiceformfieldborder/).

#### Получение и установка кодов формата для данных диаграммы <sup>24.11</sup>

Возможность получать и устанавливать коды формата для данных диаграммы была добавлена путем реализации свойства [FormatCode](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/formatcode/) в классах [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/) и [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/).

#### Визуализация гистограммных графиков с ячейками и надписями <sup>24.11</sup>

Улучшен рендеринг гистограммных диаграмм за счет использования заданного количества ячеек и меток.

#### Настройка размещения меток данных <sup>24.12</sup>

Возможность настройки размещения меток данных была добавлена ​​путем введения новых свойств в классы [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) и [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/).

### Конвертация, загрузка и сохранение документов

#### Подчеркивание форматирования при загрузке файлов Markdown <sup>24.9</sup>

Возможность распознавания подчеркивания форматирования при загрузке документов Markdown была включена путем добавления нового публичного свойства [ImportUnderlineFormatting](https://reference.aspose.com/words/net/aspose.words.loading/markdownloadoptions/importunderlineformatting/).

#### Экспорт таблиц в формате HTML при сохранении в Markdown <sup>24.10</sup>

Возможность экспорта таблиц в формате HTML при сохранении документов в формате Markdown была реализована путем добавления нового публичного свойства [ExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/exportashtml/) и перечисления [MarkdownExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownexportashtml/).

#### Экспорт PDF с обновленной логической структурой <sup>24.11</sup>

PDF экспорт был улучшен за счет включения свойств заголовка таблицы в качестве заголовков элементов логической структуры PDF.

### Слияние и отчетность

#### Удаление пустых таблиц во время слияния <sup>24.12</sup>

В перечисление [MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/) добавлен новый параметр **RemoveEmptyTables** для уточнения вывода слияния.

### Цифровые подписи

#### Подписание документов с помощью XAdES-EPES <sup>24.9</sup>

Возможность подписывать документы с помощью подписей XML-DSig уровня XAdES-EPES была введена путем добавления нового публичного свойства [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/xmldsiglevel/) и нового публичного перечисления [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/xmldsiglevel/).

### Другое

* Новый публичный метод [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/) был добавлен в групповые фигуры. <sup>24.9</sup>
* Добавлен новый публичный метод [InsertStructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertstructureddocumenttag/) для вставки **StructuredDocumentTags** в документ. <sup>24.9</sup>
* Публичный доступ к разделителям сносок/концевых сносок был предоставлен путем добавления нескольких публичных классов и свойств. <sup>24.9</sup>
* Возможность группировать отдельные фигуры, группировать фигуры вместе и напрямую группировать фигуры и группы фигур была введена путем добавления метода [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/#insertgroupshape_1). <sup>24.10</sup>
* Улучшена обработка кодировки Big5 для таблиц TrueType cmap. <sup>24.10</sup>
* Улучшена поддержка устаревших тайваньских шрифтов. <sup>24.10</sup>
* Для доступа к расширенным свойствам документа в класс [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/) были добавлены свойства, доступные только для чтения. <sup>24.11</sup>
* Настройка подписей для элементов управления ActiveX была включена путем добавления нового общедоступного параметра настройки к свойству [Forms2OleControl.Caption](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/caption/). <sup>24.11</sup>

{{% alert color="primary" %}}

Узнайте больше о [Примечаниях к выпуску Aspose.Words для .NET 24.9](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-9-release-notes/).

Узнайте больше о [Примечаниях к выпуску Aspose.Words для .NET 24.10](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-10-release-notes/).

Узнайте больше о [Aspose.Words для .NET 24.11 Примечаний к выпуску](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-11-release-notes/).

Узнайте больше о [Aspose.Words для .NET 24.12 Примечаний к выпуску](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-12-release-notes/).

{{% /alert %}}

## Aspose.Words для .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 расширяет возможности сборок, улучшает возможности рендеринга и расширяет некоторые другие возможности.

В Aspose.Words 24.6 улучшены параметры рендеринга, улучшены функции поиска и сравнения, а также расширено несколько других функций.

Aspose.Words 24.7 меняет способ работы с ActiveX, расширяет возможности рендеринга, а также экспорта в форматы Markdown и XLSX.

Aspose.Words 24.8 улучшает настройку диаграмм с помощью точного управления надписями осей, расширяет управление шрифтами, улучшает обработку структуры документа и добавляет новые возможности для экспорта HTML/XAML, функциональности PDF, преобразования документов и цифровых подписей.

### Поддерживаемые форматы

Начиная с версии 24.7 поддерживается экспорт в PDF/UA-2 для обеспечения доступности для пользователей с ограниченными возможностями.

### Платформы <sup>24.5</sup>

Сборки .NET 7.0/8.0 включены в пакет Aspose.Words NuGet.

### Рендеринг и печать

#### Изменения в Charts, Shapes и DrawingML <sup>24.5</sup>

* Реализован рендеринг эффектов DrawingML для графики SVG, расширяющий предыдущую функциональность, ограниченную изображениями.
* Поддержка создания комбинированных диаграмм и настройки таких свойств, как ширина промежутка, перекрытие и пузырьковый масштаб в группах рядов, была введена путем добавления классов [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) и [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) и свойства [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/).
* Функциональность для управления эффектом SoftEdge фигур реализована путем добавления класса [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/).
* Возможность изменять значения настройки фигур реализована путем добавления [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) и [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) общедоступные классы и [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) свойство.

#### Изменения в диаграммах, фигурах и рисунках <sup>24.6</sup>

* Возможности построения диаграмм были расширены. Теперь вы можете создавать более широкий спектр диаграмм, включая *Древовидные диаграммы*, *Солнечные лучи*, *Гистограммы*, *Диаграммы Парето*, *Ящики с усами*, *Водопады* и *Воронки*. Это позволяет визуализировать данные более разнообразно и информативно.
* Улучшено управление цветом для форматирования теней. Вы можете получить более точный контроль над внешним видом ваших документов, получив доступ к теневым цветам.
* Улучшено повышение производительности фонового рендеринга. Вы можете значительно ускорить рендеринг фонов, содержащих мелкие элементы, благодаря встроенной технологии тайлинга.
* Добавлены реалистичные градиенты для фигур. Теперь вы можете создавать фигуры DML с нелинейными градиентами, имитируя визуальный стиль Microsoft Word для более изысканного вида.

#### Настройка меток данных диаграммы <sup>24.7</sup>

Добавлена ​​возможность настраивать метки данных диаграммы, такие как **Orientation** и **Rotation**.

#### Пользовательский стиль номеров для уровней списка <sup>24.7</sup>

Добавлен установщик для общедоступного свойства [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/). Теперь вы можете определить собственный стиль номеров для уровней списка.

#### Изменения в работе с ActiveX <sup>24.7</sup>

* Свойства объектов ActiveX теперь можно изменять, что дает вам больше контроля над их поведением.
* Добавлена ​​возможность изменять значение переключателя ActiveX для включения динамического взаимодействия.
* Добавлена ​​возможность переключать флажок ActiveX на «установленный» или «снятый».

#### Управление ориентацией и вращением меток делений осей диаграммы <sup>24.8</sup>

Точное управление ориентацией и вращением меток делений осей диаграммы было добавлено для более удобной настройки диаграммы — класс [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) был расширен новыми свойствами [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) и [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Замена обратной косой черты на знак йены <sup>24.8</sup>

Обратно совместимый экспорт HTML и XAML для замены символа обратной косой черты на знак йены был улучшен. Для этого свойство **ReplaceBackslashWithYenSign** было добавлено в классы [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) и [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/).

#### Использование тегов SDT в качестве имен полей формы при экспорте в PDF <sup>24.8</sup>

Экспорт PDF с поддержкой использования тегов SDT в качестве имен полей формы был улучшен путем добавления нового свойства [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) в класс [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/).

### Преобразование, загрузка и сохранение документов

#### Экспорт ссылок в формат Markdown <sup>24.7</sup>

Возможность управления экспортом ссылок в формате Markdown была добавлена ​​посредством реализации свойства [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/).

#### LowCode <sup>24.8</sup>

Введен новый класс [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/), предназначенный для предоставления набора методов для преобразования различных типов документов с помощью одной строки кода.

### Поиск и сравнение

#### Расширенные параметры сравнения <sup>24.6</sup>
Добавлена ​​возможность оптимизировать рабочие процессы анализа данных с помощью улучшенных функций сравнения. Сюда входит новая опция [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) и переработанный интерфейс для расширенных сравнений.

### Другой

* Функция удаления пустых страниц из документа реализована путем добавления метода [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/). <sup>24.5</sup>
* Возможность проверки наличия макросов VBA без загрузки документа предоставлена путем добавления свойства [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/). <sup>24.5</sup>
* Теперь поддерживается сохранение нумерации источников при вставке документа с помощью механизма отчетов LINQ. <sup>24.5</sup>
* Добавлено новое свойство [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) – оно обеспечивает более точную временную метку для комментариев, улучшая организацию и отслеживаемость. <sup>24.6</sup>
* Механизм отчетов LINQ был улучшен. Было произведено выборочное удаление пустых абзацев и определение пользовательских сообщений для отсутствующих членов объекта, что привело к более чистым и информативным отчетам. <sup>24.6</sup>
* Формат даты и времени теперь автоматически определяется для беспрепятственного экспорта в формат XLSX. <sup>24.7</sup>
* Добавлено общедоступное свойство [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), которое позволяет проверить, защищен ли проект VBA. <sup>24.7</sup>
* Информация о шрифтах расширена с помощью свойства **EmbeddingLicensingRights**, добавленного в классы [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) и [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Добавлен способ эффективной очистки верхних и нижних колонтитулов разделов с сохранением водяных знаков для более точной работы со структурой документа. Для очистки верхних и нижних колонтитулов разделов используйте новый публичный метод [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). <sup>24.8</sup>
* Включено цифровое подписание документов XPS с помощью [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) — для этой цели добавлено новое свойство [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/). <sup>24.8</sup>

{{% alert color="primary" %}}

Узнайте больше о [Примечаниях к выпуску Aspose.Words для .NET 24.5](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/).

Узнайте больше о [Примечаниях к выпуску Aspose.Words для .NET 24.6](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/).

Узнайте больше о [Примечаниях к выпуску Aspose.Words для .NET 24.7](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/).

Узнайте больше о [Примечаниях к выпуску Aspose.Words для .NET 24.8](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words для .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 улучшает опыт управления цветами хода, улучшает OLE-объекты и отчетность LINQ, а также вводит новый `Bibliography Sources` публичный API.

Aspose.Words 24.2 Расширенные диаграммы API, Управление стилем и опции LINQ. Эта версия Aspose.Words Также появилась возможность указывать SvgSaveOptions при рендеринге, более гибком управлении загрузкой. Markdown Файлы и работа со справочным текстом для сносок и конечных сносок.

Aspose.Words 24.3 представляет новый TIFF Reader/Writer и эмуляцию операций с бинарными растрами для метафайлов WMF. Aspose.Words 24.3 также продолжает расширять диаграммы API.

Aspose.Words 24.4 улучшает форматы сохранения, некоторые опции рендеринга, а также улучшает работу с цифровыми подписями.

### Поддерживаемые форматы <sup>24.4</sup>

Современный формат изображения **WebP** теперь поддерживается в Aspose.Words для .NET Framework 4.6.2 и выше. Теперь вы можете читать и вставлять изображения WebP в документы, а также сохранять изображения в формате WebP.

Обратите внимание, что в настоящее время WebP доступен только в .NET Standard и .NET Framework v4.6.2 и выше.

### Рендеринг и печать

#### Контроль цвета Stroke <sup>24.1</sup>

The [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) Класс был расширен с набором новых публичных свойств, связанных с управлением цветами хода: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) и [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) и [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### Расширение DrawingML Charts API <sup>24.2 / 24.3 / 24.4</sup>

The **DrawingML Charts API** продолжает расширяться.

#### Встраивание шрифтов, объявленных в правилах @font-face <sup>24.4</sup>

Добавлена возможность встраивать шрифты, объявленные в правилах @font-face, в определения шрифтов полученного документа путем добавления нового свойства с названием [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/).

#### Работа с форматированием свечения и отражения <sup>24.4</sup>

Добавлена возможность работы с форматированием свечения и отражения для рисунков.

### Загрузка и сохранение документов

#### Укажите SvgSaveOptions во время рендеринга <sup>24.2</sup>

Возможность конкретизировать [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) во время рендеринга был добавлен с использованием [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) и [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) методы.

#### Сохранить пустые линии при загрузке Markdown файлы <sup>24.2</sup>

Возможность сохранения пустых линий при загрузке Markdown Добавлены файлы.

#### Новый TIFF Reader/Writer <sup>24.3</sup>

Новый читатель/писатель TIFF Aspose.Words для .NET Standard, .NET 6 и более поздние разработки. Aspose.Words для .NET 24.3 добавлена поддержка чтения изображений TIFF с JPEG и старыми типами сжатия JPEG, а также значительно улучшено качество операций чтения и записи.

### Другой

* Возможность изменять текст элемента управления OLE `TextBox` появилась путем добавления нового свойства [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) в новый класс [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/). <sup>24.1</sup>
* Открытый доступ к библиографическим источникам API был реализован посредством добавления нового пространства имен [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) с его новыми классами и перечислениями, а также посредством добавления нового свойства [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) в класс [Document](https://reference.aspose.com/words/ru/net/aspose.words/document/). <sup>24.1</sup>
* Был предоставлен API для ограничения доступа к членам типа с использованием синтаксиса шаблона для механизма отчетов LINQ. <sup>24.1</sup>
* В класс [Style](https://reference.aspose.com/words/ru/net/aspose.words/style/) добавлены новые общедоступные свойства [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) и [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) для расширенного управления стилями. <sup>24.2</sup>
* Функциональность получения фактического текста справочной метки для сносок и концевых сносок была расширена за счет свойства [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) и метода [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* Включена совместимость с диаграммами `Word 2016` для механизма отчетов `LINQ`. <sup>24.2</sup>
* Реализована эмуляция двоичных растровых операций для WMF метафайлов. <sup>24.3</sup>
* Добавлена возможность определения параметров подписи для документов внутри **SaveOptions** путем добавления нового класса с названием [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) с новыми открытыми членами, а также добавления новых свойств в классы [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) и [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для .NET 24.1 Выпуск заметок](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Узнайте больше о [Aspose.Words для .NET 24.2 Заметки о выпуске](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Узнайте больше о [Aspose.Words для .NET 24.3 Выпускные примечания](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

Узнайте больше о [Aspose.Words для .NET 24.4 Примечания к выпуску](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words для .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 расширяет параметры рендеринга, эмуляцию рендеринга метафайлов и markdown Сохранить варианты.

Aspose.Words 23.10 улучшает рендеринг, расширяет возможности загрузки и сохранения документов и позволяет пользователям объединять документы по-новому.

Aspose.Words 23.11 улучшает работу с доработками, форматом XLSX и шрифтами на легенде графика с дополнительными опциями.

Aspose.Words 23.12 вводятся новые свойства и перечисления для работы с документами PDF и OOXML, а также поддержка изображений WebP.

### Чтение и печать

#### Настройка названий топоров в DrawingML диаграммы <sup>23.9</sup>

Возможность настройки названий осей в диаграммах DrawingML была введена благодаря внедрению нового публичного класса. [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) и [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) собственность.

#### Определение вертикального положения шрифтов в параграфе <sup>23.9</sup>

Теперь можно определить вертикальное положение шрифтов в абзаце, используя новую публику. [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) Собственность и новое [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/) перечисление.

#### Контроль цвета переднего плана <sup>23.10</sup>

Способность извлекать цвет переднего плана без модификаторов была добавлена. [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) и [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) классы через **BaseForeColor** собственность.

#### Расширение функциональности диаграмм <sup>23.10</sup>

Функциональность The [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/), и [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) Классы были расширены новыми методами и свойствами.

#### Автоматическая настройка и подгонка изображения в форму <sup>23.10</sup>

Простой способ автоматической настройки и установки изображения в определенную форму был предоставлен с помощью нового. [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) метод.

#### Форматирование шрифта по умолчанию для рисования МЛ Обсуждение Chart Legend Entries <sup>23.11</sup>

Возможность указать форматирование шрифта по умолчанию для записей легенд диаграмм DrawingML была добавлена через [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) собственность. Эта функция облегчает более обтекаемый и последовательный внешний вид элементов диаграммы, улучшая общую эстетику документа.

#### Укажите макет страницы при открытии PDF в Reader <sup>23.12.</sup>

Возможность указать макет страницы, который будет использоваться при открытии документа в PDF-ридере, была добавлена благодаря введению нового. [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) собственности на [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) Класс и введение нового [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) перечисление.

### Погрузка и экономия документов

#### Определение имени папки для построения URI изображения в Markdown <sup>23.9</sup>

The [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) Класс был расширен за счет включения [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/) свойство, позволяющее указать название папки, используемой для построения изображения URI, записанного в Markdown Документ.

#### Сократить PDF Размер выпуска <sup>23.10</sup>

Различные оптимизации рендеринга PDF для уменьшения размера вывода при использовании [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) Настройки были реализованы.

#### Распознавать гиперссылки при загрузке документов TXT <sup>23.10</sup>

Функция распознавания гиперссылок при загрузке документов TXT реализована путем добавления новой [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) собственность.

### Другой

* Реализована эмуляция метафильного рендеринга для определения размера растеризации, в частности для ширины ручки WMF и ширины косметической ручки EMF. Чтобы достичь этого, **ScaleWmfFontsToMetafileSize** имущество было заменено на [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) собственности и [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) собственность была добавлена. <sup>23.9</sup>
* Упрощенный метод вставки одного документа в другой документ в текущем положении курсора был введен с использованием [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) метод. <sup>23.10</sup>
* Возможность доступа и модификации свойств стиля была добавлена благодаря внедрению новой технологии. [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) собственность. <sup>23.10</sup>
* Общий параметр типа был добавлен к методам [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) класс. <sup>23.10</sup>
* Способ контроля, когда определенный пересмотр должен быть принят/отклонен или не был осуществлен с использованием [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) и [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/) методы. Это расширение дает пользователям более точный контроль над процессом пересмотра. <sup>23.11</sup>
* Возможность записывать все разделы документа на одну и ту же рабочую таблицу XLSX была предоставлена с помощью нового стандарта. [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) Тип перечня и новый [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) собственность. <sup>23.11</sup>
* Способ контроля того, как расширения формата ZIP64 будут использоваться для документов OOXML, реализован через новое свойство Zip64Mode. `OoxmlSaveOptions` Класс и новый список Zip64Mode. <sup>23.12.</sup>
* Введена поддержка изображения WebP. Обратите внимание, что эта функция доступна только для .NetСтандарт и .NET6+ версий. <sup>23.12.</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для .NET 23.9 Выпуск заметок](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-9-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.10 Релизные заметки](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.11 Выпуск заметок](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.12 Выпуск заметок](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words для .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 повышает возможность работы с данными серии диаграмм и возможность работы с документами ODT, а также улучшает заголовки/футеры и их текстовую обертку.

Aspose.Words 23.6 расширяет возможности рендеринга, добавляет новый формат экспорта, улучшает отчетность по LINQ и LowCode инструменты.

Aspose.Words 23.7 расширяет возможности отчетности, добавляет новый формат экспорта и вносит изменения в работу с таблицами и цифровыми подписями.

Aspose.Words 23.8 расширяет возможности различных форматов, улучшает рендеринг, добавляет новые возможности работы с полями

### Поддерживаемые форматы

* Начиная с версии 23.6, можно сохранить документ в формате XLSX. Теперь вы можете конвертировать документы в формат Excel. <sup>23.6.</sup>
* Начиная с версии 23.7, можно сохранить страницу документа или форму в формате EPS. <sup>23.7</sup>

### Новые особенности формата

* Введена функция автоматического создания Таблицы Содержимого (TOC) для документов MOBI. <sup>23.8</sup>
* The [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) Конструктор был расширен [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* Реализовано формирование вертикального текста для метафайлов ЭМП. <sup>23.8</sup>

### Чтение и печать

#### Получить и изменить Данные серии Chart <sup>23.5</sup>

Функция получения и изменения данных серии диаграмм была предоставлена путем добавления:

* Новые классы: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* Новые типы перечня: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Поддержка расширенной типографии <sup>23.6.</sup>

Добавлена поддержка расширенной типографии в рендеринге WMF, EMF и EMF+.

#### Цветной контент на странице <sup>23.6.</sup>

Общественная собственность [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/), Добавлено указание, является ли страница цветной или нет.

#### Форматирование для Chart Data Labels <sup>23.6.</sup>

Была реализована возможность настройки заполнения, хода и форматирования вызова для меток данных диаграмм.

### Mail Merge и отчетность

#### Динамическая вставка HTML для LINQ Reporting Engine <sup>23.6.</sup>

Добавлен новый способ динамической вставки HTML для LINQ Reporting Engine.

#### Mustache Tags поддержка <sup>23.7</sup>

Mustache Теги теперь поддерживаются в [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) и [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion) методы.

#### Обновление LINQ Reporting Engine Template Syntax <sup>23.7</sup>

Шаблон LINQ Reporting Engine теперь поддерживает `ElementAt` Методы расширения ElementAtOrDefault.

#### Определить размер отредактированных изображений <sup>23.8</sup>

Новая общественная собственность [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) введено для указания размера визуализированных изображений в пикселях.

#### Сохраняйте белые пространства для струнных значений JSON - LINQ <sup>23.8</sup>

В движок отчетности LINQ добавлена опция сохранения белых пространств для значений строк JSON.

### LowCode <sup>23.6.</sup>

Новый LowCode Были добавлены методы, предназначенные для объединения различных типов документов в единый выходной документ.

### Другой

* Осуществлена поддержка обертывания текста в заголовках/футерах. <sup>23.5</sup>
* Возможность удаления цифровых подписей из документов ODT была добавлена через приложение. [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) метод. <sup>23.5</sup>
* Общественная собственность [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) для получения базового и рубинового текста фонетического руководства [Run](https://reference.aspose.com/words/net/aspose.words/run/) был добавлен. <sup>23.5</sup>
* Возможность извлечения значения цифровой подписи из документа с цифровой подписью в виде байтового массива была добавлена путем введения нового [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) собственность. <sup>23.7</sup>
* The [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) Расширены занятия с новыми общественными деятелями – [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/), и [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* Добавлена поддержка полей CITATION и BIBLIOGRAPHY. <sup>23.8</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для .NET 23.5 Релизные заметки](/words/net/aspose-words-for-net-23-5-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.6 Выпуск заметок](/words/net/aspose-words-for-net-23-6-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.7 Выпускные примечания](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-7-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.8 Выпускные примечания](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words для .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 улучшает производительность эмуляции растровых операций, а также повышает качество экспорта и рендеринга документов.

Aspose.Words 23.2 вводит сохранение документов в формате MOBI, улучшает рендеринг диаграмм и вносит заметные изменения в детали внешнего вида документа.

Aspose.Words 23.3 усиливает импорт документов и экономит новыми свойствами, а также улучшает качество работы с фоном и цветом переднего плана и радиальным градиентом.

Aspose.Words 23.4 улучшает расчет некоторых параметров и позиционирование таблицы и окружающего текста.

### Повышение производительности

#### Эмуляция растровых операций <sup>23.1</sup>

Значительно улучшены производительность и качество эмуляции растровых операций метафилами.

### Поддерживаемые форматы

#### Экспорт в MOBI <sup>23.2</sup>

Начиная с версии 23.2, можно сохранить документ в формате MOBI (также называемый PRC, AZW - MOBI). Amazon Формат файла электронной книги Kindle. Теперь можно не только загружать документы MOBI, но и экспортировать файлы в формат MOBI.

### Рендеринг

#### Работа с Shading Theme Colors <sup>23.1</sup>

Реализована возможность работы с затенением цветов темы.

#### Поддержка коэффициента R-квадратов в диаграммах DML <sup>23.1</sup>

Поддержка R-квадратного коэффициента в DML графике трендовых линий при добавлении рендеринга.

#### Chart Rendering Улучшения <sup>23.2</sup>

С 23.2 рендеринг диаграммы был значительно улучшен.

#### Фон и контроль цвета переднего плана <sup>23.3</sup>

The [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) Класс был расширен с набором новых общественных свойств, связанных с цветами фона и переднего плана: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) и [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) и [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Радиальные градиенты с `SkiaSharp` Родной шадер <sup>23.3</sup>

Обработка радиальных градиентов с помощью `SkiaSharp` родной шейдер для .NET Standard была осуществлена.

#### Расстояние между столом и окружающим текстом <sup>23.4</sup>

Способность устанавливать расстояние между таблицей и окружающим текстом была добавлена путем введения новых свойств. [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) класс: [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/), и [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Погрузка и экономия документов

#### Генерировать `TOC` AZW3 Документы <sup>23.1</sup>

Способность генерировать `TOC` (таблица содержания) для документов AZW3 была добавлена посредством использования [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/) собственность.

#### Перечень экспортных товаров на Markdown <sup>23.1</sup>

Способ контроля за экспортом списков товаров в Markdown Формат обеспечивается путем добавления [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) собственности на [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) класс.

#### Документы, сохраняющие уведомления о прогрессе <sup>23.3</sup>

Сохранение уведомлений о прогрессе для форматов MOBI и AZW3.

#### Приговор и корректировка слов <sup>23.3</sup>

Возможность определять, следует ли автоматически корректировать интервал между предложениями и словами при импорте документов, была добавлена путем введения [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/) собственность.

### Другой

* Возможность конкретизировать корректировку интервала символа документа была добавлена через [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) имущественная реализация <sup>23.2</sup>
* Способ инструктировать Aspose.Words включение текстовых ящиков, сносок и сносок в статистику подсчета слов было обеспечено путем добавления [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) собственность <sup>23.2</sup>
* Введена новая опция для стиля документа, которая позволяет определить, является ли стиль автоматически переопределяемым на основе соответствующего значения. [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) собственность <sup>23.2</sup>
* Способность определять, [Run](https://reference.aspose.com/words/net/aspose.words/run/) является фонетический прогон был добавлен с использованием [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) собственность <sup>23.4</sup>
* Простой способ работы с сериями и осями комбинированных графиков был реализован путем введения [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) Класс и добавление [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) собственность <sup>23.4</sup>
* Новые публичные свойства, связанные с формой относительного позиционирования и размера, были добавлены к [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) класс <sup>23.4</sup>
* Точность и производительность расчета яркости цвета для автоматического разрешения цвета текста были улучшены в соответствии с последними версиями Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для .NET 23.1 Выпуск заметок](/words/net/aspose-words-for-net-23-1-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.2 Выпускные примечания](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-2-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.3 Выпускные примечания](/words/net/aspose-words-for-net-23-3-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.4 Выпуск заметок](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Смотрите также

{{% alert color="primary" %}}

Эта страница содержит последние новости выпуска за последние 2 года. Подробнее о предыдущих выпусках см. [Скачать Notes "](/words/net/release-notes/) страниц в соответствующих разделах.

{{% /alert %}}
