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

## Aspose.Words для Java 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 расширяет возможности загрузки и сохранения документов и улучшает взаимодействие с некоторыми другими вариантами.

Aspose.Words 22.10 улучшает поиск и замену опций, улучшает объекты OLE и расширяет функциональность списка.

Aspose.Words 22.11 расширяет функционал новыми опциями для более удобной работы с уже знакомыми объектами: полями, печатью, OLE и структурированными тегами документов.

Aspose.Words 22.12 расширяет возможности рендеринга и вводит опции работы с маржой при загрузке/сбережении документа.

### Повышение производительности <sup>22.12.</sup>

Введена оптимизация, которая значительно снижает глубину вложения графического состояния при рендеринге в PDF для поддержания соответствия спецификации.

### Рендеринг и печать

#### Печать нецветная Страницы на цветном принтере <sup>22.11.</sup>

Пользовательский режим цветной / серой печати был реализован путем добавления нового **GrayscaleAuto** ценность для [ColorPrintMode](https://reference.aspose.com/words/java/com.aspose.words/colorprintmode/) перечисление.

Новое свойство печати позволяет пользователям контролировать, как печатаются нецветные страницы, если устройство поддерживает цветную печать. Эта функция может быть полезна, если пользователи хотят автоматически печатать нецветные страницы, используя только режим серой печати.

#### Новые пограничные свойства <sup>22.12.</sup>

Новые общественные объекты [ThemeColor](https://reference.aspose.com/words/java/com.aspose.words/border/#getThemeColor) и [TintAndShade](https://reference.aspose.com/words/java/com.aspose.words/border/#getTintAndShade) были введены.

#### Линейная формула тренда для рисования ML <sup>22.12.</sup>

Реализован линейный рендеринг формул трендовой линии для диаграмм DrawingML.

#### Скачать Fallback Settings для Google Noto Шрифты <sup>22.12.</sup>

Предопределенные параметры резервного копирования шрифта для Google Noto шрифты были обновлены.

### Погрузка и экономия документов

#### Cache Header или Footer Shapes уменьшают размер PDF <sup>22.9</sup>

Возможность кэширования форм заголовка / футера для уменьшения размера выходного файла PDF была реализована путем добавления нового файла. [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) собственность.

#### Автоматическая нумерация при загрузке документа <sup>22.9</sup>

Возможность конкретизировать [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) свойство при загрузке текста было реализовано посредством расширения [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) класс.

#### Определение конкретного Тип маржи <sup>22.12.</sup>

Способность конкретизировать конкретную [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) Тип для данного раздела реализован.

### Поиск и сравнение <sup>22.10</sup>

Способность игнорировать [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) После поиска и замены опционы были реализованы путем добавления новых [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) собственности на [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) класс.

### Другой

- Добавлена новая функция для получения FieldEQ в качестве OfficeMath. <sup>22.9</sup>
- Создание структурированных тегов документов Group Тип на уровне Row был разрешен. <sup>22.9</sup>
- Объекты и элементы управления OLE теперь рассматриваются как метафайлы при преобразовании документа в HTML. <sup>22.10</sup>
- Новая функция для проверки того, что определенный список был создан из того же шаблона, что и сравниваемый список, была добавлена путем введения нового [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) Способ вхождения в [List](https://reference.aspose.com/words/java/com.aspose.words/list/) класс. <sup>22.10</sup>
- Возможность создания новых структурированных тегов документов [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) Тип был добавлен. <sup>22.11.</sup>
- Предоставлена возможность отслеживать ход обновления данных на местах. <sup>22.11.</sup>
- Новый **EmbedAttachments** Введено свойство, позволяющее пользователям встраивать вложения OLE из исходного документа в выходной документ PDF. <sup>22.11.</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 22.9 Выпускные примечания](/words/java/aspose-words-for-java-22-9-release-notes/).

Узнайте больше о [Aspose.Words для Java 22.10 Релизные заметки](/words/java/aspose-words-for-java-22-10-release-notes/).

Узнайте больше о [Aspose.Words для Java 22.11 Выпуск заметок](/words/java/aspose-words-for-java-22-11-release-notes/).

Узнайте больше о [Aspose.Words для Java 22.12 Выпуск заметок](/words/java/aspose-words-for-java-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words для Java 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 вводится поддержка новых форматов загрузки и нового размера печатной страницы, а также улучшаются некоторые параметры рендеринга.

Aspose.Words 22.6 расширяет возможности преобразования PDF в другие форматы, а также улучшает работу с DrawingML и эффектом заполнения сплошного текста.

Aspose.Words 22.7 расширяет возможности работы с функциями рендеринга, а также добавляет новые функции для работы с импортом и экспортом HTML в PDF.

Aspose.Words 22.8 вводит новый формат экспорта и совершенствует различные алгоритмы рендеринга.

The API Улучшен для более гибкой и удобной разработки.

### Поддерживаемые форматы

* Поддержка загрузки документов EPUB и XML была введена путем добавления новых значений в систему. [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) перечисление. Начиная с версии 22.5, можно загружать документы EPUB и XML. Aspose.Words модель документа и конвертировать их в любой [Поддерживаемые форматы](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). <sup>22.5</sup>
* Начиная с версии 22.8, можно сохранить документ в формате AZW3 - Amazon Проприетарный формат файла электронной книги Kindle (KF8 - еще одно название формата). Теперь вы можете не только загружать документы AZW3, но и экспортировать свои файлы в формат AZW3, который по сути является скомпилированным EPUB. <sup>22.8</sup>

### Рендеринг и печать

#### Новый размер печати <sup>22.5</sup>

Поддержка размера печатной страницы "Конверт No 10" была добавлена путем введения нового значения для печати. [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/) перечисление.

#### Обсуждение MathML Formulas <sup>22.5</sup>

Улучшен рендеринг пограничного ящика вокруг формул MathML и обнаружение шрифтов при рендеринге символов для таких формул.

#### ДМЛ Улучшение графика <sup>22.6</sup>

DrawingML чарты публичные API Он был расширен для поддержки градиента, текстуры и заполнения шаблонов.

#### Glyph Обсуждение Parsing for OpenType <sup>22.7</sup>

Aspose.Words собственный glyph Реализована схема разбора шрифтов OpenType (CFF).

Раньше, glyph Разбор шрифтов OpenType (CFF) осуществлялся через GDI+. Теперь это работает в тех случаях, когда GDI+ недоступен. Java, .NET Standard платформы, Linux OS и т.д. Glyph Анализ контуров необходим в конкретных случаях, таких как WordArt, текстовые эффекты, некоторые функции Office Math и другие.

#### Обсуждение Shape Shadow <sup>22.7</sup>

Возможность установки теневого форматирования формы объекта была обеспечена добавлением нового [ShadowFormat](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getShadowFormat) собственность.

#### Поддержка клеточного пространства в таблицах <sup>22.8</sup>

Двигатель компоновки теперь значительно усовершенствован: в таблицах реализован очень сложный механизм разнесения ячеек.

#### Замена шрифта на символы <sup>22.8</sup>

Улучшена замена символов шрифтом.

#### Алгоритм ротации ярлыков Axis Label <sup>22.8</sup>

Улучшен алгоритм вращения меток оси диаграммы.

### Погрузка и экономия документов

#### Загрузка и преобразование PDF в формат фиксированной страницы без макета <sup>22.6</sup>

Была реализована возможность загрузки и преобразования PDF-документов в фиксированные форматы страниц с высокой точностью и производительностью.

#### Новый HTML режим импорта <sup>22.7</sup>

Введен новый режим импорта HTML для элементов уровня блоков путем добавления нового значения в [HtmlInsertOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlinsertoptions/) перечисление.

#### Преобразование в PDF/UA-1 CSSompliant с помощью WCAG 2.0 <sup>22.7</sup>

Добавлена поддержка преобразования документа в формат PDF/UA-1, соответствующий WCAG 2.0.

Таким образом, если у клиента есть доступный документ Word и конвертирует его в PDF / UA-1 Aspose.Words Если говорить о конверсионных характеристиках, то выход будет совместим с WCAG 2.0.

WCAG или доступность веб-контента Руководство представляет собой набор руководящих принципов, разработанных W3C в сотрудничестве с отдельными лицами и организациями по всему миру. Теперь с Aspose.Words Вы можете конвертировать документ в формат PDF/UA-1, который подходит для создания документов PDF, совместимых с WCAG 2.0.

Стоит отметить, что WCAG 2.0 имеет два дополнительных требования, которые не указаны в спецификации PDF/UA-1:

- контрастные требования
- требования к маркировке мультимедийного контента

Но оба требования не имеют отношения к нашему случаю преобразования из Word в PDF.

### Другой

* Исключение наследования эффекта заполнения твердого текста, имитирующего поведение MS Word, было реализовано. <sup>22.6</sup>
* Поддержка со стороны `DATABASE` Добавлены поля. Используя этот тип поля, можно, например, показать результаты запроса базы данных в Microsoft Word столик. <sup>22.7</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 22.5 Заметки о выпуске](/words/java/aspose-words-for-java-22-5-release-notes/).

Узнайте больше о [Aspose.Words для Java 22.6 Выпуск заметок](/words/java/aspose-words-for-java-22-6-release-notes/).

Узнайте больше о [Aspose.Words для Java 22.7 Выпускные примечания](/words/java/aspose-words-for-java-22-7-release-notes/).

Узнайте больше о [Aspose.Words для Java 22.8 Заметки о выпуске](/words/java/aspose-words-for-java-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words для Java 22.1, 22.2, 22.3, 22.4

Aspose.Words 22.1 улучшает возможности рендеринга, а также загрузки и сохранения документов.

Aspose.Words 22.2 вводится новый формат загрузки и новые варианты вывоза документов. Он также содержит большое обновление таблиц и некоторые изменения для работы с полями.

Aspose.Words 22.3 расширяет возможности работы с форматами PDF и TXT и улучшает работу некоторых существующих алгоритмов и движков.

Aspose.Words 22.4 расширяет возможности PDF - теперь вы можете сохранить файл в формате PDF/A-4 и получить ряд других улучшений в выходе PDF. В то же время, Aspose.Words 22.4 предоставляет дополнительные возможности для работы с диаграммами DML, чтения метаданных Photoshop и импорта элементов HTML-блоков.

The API Улучшен для более гибкой и удобной разработки.

### Поддерживаемые форматы

Добавлена загрузка документа в формате AZW3 (KF8 - другое название формата). Теперь можно загрузить документ AZW3 и конвертировать его в любые другие поддерживаемые форматы.

### Рендеринг

#### Совместимость с PDF/UA-1

Рендеры в формате PDF с соблюдением требований PDF/UA-1 были реализованы путем добавления новых значений. [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) Перечисление - **PDF_UA_1**. Этот вариант предполагает соблюдение специальных требований к доступности документов.

#### Обсуждение MathML Formulas

Улучшен рендеринг операторов в формулах MathML.

#### ДМЛ Улучшение графика

В диаграммы DML были внесены следующие улучшения:

- Алгоритм масштабирования оси диаграммы DML был улучшен так же, как и в MS Word
- Возможность манипулировать с DrawingML записи легенд диаграммы была предоставлена, чтобы сделать наш график API все более и более всеобъемлющим
- Реализована возможность указания имени файла xls/xlsx, к которому привязана диаграмма DrawingML

#### Совместимость с PDF/A-4

Обработка в формате PDF с соблюдением требований PDF/A-4 была добавлена путем добавления новых значений. [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) Перечисление - PDF_A_4. Эта опция предполагает пересмотренные уровни соответствия: обычное соответствие PDF/A-4 эквивалентно уровню соответствия U предыдущих версий, и уровень соответствия A удаляется.

#### Чтение разрешения метаданных Photoshop в JPEG

Чтение разрешения метаданных Photoshop в изображениях JPEG было реализовано для устранения интересной проблемы с неправильным масштабированием изображений при рендеринге.

### Погрузка и экономия документов

#### Контроль стиля поведения При загрузке документа

Новый вариант [ForceCopyStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getForceCopyStyles) Вводится для контроля поведения конфликтующих стилей при импорте документов.

#### Документы, сохраняющие уведомления о прогрессе

Возможность получать уведомления о прогрессе в сохранении документов была добавлена через [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) Имущество в 22.1.

В 22.2 были расширены уведомления о прогрессе для HTML и XAML-форматов потоков: HTML, MHTML, Epub, XamlFlow и XamlFlowPack.

В 22.3 для формата TXT было расширено сохранение уведомлений о ходе работы.

#### Преобразование форм в SVG При экспорте

Возможность конвертировать формы в изображения SVG при экспорте в HTML, MHTML или EPUB была предоставлена путем добавления [ExportShapesAsSvg](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportShapesAsSvg) собственность.

#### Экспорт нумерации списков в логическую структуру PDF

Реализован экспорт нумерации списков в логическую структуру PDF.

#### Сохранение PDF 2.0 и улучшение PDF-выхода

Возможность сохранения документа в формате PDF 2.0 путем добавления нового значения [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) Перечисление, а также несколько других запрошенных улучшений в выходе PDF были введены.

#### Новый HTML режим импорта

Для имитации был реализован новый режим импорта элементов на уровне блоков HTML Microsoft Word поведение.

### Другой

* Добавлена возможность получения пользовательских полевых данных, связанных с полем.
* Последняя версия Aspose.Words Также включено крупное обновление, которое обрабатывает таблицы с неправильными или отсутствующими данными о ширине столбца в исходном документе.
* Алгоритм сравнения таблицы, основанный на глубоком анализе Microsoft Word Улучшен механизм сравнения.
* Представлен синтаксис комментариев в движке LINQ Reporting.

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 22.1 Опубликовать примечания](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-1-release-notes/).

Узнайте больше о [Aspose.Words для Java 22.2 Заметки о выпуске](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-2-release-notes/).

Узнайте больше о [Aspose.Words для Java 22.3 Релизные заметки](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-3-release-notes/).

Узнайте больше о [Aspose.Words для Java 22.4 Выпуск заметок](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-4-release-notes/).

{{% /alert %}}

## Aspose.Words для Java 21.9, 21.10, 21.11, 21.12

Aspose.Words 21.9 расширяет контроль форматирования на уровне списка.

Aspose.Words 21.10 улучшает опции рендеринга, улучшает поиск и замену опций и расширяет Mail Merge Функциональность Structure Document Tag.

Aspose.Words 21.11 расширяет возможности загрузки и сохранения, улучшает поиск и замену опций и работу с PDF.

Aspose.Words 21.12 вводит дополнительные возможности для работы с латинским текстом и шрифтами для улучшения внешнего вида и производительности, а также расширяет возможности работы с контент-контролем и сносками

The API Улучшен для более гибкой и удобной разработки.

### Повышение производительности

Была реализована загрузка ранее сохраненного кэша поиска шрифта для ускорения процесса инициализации кэша шрифта при рендеринге. Теперь ваши решения будут работать еще быстрее.

### Рендеринг

#### Работа с градиентными заливками и градиентными остановками

Добавлены новые общественные методы и свойства для работы с градиентными заполнениями и градиентными остановками, чтобы удовлетворить самые яркие идеи при разработке ваших документов.

#### Панель приложения в Output PDF Документы

Новый вариант [UseAttachments](https://reference.aspose.com/words/java/com.aspose.words/pdfpagemode/) был реализован для отображения панели вложения в выходных документах PDF.

#### Латинский текст можно обернуть в середину слова

Поддержка функции "Разрешить латинский текст обернуть в середине слова" была реализована, чтобы сделать нашу латинскую поддержку еще лучше при рендеринге.

### Поиск и сравнение

* Новый вариант [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes) Для игнорирования сносок во время нахождения и замены операции были добавлены.

* Новый вариант [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes) Игнорирование полевых кодов во время поиска и замены операции было добавлено.

### Преобразование

Простой способ сохранения изображений в виде строки Base64 Markdown Формат был предоставлен через [ExportImagesAsBase64](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportImagesAsBase64) собственность.

### Mail Merge и отчетность

Способность получить [ParentRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/#getParentRegion) через [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/), Это сделало наш движок MailMerge более настраиваемым.

### Другой

- Способность получить [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) имуществом, [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) Объект был добавлен.
- Возможность получить струнное представление о [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) объект для определенного индекса с использованием [GetEffectiveValue](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getEffectiveValue-int-int-java.lang.String) Добавлен метод.
- Была введена интуитивная возможность изменять внешний вид структурированных тегов документов, которые фактически позволяют встраивать в документ семантику, определяемую клиентом, а также его поведение.
- Новый класс [ChmLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/chmloadoptions/) Он был добавлен, чтобы получить больше контроля над загрузкой CHM.
- Введена возможность получить OOXML управления контентом и сохранить его в строке. Чтобы сделать это, **WordOpenXML** Имущество было добавлено в [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) и [StructuredDocumentTagRangeStart](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttagrangestart/) классы.
- Добавлено признание нестандартных сносок в PDF-документах по импорту.

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Java 21.9 Выпуск заметок](/words/java/aspose-words-for-java-21-9-release-notes/).

Узнайте больше о [Aspose.Words для Java 21.10 Выпуск заметок](/words/java/aspose-words-for-java-21-10-release-notes/).

Узнайте больше о [Aspose.Words для Java 21.11 Выпуск заметок](/words/java/aspose-words-for-java-21-11-release-notes/).

Узнайте больше о [Aspose.Words для Java 21.12 Выпуск заметок](/words/java/aspose-words-for-java-21-12-release-notes/).

{{% /alert %}}

## Смотрите также

{{% alert color="primary" %}}

Эта страница содержит последние новости выпуска за последние 2 года. Подробнее о предыдущих выпусках см. [Скачать Notes "](/words/java/release-notes/) страниц в соответствующих разделах.

{{% /alert %}}
