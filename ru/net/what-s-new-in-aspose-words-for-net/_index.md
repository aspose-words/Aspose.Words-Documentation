---
title: Что нового
second_title: Aspose.Words для .NET
articleTitle: Что нового в Aspose.Words для .NET
linktitle: Что нового в Aspose.Words для .NET
type: docs
description: "Aspose.Words для .NET ежедневно расширяется и совершенствуется. На этой странице вы можете узнать об огромных и наиболее интересных функциях продукта."
weight: 10
url: /ru/net/what-s-new-in-aspose-words-for-net/
---

На этой странице описаны наиболее интересные новые функции Aspose.Words, представленные в последних выпусках.

## Aspose.Words для .NET 24,1

Aspose.Words В версии 24.1 улучшено управление цветами обводки, улучшены объекты OLE и отчеты LINQ, а также представлен новый общедоступный ресурс "Источники библиографии" API.

### Рендеринг и печать

#### Управление цветом обводки <sup>24.1</sup>

Класс [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) был расширен набором новых общедоступных свойств, связанных с управлением цветами обводки: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) и [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) и [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

### Другой

* Возможность изменять текст элемента управления OLE `TextBox` появилась путем добавления нового свойства [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) в новый класс [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/). <sup>24.1</sup>
* Открытый доступ к библиографическим источникам API был реализован посредством добавления нового пространства имен [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) с его новыми классами и перечислениями, а также посредством добавления нового свойства [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) в класс [Document](https://reference.aspose.com/words/net/aspose.words/document/). <sup>24.1</sup>
* Был предоставлен API для ограничения доступа к членам типа с использованием синтаксиса шаблона для механизма отчетов LINQ. <sup>24.1</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для .NET 24.1 Примечания к выпуску](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

{{% /alert %}}

## Aspose.Words для .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words В версии 23.9 расширены параметры рендеринга, эмуляция рендеринга метафайлов и markdown параметры сохранения.

Aspose.Words В версии 23.10 улучшена визуализация, расширены возможности загрузки и сохранения документов, а также появилась возможность объединять документы новыми способами.

Aspose.Words В версии 23.11 улучшена работа с редакциями, форматом XLSX и шрифтами в легенде диаграммы благодаря дополнительным параметрам.

Aspose.Words В версии 23.12 представлены новые свойства и перечисления для работы с документами PDF и OOXML, а также поддержка изображений WebP.

### Рендеринг и печать

#### Настройка названий осей в диаграммах DrawingML <sup>23.9</sup>

Возможность настраивать заголовки осей в диаграммах DrawingML появилась благодаря реализации нового общедоступного класса [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) и свойства [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/).

#### Определение вертикального положения шрифтов внутри абзаца <sup>23.9</sup>

Теперь можно определить вертикальное положение шрифтов внутри абзаца, используя новое общедоступное свойство [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) и новое перечисление [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/).

#### Управление цветом переднего плана <sup>23.10</sup>

Возможность получения цвета переднего плана без модификаторов была добавлена в классы [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) и [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) через свойство **BaseForeColor**.

#### Расширение функциональности графиков <sup>23.10</sup>

Функциональность классов [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) и [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) была расширена за счет новых методов и свойств.

#### Автоматическая настройка и вставка изображения в форму <sup>23.10</sup>

Новый метод [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) предоставляет простой способ автоматической настройки и размещения изображения в определенной форме.

#### Форматирование шрифта по умолчанию для записей легенды диаграммы DrawingML <sup>23.11</sup>

С помощью свойства [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) добавлена возможность указывать форматирование шрифта по умолчанию для записей легенды диаграмм DrawingML. Эта функция обеспечивает более упорядоченный и единообразный внешний вид элементов диаграммы, улучшая общую эстетику документа.

#### Укажите макет страницы при открытии PDF в Reader <sup>23.12</sup>

Возможность указать макет страницы, который будет использоваться при открытии документа в программе чтения PDF, была добавлена благодаря добавлению нового свойства [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) в класс [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) и новому перечислению [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/).

### Загрузка и сохранение документов

#### Указание имени папки для создания URI изображений в Markdown <sup>23.9</sup>

Класс [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) был расширен за счет включения свойства [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/), которое позволяет указать имя папки, используемой для создания URI изображений, записываемых в документ Markdown.

#### Уменьшить размер вывода PDF <sup>23.10</sup>

Реализованы различные оптимизации рендеринга PDF для уменьшения размера вывода при использовании настроек [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/).

#### Распознавание гиперссылок при загрузке документов TXT <sup>23.10</sup>

Функция распознавания гиперссылок при загрузке документов TXT реализована путем добавления нового свойства [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/).

### Другой

* Реализована эмуляция рендеринга метафайлов для определения размера растеризации, особенно для ширины пера WMF и косметической ширины пера EMF. Для этого свойство **ScaleWmfFontsToMetafileSize** было заменено свойством [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) и добавлено свойство [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/). <sup>23,9</sup>
* С помощью метода [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) введен упрощенный метод вставки одного документа в другой документ в текущей позиции курсора. <sup>23.10</sup>
* Возможность доступа к свойствам стиля и их изменения была добавлена благодаря появлению нового свойства [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/). <sup>23.10</sup>
* К методам класса [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) добавлен параметр универсального типа. <sup>23.10</sup>
* Способ управления тем, когда определенная редакция должна быть принята/отклонена или нет, реализован с помощью методов [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) и [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). Это усовершенствование предоставляет пользователям более точный контроль над процессом редактирования. <sup>23.11</sup>
* Возможность записи всех разделов документа на один и тот же лист XLSX появилась благодаря новому типу перечисления [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) и новому свойству [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/). <sup>23.11</sup>
* Способ управления тем, как расширения формата ZIP64 будут использоваться для документов OOXML, реализован с помощью нового свойства Zip64Mode класса `OoxmlSaveOptions` и нового перечисления Zip64Mode. <sup>23.12</sup>
* Введена поддержка изображений WebP. Обратите внимание, что эта функция доступна только для версий .NetStandart и .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для .NET 23.9 Примечания к выпуску](/words/net/aspose-words-for-net-23-9-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.10 Примечания к выпуску](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.11 Примечания к выпуску](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.12 Примечания к выпуску](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words для .NET 23,5, 23,6, 23,7, 23,8

Aspose.Words В версии 23.5 расширены возможности работы с данными серий диаграмм и документами ODT, а также улучшены верхние и нижние колонтитулы и их перенос текста.

Aspose.Words В версии 23.6 расширены возможности рендеринга, добавлен новый формат экспорта, улучшены отчеты LINQ и инструменты LowCode.

Aspose.Words В версии 23.7 расширены возможности создания отчетов, добавлен новый формат экспорта, а также внесены изменения в работу с таблицами и цифровыми подписями.

Aspose.Words Версия 23.8 расширяет возможности различных форматов, улучшает отрисовку и добавляет новые возможности работы с полями

### Поддерживаемые форматы

* Начиная с версии 23.6 появилась возможность сохранять документ в формате XLSX. Теперь вы можете конвертировать свои документы в формат Excel. <sup>23,6</sup>
* Начиная с версии 23.7 можно сохранять страницу документа или фигуру в формате EPS. <sup>23,7</sup>

### Новые возможности формата

* Введена функция автоматического создания оглавления (TOC) для документов MOBI. <sup>23,8</sup>
* Конструктор [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) был расширен за счет [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23,8</sup>
* Реализовано формирование вертикального текста для метафайлов EMF. <sup>23,8</sup>

### Рендеринг и печать

#### Получение и изменение данных серии диаграмм <sup>23.5</sup>

Возможность получения и изменения данных серий диаграмм была реализована путем добавления:

* новые классы: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* новые типы перечислений: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Поддержка расширенной типографики <sup>23.6</sup>

Добавлена поддержка расширенной типографики в рендеринге WMF, EMF и EMF+.

#### Цветной контент на странице <sup>23.6</sup>

Было добавлено общедоступное свойство [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/), указывающее, цветная страница или нет.

#### Форматирование меток данных диаграммы <sup>23.6</sup>

Реализована возможность установки форматирования заливки, обводки и выносок для меток данных диаграммы.

### Mail Merge и отчетность

#### Динамическая вставка HTML для механизма отчетов LINQ <sup>23.6</sup>

Добавлен новый способ динамической вставки HTML для механизма отчетов LINQ.

#### Mustache Поддержка тегов <sup>23.7</sup>

Теги Mustache теперь поддерживаются в методах [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) и [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion).

#### Обновления синтаксиса шаблонов системы отчетов LINQ <sup>23.7</sup>

Синтаксис шаблона LINQ Reporting Engine теперь поддерживает методы расширения `ElementAt` и ElementAtOrDefault.

#### Указание размера отображаемых изображений <sup>23.8</sup>

Добавлено новое общедоступное свойство [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) для указания размера отображаемых изображений в пикселях.

#### Сохранение пробелов для строковых значений JSON – LINQ <sup>23.8</sup>

В механизм отчетов LINQ была добавлена опция, позволяющая сохранять пробелы для строковых значений JSON.

### LowCode <sup>23,6</sup>

Были добавлены новые методы LowCode, предназначенные для объединения различных типов документов в один выходной документ.

### Другой

* Реализована поддержка переноса текста в верхние и нижние колонтитулы. <sup>23,5</sup>
* Возможность удалять цифровые подписи из документов ODT была добавлена с помощью метода [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/). <sup>23,5</sup>
* Добавлено общедоступное свойство [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) для получения базового и Ruby-текста фонетического руководства [Run](https://reference.aspose.com/words/net/aspose.words/run/). <sup>23,5</sup>
* Возможность получения значения цифровой подписи из документа с цифровой подписью в виде массива байтов была добавлена путем введения нового свойства [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/). <sup>23,7</sup>
* Классы [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) были расширены новыми общедоступными членами — [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/) и [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23,7</sup>
* Добавлена поддержка полей ЦИТАТА и БИБЛИОГРАФИЯ. <sup>23,8</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для .NET 23.5 Примечания к выпуску](/words/net/aspose-words-for-net-23-5-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.6 Примечания к выпуску](/words/net/aspose-words-for-net-23-6-release-notes/).

Узнайте больше о [Aspose.Words для версии .NET 23.7. Примечания к выпуску](/words/net/aspose-words-for-net-23-7-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.8 Примечания к выпуску](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words для .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 повышает производительность эмуляции растровых операций, а также повышает качество экспорта и рендеринга документов.

Aspose.Words В версии 23.2 реализовано сохранение документов в формате MOBI, улучшено отображение диаграмм и внесены заметные изменения в детали внешнего вида документов.

Aspose.Words В версии 23.3 улучшен импорт и сохранение документов благодаря новым свойствам, а также улучшено качество работы с цветом фона и переднего плана, а также радиальным градиентом.

Aspose.Words В версии 23.4 улучшен расчет некоторых параметров, а также расположение таблицы и окружающего ее текста.

### Улучшения производительности

#### Эмуляция растровых операций <sup>23.1</sup>

Значительно улучшена производительность и качество эмуляции растровых операций с метафайлами.

### Поддерживаемые форматы

#### Экспорт в MOBI <sup>23.2</sup>

Начиная с версии 23.2, можно сохранять документ в формате MOBI (также называемом PRC, AZW — Amazon собственный формат файлов электронных книг Kindle). Теперь вы можете не только загружать документы MOBI, но и экспортировать файлы в формат MOBI.

### Рендеринг

#### Работа с цветами темы затенения <sup>23.1</sup>

Реализована возможность работы с цветами темы штриховки.

#### Поддержка коэффициента R-квадрата в диаграммах DML <sup>23.1</sup>

Добавлена поддержка коэффициента R-квадрата в метках линий тренда диаграммы DML при рендеринге.

#### Улучшения рендеринга диаграмм <sup>23.2</sup>

Начиная с версии 23.2, рендеринг диаграмм был значительно улучшен.

#### Управление цветом фона и переднего плана <sup>23.3</sup>

Класс [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) был расширен набором новых общедоступных свойств, связанных с цветами фона и переднего плана: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) и [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) и [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Радиальные градиенты с помощью встроенного шейдера `SkiaSharp` <sup>23.3</sup>

Реализована визуализация радиальных градиентов с помощью собственного шейдера `SkiaSharp` для .NET Standard.

#### Расстояние между таблицей и окружающим текстом <sup>23.4</sup>

Возможность устанавливать расстояние между таблицей и окружающим текстом была добавлена путем введения новых свойств в класс [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/): [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) и [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Загрузка и сохранение документов

#### Создать `TOC` для документов AZW3 <sup>23.1</sup>

Возможность создания `TOC` (оглавление) для документов AZW3 была добавлена благодаря использованию свойства [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/).

#### Экспорт элементов списка в Markdown <sup>23.1</sup>

Способ управления экспортом элементов списка в формат Markdown был предоставлен путем добавления свойства [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) в класс [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/).

#### Уведомления о ходе сохранения документа <sup>23.3</sup>

Реализовано сохранение уведомлений о ходе работы для форматов MOBI и AZW3.

#### Корректировка интервалов между предложениями и словами <sup>23.3</sup>

Возможность указать, следует ли автоматически регулировать интервал между предложениями и словами при импорте документа, была добавлена путем введения свойства [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/).

### Другой

* Возможность указать настройку межсимвольного интервала в документе была добавлена посредством реализации свойства [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) <sup>23.2.</sup>
* Способ указания Aspose.Words, включать ли текстовые поля, сноски и концевые сноски в статистику количества слов, был предоставлен путем добавления свойства [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2.</sup>
* Новая опция для стиля документа, позволяющая указать, будет ли стиль автоматически переопределяться на основе соответствующего значения, была введена через свойство [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) <sup>23.2</sup> 
* Добавлена возможность определить, является ли [Run](https://reference.aspose.com/words/net/aspose.words/run/) запуском фонетического руководства с помощью свойства [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) <sup>23.4.</sup>
* Реализован простой способ работы с рядами и осями комбинированных диаграмм путем введения класса [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) и свойства [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4.</sup>
* В класс [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) <sup>23.4</sup> добавлены новые общедоступные свойства, связанные с относительным расположением и размером фигуры
* Точность и производительность расчета яркости цвета для автоматического разрешения цвета текста улучшены в соответствии с последними версиями Microsoft Word <sup>23.4.</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для .NET 23.1 Примечания к выпуску](/words/net/aspose-words-for-net-23-1-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.2 Примечания к выпуску](/words/net/aspose-words-for-net-23-2-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.3 Примечания к выпуску](/words/net/aspose-words-for-net-23-3-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.4 Примечания к выпуску](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words для .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words В версии 22.9 расширены возможности загрузки и сохранения документов, а также улучшено взаимодействие с некоторыми другими опциями.

Aspose.Words В версии 22.10 улучшены параметры поиска и замены, улучшены объекты OLE и расширена функциональность списков.

Aspose.Words 22.11 расширяет свой функционал новыми возможностями для более удобной работы с уже знакомыми объектами: полями, печатью, OLE и тегами структурированных документов.

Aspose.Words В версии 22.12 расширены возможности рендеринга и добавлены возможности работы с полями при загрузке/сохранении документа.

### Улучшения производительности <sup>22.12</sup>

Была введена оптимизация, которая значительно уменьшает глубину вложения графических состояний при рендеринге в PDF для обеспечения соответствия спецификациям.

### Рендеринг и печать

#### Печать нецветных страниц на цветном принтере <sup>22.11</sup>

Пользовательский режим цветной/полутоновой печати был реализован путем добавления нового значения **GrayscaleAuto** в перечисление [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/).

Новое свойство печати позволяет пользователям контролировать печать нецветных страниц, если устройство поддерживает цветную печать. Эта функция может быть полезна, если пользователи хотят автоматически печатать нецветные страницы, используя только режим печати в оттенках серого.

#### Новые свойства рендеринга границ <sup>22.12</sup>

Были введены новые общедоступные свойства [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) и [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/).

#### Формула линейной линии тренда для рендеринга DrawingML <sup>22.12</sup>

Реализовано отображение формулы линейного тренда для диаграмм DrawingML.

#### Настройки резервного шрифта для шрифтов Google Noto <sup>22.12</sup>

Предопределенные настройки резервного шрифта для шрифтов Google Noto были обновлены.

### Загрузка и сохранение документов

#### Кэшируйте формы верхнего или нижнего колонтитула для уменьшения размера PDF <sup>22.9</sup>

Возможность кэширования форм верхнего и нижнего колонтитула для уменьшения размера выходного PDF-файла реализована путем добавления нового свойства **CacheHeaderFooterShapes**.

#### Автоматическое определение нумерации при загрузке документа <sup>22.9</sup>

Возможность указать свойство [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) при загрузке текста реализована посредством расширенного класса [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/).

#### Указание конкретного типа маржи <sup>22.12</sup>

Реализована возможность указать конкретный тип [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) для данного раздела.

### Поиск и сравнение <sup>22.10</sup>

Возможность игнорировать [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) при поиске и замене параметров реализована путем добавления нового свойства [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) в класс [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/).

### Другой

* Добавлена новая функция для получения FieldEQ как OfficeMath. <sup>22,9</sup>
* Разрешено создание тегов структурированного документа типа Group на уровне строки. <sup>22,9</sup>
* Объекты и элементы управления OLE теперь обрабатываются как изображения метафайлов при преобразовании документа в HTML. <sup>22.10</sup>
* Новая функция проверки того, что конкретный список был создан на основе того же шаблона, что и сравниваемый список, была добавлена путем введения нового метода [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) в класс [List](https://reference.aspose.com/words/net/aspose.words.lists/list/). <sup>22.10</sup>
* Добавлена возможность создавать новые теги структурированных документов типа [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/). <sup>22.11</sup>
* Предоставлена возможность отслеживать ход обновления полей. <sup>22.11</sup>
* Добавлено новое свойство **EmbedAttachments**, которое позволяет пользователям встраивать вложения OLE из исходного документа в выходной PDF-документ. <sup>22.11</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для .NET 22.9 Примечания к выпуску](/words/net/aspose-words-for-net-22-9-release-notes/).

Узнайте больше о [Aspose.Words для .NET 22.10 Примечания к выпуску](/words/net/aspose-words-for-net-22-10-release-notes/).

Узнайте больше о [Aspose.Words для .NET 22.11. Примечания к выпуску](/words/net/aspose-words-for-net-22-11-release-notes/).

Узнайте больше о [Aspose.Words для .NET 22.12 Примечания к выпуску](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words для .NET 22,5, 22,6, 22,7, 22,8

Aspose.Words В версии 22.5 представлена поддержка новых форматов загрузки и нового размера страницы для печати, а также улучшены некоторые параметры рендеринга.

Aspose.Words 22.6 расширяет возможности преобразования PDF в другие форматы, а также улучшает работу с DrawingML и эффектом заливки сплошным текстом.

Aspose.Words 22.7 расширяет возможности работы с функциями рендеринга, а также добавляет новые функции для работы с импортом HTML и экспортом в PDF.

Aspose.Words В версии 22.8 представлен новый формат экспорта и улучшены различные алгоритмы рендеринга.

API улучшен для более гибкой и удобной разработки.

### Поддерживаемые форматы

* Добавлена поддержка загрузки документов EPUB и XML путем добавления новых значений в перечисление [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/). Начиная с версии 22.5, можно загружать документы EPUB и XML в модель документа Aspose.Words и конвертировать их в любую модель [поддерживаемые форматы](https://reference.aspose.com/words/net/aspose.words/saveformat/). <sup>22,5</sup>
* Начиная с версии 22.8, можно сохранять документ в формате AZW3 — Amazon фирменном формате электронных книг Kindle (KF8 — другое название формата). Теперь вы можете не только загружать документы AZW3, но и экспортировать файлы в формат AZW3, который по сути представляет собой скомпилированный EPUB. <sup>22,8</sup>

### Рендеринг и печать

#### Новый размер печати <sup>22,5</sup>

Поддержка размера страницы для печати "Конверт № 10" была добавлена путем введения нового значения в перечисление [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).

#### Рендеринг формул MathML <sup>22.5</sup>

Улучшена отрисовка рамки вокруг формул MathML и определение шрифта при отрисовке символов для таких формул.

#### Улучшения диаграмм DML <sup>22.6</sup>

Общедоступные диаграммы DrawingML API были расширены для поддержки заливок градиентом, текстурой и узором.

#### Анализ контуров глифов для OpenType <sup>22.7</sup>

Реализован анализ контуров собственных глифов Aspose.Words для шрифтов OpenType (CFF).

Ранее анализ глифов шрифтов OpenType (CFF) выполнялся через GDI+. Итак, теперь это работает в тех случаях, когда GDI+ недоступен — платформы Java, .NET Standard, ОС Linux и т.д. Анализ контуров глифов требуется в определенных случаях, таких как WordArt, текстовые эффекты, некоторые функции Office Math и другие.

#### Установить форматирование тени фигуры <sup>22.7</sup>

Возможность задать форматирование тени объекта фигуры появилась благодаря добавлению нового свойства [ShadowFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/shadowformat/).

#### Поддержка интервала между ячейками в таблицах <sup>22.8</sup>

Механизм верстки теперь существенно улучшен: реализован очень сложный механизм расположения ячеек в таблицах.

#### Замена шрифта для символов <sup>22.8</sup>

Улучшена замена шрифтов для символов.

#### Алгоритм вращения меток оси диаграммы <sup>22.8</sup>

Улучшен алгоритм вращения меток осей диаграммы.

### Загрузка и сохранение документов

#### Загрузка и преобразование PDF в формат фиксированной страницы без модели макета <sup>22.6</sup>

Реализована возможность загрузки и преобразования PDF-документов в фиксированные форматы страниц с высокой точностью и производительностью.

#### Новый режим импорта HTML <sup>22.7</sup>

Был введен новый режим импорта HTML для элементов уровня блока путем добавления нового значения в перечисление [HtmlInsertOptions](https://reference.aspose.com/words/net/aspose.words/htmlinsertoptions/).

#### Преобразование в PDF/UA-1 CS, совместимое с WCAG 2.0 <sup>22,7</sup>

Добавлена поддержка преобразования документа в формат PDF/UA-1, соответствующий WCAG 2.0.

Таким образом, если у клиента есть доступный документ Word и он преобразует его в PDF/UA-1 с помощью Aspose.Words, упомянув особенности преобразования, то выходные данные будут совместимы с WCAG 2.0.

WCAG или Рекомендации по обеспечению доступности веб-контента — это набор рекомендаций, разработанных W3C в сотрудничестве с отдельными лицами и организациями по всему миру. Теперь с помощью Aspose.Words вы можете преобразовать свой документ в выходной формат PDF/UA-1, который подходит для создания PDF-документов, совместимых с WCAG 2.0.

Стоит отметить, что WCAG 2.0 имеет два дополнительных требования, не указанных в спецификации PDF/UA-1:

* требования к контрасту

* требования к разметке мультимедийного контента

Но оба требования не имеют отношения к нашему случаю конвертации из Word в PDF.

### Другой

* Реализовано исключение наследования эффекта заливки сплошным текстом, имитирующего поведение MS Word. <sup>22,6</sup>
* Добавлена поддержка полей `DATABASE`. Используя поле этого типа, вы можете, например, отобразить результаты запроса к базе данных в таблице Microsoft Word. <sup>22,7</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для .NET 22.5 Примечания к выпуску](/words/net/aspose-words-for-net-22-5-release-notes/).

Узнайте больше о [Aspose.Words для .NET 22.6 Примечания к выпуску](/words/net/aspose-words-for-net-22-6-release-notes/).

Узнайте больше о [Aspose.Words для .NET 22.7 Примечания к выпуску](/words/net/aspose-words-for-net-22-7-release-notes/).

Узнайте больше о [Aspose.Words для .NET 22.8 Примечания к выпуску](/words/net/aspose-words-for-net-22-8-release-notes/).

{{% /alert %}}

## Смотрите также

{{% alert color="primary" %}}

На этой странице собраны последние новости о релизах за последние 2 года. Подробную информацию о более ранних выпусках см. на страницах [Примечания к выпуску](/words/net/release-notes/) в соответствующих разделах.

{{% /alert %}}