---
title: Что нового
second_title: Aspose.Words для Python via .NET
articleTitle: Что нового в Aspose.Words для Python via .NET
linktitle: Что нового в Aspose.Words для Python via .NET
type: docs
description: "Aspose.Words для Python via .NET Расширяется и усиливается ежедневно. На этой странице можно узнать об огромных и самых интересных особенностях продукта."
weight: 10
url: /ru/python-net/what-s-new-in-aspose-words-for-python-net/
---

На этой странице описаны самые интересные новые Aspose.Words Особенности, представленные в последних выпусках.

## Aspose.Words для Python через .NET 24.9, 24.10, 24.11

Aspose.Words 24.9 представляет вставку групповых фигур и вставку StructuredDocumentTag через DocumentBuilder, улучшает визуализацию радиальных диаграмм с помощью градуировок, улучшает цифровые подписи с поддержкой XAdES-EPES, добавляет распознавание подчеркивания Markdown и предоставляет доступ к разделителям сносок/концевых сносок.

Aspose.Words 24.10 представляет улучшенную поддержку элементов управления ActiveX с созданием CommandButton, новый элемент управления видимостью фигур, возможность группировать фигуры, улучшенный экспорт Markdown для таблиц, форматирование диаграмм для круговых и кольцевых диаграмм, улучшенную обработку кодировки Big5 и поддержку устаревших тайваньских шрифтов.

Aspose.Words 24.11 реализована функция обобщения документов на основе AI, расширены возможности визуализации, улучшен доступ к свойствам документа и субтитрам элементов управления ActiveX.

### AI -функциональные возможности <sup>24.11</sup>

Поддержка обобщения документов с использованием моделей порождающего языка **OpenAI** и **Google** была интегрирована путем добавления пространства имен [Aspose.Words.AI](https://reference.aspose.com/words/python-net/aspose.words.ai/) с его общедоступными членами.

### Рендеринг и печать

#### Градуировки на радиальных диаграммах <sup>24.9</sup>

Реализована визуализация градуировок на радиальных диаграммах.

#### Элементы управления ActiveX CommandButton <sup>24.10</sup>

Возможность создания элементов управления ActiveX CommandButton была введена путем добавления нового открытого метода [insert_forms_2_ole_control](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_forms_2_ole_control/) и нового открытого класса [Forms2OleControl](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/).

#### Видимость фигур управления <sup>24.10</sup>

Было добавлено новое открытое свойство [hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/hidden/) для управления видимостью фигур.

#### Изменения в круговых и кольцевых диаграммах <sup>24.10</sup>

Добавлено несколько новых общедоступных свойств для форматирования круговых и кольцевых диаграмм.

#### Управлять отображением границ поля формы выбора PDF <sup>24.11</sup>

Новая опция для управления отображением границ полей формы выбора PDF была реализована путем добавления новой общедоступной опции [render_choice_form_field_border](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/render_choice_form_field_border/).

#### Получение и установка кодов формата для данных диаграммы <sup>24.11</sup>

Возможность получать и устанавливать коды формата для данных диаграммы была добавлена путем реализации свойства [format_code](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/format_code/) в классах [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/) и [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/).

#### Визуализация гистограммных графиков с ячейками и надписями <sup>24.11</sup>

Улучшен рендеринг гистограммных диаграмм за счет использования заданного количества ячеек и меток.

### Преобразование, загрузка и сохранение документов

#### Подчеркивание форматирования при загрузке файлов Markdown <sup>24.9</sup>

Возможность распознавания подчеркивания форматирования при загрузке документов Markdown была включена путем добавления нового публичного свойства [import_underline_formatting property](https://reference.aspose.com/words/python-net/aspose.words.loading/markdownloadoptions/import_underline_formatting/).

#### Экспорт таблиц в формате HTML при сохранении в Markdown <sup>24.10</sup>

Возможность экспорта таблиц в формате HTML при сохранении документов в формате Markdown реализована путем добавления нового общедоступного свойства [export_as_html](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/export_as_html/) и перечисления [MarkdownExportAsHtml](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownexportashtml/).

#### Экспорт PDF с обновленной логической структурой <sup>24.11</sup>

PDF экспорт был улучшен за счет включения свойств заголовка таблицы в качестве заголовков элементов логической структуры PDF.

### Цифровые подписи

#### Подписание документов с помощью XAdES-EPES <sup>24.9</sup>

Возможность подписывать документы с помощью подписей XML-DSig уровня XAdES-EPES была введена путем добавления нового публичного свойства [xml_dsig_level](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/xml_dsig_level/) и нового публичного перечисления [XmlDsigLevel](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/xmldsiglevel/).

### Другое

* Добавлен новый публичный метод [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/) для групповых фигур. <sup>24.9</sup>
* Добавлен новый публичный метод [insert_structured_document_tag](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_structured_document_tag/) для вставки **StructuredDocumentTags** в документ. <sup>24.9</sup>
* Публичный доступ к разделителям сносок/концевых сносок был предоставлен путем добавления нескольких публичных классов и свойств. <sup>24.9</sup>
* Возможность группировать отдельные фигуры, группировать фигуры вместе и напрямую группировать фигуры и групповые фигуры была введена путем добавления метода [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/#float_float_float_float_shapebaselist). <sup>24.10</sup>
* Улучшена обработка кодировки Big5 для таблиц TrueType cmap. <sup>24.10</sup>
* Улучшена поддержка устаревших тайваньских шрифтов. <sup>24.10</sup>
* Для доступа к расширенным свойствам документа в класс [BuiltInDocumentProperties](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/) были добавлены свойства, доступные только для чтения. <sup>24.11</sup>
* Настройка подписей для элементов управления ActiveX была включена путем добавления нового общедоступного параметра настройки к свойству [Forms2OleControl.caption](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/caption/). <sup>24.11</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 24.9 Примечания к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-9-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.10 Примечания к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-10-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.11 Примечания к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-11-release-notes/).

{{% /alert %}}

## Aspose.Words для Python via .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 расширяет возможности сборок, улучшает возможности рендеринга и расширяет некоторые другие возможности.

В Aspose.Words 24.6 улучшены параметры рендеринга, улучшены функции поиска и сравнения, а также расширено несколько других функций.

Aspose.Words 24.7 меняет способ работы с ActiveX, расширяет возможности рендеринга, а также экспорта в форматы Markdown и XLSX.

Aspose.Words 24.8 улучшает настройку диаграммы с помощью точного управления надписями осей, расширяет управление шрифтами, улучшает обработку структуры документа и добавляет новые возможности для экспорта HTML/XAML, функциональности PDF, преобразования документов и цифровых подписей.

### Поддерживаемые форматы

Начиная с версии 24.7 поддерживается экспорт в PDF/UA-2 для обеспечения доступности для пользователей с ограниченными возможностями.

### Рендеринг и печать

#### Изменения в Charts, Shapes и DrawingML <sup>24.5</sup>

* Реализован рендеринг эффектов DrawingML для графики SVG, расширяющий предыдущую функциональность, ограниченную изображениями.
* Поддержка создания комбинированных диаграмм и настройки таких свойств, как ширина промежутка, перекрытие и пузырьковый масштаб в группах рядов, была введена путем добавления классов [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) и [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) и свойства [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/).
* Функциональность для управления эффектом SoftEdge фигур реализована путем добавления класса [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/).
* Возможность изменять значения настройки фигур реализована путем добавления **AdjustmentCollection** и **Adjustment** общедоступные классы и [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) свойство.

#### Изменения в диаграммах, фигурах и рисунках <sup>24.6</sup>

* Возможности построения диаграмм были расширены. Теперь вы можете создавать более широкий спектр диаграмм, включая *Древовидные диаграммы*, *Солнечные лучи*, *Гистограммы*, *Диаграммы Парето*, *Ящики с усами*, *Водопады* и *Воронки*. Это позволяет визуализировать данные более разнообразно и информативно.
* Улучшено управление цветом для форматирования теней. Вы можете получить более точный контроль над внешним видом ваших документов, получив доступ к теневым цветам.
* Улучшено повышение производительности фонового рендеринга. Вы можете значительно ускорить рендеринг фонов, содержащих мелкие элементы, благодаря встроенной технологии тайлинга.
* Добавлены реалистичные градиенты для фигур. Теперь вы можете создавать фигуры DML с нелинейными градиентами, имитируя визуальный стиль Microsoft Word для более изысканного вида.

#### Настройка меток данных диаграммы <sup>24.7</sup>

Добавлена ​​возможность настраивать метки данных диаграммы, такие как **Orientation** и **Rotation**.

#### Пользовательский стиль номеров для уровней списка <sup>24.7</sup>

Добавлен установщик для общедоступного свойства [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/). Теперь вы можете определить собственный стиль номеров для уровней списка.

#### Изменения в работе с ActiveX <sup>24.7</sup>

* Свойства объектов ActiveX теперь можно изменять, что дает вам больше контроля над их поведением.
* Добавлена ​​возможность изменять значение переключателя ActiveX для включения динамического взаимодействия.
* Добавлена ​​возможность переключать флажок ActiveX на «установленный» или «снятый».

#### Управление ориентацией и поворотом меток делений осей диаграммы <sup>24.8</sup>

Точный контроль над ориентацией и поворотом меток делений осей диаграммы был добавлен для более удобной настройки диаграммы — класс [AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) был расширен новыми свойствами [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) и [rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Замена обратной косой черты на знак йены <sup>24.8</sup>

Улучшен обратно совместимый экспорт HTML и XAML для замены символа обратной косой черты на знак йены. Для этого в классы [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) и [XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/) добавлено свойство **replace_backslash_with_yen_sign**.

#### Использование тегов SDT в качестве имен полей формы при экспорте в PDF <sup>24.8</sup>

Экспорт PDF с поддержкой использования тегов SDT в качестве имен полей формы был улучшен путем добавления нового свойства [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) в класс [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/).

### Преобразование, загрузка и сохранение документов

#### Экспорт ссылок в формат Markdown <sup>24.7</sup>

Возможность управления экспортом ссылок в формате Markdown была добавлена ​​посредством реализации свойства [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/).

#### LowCode <sup>24.8</sup>

Введен новый класс [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/), предназначенный для предоставления набора методов для преобразования различных типов документов с помощью одной строки кода.

### Поиск и сравнение

#### Расширенные параметры сравнения <sup>24.6</sup>
Добавлена ​​возможность оптимизировать рабочие процессы анализа данных с помощью улучшенных функций сравнения. Сюда входит новая опция [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) и переработанный интерфейс для расширенных сравнений.

### Другой

* Функция удаления пустых страниц из документа реализована путем добавления метода [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/). <sup>24.5</sup>
* Возможность проверки наличия макросов VBA без загрузки документа предоставлена путем добавления свойства [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/). <sup>24.5</sup>
* Теперь поддерживается сохранение нумерации источников при вставке документа с помощью механизма отчетов LINQ. <sup>24.5</sup>
* Добавлено новое свойство [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) – оно обеспечивает более точную временную метку для комментариев, улучшая организацию и отслеживаемость. <sup>24.6</sup>
* Механизм отчетов LINQ был улучшен. Было произведено выборочное удаление пустых абзацев и определение пользовательских сообщений для отсутствующих членов объекта, что привело к более чистым и информативным отчетам. <sup>24.6</sup>
* Формат даты и времени теперь автоматически определяется для беспрепятственного экспорта в формат XLSX. <sup>24.7</sup>
* Добавлено общедоступное свойство [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/), которое позволяет проверить, защищен ли проект VBA. <sup>24.7</sup>
* Информация о шрифтах была расширена с помощью свойства **embedding_licensing_rights**, добавленного в классы [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) и [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Добавлен способ эффективной очистки верхних и нижних колонтитулов разделов с сохранением водяных знаков для более точной работы со структурой документа. Для очистки верхних и нижних колонтитулов разделов используйте новый публичный метод [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). <sup>24.8</sup>
* Включено цифровое подписание документов XPS с помощью [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/) — для этой цели добавлено новое свойство [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/). <sup>24.8</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 24.5 Примечания к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.6 Примечания к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.7 Примечания к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.8 Примечания к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words для Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 улучшает опыт управления цветами хода, улучшает объекты OLE, а также вводит новый `Bibliography Sources` публичный API.

Aspose.Words 24.2 Расширенные диаграммы API и управления стилем. Эта версия Aspose.Words Также появилась возможность указывать SvgSaveOptions при рендеринге, более гибком управлении загрузкой. Markdown Файлы и работа со справочным текстом для сносок и конечных сносок.

Aspose.Words 24.3 представляет новый TIFF Reader/Writer и эмуляцию операций с бинарными растрами для метафайлов WMF. Aspose.Words 24.3 также продолжает расширять диаграммы API.

Aspose.Words 24.4 улучшает форматы сохранения, некоторые опции рендеринга, а также улучшает работу с цифровыми подписями.

### Поддерживаемые форматы <sup>24.4</sup>

Современный формат изображения **WebP** теперь поддерживается в Aspose.Words для .NET Framework 4.6.2 и выше. Теперь вы можете читать и вставлять изображения WebP в документы, а также сохранять изображения в формате WebP.

Обратите внимание, что в настоящее время WebP доступен только в .NET Standard и .NET Framework v4.6.2 и выше.

### Рендеринг и печать

#### Контроль цвета Stroke <sup>24.1</sup>

The [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) Класс был расширен с набором новых публичных свойств, связанных с управлением цветами хода: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) и [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) и [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### Расширение DrawingML Charts API <sup>24.2 / 24.3 / 24.3</sup>

The **DrawingML Charts API** продолжает расширяться.

#### Встраивание шрифтов, объявленных в правилах @font-face <sup>24.4</sup>

Добавлена возможность встраивать шрифты, объявленные в правилах @font-face, в определения шрифтов полученного документа путем добавления нового свойства с названием [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/).

#### Работа с форматированием свечения и отражения <sup>24.4</sup>

Добавлена возможность работы с форматированием свечения и отражения для рисунков.

### Загрузка и сохранение документов
#### Укажите SvgSaveOptions во время рендеринга <sup>24.2</sup>

Возможность конкретизировать [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) во время рендеринга был добавлен с использованием [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) и [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) методы.

#### Сохранить пустые линии при загрузке Markdown файлы <sup>24.2</sup>

Возможность сохранения пустых линий при загрузке Markdown Добавлены файлы.

#### Новый TIFF Reader/Writer <sup>24.3</sup>

Новый читатель/писатель TIFF Aspose.Words был разработан. Aspose.Words для .NET 24.3 добавлена поддержка чтения изображений TIFF с JPEG и старыми типами сжатия JPEG, а также значительно улучшено качество операций чтения и записи.

### Другой

* Возможность изменять текст элемента управления `TextBox` OLE появилась путем добавления нового свойства **Text** в новый класс **TextBoxControl**. <sup>24.1</sup>
* Открытый API-файл "Источники библиографии" был реализован путем добавления нового пространства имен **Aspose.Words.Bibliography** с его новыми классами и перечислениями, а также путем добавления нового свойства **Bibliography** в класс **Document**. <sup>24.1</sup>
* В класс [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) добавлены новые общедоступные свойства [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/) и [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) для расширенного управления стилями. <sup>24.2</sup>
* Функциональность получения фактического текста справочной метки для сносок и концевых сносок была расширена за счет свойства [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) и метода [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default). <sup>24.2</sup>
* Реализована эмуляция двоичных растровых операций для WMF метафайлов. <sup>24.3</sup>
* Добавлена возможность определения параметров подписи для документов внутри **SaveOptions** путем добавления нового класса с названием [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) с новыми открытыми членами, а также добавления новых свойств в классы [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) и [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 24.1 Выпуск заметок](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.2 Заметки о выпуске](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.3 Выпускные примечания](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 24.4 Примечания к выпуску](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words для Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 расширяет параметры рендеринга, эмуляцию рендеринга метафайлов и markdown Сохранить варианты.

Aspose.Words 23.10 улучшает рендеринг, расширяет возможности загрузки и сохранения документов и позволяет пользователям объединять документы по-новому.

Aspose.Words 23.11 улучшает работу с доработками, форматом XLSX и шрифтами на легенде графика с дополнительными опциями.

Aspose.Words 23.12 вводятся новые свойства и перечисления для работы с документами PDF и OOXML, а также поддержка изображений WebP.

### Чтение и печать

#### Настройка названий топоров в DrawingML диаграммы <sup>23.9</sup>

Возможность настройки названий осей в диаграммах DrawingML была введена благодаря внедрению нового публичного класса. [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) и [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) собственность.

####  Определение вертикального положения шрифтов в параграфе <sup>23.9</sup>

Теперь можно определить вертикальное положение шрифтов в абзаце, используя новую публику. [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) Собственность и новое [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) перечисление.

#### Контроль цвета переднего плана <sup>23.10</sup>

Способность извлекать цвет переднего плана без модификаторов была добавлена. [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) и [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) классы через **BaseForeColor** собственность.

#### Расширение функциональности диаграмм <sup>23.10</sup>

Функциональность The [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), и [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) Классы были расширены новыми методами и свойствами.

#### Автоматическая настройка и подгонка изображения в форму <sup>23.10</sup>

Простой способ автоматической настройки и установки изображения в определенную форму был предоставлен с помощью нового. [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) метод.

#### Форматирование шрифта по умолчанию для рисования МЛ Обсуждение Chart Legend Entries <sup>23.11</sup>

Возможность указать форматирование шрифта по умолчанию для записей легенд диаграмм DrawingML была добавлена через [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/) собственность. Эта функция облегчает более обтекаемый и последовательный внешний вид элементов диаграммы, улучшая общую эстетику документа.

#### Укажите макет страницы при открытии PDF в Reader <sup>23.12.</sup>

Возможность указать макет страницы, который будет использоваться при открытии документа в PDF-ридере, была добавлена благодаря введению нового. [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) собственности на [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) Класс и введение нового [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) перечисление.

### Погрузка и экономия документов

#### Определение имени папки для построения URI изображения в Markdown <sup>23.9</sup>

The [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) Класс был расширен за счет включения [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/) свойство, позволяющее указать название папки, используемой для построения изображения URI, записанного в Markdown Документ.

#### Сократить PDF Размер выпуска <sup>23.10</sup>

Различные оптимизации рендеринга PDF для уменьшения размера вывода при использовании [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) Настройки были реализованы.

#### Распознавать гиперссылки при загрузке документов TXT <sup>23.10</sup>

Функция распознавания гиперссылок при загрузке документов TXT реализована путем добавления новой [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) собственность.

### Другой

- Реализована эмуляция метафильного рендеринга для определения размера растеризации, в частности для ширины ручки WMF и ширины косметической ручки EMF. Чтобы достичь этого, **ScaleWmfFontsToMetafileSize** имущество было заменено на [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) собственности и [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) собственность была добавлена. <sup>23.9</sup>
- Упрощенный метод вставки одного документа в другой документ в текущем положении курсора был введен с использованием [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) метод. <sup>23.10</sup>
- Возможность доступа и модификации свойств стиля была добавлена благодаря внедрению новой технологии. [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) собственность. <sup>23.10</sup>
- К методам, используемым в [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) класс. <sup>23.10</sup>
- Возможность записывать все разделы документа на одну и ту же рабочую таблицу XLSX была предоставлена с помощью нового стандарта. [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) Тип перечня и новый [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) собственность. <sup>23.11</sup>
* Способ контроля того, как расширения формата ZIP64 будут использоваться для документов OOXML, реализован через новое свойство Zip64Mode. `OoxmlSaveOptions` Класс и новый список Zip64Mode. <sup>23.12.</sup>
* Введена поддержка изображения WebP. Обратите внимание, что эта функция доступна только для .NetСтандарт и .NET6+ версий. <sup>23.12.</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 23.9 Выпуск заметок](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.10 Релизные заметки](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.11 Выпуск заметок](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Узнайте больше о [Aspose.Words для .NET 23.12 Выпуск заметок](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words для Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 повышает возможность работы с данными серии диаграмм и возможность работы с документами ODT, а также улучшает заголовки/футеры и их текстовую обертку.

Aspose.Words 23.6 расширяет возможности рендеринга, добавляет новый формат экспорта, улучшает отчетность по LINQ и LowCode инструменты.

Aspose.Words 23.7 расширяет возможности отчетности, добавляет новый формат экспорта и вносит изменения в работу с таблицами и цифровыми подписями.

Aspose.Words 23.8 расширяет возможности различных форматов, улучшает рендеринг, добавляет новые возможности работы с полями

### Поддерживаемые форматы

* Начиная с версии 23.6, можно сохранить документ в формате XLSX. Теперь вы можете конвертировать документы в формат Excel. <sup>23.6.</sup>

* Начиная с версии 23.7, можно сохранить страницу документа или форму в формате EPS. <sup>23.7</sup>

### Новые особенности формата

- Введена функция автоматического создания Таблицы Содержимого (TOC) для документов MOBI. <sup>23.8</sup>
- [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) Конструктор был расширен [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- Реализовано формирование вертикального текста для метафайлов ЭМП. <sup>23.8</sup>

### Рендеринг

#### Получить и изменить Данные серии Chart <sup>23.5</sup>

Функция получения и изменения данных серии диаграмм была предоставлена путем добавления:

- новые классы: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- новые типы перечня: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Поддержка расширенной типографии <sup>23.6.</sup>

Добавлена поддержка расширенной типографии в рендеринге WMF, EMF и EMF+.

#### Цветной контент на странице <sup>23.6.</sup>

Общественная собственность [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), Добавлено указание, является ли страница цветной или нет.

#### Форматирование для Chart Data Labels <sup>23.6.</sup>

Была реализована возможность настройки заполнения, хода и форматирования вызова для меток данных диаграмм.

### Mail Merge и отчетность

#### Динамическая вставка HTML для LINQ Reporting Engine <sup>23.6.</sup>

Добавлен новый способ динамической вставки HTML для LINQ Reporting Engine.

#### Mustache Tags поддержка <sup>23.7</sup>

Mustache Теги теперь поддерживаются в [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) и [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/) методы.

#### Определить размер отредактированных изображений <sup>23.8</sup>

Новая общественная собственность [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) введено для указания размера визуализированных изображений в пикселях.

#### Сохраняйте белые пространства для струнных значений JSON - LINQ <sup>23.8</sup>

В движок отчетности LINQ добавлена опция сохранения белых пространств для значений строк JSON.

### LowCode <sup>23.6.</sup>

Новый LowCode Были добавлены методы, предназначенные для объединения различных типов документов в единый выходной документ.

### Другой

- Осуществлена поддержка обертывания текста в заголовках/футерах. <sup>23.5</sup>
- Возможность удаления цифровых подписей из документов ODT была добавлена через приложение. [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str) метод. <sup>23.5</sup>
- Общественная собственность [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) для получения базового и рубинового текста фонетического руководства [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) был добавлен. <sup>23.5</sup>
- Возможность извлечения значения цифровой подписи из документа с цифровой подписью в виде байтового массива была добавлена путем введения нового [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) собственность. <sup>23.7</sup>
- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) и [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) Расширены занятия с новыми общественными деятелями – [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/), и [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 23.5 Релизные заметки](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.6 Выпуск заметок](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.7 Выпускные примечания](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.8 Выпускные примечания](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words для Python via .NET 23.1, 23.2, 23.3, 23.4

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

The [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) Класс был расширен с набором новых общественных свойств, связанных с цветами фона и переднего плана: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) и [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) и [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Радиальные градиенты с `SkiaSharp` Родной шадер <sup>23.3</sup>

Обработка радиальных градиентов с помощью `SkiaSharp` родной шейдер для .NET Standard была осуществлена.

#### Расстояние между столом и окружающим текстом <sup>23.4</sup>

Способность устанавливать расстояние между таблицей и окружающим текстом была добавлена путем введения новых свойств. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) класс: [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/), и [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Погрузка и экономия документов

#### Генерировать `TOC` AZW3 Документы <sup>23.1</sup>

Способность генерировать `TOC` (таблица содержания) для документов AZW3 была добавлена посредством использования **epub_navigation_map_level** собственность.

#### Перечень экспортных товаров на Markdown <sup>23.1</sup>

Способ контроля за экспортом списков товаров в Markdown Формат обеспечивается путем добавления [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) собственности на [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) класс.

#### Документы, сохраняющие уведомления о прогрессе <sup>23.3</sup>

Сохранение уведомлений о прогрессе для форматов MOBI и AZW3.

#### Приговор и корректировка слов <sup>23.3</sup>

Возможность определять, следует ли автоматически корректировать интервал между предложениями и словами при импорте документов, была добавлена путем введения [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/) собственность.

### Другой

- Возможность конкретизировать корректировку интервала символа документа была добавлена через [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) имущественная реализация <sup>23.2</sup>
- Способ инструктировать Aspose.Words включение текстовых ящиков, сносок и сносок в статистику подсчета слов было обеспечено путем добавления [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) собственность <sup>23.2</sup>
- Введена новая опция для стиля документа, которая позволяет определить, является ли стиль автоматически переопределяемым на основе соответствующего значения. [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) собственность <sup>23.2</sup>
- Способность определять, [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) является фонетический прогон был добавлен с использованием [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) собственность <sup>23.4</sup>
- Простой способ работы с сериями и осями комбинированных диаграмм был реализован путем введения [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) Класс и добавление [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) собственность <sup>23.4</sup>
- Новые публичные свойства, связанные с формой относительного позиционирования и размера, были добавлены к [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) класс <sup>23.4</sup>
- Точность и производительность расчета яркости цвета для автоматического разрешения цвета текста были улучшены в соответствии с последними версиями Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Узнайте больше о [Aspose.Words для Python via .NET 23.1 Выпуск заметок](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.2 Выпускные примечания](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.3 Выпускные примечания](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Узнайте больше о [Aspose.Words для Python via .NET 23.4 Выпуск заметок](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Смотрите также

{{% alert color="primary" %}}

Эта страница содержит последние новости выпуска за последние 2 года. Подробнее о предыдущих выпусках см. [Скачать Notes "](https://releases.aspose.com/words/python/release-notes/) страниц в соответствующих разделах.

{{% /alert %}}