---
title: Что нового
second_title: Aspose.Words для Java
articleTitle: Что нового в Aspose.Words для Java
linktitle: Что нового в Aspose.Words для Java
type: docs
description: "Aspose.Words для Java Расширяется и усиливается ежедневно. На этой странице вы можете узнать об огромных и самых интересных особенностях продукта."
weight: 2
url: /ru/java/what-s-new-in-aspose-words-for-java/
---

На этой странице описаны самые интересные новые Aspose.Words Особенности, представленные в последних выпусках.

## Aspose.Words для Java 24.9

Aspose.Words 24.9 представляет вставку групповых фигур и вставку StructuredDocumentTag через DocumentBuilder, улучшает визуализацию радиальных диаграмм с помощью градуировок, улучшает цифровые подписи с поддержкой XAdES-EPES, добавляет распознавание подчеркивания Markdown и предоставляет доступ к разделителям сносок/концевых сносок.

### Рендеринг и печать

#### Градуировки на радиальных диаграммах

Реализована визуализация градуировок на радиальных диаграммах.

### Преобразование, загрузка и сохранение документов

#### Подчеркивание форматирования при загрузке файлов Markdown

Возможность распознавания подчеркивания форматирования при загрузке документов Markdown была включена путем добавления нового публичного свойства [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting).

### Цифровые подписи

#### Подписание документов с помощью XAdES-EPES

Возможность подписывать документы с помощью подписей XML-DSig уровня XAdES-EPES была введена путем добавления нового публичного свойства [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) и нового публичного перечисления [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)

### Другое

* Добавлен новый публичный метод [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...) для групповых фигур.
* Добавлен новый публичный метод [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int) для вставки **StructuredDocumentTags** в документ.
* Публичный доступ к разделителям сносок/концевых сносок был предоставлен путем добавления нескольких публичных классов и свойств.

{{% alert color="primary" %}}

Узнайте больше о [Примечаниях к выпуску Aspose.Words для Java 24.9](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words для Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 расширяет возможности сборок, улучшает возможности рендеринга и расширяет некоторые другие возможности.

В Aspose.Words 24.6 улучшены параметры рендеринга, улучшены функции поиска и сравнения, а также расширено несколько других функций.

Aspose.Words 24.7 меняет способ работы с ActiveX, расширяет возможности рендеринга, а также экспорта в форматы Markdown и XLSX.

Aspose.Words 24.8 улучшает настройку диаграммы с помощью точного управления надписями осей, расширяет управление шрифтами, улучшает обработку структуры документа и добавляет новые возможности для экспорта HTML/XAML, функциональности PDF, преобразования документов и цифровых подписей.

### Поддерживаемые форматы

Начиная с версии 24.7 поддерживается экспорт в PDF/UA-2 для обеспечения доступности для пользователей с ограниченными возможностями.

### Рендеринг и печать

#### Изменения в Charts, Shapes и DrawingML <sup>24.5</sup>

- Реализован рендеринг эффектов DrawingML для графики SVG, расширяющий предыдущую функциональность, ограниченную изображениями.
- Поддержка создания комбинированных диаграмм и настройки таких свойств, как ширина промежутка, перекрытие и пузырьковый масштаб в группах рядов, была введена путем добавления файла [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) и [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) и классы [SeriesGroups](https://reference.aspose.com/ words/java/com.aspose.words/chart/#getSeriesGroups).
- Функциональность для управления эффектом SoftEdge фигур реализована путем добавления класса [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- Возможность изменять значения настройки фигур реализована путем добавления [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) и [Adjustment](https:/ /reference.aspose.com/words/java/com.aspose.words/adjustment/) общедоступные классы и [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/# getAdjustments) свойство.

#### Изменения в диаграммах, фигурах и рисунках <sup>24.6</sup>

* Возможности построения диаграмм были расширены. Теперь вы можете создавать более широкий спектр диаграмм, включая *Древовидные диаграммы*, *Солнечные лучи*, *Гистограммы*, *Диаграммы Парето*, *Ящики с усами*, *Водопады* и *Воронки*. Это позволяет визуализировать данные более разнообразно и информативно.
* Улучшено управление цветом для форматирования теней. Вы можете получить более точный контроль над внешним видом ваших документов, получив доступ к теневым цветам.
* Улучшено повышение производительности фонового рендеринга. Вы можете значительно ускорить рендеринг фонов, содержащих мелкие элементы, благодаря встроенной технологии тайлинга.
* Добавлены реалистичные градиенты для фигур. Теперь вы можете создавать фигуры DML с нелинейными градиентами, имитируя визуальный стиль Microsoft Word для более изысканного вида.

#### Настройка меток данных диаграммы <sup>24.7</sup>

Добавлена ​​возможность настраивать метки данных диаграммы, такие как **Orientation** и **Rotation**.

#### Пользовательский стиль номеров для уровней списка <sup>24.7</sup>

Добавлен установщик для общедоступного свойства [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat). Теперь вы можете определить собственный стиль номеров для уровней списка.

#### Изменения в работе с ActiveX <sup>24.7</sup>

* Свойства объектов ActiveX теперь можно изменять, что дает вам больше контроля над их поведением.
* Добавлена ​​возможность изменять значение переключателя ActiveX для включения динамического взаимодействия.
* Добавлена ​​возможность переключать флажок ActiveX на «установленный» или «снятый».

#### Управление ориентацией и поворотом меток делений осей диаграммы <sup>24.8</sup>

Точный контроль над ориентацией и поворотом меток делений осей диаграммы был добавлен для более удобной настройки диаграммы — класс [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) был расширен новыми свойствами **Orientation** и **Rotation**.

#### Замена обратной косой черты на знак йены <sup>24.8</sup>

Улучшен обратно совместимый экспорт HTML и XAML для замены символа обратной косой черты на знак йены. Для этого в классы [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) и [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) добавлено свойство **ReplaceBackslashWithYenSign**.

#### Использование тегов SDT в качестве имен полей формы при экспорте в PDF <sup>24.8</sup>

Экспорт PDF с поддержкой использования тегов SDT в качестве имен полей формы был улучшен путем добавления нового свойства **UseSdtTagAsFormFieldName** в класс [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Преобразование, загрузка и сохранение документов

#### Экспорт ссылок в формат Markdown <sup>24.7</sup>

Возможность управления экспортом ссылок в формате Markdown была добавлена ​​посредством реализации свойства [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode <sup>24.8</sup>

Введен новый класс **LowCode.Converter**, предназначенный для предоставления набора методов для преобразования различных типов документов с помощью одной строки кода.

### Поиск и сравнение

#### Расширенные параметры сравнения <sup>24.6</sup>
Добавлена ​​возможность оптимизировать рабочие процессы анализа данных с помощью улучшенных функций сравнения. Сюда входит новая опция [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) и переработанный интерфейс для расширенных сравнений.

### Другой

* Реализована функция удаления пустых страниц из документа путем добавления метода [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* Возможность проверки наличия макросов VBA без загрузки документа предоставлена добавлением [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) свойство. <sup>24.5</sup>
* Теперь поддерживается сохранение нумерации источников при вставке документа с помощью механизма отчетов LINQ. <sup>24.5</sup>
* Добавлено новое свойство [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) – оно обеспечивает более точную временную метку для комментариев, улучшая организацию и отслеживаемость. <sup>24.6</sup>
* Механизм отчетов LINQ был улучшен. Было произведено выборочное удаление пустых абзацев и определение пользовательских сообщений для отсутствующих членов объекта, что привело к более чистым и информативным отчетам. <sup>24.6</sup>
* Формат даты и времени теперь автоматически определяется для беспрепятственного экспорта в формат XLSX. <sup>24.7</sup>
* Добавлено общедоступное свойство [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), которое позволяет проверить, защищен ли проект VBA. <sup>24.7</sup>
* Информация о шрифтах была расширена с помощью свойства **EmbeddingLicensingRights**, добавленного в классы [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) и [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* Добавлен способ эффективной очистки верхних и нижних колонтитулов разделов с сохранением водяных знаков для более точной работы со структурой документа. Для очистки верхних и нижних колонтитулов разделов используйте новый публичный метод **ClearHeadersFooters**. <sup>24.8</sup>
* Включено цифровое подписание документов XPS с помощью [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) — для этой цели добавлено новое свойство **DigitalSignatureDetails**. <sup>24.8</sup>

{{% alert color="primary" %}}

Узнайте больше о [Примечаниях к выпуску Aspose.Words для Java 24.5](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Узнайте больше о [Примечаниях к выпуску Aspose.Words для Java 24.6](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Узнайте больше о [Примечаниях к выпуску Aspose.Words для Java 24.7](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Узнайте больше о [Примечаниях к выпуску Aspose.Words для Java 24.8](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words для Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 улучшает опыт управления цветами штрихов, улучшает OLE-объекты и отчетность LINQ, а также вводит новую публичную библиографию Источники API.

Aspose.Words 24.2 Расширенные диаграммы API, Управление стилем и опции LINQ. Эта версия Aspose.Words Также появилась возможность указывать SvgSaveOptions при рендеринге, более гибком управлении загрузкой. Markdown Файлы и работа со справочным текстом для сносок и конечных сносок.

Aspose.Words 24.3 представляет новый TIFF Reader/Writer и эмуляцию бинарных растровых операций для метафайлов WMF. Aspose.Words 24.3 также продолжает расширять диаграммы API.

Aspose.Words 24.4 улучшает форматы сохранения, некоторые опции рендеринга, а также улучшает работу с цифровыми подписями.

### Поддерживаемые форматы <sup>24.4</sup>

Современный формат изображения **WebP** теперь поддерживается в Aspose.Words. Теперь вы можете читать и вставлять изображения WebP в документы, а также сохранять изображения в формате WebP.

### Рендеринг и печать

#### Контроль цвета Stroke <sup>24.1</sup>

The [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) Класс был расширен с набором новых публичных свойств, связанных с управлением цветами штриха: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) и [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) и [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### Чарты DrawingML API Продление <sup>24.2 / 24.3 / 24.4</sup>

The **DrawingML Charts API** продолжает расширяться.

#### Встраивание шрифтов, объявленных в правилах @font-face <sup>24.4</sup>

Добавлена возможность встраивать шрифты, объявленные в правилах @font-face, в определения шрифтов полученного документа путем добавления нового свойства с названием [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### Работа с форматированием свечения и отражения <sup>24.4</sup>

Добавлена возможность работы с форматированием свечения и отражения для рисунков.

### Погрузка и экономия документов

#### Укажите SvgSaveOptions во время рендеринга <sup>24.2</sup>

Возможность конкретизировать [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) во время рендеринга был добавлен с использованием [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) и [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) методы.

#### Сохранить пустые линии при загрузке Markdown файлы <sup>24.2.2</sup>

Возможность сохранения пустых линий при загрузке Markdown Добавлены файлы.

#### Новый TIFF Reader/Writer <sup>24.3</sup>

Новый читатель/писатель TIFF Aspose.Words для .NET Standard, .NET 6 и более поздние разработки. Aspose.Words для .NET 24.3 добавлена поддержка чтения изображений TIFF с JPEG и старыми типами сжатия JPEG, а также значительно улучшено качество операций чтения и записи.

### Другой

* Возможность изменять текст `TextBox` Контроль OLE был введен путем добавления нового [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) собственность на новый [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) класс. 24.1 <sup>24.1</sup>
* Источники библиографии Public API Он был реализован путем добавления нескольких новых [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) и [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) классы и а [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) Перечисление, а также добавление нового [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) собственности на [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) класс. <sup>24.1</sup>
* API Предусмотрено ограничение доступа к членам типов с использованием синтаксиса шаблонов для системы отчетности LINQ. <sup>24.1</sup>
* Новые общественные объекты [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), и [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) Для улучшения управления стилем были добавлены [Style](https://reference.aspose.com/words/net/aspose.words/style/) класс. <sup>24.2</sup>
* Функциональность извлечения фактического текста ссылочного знака для сносок и сносок была улучшена с помощью [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) собственности и [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) метод. <sup>24.2</sup>
* Совместимость с `Word 2016` диаграммы для `LINQ Reporting Engine` Это было разрешено. <sup>24.2</sup>
* Реализована эмуляция операций бинарного растра для метафайлов WMF. <sup>24.3</sup>
* Добавлена возможность определения параметров подписи для документов внутри **SaveOptions** путем добавления нового класса с названием [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) с новыми открытыми членами, а также добавления новых свойств в классы [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) и [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 24.1 Выпуск заметок](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Узнайте больше о [Aspose.Words для Java 24.2 Опубликовать примечания.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

Узнайте больше о [Aspose.Words для Java 24.3 Опубликовать примечания.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

Узнайте больше о [Aspose.Words для Java 24.4 Опубликовать примечания.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words для Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 расширяет параметры рендеринга, эмуляцию рендеринга метафайлов и markdown Сохранить варианты.

Aspose.Words 23.10 улучшает рендеринг, расширяет возможности загрузки и сохранения документов и позволяет пользователям объединять документы по-новому.

Aspose.Words 23.11 улучшает работу с доработками, форматом XLSX и шрифтами на легенде графика с дополнительными опциями.

Aspose.Words 23.12 вводит новые свойства и перечисления для работы с PDF-документами WebP Изображения и обновленная библиотека замка.

### Рендеринг и печать

#### Настройка названий топоров в DrawingML диаграммы <sup>23.9</sup>

Возможность настройки названий осей в диаграммах DrawingML была введена благодаря внедрению нового публичного класса. [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) и [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) собственность.

#### Определение вертикального положения шрифтов в параграфе <sup>23.9</sup>

Теперь можно определить вертикальное положение шрифтов в абзаце с помощью новой общественности. [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) Собственность и новый [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) перечисление.

#### Контроль цвета переднего плана <sup>23.10</sup>

Способность извлекать цвет переднего плана без модификаторов была добавлена. [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) и [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) классы через **BaseForeColor** собственность.

#### Расширение функциональности диаграмм <sup>23.10</sup>

Функциональность The [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), и [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) Классы были расширены новыми методами и свойствами.

#### Автоматическая настройка и подгонка изображения в форму <sup>23.10</sup>

Простой способ автоматической настройки и установки изображения в определенную форму был предоставлен с помощью нового. [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) метод.

#### Форматирование шрифта по умолчанию для рисования МЛ Обсуждение Chart Legend Entries <sup>23.11</sup>

Возможность указать форматирование шрифта по умолчанию для записей легенд диаграмм DrawingML была добавлена через **Font** собственность. Эта функция облегчает более обтекаемый и последовательный внешний вид элементов диаграммы, улучшая общую эстетику документа.

#### Укажите макет страницы при открытии PDF в Reader <sup>23.12.</sup>

Возможность указать макет страницы, который будет использоваться при открытии документа в PDF-ридере, была добавлена благодаря введению нового. [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) собственности на [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) Класс и введение нового [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) перечисление.

### Погрузка и экономия документов

#### Определение имени папки для построения URI изображения в Markdown <sup>23.9</sup>

The [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) Класс был расширен за счет включения [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) свойство, позволяющее указать название папки, используемой для построения изображения URI, записанного в Markdown Документ.

#### Сократить PDF Размер выпуска <sup>23.10</sup>

Различные оптимизации рендеринга PDF для уменьшения размера вывода при использовании [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) Настройки были реализованы.

#### Распознавать гиперссылки при загрузке документов TXT <sup>23.10</sup>

Функция распознавания гиперссылок при загрузке документов TXT реализована путем добавления новой [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) собственность.

### Другой

- Реализована эмуляция рендеринга Metafile для определения размера растеризации, в частности для ширины ручки WMF и ширины косметической ручки EMF. Чтобы достичь этого, **ScaleWmfFontsToMetafileSize** имущество было заменено на [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) собственности и [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) собственность была добавлена. <sup>23.9</sup>
- Упрощенный метод вставки одного документа в другой документ в текущем положении курсора был введен с использованием [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) метод. <sup>23.10</sup>
- Возможность доступа и модификации свойств стиля была добавлена благодаря внедрению новой технологии. [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) собственность. <sup>23.10</sup>
- К методам, используемым в [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) класс. <sup>23.10</sup>
- Способ контроля, когда определенный пересмотр должен быть принят/отклонен или не был осуществлен с использованием [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) и [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) методы. Это расширение дает пользователям более точный контроль над процессом пересмотра. <sup>23.11</sup>
- Возможность записывать все разделы документа на одну и ту же рабочую таблицу XLSX была предоставлена с помощью нового стандарта. [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) Перечислительный тип и новый [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) собственность. <sup>23.11</sup>
- Поддержка WebP Изображение было введено. Обратите внимание, что эта функция доступна только для .NetСтандарт и .NET6+ версий. <sup>23.12.</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 23.9 Выпускные примечания](/words/java/aspose-words-for-java-23-9-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.10 Релизные заметки](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.11 Выпуск заметок](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.12 Выпуск заметок](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words для Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 повышает возможность работы с данными серии диаграмм и возможность работы с документами ODT, а также улучшает заголовки/футеры и их текстовую обертку.

Aspose.Words 23.6 расширяет возможности рендеринга, добавляет новый формат экспорта, совершенствует отчетность LINQ и LowCode инструменты.

Aspose.Words 23.7 расширяет возможности отчетности, добавляет новый формат экспорта и вносит изменения в работу с таблицами и цифровыми подписями.

Aspose.Words 23.8 расширяет возможности различных форматов, улучшает рендеринг, добавляет новые возможности работы с полями

### Поддерживаемые форматы

* Начиная с версии 23.6, можно сохранить документ в формате XLSX. Теперь вы можете конвертировать документы в формат Excel. <sup>23.6.</sup>

* Начиная с версии 23.7, можно сохранить страницу документа или форму в формате EPS. <sup>23.7</sup>

* ###Новые форматы

  Введена функция автоматического создания Таблицы Содержимого (TOC) для документов MOBI. <sup>23.8</sup>
  - [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) Конструктор был расширен [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - Реализовано формирование вертикального текста для метафайлов ЭМП. <sup>23.8</sup>

### Рендеринг

#### Получить и изменить Данные серии Chart <sup>23.5</sup>

Функция получения и изменения данных серии диаграмм была предоставлена путем добавления:

- новые классы: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- новые типы перечня: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Поддержка расширенной типографии <sup>23.6.</sup>

Добавлена поддержка расширенной типографии в рендеринге WMF, EMF и EMF+.

#### Цветной контент на странице <sup>23.6.</sup>

Общественная собственность [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), Добавлено указание, является ли страница цветной или нет.

#### Форматирование для Chart Data Labels <sup>23.6.</sup>

Была реализована возможность настройки заполнения, хода и форматирования вызова для меток данных диаграмм.

### Mail Merge и отчетность

#### Динамическая вставка HTML для LINQ Reporting Engine <sup>23.6.</sup>

Добавлен новый способ динамической вставки HTML для LINQ Reporting Engine.

#### Mustache Tags поддержка <sup>23.7</sup>

Mustache Теги теперь поддерживаются в [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) и [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) методы.

#### Обновление LINQ Reporting Engine Template Syntax <sup>23.7</sup>

Синтаксис шаблона LINQ Reporting Engine теперь поддерживает `ElementAt` Методы расширения ElementAtOrDefault.

#### Определить размер отредактированных изображений <sup>23.8</sup>

Новая общественная собственность **ImageSize** Для уточнения размера визуализированных изображений в пикселях введено.

#### Сохранить белые пространства для струнных значений JSON - LINQ <sup>23.8</sup>

В движок отчетности LINQ добавлена опция сохранения белых пространств для значений строк JSON.

### LowCode <sup>23.6.</sup>

Новый LowCode Были добавлены методы, предназначенные для объединения различных типов документов в единый выходной документ.

### Другой

- Осуществлена поддержка обертывания текста в заголовках/футерах. <sup>23.5</sup>
- Возможность удаления цифровых подписей из документов ODT была добавлена через приложение. [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) метод. <sup>23.5</sup>
- Общественная собственность [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) для получения базового и рубинового текста фонетического руководства [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) был добавлен. <sup>23.5</sup>
- Возможность извлечения значения цифровой подписи из документа с цифровой подписью в виде байтового массива была добавлена путем введения нового [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) собственность. <sup>23.7</sup>
- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) и [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Расширены занятия с новыми общественными деятелями – [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), и [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- Добавлена поддержка полей CITATION и BIBLIOGRAPHY. <sup>23.8</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 23.5 Заметки о выпуске](/words/java/aspose-words-for-java-23-5-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.6 Выпуск заметок](/words/java/aspose-words-for-java-23-6-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.7 Выпускные примечания](/words/java/aspose-words-for-java-23-7-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.8 Выпускные примечания](/words/java/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words для Java 23.1, 23.2, 23.3, 23.4

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

С 23.2 рендеринг диаграмм значительно улучшился.

#### Фон и контроль цвета переднего плана <sup>23.3</sup>

The [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) Класс был расширен с набором новых общественных свойств, связанных с цветами фона и переднего плана: **ForeThemeColor** и **BackThemeColor**, **ForeTintAndShade** и **BackTintAndShade**.

#### Радиальные градиенты с `SkiaSharp` Родной шадер <sup>23.3</sup>

Обработка радиальных градиентов с помощью `SkiaSharp` родной шейдер для .NET Standard была реализована.

#### Расстояние между столом и окружающим текстом <sup>23.4</sup>

Способность устанавливать расстояние между таблицей и окружающим текстом была добавлена путем введения новых свойств. [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) класс: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), и [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Погрузка и экономия документов

#### Генерировать `TOC` AZW3 Документы <sup>23.1</sup>

Способность генерировать `TOC` (таблица содержания) для документов AZW3 была добавлена посредством использования [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) собственность.

#### Перечень экспортных товаров на Markdown <sup>23.1</sup>

Способ контроля за экспортом перечней на Markdown Формат обеспечивается путем добавления [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) собственности на [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) класс.

#### Документы, сохраняющие уведомления о прогрессе <sup>23.3</sup>

Сохранение уведомлений о прогрессе для форматов MOBI и AZW3.

#### Приговор и коррекция слов <sup>23.3</sup>

Возможность определять, следует ли автоматически корректировать интервал между предложениями и словами при импорте документов, была добавлена путем введения **AdjustSentenceAndWordSpacing** собственность.

### Другой

- Возможность конкретизировать корректировку интервала символа документа была добавлена через [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) имущественная реализация <sup>23.2</sup>
- Способ инструктировать Aspose.Words включение текстовых ящиков, сносок и сносок в статистику подсчета слов было обеспечено путем добавления [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) собственность <sup>23.2</sup>
- Новый вариант для стиля документа, который позволяет определить, является ли стиль автоматически переопределен на основе соответствующего значения, был введен через [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) собственность <sup>23.2</sup>
- Способность определять, [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) Это фонетический прогон, добавленный с использованием **IsPhoneticGuide** собственность <sup>23.4</sup>
- Простой способ работы с сериями и осями комбинированных диаграмм был реализован путем введения **ChartAxisCollection** Класс и добавление **Chart.Axes** собственность <sup>23.4</sup>
- Новые публичные свойства, связанные с формой относительного позиционирования и размера, были добавлены к [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) класс <sup>23.4</sup>
- Точность и производительность расчета яркости цвета для автоматического разрешения цвета текста была улучшена в соответствии с последними версиями Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 23.1 Выпуск заметок](/words/java/aspose-words-for-java-23-1-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.2 Выпускные примечания](/words/java/aspose-words-for-java-23-2-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.3 Выпускные примечания](/words/java/aspose-words-for-java-23-3-release-notes/).

Узнайте больше о [Aspose.Words для Java 23.4 Выпуск заметок](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Смотрите также

{{% alert color="primary" %}}

Эта страница содержит последние новости выпуска за последние 2 года. Подробнее о предыдущих выпусках см. [Скачать Notes "](/words/java/release-notes/) страниц в соответствующих разделах.

{{% /alert %}}
