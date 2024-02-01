---
title: Что нового
second_title: Aspose.Words для Python via .NET
articleTitle: Что нового в Aspose.Words для Python via .NET
linktitle: Что нового в Aspose.Words для Python via .NET
type: docs
description: "Aspose.Words для Python via .NET ежедневно расширяется и совершенствуется. На этой странице вы можете узнать об огромных и наиболее интересных функциях продукта."
weight: 10
url: /ru/python-net/what-s-new-in-aspose-words-for-python-net/
---

На этой странице описаны наиболее интересные новые функции Aspose.Words, представленные в последних выпусках.

## Aspose.Words для Python via .NET 24.1

Aspose.Words 24.1 улучшает управление цветами штрихов, совершенствует объекты OLE, а также представляет новый общедоступный API "Источники библиографии".

### Рендеринг и печать

#### Управление цветом обводки <sup>24.1</sup>

Класс [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) был расширен набором новых общедоступных свойств, связанных с управлением цветами обводки: **ForeThemeColor** и **BackThemeColor**, **ForeTintAndShade** и **BackTintAndShade**.

### Другой

* Возможность изменять текст элемента управления `TextBox` OLE появилась путем добавления нового свойства **Text** в новый класс **TextBoxControl**. <sup>24.1</sup>
* Открытый API-файл "Источники библиографии" был реализован путем добавления нового пространства имен **Aspose.Words.Bibliography** с его новыми классами и перечислениями, а также путем добавления нового свойства **Bibliography** в класс **Document**. <sup>24.1</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 24.1. Примечания к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

{{% /alert %}}

## Aspose.Words для Python via .NET 23.9, 23.10, 23.11, 23.12

В Aspose.Words 23.9 расширены параметры рендеринга, эмуляция рендеринга метафайлов и параметры сохранения в формате markdown.

Aspose.Words 23.10 улучшает визуализацию, расширяет возможности загрузки и сохранения документов и позволяет пользователям объединять документы новыми способами.

Aspose.Words 23.11 расширяет возможности работы с редакциями, форматом XLSX и шрифтами в легенде диаграммы с помощью дополнительных опций.

В Aspose.Words 23.12 представлены новые свойства и перечисления для работы с документами PDF и OOXML, а также поддержка изображений WebP.

### Рендеринг и печать

#### Настройка названий осей в диаграммах DrawingML <sup>23.9</sup>

Возможность настраивать заголовки осей в диаграммах DrawingML появилась благодаря реализации нового общедоступного класса [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) и свойства [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/).

####  Определение вертикального положения шрифтов внутри абзаца <sup>23.9</sup>

Теперь можно определить вертикальное положение шрифтов внутри абзаца, используя новое общедоступное свойство [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) и новое перечисление [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/).

#### Управление цветом переднего плана <sup>23.10</sup>

Возможность получения цвета переднего плана без модификаторов была добавлена в классы [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) и [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) через свойство **BaseForeColor**.

#### Расширение функциональности графиков <sup>23.10</sup>

Функциональность классов [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) и [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) расширена за счет новых методов и свойств.

#### Автоматическая настройка и вставка изображения в форму <sup>23.10</sup>

Новый метод [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) обеспечивает простой способ автоматической настройки и размещения изображения в определенной форме.

#### Форматирование шрифта по умолчанию для записей легенды диаграммы DrawingML <sup>23.11</sup>

Возможность указать форматирование шрифта по умолчанию для записей легенды диаграмм DrawingML была добавлена через свойство [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/). Эта функция обеспечивает более упорядоченный и единообразный внешний вид элементов диаграммы, улучшая общую эстетику документа.

#### Укажите макет страницы при открытии PDF в Reader <sup>23.12</sup>

Возможность указать макет страницы, который будет использоваться при открытии документа в программе чтения PDF, была добавлена благодаря введению нового свойства [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) в класс [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) и новому перечислению [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/).

### Загрузка и сохранение документов

#### Указание имени папки для создания URI изображений в Markdown <sup>23.9</sup>

Класс [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) был расширен за счет включения свойства [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/), которое позволяет указать имя папки, используемой для создания URI изображений, записываемых в документ Markdown.

#### Уменьшить размер вывода PDF <sup>23.10</sup>

Реализованы различные оптимизации рендеринга PDF для уменьшения размера вывода при использовании настроек [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/).

#### Распознавание гиперссылок при загрузке документов TXT <sup>23.10</sup>

Возможность распознавания гиперссылок при загрузке документов TXT реализована путем добавления нового свойства [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/).

### Другой

— Реализована эмуляция рендеринга метафайлов для определения размера растеризации, особенно для ширины пера WMF и косметической ширины пера EMF. Для этого свойство **ScaleWmfFontsToMetafileSize** было заменено свойством [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) и добавлено свойство [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/). <sup>23,9</sup>
- Введен упрощенный метод вставки одного документа в другой документ в текущей позиции курсора с использованием метода [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions). <sup>23.10</sup>
- Возможность доступа к свойствам стиля и их изменения была добавлена благодаря введению нового свойства [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/). <sup>23.10</sup>
— К методам класса [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) добавлен параметр универсального типа. <sup>23.10</sup>
— Возможность записи всех разделов документа на один и тот же лист XLSX появилась благодаря новому типу перечисления [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) и новому свойству [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/). <sup>23.11</sup>
* Способ управления тем, как расширения формата ZIP64 будут использоваться для документов OOXML, реализован с помощью нового свойства Zip64Mode класса `OoxmlSaveOptions` и нового перечисления Zip64Mode. <sup>23.12</sup>
* Введена поддержка изображений WebP. Обратите внимание, что эта функция доступна только для версий .NetStandart и .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 23.9 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.10 Примечания к выпуску](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.11. Примечания к выпуску](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.12 Примечания к выпуску](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words для Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 расширяет возможности работы с данными серий диаграмм и документами ODT, а также улучшает верхние и нижние колонтитулы и их перенос текста.

Aspose.Words 23.6 расширяет возможности рендеринга, добавляет новый формат экспорта, улучшает отчеты LINQ и инструменты LowCode.

Aspose.Words 23.7 расширяет возможности отчетности, добавляет новый формат экспорта и вносит изменения в работу с таблицами и цифровыми подписями.

Aspose.Words 23.8 расширяет возможности различных форматов, улучшает рендеринг и добавляет новые возможности работы с полями

### Поддерживаемые форматы

* Начиная с версии 23.6 появилась возможность сохранять документ в формате XLSX. Теперь вы можете конвертировать свои документы в формат Excel. <sup>23,6</sup>

* Начиная с версии 23.7 можно сохранять страницу документа или фигуру в формате EPS. <sup>23,7</sup>

### Новые возможности формата

- Введена функция автоматического создания оглавления (TOC) для документов MOBI. <sup>23,8</sup>
— Конструктор [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) был расширен за счет [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23,8</sup>
- Реализовано формирование вертикального текста для метафайлов EMF. <sup>23,8</sup>

### Рендеринг

#### Получение и изменение данных серии диаграмм <sup>23.5</sup>

Возможность получения и изменения данных серий диаграмм была реализована путем добавления:

- новые классы: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- новые типы перечислений: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Поддержка расширенной типографики <sup>23.6</sup>

Добавлена поддержка расширенной типографики в рендеринге WMF, EMF и EMF+.

#### Цветной контент на странице <sup>23.6</sup>

Было добавлено общедоступное свойство [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), указывающее, окрашена ли страница или нет.

#### Форматирование меток данных диаграммы <sup>23.6</sup>

Реализована возможность установки форматирования заливки, обводки и выноски для меток данных диаграммы.

### Mail Merge и отчетность

#### Динамическая вставка HTML для механизма отчетов LINQ <sup>23.6</sup>

Добавлен новый способ динамической вставки HTML для механизма отчетов LINQ.

#### Поддержка Mustache-тегов <sup>23.7</sup>

Теги Mustache теперь поддерживаются в методах [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) и [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/).

#### Указание размера отображаемых изображений <sup>23.8</sup>

Представлен новый общедоступный [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/)-свойство для указания размера визуализируемых изображений в пикселях.

#### Сохранение пробелов для строковых значений JSON – LINQ <sup>23.8</sup>

В механизм отчетов LINQ была добавлена опция, позволяющая сохранять пробелы для строковых значений JSON.

### LowCode <sup>23.6</sup>

Были добавлены новые методы LowCode, предназначенные для объединения различных типов документов в один выходной документ.

### Другой

- Реализована поддержка переноса текста в верхние/нижние колонтитулы. <sup>23,5</sup>
— Добавлена возможность удаления цифровых подписей из документов ODT посредством метода [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str). <sup>23,5</sup>
- Добавлен общедоступный [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/)-файл для получения базового и Ruby-текста фонетического руководства [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). <sup>23,5</sup>
— Возможность получения значения цифровой подписи из документа с цифровой подписью в виде массива байтов была добавлена путем введения нового свойства [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/). <sup>23,7</sup>
— Классы [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) были расширены новыми общедоступными членами — [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) и [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23,7</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 23.5 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.6 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.7 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.8 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words для Python via .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 повышает производительность эмуляции растровых операций, а также повышает качество экспорта и рендеринга документов.

В Aspose.Words 23.2 реализовано сохранение документов в формате MOBI, улучшено отображение диаграмм и внесены заметные изменения в детали внешнего вида документов.

Aspose.Words 23.3 расширяет возможности импорта и сохранения документов благодаря новым свойствам, а также улучшает качество работы с цветом фона и переднего плана, а также радиальным градиентом.

Aspose.Words 23.4 улучшает вычисление некоторых параметров, а также позиционирование таблицы и окружающего текста.

### Улучшения производительности

#### Эмуляция растровых операций <sup>23.1</sup>

Значительно улучшена производительность и качество эмуляции растровых операций с метафайлами.

### Поддерживаемые форматы

#### Экспорт в MOBI <sup>23.2</sup>

Начиная с версии 23.2, можно сохранить документ в формате MOBI (также называемом PRC, AZW — собственный формат файлов электронных книг Amazon Kindle). Теперь вы можете не только загружать документы MOBI, но и экспортировать файлы в формат MOBI.

### Рендеринг

#### Работа с цветами темы затенения <sup>23.1</sup>

Реализована возможность работы с цветами темы штриховки.

#### Поддержка коэффициента R-квадрата в диаграммах DML <sup>23.1</sup>

Добавлена поддержка коэффициента R-квадрата в метках линий тренда диаграммы DML при рендеринге.

#### Улучшения рендеринга диаграмм <sup>23.2</sup>

Начиная с версии 23.2, рендеринг диаграмм был значительно улучшен.

#### Управление цветом фона и переднего плана <sup>23.3</sup>

Класс [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) был расширен набором новых общедоступных свойств, связанных с цветами фона и переднего плана: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) и [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) и [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Радиальные градиенты с помощью `SkiaSharp` Native Shader <sup>23.3</sup>

Реализован рендеринг радиальных градиентов с помощью собственного шейдера `SkiaSharp` для .NET Standard.

#### Расстояние между таблицей и окружающим текстом <sup>23.4</sup>

Возможность устанавливать расстояние между таблицей и окружающим текстом была добавлена путем введения новых свойств в класс [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/): [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) и [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Загрузка и сохранение документов

#### Генерация `TOC` для документов AZW3 <sup>23.1</sup>

Возможность создания `TOC` (оглавления) для документов AZW3 была добавлена за счет использования свойства [epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/).

#### Экспорт элементов списка в Markdown <sup>23.1</sup>

Способ управления экспортом элементов списка в формат Markdown был предоставлен путем добавления свойства [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) в класс [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/).

#### Уведомления о ходе сохранения документа <sup>23.3</sup>

Реализовано сохранение уведомлений о ходе работы для форматов MOBI и AZW3.

#### Корректировка интервалов между предложениями и словами <sup>23.3</sup>

Возможность указать, следует ли автоматически регулировать интервал между предложениями и словами при импорте документа, была добавлена путем введения свойства [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/).

### Другой

- Возможность указать настройку межсимвольного интервала в документе была добавлена посредством реализации свойства [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) <sup>23.2.</sup>
- Способ указания Aspose.Words, включать ли текстовые поля, сноски и концевые сноски в статистику количества слов, был предоставлен путем добавления свойства [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) <sup>23.2.</sup>
- Новая опция для стиля документа, которая позволяет указать, будет ли стиль автоматически переопределяться на основе соответствующего значения, была введена через свойство [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) <sup>23.2.</sup>
- Добавлена возможность определить, является ли [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) прогоном фонетического руководства с помощью свойства [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) <sup>23.4.</sup>
- Реализован простой способ работы с рядами и осями комбинированных диаграмм путем введения класса [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) и добавления свойства [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) <sup>23.4.</sup>
- В класс [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) <sup>23.4</sup> добавлены новые общедоступные свойства, связанные с относительным позиционированием и размером фигуры
- Точность и производительность расчета яркости цвета для автоматического разрешения цвета текста улучшены в соответствии с последними версиями Microsoft Word <sup>23.4.</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 23.1 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.2 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.3 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.4 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words для Python via .NET 22.9, 22.10, 22.11, 22.12

В Aspose.Words 22.9 расширены возможности загрузки и сохранения документов, а также улучшено взаимодействие с некоторыми другими опциями.

Aspose.Words 22.10 улучшает параметры поиска и замены, расширяет возможности объектов OLE и расширяет функциональность списков.

Aspose.Words 22.11 расширяет свой функционал новыми возможностями для более удобной работы с уже знакомыми объектами: OLE и тегами структурированных документов.

Aspose.Words 22.12 расширяет возможности рендеринга и предоставляет возможности работы с полями при загрузке/сохранении документа.

### Улучшения производительности <sup>22.12</sup>

Была введена оптимизация, которая значительно уменьшает глубину вложения графических состояний при рендеринге в PDF для обеспечения соответствия спецификациям.

### Рендеринг и печать

#### Новые свойства рендеринга границ <sup>22.12</sup>

Были представлены новые общедоступные свойства [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) и [tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/).

#### Формула линейной линии тренда для рендеринга DrawingML <sup>22.12</sup>

Реализовано отображение формулы линейного тренда для диаграмм DrawingML.

#### Настройки резервного шрифта для Google Noto-шрифтов <sup>22.12</sup>

Обновлены предопределенные настройки резервного шрифта для шрифтов Google Noto.

### Загрузка и сохранение документов

#### Кэшируйте формы верхнего и нижнего колонтитула для уменьшения размера PDF <sup>до 22,9.</sup>

Возможность кэширования форм верхнего и нижнего колонтитула для уменьшения размера выходного PDF-файла реализована путем добавления нового свойства **CacheHeaderFooterShapes**.

#### Автоматическое определение нумерации при загрузке документа <sup>22.9</sup>

Возможность указать свойство [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/) при загрузке текста реализована посредством расширенного класса [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/).

#### Указание конкретного типа маржи <sup>22.12</sup>

Реализована возможность указать конкретный тип **Margin** для данного раздела.

### Поиск и сравнение <sup>22.10</sup>

Возможность игнорировать [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) при поиске и замене параметров была реализована путем добавления нового свойства [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/) в класс [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Другой

- Добавлена новая функция для получения FieldEQ как OfficeMath. <sup>22,9</sup>
- Разрешено создание структурированных тегов документа типа Group на уровне строк. <sup>22,9</sup>
— Объекты и элементы управления OLE теперь обрабатываются как изображения метафайлов при преобразовании документа в HTML. <sup>22.10</sup>
- Добавлена новая функция проверки того, что конкретный список создан на основе того же шаблона, что и сравниваемый список, путем введения нового метода **HasSameTemplate** в класс [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/). <sup>22.10</sup>
- Добавлена возможность создания новых тегов структурированных документов типа [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/). <sup>22.11</sup>
- Добавлено новое свойство **EmbedAttachments**, позволяющее пользователям встраивать вложения OLE из исходного документа в выходной PDF-документ. <sup>22.11</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 22.9 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 22.10 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 22.11 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 22.12. Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words для Python via .NET 22.5, 22.6, 22.7, 22.8

В Aspose.Words 22.5 реализована поддержка новых форматов загрузки и нового размера страницы печати, а также улучшены некоторые параметры рендеринга.

Aspose.Words 22.6 расширяет возможности преобразования PDF в другие форматы, а также улучшает работу с DrawingML и эффектом заливки сплошным текстом.

Aspose.Words 22.7 расширяет возможности работы с функциями рендеринга, а также добавляет новые возможности для работы с импортом HTML и экспортом в PDF.

Aspose.Words 22.8 представляет новый формат экспорта и улучшает различные алгоритмы рендеринга.

API улучшен для более гибкой и удобной разработки.

### Поддерживаемые форматы

* Добавлена поддержка загрузки документов EPUB и XML путем добавления новых значений в перечисление **LoadFormat**. Начиная с версии 22.5 появилась возможность загружать документы EPUB и XML в модель документа Aspose.Words и конвертировать их в любой [Поддерживаемые форматы документов](/words/ru/python-net/supported-document-formats/). <sup>22,5</sup>
* Начиная с версии 22.8, можно сохранять документ в формате AZW3 — собственном формате файлов электронных книг Amazon Kindle (KF8 — другое название формата). Теперь вы можете не только загружать документы AZW3, но и экспортировать файлы в формат AZW3, который по сути представляет собой скомпилированный EPUB. <sup>22,8</sup>

### Рендеринг и печать

#### Новый размер печати <sup>22,5</sup>

Поддержка размера страницы для печати "Конверт № 10" была добавлена путем введения нового значения в перечисление [PaperSize](https://reference.aspose.com/words/python-net/aspose.words/papersize/).

#### Рендеринг формул MathML <sup>22.5</sup>

Улучшена отрисовка рамки вокруг формул MathML и определение шрифта при отрисовке символов для таких формул.

#### Улучшения диаграмм DML <sup>22.6</sup>

Открытый API-код диаграмм DrawingML был расширен для поддержки заливок градиентами, текстурами и узорами.

#### Анализ контуров глифов для OpenType <sup>22.7</sup>

Реализован анализ контуров собственных глифов Aspose.Words для шрифтов OpenType (CFF).

Ранее анализ глифов шрифтов OpenType (CFF) выполнялся через GDI+. Так что теперь он работает в тех случаях, когда GDI+ недоступен — платформы Java, .NET Standard, Linux, macOS и т.д. Анализ контуров глифов требуется в определенных случаях, таких как WordArt, текстовые эффекты, некоторые функции Office Math и другие.

#### Установить форматирование тени фигуры <sup>22.7</sup>

Возможность установки теневого форматирования объекта формы появилась путем добавления нового свойства [shadow_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shadow_format/).

#### Поддержка интервала между ячейками в таблицах <sup>22.8</sup>

Механизм верстки теперь значительно улучшен: реализован очень сложный механизм расположения ячеек в таблицах.

#### Замена шрифта для символов <sup>22.8</sup>

Улучшена замена шрифтов для символов.

#### Алгоритм вращения меток оси диаграммы <sup>22.8</sup>

Улучшен алгоритм вращения меток осей диаграммы.

### Загрузка и сохранение документов

#### Загрузка и преобразование PDF в формат фиксированной страницы без модели макета <sup>22.6</sup>

Реализована возможность загрузки и преобразования PDF-документов в фиксированные форматы страниц с высокой точностью и производительностью.

#### Новый режим импорта HTML <sup>22.7</sup>

Был введен новый режим импорта HTML для элементов уровня блока путем добавления нового значения в перечисление [HtmlInsertOptions](https://reference.aspose.com/words/python-net/aspose.words/htmlinsertoptions/).

#### Преобразование в PDF/UA-1, совместимое с WCAG 2.0 <sup>22,7</sup>

Добавлена поддержка преобразования документа в формат PDF/UA-1, соответствующий WCAG 2.0.

Таким образом, если у клиента есть доступный документ Word и он преобразует его в PDF/UA-1 через Aspose.Words с упоминанием особенностей преобразования, то выходные данные будут совместимы с WCAG 2.0.

WCAG или Рекомендации по обеспечению доступности веб-контента — это набор рекомендаций, разработанных W3C в сотрудничестве с отдельными лицами и организациями по всему миру. Теперь с помощью Aspose.Words вы можете преобразовать свой документ в выходной формат PDF/UA-1, который подходит для создания PDF-документов, совместимых с WCAG 2.0.

Стоит отметить, что WCAG 2.0 имеет два дополнительных требования, не указанных в спецификации PDF/UA-1:

- требования к контрасту
- требования к разметке мультимедийного контента

Но оба требования не имеют отношения к нашему случаю конвертации из Word в PDF.

### Другой

Реализовано исключение наследования эффекта заливки сплошным текстом, имитирующего поведение MS Word. <sup>22,6</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 22.5 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-22-5-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 22.6 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-22-6-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 22.7 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-22-7-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 22.8 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words для Python via .NET 22.3, 22.4

Aspose.Words 22.3 расширяет возможности работы с форматами PDF и TXT и улучшает работу некоторых существующих алгоритмов и движков.

Aspose.Words 22.4 расширяет возможности PDF — теперь вы можете сохранить файл в формате PDF/A-4 и получить ряд других улучшений при выводе PDF. В то же время Aspose.Words 22.4 предоставляет дополнительные возможности для работы с диаграммами DML, чтения метаданных Photoshop и импорта блочных элементов HTML.

API улучшен для более гибкой и удобной разработки.

### Поддерживаемые функции

Начиная с Aspose.Words 22.4, добавлена поддержка Python 3.10.

### Улучшения производительности

Реализована загрузка ранее сохраненного кэша поиска шрифтов для ускорения процесса инициализации кэша шрифтов при рендеринге. Теперь ваши решения будут работать еще быстрее.

### Поддерживаемые форматы

Добавлена загрузка документа в формате AZW3 (KF8 — другое название формата). Теперь вы можете загрузить документ AZW3 и преобразовать его в любой другой поддерживаемый формат.

### Рендеринг

#### Рендеринг формул MathML

Улучшено отображение операторов в формулах MathML.

#### Улучшения диаграмм DML

В диаграммы DML были внесены следующие улучшения:

* Алгоритм масштабирования оси диаграммы DML улучшен и теперь аналогичен алгоритму масштабирования в MS Word

* Была предоставлена возможность манипулировать записями легенды диаграммы DrawingML, чтобы сделать нашу API-диаграмму все более полной
* Реализована возможность указать имя файла xls/xlsx, с которым связана диаграмма DrawingML

#### Рендеринг в PDF с соответствием PDF/A-4

Рендеринг в PDF с соответствием PDF/A-4 был добавлен путем добавления новых значений в перечисление [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) — [PDF_A4](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a4). Этот вариант предполагает пересмотренные уровни соответствия: обычное соответствие PDF/A-4 эквивалентно уровню соответствия U предыдущих версий, а соответствие уровня A удалено.

#### Чтение разрешения метаданных Photoshop в формате JPEG

Чтение разрешения метаданных Photoshop в изображениях JPEG было реализовано для устранения интересной проблемы с неправильным масштабированием изображений при рендеринге.

#### Разрешить перенос латинского текста в середину слова

Поддержка функции "Разрешить перенос латинского текста в середину слова" была реализована, чтобы сделать нашу поддержку латиницы еще лучше при рендеринге.

### Загрузка и сохранение документов

#### Управление поведением стиля при загрузке документа

Была введена новая опция [force_copy_styles](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/force_copy_styles/) для управления поведением конфликтующих стилей при импорте документа.

#### Преобразование фигур в SVG при экспорте

Возможность преобразования фигур в изображения SVG при экспорте в HTML, MHTML или EPUB была обеспечена путем добавления свойства [export_shapes_as_svg](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_shapes_as_svg/).

#### Сохранение в PDF 2.0 и улучшения вывода PDF

Была введена возможность сохранять документ в формате PDF 2.0 путем добавления нового значения в перечисление [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/), а также несколько других запрошенных улучшений вывода PDF.

#### Новый режим импорта HTML

Для имитации поведения Microsoft Word был реализован новый режим импорта блочных элементов HTML.

### Другой

* Появилась возможность получить OOXML элемента управления содержимым и сохранить его в строке.
* Добавлено распознавание нестандартных сносок в PDF-документах при импорте.
* Добавлена возможность получения данных настраиваемого поля, связанного с этим полем.
* Улучшен алгоритм сравнения таблиц, основанный на глубоком анализе механизма сравнения Microsoft Word.
* Представлен синтаксис комментариев в механизме отчетов LINQ.

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 22.3 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-22-3-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 22.4 Примечания к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-22-4-release-notes/).

{{% /alert %}}

## Смотрите также

{{% alert color="primary" %}}

На этой странице собраны последние новости о релизах за последние 2 года. Подробную информацию о более ранних выпусках см. на страницах [Примечания к выпуску](/words/python-net/release-notes/) в соответствующих разделах.

{{% /alert %}}