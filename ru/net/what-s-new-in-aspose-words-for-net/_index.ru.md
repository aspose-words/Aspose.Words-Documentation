---
title: Что нового
second_title: Aspose.Words для .NET
articleTitle: Что нового в Aspose.Words для .NET
linktitle: Что нового в Aspose.Words для .NET
type: docs
description: "Aspose.Words для .NET Расширяется и усиливается ежедневно. На этой странице можно узнать об огромных и самых интересных особенностях продукта."
weight: 10
url: /ru/net/what-s-new-in-aspose-words-for-net/
---

На этой странице описаны самые интересные новые Aspose.Words Особенности, представленные в последних выпусках.

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

Узнайте больше о [Aspose.Words для .NET 23.9 Выпуск заметок](/words/net/aspose-words-for-net-23-9-release-notes/).

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

Узнайте больше о [Aspose.Words для .NET 23.7 Выпускные примечания](/words/net/aspose-words-for-net-23-7-release-notes/).

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

Узнайте больше о [Aspose.Words для .NET 23.2 Выпускные примечания](/words/net/aspose-words-for-net-23-2-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.3 Выпускные примечания](/words/net/aspose-words-for-net-23-3-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.4 Выпуск заметок](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words для .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 расширяет возможности загрузки и сохранения документов и улучшает взаимодействие с некоторыми другими вариантами.

Aspose.Words 22.10 улучшает поиск и замену опций, улучшает объекты OLE и расширяет функциональность списка.

Aspose.Words 22.11 расширяет функционал новыми опциями для более удобной работы с уже знакомыми объектами: полями, печатью, OLE и структурированными тегами документов.

Aspose.Words 22.12 расширяет возможности рендеринга и вводит опции работы с маржой при загрузке/сбережении документа.

### Повышение производительности <sup>22.12.</sup>

Введена оптимизация, которая значительно снижает глубину вложения графического состояния при рендеринге в PDF для поддержания соответствия спецификации.

### Чтение и печать

#### Печать нецветная Страницы на цветном принтере <sup>22.11.</sup>

Пользовательский режим цветной / серой печати был реализован путем добавления нового **GrayscaleAuto** ценность для [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/) перечисление.

Новое свойство печати позволяет пользователям контролировать, как печатаются нецветные страницы, если устройство поддерживает цветную печать. Эта функция может быть полезна, если пользователи хотят автоматически печатать нецветные страницы, используя только режим серой печати.

#### Новые пограничные свойства <sup>22.12.</sup>

Новые общественные объекты [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) и [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/) были введены.

#### Линейная формула тренда для рисования ML <sup>22.12.</sup>

Реализован линейный рендеринг формул трендовой линии для диаграмм DrawingML.

#### Скачать Fallback Settings для Google Noto Шрифты <sup>22.12.</sup>

Предопределенные параметры резервного копирования шрифта для Google Noto шрифты были обновлены.

### Погрузка и экономия документов

#### Cache Header или Footer Shapes для сокращения PDF Размер <sup>22.9</sup>

Возможность кэширования форм заголовка / футера для уменьшения размера выходного файла PDF была реализована путем добавления нового файла. **CacheHeaderFooterShapes** собственность.

#### Автоматическая нумерация при загрузке документа <sup>22.9</sup>

Возможность конкретизировать [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) свойство при загрузке текста было реализовано посредством расширения [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) класс.

#### Определение конкретного Тип маржи <sup>22.12.</sup>

Способность конкретизировать конкретную [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) Тип для данного раздела реализован.

### Поиск и сравнение <sup>22.10</sup>

Способность игнорировать [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) После поиска и замены опционы были реализованы путем добавления новых [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) собственности на [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) класс.

### Другой

* Добавлена новая функция для получения FieldEQ в качестве OfficeMath. <sup>22.9</sup>
* Создание структурированных тегов документов Group Тип на уровне Row был разрешен. <sup>22.9</sup>
* Объекты и элементы управления OLE теперь рассматриваются как метафайлы при преобразовании документа в HTML. <sup>22.10</sup>
* Новая функция для проверки того, что определенный список был создан из того же шаблона, что и сравниваемый список, была добавлена путем введения нового [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) Способ вхождения в [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) класс. <sup>22.10</sup>
* Возможность создания новых структурированных тегов документов [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) Тип был добавлен. <sup>22.11.</sup>
* Предоставлена возможность отслеживать ход обновления данных на местах. <sup>22.11.</sup>
* Новый **EmbedAttachments** Введено свойство, позволяющее пользователям встраивать вложения OLE из исходного документа в выходной документ PDF. <sup>22.11.</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для .NET 22.9 Выпускные примечания](/words/net/aspose-words-for-net-22-9-release-notes/).

Узнайте больше о [Aspose.Words для .NET 22.10 Релизные заметки](/words/net/aspose-words-for-net-22-10-release-notes/).

Узнайте больше о [Aspose.Words для .NET 22.11 Выпуск заметок](/words/net/aspose-words-for-net-22-11-release-notes/).

Узнайте больше о [Aspose.Words для .NET 22.12 Выпуск заметок](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words для .NET 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 вводится поддержка новых форматов загрузки и нового размера печатной страницы, а также улучшаются некоторые параметры рендеринга.

Aspose.Words 22.6 расширяет возможности преобразования PDF в другие форматы, а также улучшает работу с DrawingML и эффектом заполнения сплошного текста.

Aspose.Words 22.7 расширяет возможности работы с функциями рендеринга, а также добавляет новые функции для работы с импортом и экспортом HTML в PDF.

Aspose.Words 22.8 вводит новый формат экспорта и совершенствует различные алгоритмы рендеринга.

The API Улучшен для более гибкой и удобной разработки.

### Поддерживаемые форматы

* Поддержка загрузки документов EPUB и XML была введена путем добавления новых значений в систему. [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) перечисление. Начиная с версии 22.5, можно загружать документы EPUB и XML. Aspose.Words модель документа и конвертировать их в любой [Поддерживаемые форматы](https://reference.aspose.com/words/net/aspose.words/saveformat/). <sup>22.5</sup>
* Начиная с версии 22.8, можно сохранить документ в формате AZW3 - Amazon Проприетарный формат файла электронной книги Kindle (KF8 - еще одно название формата). Теперь вы можете не только загружать документы AZW3, но и экспортировать свои файлы в формат AZW3, который по сути является скомпилированным EPUB. <sup>22.8</sup>

### Чтение и печать

#### Новый размер печати <sup>22.5</sup>

Поддержка размера печатной страницы "Конверт No 10" была добавлена путем введения нового значения для печати. [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/) перечисление.

#### Обсуждение MathML Formulas <sup>22.5</sup>

Улучшен рендеринг пограничного ящика вокруг формул MathML и обнаружение шрифтов при рендеринге символов для таких формул.

#### ДМЛ Улучшение графика <sup>22.6</sup>

DrawingML чарты публичные API Он был расширен для поддержки градиента, текстуры и заполнения шаблонов.

#### Glyph Обсуждение Parsing for OpenType <sup>22.7</sup>

Aspose.Words собственный glyph Реализована схема разбора шрифтов OpenType (CFF).

Раньше, glyph Разбор шрифтов OpenType (CFF) осуществлялся через GDI+. Теперь это работает в тех случаях, когда GDI+ недоступен. Java, .NET Standard платформы, Linux OS и т.д. Glyph Анализ контуров необходим в конкретных случаях, таких как WordArt, текстовые эффекты, некоторые функции Office Math и другие.

#### Обсуждение Shape Shadow <sup>22.7</sup>

Возможность установки теневого форматирования формы объекта была обеспечена добавлением нового [ShadowFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/shadowformat/) собственность.

#### Поддержка клеточного пространства в таблицах <sup>22.8</sup>

Двигатель компоновки теперь значительно усовершенствован: в таблицах реализован очень сложный механизм разнесения ячеек.

#### Замена шрифта на символы <sup>22.8</sup>

Улучшена замена символов шрифтом.

#### Алгоритм вращения ярлыка Axis Label <sup>22.8</sup>

Улучшен алгоритм вращения меток оси диаграммы.

### Погрузка и экономия документов

#### Загрузка и преобразование PDF в формат фиксированной страницы без макета <sup>22.6</sup>

Реализована возможность загрузки и преобразования PDF-документов в фиксированные форматы страниц с высокой точностью и производительностью.

#### Новый HTML режим импорта <sup>22.7</sup>

Введен новый режим импорта HTML для элементов уровня блоков путем добавления нового значения в [HtmlInsertOptions](https://reference.aspose.com/words/net/aspose.words/htmlinsertoptions/) перечисление.

#### Преобразование в PDF/UA-1 CSompliant с помощью WCAG 2.0 <sup>22.7</sup>

Добавлена поддержка преобразования документа в формат PDF/UA-1, соответствующий WCAG 2.0.

Таким образом, если у клиента есть доступный документ Word и конвертирует его в PDF / UA-1 Aspose.Words Если говорить о конверсионных характеристиках, то выход будет совместим с WCAG 2.0.

WCAG или доступность веб-контента Руководство представляет собой набор руководящих принципов, разработанных W3C в сотрудничестве с отдельными лицами и организациями по всему миру. Теперь с Aspose.Words Вы можете конвертировать документ в формат PDF/UA-1, который подходит для создания документов PDF, совместимых с WCAG 2.0.

Стоит отметить, что WCAG 2.0 имеет два дополнительных требования, которые не указаны в спецификации PDF/UA-1:

* Контрастные требования

* Требования к маркировке мультимедийного контента

Но оба требования не имеют отношения к нашему случаю преобразования из Word в PDF.

### Другой

* Исключение наследования эффекта заполнения твердого текста, который имитирует поведение MS Word, было реализовано. <sup>22.6</sup>
* Поддержка со стороны `DATABASE` Добавлены поля. Используя этот тип поля, можно, например, показать результаты запроса базы данных в Microsoft Word столик. <sup>22.7</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для .NET 22.5 Релизные заметки](/words/net/aspose-words-for-net-22-5-release-notes/).

Узнайте больше о [Aspose.Words для .NET 22.6 Выпуск заметок](/words/net/aspose-words-for-net-22-6-release-notes/).

Узнайте больше о [Aspose.Words для .NET 22.7 Выпускные примечания](/words/net/aspose-words-for-net-22-7-release-notes/).

Узнайте больше о [Aspose.Words для .NET 22.8 Релизные заметки](/words/net/aspose-words-for-net-22-8-release-notes/).

{{% /alert %}}

## Смотрите также

{{% alert color="primary" %}}

Эта страница содержит последние новости выпуска за последние 2 года. Подробнее о предыдущих выпусках см. [Скачать Notes "](/words/net/release-notes/) страниц в соответствующих разделах.

{{% /alert %}}