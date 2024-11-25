---
title: Что нового
second_title: Aspose.Words для Python via .NET
articleTitle: Что нового в Aspose.Words для Python via .NET
linktitle: Что нового в Aspose.Words для Python via .NET
type: docs
description: "Aspose.Words для Python via .NET с каждым днем расширяется и усовершенствуется. На этой странице вы можете узнать об основных и наиболее интересных возможностях продукта."
weight: 10
url: /ru/python-net/what-s-new-in-aspose-words-for-python-net/
timestamp: 2024-11-18-12-56-02
---

На этой странице описаны наиболее интересные новые функции Aspose.Words, появившиеся в последних версиях.

## Aspose.Words для Python через .NET 24.9, 24.10, 24.11

Aspose.Words 24.9 добавляет вставку group shape и вставку StructuredDocumentTag с помощью DocumentBuilder, улучшает отображение радиальных диаграмм с помощью градуировок, улучшает цифровые подписи с поддержкой XAdES-EPES, добавляет распознавание подчеркивания Markdown и предоставляет доступ к разделителям сносок/концевых примечаний.

Aspose.Words 24.10 добавлена расширенная поддержка элементов управления ActiveX с возможностью создания CommandButton, новый элемент управления видимостью фигур, возможность group shapes, улучшенный Markdown экспорт таблиц, форматирование диаграмм для Pie и Doughnut графиков, улучшенная обработка кодировки Big5 и поддержка устаревших тайваньских шрифтов..

Aspose.Words 24.11 реализована функция обобщения документов на основе AI, расширены возможности визуализации, улучшен доступ к свойствам документа и субтитрам элементов управления ActiveX.

### AI -функциональные возможности <sup>24.11</sup>

Поддержка обобщения документов с использованием моделей порождающего языка **OpenAI** и **Google** была интегрирована путем добавления пространства имен [Aspose.Words.AI](https://reference.aspose.com/words/python-net/aspose.words.ai/) с его общедоступными членами.

### Рендеринг и печать

#### Градуировки на радиальных графиках <sup>24.9</sup>

Реализован рендеринг градаций на радиальных диаграммах.

#### CommandButton Элементы управления ActiveX <sup>24.10</sup>

Возможность создавать CommandButton элементы управления ActiveX была реализована путем добавления нового общедоступного метода [insert_forms_2_ole_control](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_forms_2_ole_control/) и нового общедоступного класса [Forms2OleControl](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/).

#### Контролируйте видимость фигуры <sup>24.10</sup>

Было добавлено новое общедоступное свойство [hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/hidden/) для управления видимостью фигур.

#### Изменения на графиках Pie и Doughnut <sup>24.10</sup>

В диаграммы формата Pie и Doughnut было добавлено несколько новых общедоступных свойств.

#### Управлять отображением границ поля формы выбора PDF <sup>24.11</sup>

Новая опция для управления отображением границ полей формы выбора PDF была реализована путем добавления новой общедоступной опции [render_choice_form_field_border](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/render_choice_form_field_border/).

#### Получение и установка кодов формата для данных диаграммы <sup>24.11</sup>

Возможность получать и устанавливать коды формата для данных диаграммы была добавлена путем реализации свойства [format_code](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/format_code/) в классах [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/) и [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/).

#### Визуализация гистограммных графиков с ячейками и надписями <sup>24.11</sup>

Улучшен рендеринг гистограммных диаграмм за счет использования заданного количества ячеек и меток.

### Преобразование, загрузка и сохранение документов

#### Подчеркивание форматирования при загрузке Markdown файлов <sup>24.9</sup>

Возможность распознавать форматирование с подчеркиванием при загрузке документов Markdown была реализована путем добавления нового общедоступного свойства [import_underline_formatting property](https://reference.aspose.com/words/python-net/aspose.words.loading/markdownloadoptions/import_underline_formatting/).

#### Экспорт таблиц как HTML при сохранении в Markdown <sup>24.10</sup>

Возможность экспортировать таблицы в формате HTML при сохранении документов в формате Markdown была реализована путем добавления нового общедоступного свойства [export_as_html](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/export_as_html/) и перечисления [MarkdownExportAsHtml](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownexportashtml/).

#### Экспорт PDF с обновленной логической структурой <sup>24.11</sup>

PDF экспорт был улучшен за счет включения свойств заголовка таблицы в качестве заголовков элементов логической структуры PDF.

### Цифровые подписи

#### Подписывайте документы с помощью XAdES-EPES <sup>24.9</sup>

Возможность подписывать документы подписями уровня XAdES-EPES XML-DSig была введена путем добавления нового публичного свойства [xml_dsig_level](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/xml_dsig_level/) и нового публичного перечисления [XmlDsigLevel](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/xmldsiglevel/).

### Другой

* В group shapes был добавлен новый общедоступный метод [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/). <sup>24.9</sup>
* Был добавлен новый общедоступный метод [insert_structured_document_tag](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_structured_document_tag/) для вставки **StructuredDocumentTags** в документ. <sup>24.9</sup>
* Открытый доступ к разделителям сносок и концевых примечаний был обеспечен путем добавления нескольких общедоступных классов и свойств. <sup>24.9</sup>
* Возможность группировать отдельные фигуры, group shapes вместе, а также напрямую группировать обе фигуры и group shapes появилась благодаря добавлению метода [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/#float_float_float_float_shapebaselist). <sup>24.10</sup>
* Улучшена обработка кодировки Big5 для TrueType таблиц cmap. <sup>24.10</sup>
* Была улучшена поддержка устаревших тайваньских шрифтов. <sup>24.10</sup>
* Для доступа к расширенным свойствам документа в класс [BuiltInDocumentProperties](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/) были добавлены свойства, доступные только для чтения. <sup>24.11</sup>
* Настройка подписей для элементов управления ActiveX была включена путем добавления нового общедоступного параметра настройки к свойству [Forms2OleControl.caption](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/caption/). <sup>24.11</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 24.9 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-9-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.10 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-10-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.11 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-11-release-notes/).

{{% /alert %}}

## Aspose.Words для Python через .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 расширяет возможности для сборок, улучшает возможности рендеринга и расширяет некоторые другие возможности.

Aspose.Words 24.6 улучшены параметры рендеринга, расширены возможности поиска и сравнения, а также расширен ряд других функций.

Aspose.Words 24.7 изменяет способ работы с ActiveX, расширяет возможности рендеринга, а также экспорта в форматы Markdown и XLSX.

Aspose.Words 24.8 расширяет возможности настройки диаграмм за счет точного управления метками осей, расширяет возможности управления шрифтами, улучшает работу со структурой документа и добавляет новые возможности для экспорта HTML/XAML, функциональности PDF, преобразования документов и цифровых подписей.

### Поддерживаемые форматы

Начиная с версии 24.7, поддерживается экспорт в PDF/UA-2 для обеспечения доступности для пользователей с ограниченными возможностями.

### Рендеринг и печать

#### Изменения в графиках, фигурах и DrawingML <sup>24.5</sup>

* DrawingML реализован рендеринг эффектов для SVG графики, расширяющий предыдущую функциональность, ограниченную изображениями.
* Поддержка создания комбинированных диаграмм и настройки таких свойств, как ширина промежутка, перекрытие и пузырьковый масштаб, в группах рядов была реализована путем добавления классов [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) и [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/), а также свойства [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/).
* Функциональность для управления эффектом SoftEdge фигур была реализована путем добавления класса [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/).
* Возможность изменять корректирующие значения фигур была реализована путем добавления общедоступных классов **AdjustmentCollection** и **Adjustment** и свойства [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/).

#### Изменения в диаграммах, фигурах и чертежах <sup>24.6</sup>

- Возможности построения графиков были расширены. Теперь вы можете создавать более широкий спектр диаграмм, включая *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* графики, *Box & Whisker* диаграммы, *Waterfalls* и *Funnels*. Это позволяет вам визуализировать ваши данные более разнообразным и информативным образом.
- Улучшено управление цветом для форматирования теней. Вы можете получить более точный контроль над внешним видом ваших документов, получив доступ к цветам теней.
- Улучшена производительность при рендеринге фона. Вы можете значительно ускорить рендеринг фона, содержащего небольшие элементы, благодаря встроенной технологии тайлинга.
- Добавлены реалистичные градиенты для фигур. Теперь вы можете создавать фигуры DML с нелинейными градиентами, имитируя визуальный стиль Microsoft Word для придания им более совершенного вида.

#### Настройка меток данных диаграммы <sup>24.7</sup>

Была добавлена возможность настраивать метки данных диаграммы, такие как **Orientation** и **Rotation**.

#### Пользовательский стиль нумерации для уровней списка <sup>24.7</sup>

Добавлен параметр настройки для свойства public [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/). Теперь вы можете задать пользовательский стиль нумерации для уровней списка.

#### Изменения в работе с ActiveX <sup>24.7</sup>

- Свойства объектов ActiveX теперь можно изменять, что дает вам больше контроля над их поведением.
- Добавлена возможность изменять значение переключателя ActiveX для включения динамического взаимодействия.
- Добавлена возможность переключать ActiveX checkbox на "проверенный" или "непроверенный".

#### Управление ориентацией и поворотом меток на оси графика <sup>24.8</sup>

Для более удобной настройки графика был добавлен точный контроль над ориентацией и поворотом меток отметок на оси графика – класс [AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) был расширен новыми свойствами [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) и [rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Замена обратной косой черты знаком иены <sup>24.8</sup>

Улучшен экспорт с обратной совместимостью HTML и XAML для замены символа обратной косой черты знаком иены. Для достижения этой цели в классы [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) и [XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/) было добавлено свойство **replace_backslash_with_yen_sign**.

#### Использование тегов SDT в качестве имен полей формы при экспорте в PDF <sup>24.8</sup>

PDF экспорт с поддержкой использования тегов SDT в качестве имен полей формы был расширен за счет добавления нового свойства [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) к классу [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/).

### Преобразование, загрузка и сохранение документов

#### Экспорт ссылок в формат Markdown <sup>24.7</sup>

Возможность управлять экспортом ссылок в формате Markdown была добавлена благодаря реализации свойства [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/).

#### LowCode 24.8 <sup>24.8</sup>

Был представлен новый класс [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/), предназначенный для предоставления набора методов преобразования различных типов документов с помощью одной строки кода.

### Поиск и сравнение

#### Расширенные параметры сравнения <sup>24.6</sup>

Добавлена возможность оптимизации рабочих процессов анализа данных с улучшенной функциональностью сравнения. Это включает в себя новую опцию [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) и переработанный интерфейс для расширенных сравнений.

### Другой

* Функция удаления пустых страниц из документа была реализована путем добавления метода [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/). <sup>24.5</sup>
* Возможность проверки наличия VBA макросов без загрузки документа была предоставлена путем добавления свойства [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/). <sup>24.5</sup>
* Теперь поддерживается сохранение нумерации источников при вставке документа с помощью механизма создания отчетов LINQ. <sup>24.5</sup>
* Добавлено новое свойство [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) – оно обеспечивает более точную временную метку для комментариев, улучшая организацию и отслеживаемость. <sup>24.6</sup>
* Формат даты и времени теперь автоматически определяется для беспрепятственного экспорта в формат XLSX. <sup>24.7</sup>
* Было добавлено общедоступное свойство [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/), которое позволяет вам проверить, защищен ли проект VBA. <sup>24.7</sup>
* Информация о шрифте была расширена за счет добавления свойства **embedding_licensing_rights** к классам [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) и [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Для более точной работы со структурой документа был добавлен способ эффективной очистки верхних и нижних колонтитулов разделов с сохранением водяных знаков. Чтобы очистить верхние и нижние колонтитулы разделов, используйте новый общедоступный метод [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). <sup>24.8</sup>
* Включена цифровая подпись XPS документов с использованием [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/) – для этой цели добавлено новое свойство [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/). <sup>24.8</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 24.5 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.6 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.7 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.8 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words для Python через .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 улучшены возможности управления цветами обводки, улучшены OLE объекты, а также введен новый `Bibliography Sources` общий API интерфейс.

Aspose.Words 24.2 расширены диаграммы API и управление стилем. В этой версии Aspose.Words также появилась возможность указывать SvgSaveOptions во время рендеринга, более гибкое управление загрузкой Markdown файлов и работа со ссылочным текстом для сносок и концевых примечаний.

Aspose.Words 24.3 представлен новый TIFF режим чтения/записи и эмуляция бинарных растровых операций для WMF метафайлов. Aspose.Words 24.3 также продолжает расширять диаграммы API.

Aspose.Words 24.4 расширены форматы сохранения, некоторые параметры рендеринга, а также улучшена работа с цифровыми подписями.

### Поддерживаемые форматы <sup>24.4</sup>

Современный формат изображений **WebP** теперь поддерживается в Aspose.Words для .NET Framework 4.6.2 и более поздних версий. Теперь вы можете читать и вставлять изображения WebP в документы, а также сохранять изображения в формате WebP.

Пожалуйста, обратите внимание, что WebP в настоящее время доступно только в версиях .NET Standard и .NET Framework v4.6.2 и выше.

### Рендеринг и печать

#### Управление цветом обводки <sup>24.1</sup>

Класс [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) был расширен набором новых общедоступных свойств, связанных с управлением цветами обводки: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) и [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) и [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### DrawingML Расширение графиков API <sup>24.2 / 24.3 / 24.4</sup>

Параметр **DrawingML Charts API** продолжает расширяться.

#### Вставлять шрифты, объявленные в правилах @font-face <sup>24.4</sup>

Добавлена возможность встраивать шрифты, объявленные в правилах @font-face, в определения шрифтов результирующего документа была введена путем добавления нового свойства [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/).

#### Работа с форматированием свечения и отражения <sup>24.4</sup>

Реализована возможность работы с форматированием свечения и отражения для объекта рисования.

### Загрузка и сохранение документов

#### Укажите SvgSaveOptions Во время рендеринга <sup>24.2</sup>

Добавлена возможность указывать [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) во время рендеринга с использованием методов [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) и [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions).

#### Сохранять пустые строки при загрузке Markdown файлов <sup>24.2</sup>

Добавлена возможность сохранять пустые строки при загрузке файлов Markdown.

#### Новый пользователь TIFF для чтения/записи <sup>24.3</sup>

Был разработан новый TIFF режим чтения/записи для Aspose.Words. Aspose.Words для .NET 24.3 добавлена поддержка чтения TIFF изображений с JPEG и старыми типами сжатия JPEG, а также значительно улучшено качество операций чтения и записи.

### Другой

* Возможность изменять текст элемента управления `TextBox` OLE была реализована путем добавления нового свойства **Text** к новому классу **TextBoxControl**. <sup>24.1</sup>
* Общедоступные источники библиографии API были реализованы путем добавления нового пространства имен [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) с его новыми классами и перечислениями, а также путем добавления нового свойства [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) к классу [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). <sup>24.1</sup>
* В класс [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) добавлены новые общедоступные свойства [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/) и [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) для улучшенного управления стилем. <sup>24.2</sup>
* Функциональность для получения фактического текста опорного знака для сносок и концевых сносок была расширена с помощью свойства [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) и метода [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default). <sup>24.2</sup>
* Реализована эмуляция бинарных растровых операций для метафайлов WMF. <sup>24.3</sup>
* Возможность определять параметры подписи для документов в **SaveOptions** была включена путем добавления нового класса [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) с новыми открытыми членами, а также добавления новых свойств к классам [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) и [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 24.1 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.2 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.3 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.4 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words для Python через .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 расширяет возможности рендеринга, эмуляции рендеринга метафайлов и markdown сохранения.

Aspose.Words 23.10 улучшен рендеринг, расширены возможности загрузки и сохранения документов, а также пользователи могут по-новому объединять документы.

Aspose.Words 23.11 расширяет работу с изменениями, XLSX форматированием и шрифтами в легенде диаграммы с помощью дополнительных опций.

Aspose.Words 23.12 добавлены новые свойства и перечисления для работы с PDF и OOXML документами, а также поддержка WebP изображений.

### Рендеринг и печать

#### Настройка названий осей в DrawingML диаграммах <sup>23.9</sup>

Возможность настраивать названия осей на диаграммах DrawingML появилась благодаря внедрению нового свойства public class [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) и [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/).

####  Определение вертикального расположения шрифтов в абзаце <sup>23.9</sup>

Теперь можно определять вертикальное расположение шрифтов в абзаце, используя новое свойство public [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) и новое перечисление [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/).

#### Управление цветом переднего плана <sup>23.10</sup>

Возможность извлекать цвет переднего плана без модификаторов была добавлена в классы [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) и [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) с помощью свойства **BaseForeColor**.

#### Расширение функциональности графиков <sup>23.10</sup>

Функциональность классов [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) и [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) была расширена за счет новых методов и свойств.

#### Автоматическая настройка и подгонка изображения под форму <sup>23.10</sup>

Новый метод [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) предоставляет простой способ автоматической настройки и подгонки изображения под определенную форму.

#### Форматирование шрифта по умолчанию для DrawingML записей в условных обозначениях диаграммы <sup>23.11</sup>

Добавлена возможность задавать форматирование шрифта по умолчанию для записей условных обозначений диаграмм DrawingML с помощью свойства [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/). Эта функция обеспечивает более упорядоченный и единообразный внешний вид элементов диаграммы, улучшая общую эстетику документа.

#### Укажите макет страницы при открытии PDF в Reader <sup>23.12</sup>

Возможность указывать макет страницы, который будет использоваться при открытии документа в PDF ридере, была добавлена благодаря введению нового свойства [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) для класса [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) и нового перечисления [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/).

### Загрузка и сохранение документов

#### Указание имени папки для создания изображения URIs в Markdown <sup>23.9</sup>

Класс [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) был расширен за счет добавления свойства [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/), которое позволяет указать имя папки, используемой для создания изображения URIs, записанного в документ Markdown.

#### Уменьшить PDF Размер выходных данных <sup>23.10</sup>

Были реализованы различные оптимизации PDF рендеринга для уменьшения размера выходных данных при использовании настроек [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/).

#### Распознавать гиперссылки при загрузке TXT документов <sup>23.10</sup>

Функция распознавания гиперссылок при загрузке документов TXT была реализована путем добавления нового свойства [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/).

### Другой

- Реализована эмуляция рендеринга метафайлов для определения размера растеризации, в частности, для WMF ширины пера и EMF косметической ширины пера. Для достижения этой цели свойство **ScaleWmfFontsToMetafileSize** было заменено свойством [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) и добавлено свойство [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/). <sup>23.9</sup>
- С использованием метода [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) был представлен упрощенный метод вставки одного документа в другой в текущем положении курсора. <sup>23.10</sup>
- Возможность доступа к свойствам стиля и их изменения была добавлена благодаря введению нового свойства [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/). <sup>23.10</sup>
- К методам класса [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) был добавлен параметр универсального типа. <sup>23.10</sup>
- Возможность записывать все разделы документа на один и тот же рабочий лист XLSX была предоставлена благодаря новому типу перечисления [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) и новому свойству [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/). <sup>23.11</sup>
* Способ управления тем, как расширения формата ZIP64 будут использоваться для документов OOXML, был реализован с помощью нового свойства Zip64Mode класса `OoxmlSaveOptions` и нового перечисления Zip64Mode. <sup>23.12</sup>
* Добавлена поддержка изображений WebP. Пожалуйста, обратите внимание, что эта функция доступна только для версий .NetStandart и .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 23.9 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.10 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.11 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.12 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words для Python через .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 расширяет возможности работы с данными рядов диаграмм и документами ODT, а также улучшает верхние и нижние колонтитулы и их текстовое оформление.

Aspose.Words 23.6 расширены возможности визуализации, добавлен новый формат экспорта, улучшены LINQ отчеты и LowCode инструменты.

Aspose.Words 23.7 расширены возможности создания отчетов, добавлен новый формат экспорта и внесены изменения в работу с таблицами и цифровыми подписями.

Aspose.Words 23.8 расширяет возможности различных форматов, улучшает визуализацию и добавляет новые опции для работы с полями.

### Поддерживаемые форматы

* Начиная с версии 23.6, можно сохранять документы в формате XLSX. Теперь вы можете конвертировать свои документы в формат Excel. <sup>23.6</sup>

* Начиная с версии 23.7, можно сохранять страницу документа или фигуру в формате EPS. <sup>23.7</sup>

### Новые возможности формата

- Добавлена функциональность для автоматического создания оглавления (TOC) для MOBI документов. <sup>23.8</sup>
- Конструктор [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) был расширен до [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- Реализовано формирование вертикального текста для метафайлов EMF. <sup>23.8</sup>

### Визуализация

#### Получение и изменение данных ряда диаграмм <sup>23.5</sup>

Возможность получать и изменять данные рядов диаграмм была предоставлена путем добавления:

- новые классы: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- новые типы перечислений: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Поддержка расширенной типографики <sup>23.6</sup>

Добавлена поддержка расширенной типографики при рендеринге WMF, EMF и EMF+.

#### Цветной контент на странице <sup>23.6</sup>

Было добавлено общедоступное свойство [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), указывающее, является ли страница цветной или нет.

#### Форматирование меток данных диаграммы <sup>23.6</sup>

Реализована возможность настройки форматирования заливки, обводки и выносок для меток данных диаграммы.

### Mail Merge и отчетность

#### Динамическая HTML вставка для LINQ Механизма создания отчетов <sup>23.6</sup>

Добавлен новый способ динамической вставки HTML для механизма создания отчетов LINQ.

#### Mustache Поддержка тегов <sup>23.7</sup>

Mustache теги теперь поддерживаются в методах [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) и [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/).

#### Указание размера отображаемых изображений <sup>23.8</sup>

Введено новое общедоступное свойство [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) для указания размера визуализируемых изображений в пикселях.

#### Сохранить пробелы для JSON строковых значений – LINQ <sup>23.8</sup>

В механизм создания отчетов LINQ добавлена опция для сохранения пробелов для строковых значений JSON.

### LowCode <sup>23.6</sup>

Добавлены новые LowCode методы, предназначенные для объединения различных типов документов в единый выходной документ.

### Другой

- Реализована поддержка переноса текста в верхние и нижние колонтитулы. <sup>23.5</sup>
- Добавлена возможность удалять цифровые подписи из ODT документов с помощью метода [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str). <sup>23.5</sup>
- Добавлено общедоступное свойство [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) для получения базового и ruby-текста фонетического руководства [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). <sup>23.5</sup>
- Добавлена возможность извлекать значение цифровой подписи из документа с цифровой подписью в виде массива байт, введя новое свойство [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/). <sup>23.7</sup>
- Классы [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) были расширены за счет новых открытых участников – [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/), и [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 23.5 Примечаний к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.6 Примечаний к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.7 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.8 Примечаний к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words для Python через .NET 23.1, 23.2, 23.3, 23.4

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

Начиная с 23.2, рендеринг диаграмм был значительно улучшен.

#### Управление цветом фона и переднего плана <sup>23.3</sup>

Класс [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) был расширен набором новых общедоступных свойств, связанных с цветами фона и переднего плана: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) и [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) и [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Радиальные градиенты с использованием собственного шейдера `SkiaSharp` <sup>23.3</sup>

Реализован рендеринг радиальных градиентов с использованием встроенного шейдера `SkiaSharp` для .NET Standard.

#### Расстояние между таблицей и окружающим текстом <sup>23.4</sup>

Возможность устанавливать расстояние между таблицей и окружающим текстом была добавлена путем добавления новых свойств в классы [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/): [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/), и [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Загрузка и сохранение документов

#### Сгенерировать `TOC` для AZW3 документов <sup>23.1</sup>

Благодаря использованию свойства **epub_navigation_map_level** была добавлена возможность генерировать `TOC` (оглавление) для AZW3 документов.

#### Экспорт элементов списка в Markdown <sup>23.1</sup>

Способ управления экспортом элементов списка в формат Markdown был предоставлен путем добавления свойства [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) к классу [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/).

#### Уведомления о ходе сохранения документов <sup>23.3</sup>

Реализовано сохранение уведомлений о ходе выполнения в форматах MOBI и AZW3.

#### Настройка интервалов между предложениями и словами <sup>23.3</sup>

Добавлена возможность указать, следует ли автоматически корректировать интервалы между предложениями и словами при импорте документа, введя свойство [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/).

### Другой

- Благодаря реализации свойства [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) <sup>23.2 добавлена возможность настройки интервала между символами в документе</sup>
- Способ указать Aspose.Words, следует ли включать текстовые поля, сноски и концевые сноски в статистику количества слов, был предоставлен путем добавления свойства [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) <sup>23.2</sup>
- Новая опция для стиля документа, которая позволяет указать, будет ли стиль автоматически переопределяться на основе соответствующего значения, была введена через свойство [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) <sup>23.2</sup>
- Добавлена возможность определять, является ли [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) прогоном фонетического руководства, используя свойство [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) <sup>23.4</sup>
- Простой способ работы с рядами и осями комбинированных диаграмм был реализован путем введения класса [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) и добавления свойства [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
- В класс <sup>[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 23.4 добавлены новые общедоступные свойства, связанные с относительным расположением и размером фигуры</sup>
- Точность и производительность расчета яркости цвета для автоматического разрешения цвета текста были улучшены в соответствии с последними версиями Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 23.1 Примечаний к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.2 Примечаний к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.3 Примечаний к выпуску](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.4 Примечаний к выпуску](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Смотрите также

{{% alert color="primary" %}}

На этой странице представлены последние новости о релизах за последние 2 года. Более подробную информацию о предыдущих выпусках смотрите в [Примечания к выпуску'](https://releases.aspose.com/words/python/release-notes/) страницы в соответствующих разделах.

{{% /alert %}}
