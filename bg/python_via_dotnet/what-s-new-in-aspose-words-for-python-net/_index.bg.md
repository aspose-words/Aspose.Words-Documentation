---
title: Какво ново?
second_title: Aspose.Words вместо Python via .NET
articleTitle: Какво ново в Aspose.Words вместо Python via .NET
linktitle: Какво ново в Aspose.Words вместо Python via .NET
type: docs
description: "Aspose.Words вместо Python via .NET се разширява и подобрява ежедневно. На тази страница можете да научите за огромните и най-интересните характеристики на продукта."
weight: 10
url: /bg/python-net/what-s-new-in-aspose-words-for-python-net/
timestamp: 2024-11-18-12-56-02
---

Тази страница описва най-интересното ново Aspose.Words функции, въведени в последните издания.

## Aspose.Words за Python чрез .NET 24.9, 24.10, 24.11

Aspose.Words 24.9 въвежда вмъкване на групова форма и вмъкване на StructuredDocumentTag чрез DocumentBuilder, подобрява изобразяването на радиална диаграма с градуировки, подобрява цифровите подписи с поддръжка на XAdES-EPES, добавя разпознаване на подчертаване на Markdown и осигурява достъп до разделители за бележки под линия/бележки в края.

Aspose.Words 24.10 въвежда подобрена поддръжка на ActiveX контрол със създаване на CommandButton, нов контрол на видимостта на фигурите, възможност за групиране на фигури, подобрено експортиране на Markdown за таблици, форматиране на диаграми за кръгови и поничкови диаграми, по-добро управление на кодирането на Big5 и поддръжка за остарели тайвански шрифтове.

Aspose.Words 24.11 въвежда задвижвано от AI обобщаване на документи, подобрени опции за изобразяване, подобрен достъп до свойствата на документа и надписи за ActiveX контрола.

### Задвижвани от AI функции <sup>24.11</sup>

Поддръжката за обобщаване на документи с помощта на генеративни езикови модели на OpenAI и Google е интегрирана чрез добавяне на пространството от имена [Aspose.Words.AI](https://reference.aspose.com/words/python-net/aspose.words.ai/) с неговите публични членове.

### Изобразяване и печат

#### Градуации на радиални диаграми <sup>24.9</sup>

Изпълнено е изобразяване на градуировки върху радиални диаграми.

#### CommandButton ActiveX контроли <sup>24.10</sup>

Възможността за създаване на ActiveX контроли CommandButton е въведена чрез добавяне на нов публичен метод [insert_forms_2_ole_control](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_forms_2_ole_control/) и нов публичен клас [Forms2OleControl](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/).

#### Контролна видимост на формата <sup>24.10</sup>

Добавено е ново публично свойство [hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/hidden/) за контрол на видимостта на формите.

#### Промени в пайови и кръгови диаграми <sup>24.10</sup>

Няколко нови публични свойства са добавени за форматиране на кръгови и кръгови диаграми.

#### Контролирайте изобразяването на границите на полетата на формуляр за избор на PDF <sup>24.11</sup>

Въведена е нова опция за контрол на изобразяването на границите на полетата на формуляр за избор на PDF чрез добавяне на нова публична опция [render_choice_form_field_border](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/render_choice_form_field_border/).

#### Вземете и задайте кодове за формат за данни от диаграма <sup>24.11</sup>

Възможността за получаване и задаване на форматиращи кодове за данни от диаграма е добавена чрез внедряване на свойството [format_code](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/format_code/) в класовете [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/) и [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/).

#### Изобразете хистограмни диаграми с кошчета и етикети <sup>24.11</sup>

Представянето на диаграма на хистограма е подобрено, като позволява определен брой контейнери и етикети.

### Конвертиране, зареждане и запазване на документи

#### Подчертайте форматирането при зареждане на файлове с маркиране <sup>24.9</sup>

Опцията за разпознаване на подчертано форматиране при зареждане на документи на Markdown е включена чрез добавяне на ново публично свойство [import_underline_formatting property](https://reference.aspose.com/words/python-net/aspose.words.loading/markdownloadoptions/import_underline_formatting/).

#### Експортиране на таблици като HTML при запис в Markdown <sup>24.10</sup>

Въведена е опция за експортиране на таблици като HTML при записване на документи във формат Markdown чрез добавяне на ново публично свойство [export_as_html](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/export_as_html/) и изброяване [MarkdownExportAsHtml](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownexportashtml/).

#### Експортиране на PDF с актуализирана логическа структура <sup>24.11</sup>

Експортирането на PDF е подобрено чрез включване на свойствата на заглавието на таблицата като заглавия на елементи на логическа структура на PDF.

### Цифрови подписи

#### Подписвайте документи с XAdES-EPES <sup>24.9</sup>

Възможността за подписване на документи с XML-DSig подписи на ниво XAdES-EPES беше въведена чрез добавяне на ново публично свойство [xml_dsig_level](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/xml_dsig_level/) и ново публично изброяване [XmlDsigLevel](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/xmldsiglevel/).

### Друго

* Нов публичен метод [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/) е добавен към формите на групата. <sup>24.9</sup>
* Добавен е нов публичен метод [insert_structured_document_tag](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_structured_document_tag/) за вмъкване на **StructuredDocumentTags** в документ. <sup>24.9</sup>
* Осигурен е публичен достъп до разделителите за бележки под линия/бележки в края чрез добавяне на няколко публични класа и свойства. <sup>24.9</sup>
* Възможността за групиране на отделни фигури, групиране на форми заедно и директно групиране както на форми, така и на групови форми е въведена чрез добавяне на метода [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/#float_float_float_float_shapebaselist). <sup>24.10</sup>
* Обработката на Big5 кодиране за TrueType cmap таблици е подобрена. <sup>24.10</sup>
* Поддръжката за остарели тайвански шрифтове е подобрена. <sup>24.10</sup>
* За достъп до разширените свойства на документа, свойствата само за четене са добавени към класа [BuiltInDocumentProperties](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/). <sup>24.11</sup>
* Задаването на надписи за ActiveX контроли е активирано чрез добавяне на нов публичен сетер към свойството [Forms2OleControl.caption](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/caption/). <sup>24.11</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words за Python чрез .NET 24.9 бележки по изданието](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-9-release-notes/).

Научете повече за [Aspose.Words за Python чрез .NET 24.10 бележки по изданието](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-10-release-notes/).

Научете повече за [Aspose.Words за Python чрез .NET 24.11 бележки по изданието](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-11-release-notes/).

{{% /alert %}}

## Aspose.Words за .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 разширява опциите за сглобки, подобрява възможностите за изобразяване и разширява някои други опции.

Aspose.Words 24.6 подобрява опциите за изобразяване, подобрява функционалността за търсене и сравняване и разширява няколко други функции.

Aspose.Words 24.7 променя начина, по който работите с ActiveX, разширява възможностите за изобразяване, както и експортиране във формати Markdown и XLSX.

Aspose.Words 24.8 подобрява персонализирането на диаграмата с прецизен контрол върху етикетите на осите, разширява управлението на шрифтове, подобрява обработката на структурата на документа и добавя нови възможности за HTML/XAML експорт, PDF функционалност, конвертиране на документи и цифрови подписи.

### Поддържани формати

Започвайки от версия 24.7, експортирането в PDF/UA-2 се поддържа, за да се осигури достъпност за потребители с увреждания.

### Изобразяване и печат

#### Промени в Charts, Shapes и DrawingML <sup>24.5</sup>

* Рендиране на DrawingML ефекти за SVG графики, разширяване на предишната функционалност, ограничена до изображения, е внедрено.
* Въведена е поддръжка за създаване на комбинирани диаграми и коригиране на свойства като ширина на празнина, припокриване и мащаб на балончета в рамките на групи серии чрез добавяне на [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) и [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) класове и [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/) собственост.
* Функционалността за манипулиране на ефекта SoftEdge на фигурите е внедрена чрез добавяне на класа [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/).
* Възможността за промяна на коригиращите стойности на фигурите е въведена чрез добавяне на **AdjustmentCollection** и **Adjustment** публични класове и [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) Имот.

#### Промени в диаграми, форми и чертежи <sup>24.6</sup>

* Възможностите за диаграми са подобрени. Вече можете да създавате по-голямо разнообразие от диаграми, включително *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* диаграми, *Box & Whisker* диаграми, *Waterfalls* и *Funnels*. Това ви позволява да визуализирате вашите данни по по-разнообразен и информативен начин.
* Контролът на цветовете за форматиране на сянка е подобрен. Можете да получите по-прецизен контрол върху външния вид на вашите документи чрез достъп до цветовете на сенките.
* Увеличаването на производителността за фоново изобразяване е подобрено. Можете значително да ускорите изобразяването на фонове, съдържащи малки елементи, благодарение на собствената технология за подреждане.
* Добавени са реалистични градиенти за форми. Вече можете да създавате DML форми с нелинейни градиенти, имитиращи визуалния стил на Microsoft Word за по-изчистен вид.

#### Персонализиране на етикета с данни на диаграма <sup>24.7</sup>

Добавена е възможност за персонализиране на етикети с данни на диаграма, като **Ориентация** и **Въртене**.

#### Персонализиран стил на номера за нива на списък <sup>24.7</sup>

Добавен е сетер за публичното свойство [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/). Вече можете да дефинирате персонализиран стил на номера за нивата на списъка.

#### Промени в работата с ActiveX <sup>24.7</sup>

* Свойствата на ActiveX обектите вече могат да се променят, което ви дава повече контрол върху тяхното поведение.
* Добавена е възможност за промяна на стойността на ActiveX контролата за радио бутон, за да се активира динамично взаимодействие.
* Добавена е възможността за превключване на квадратчето за отметка на ActiveX на „отметнато“ или „неотметнато“.

#### Контрол върху ориентацията и завъртането на отметките на оста на диаграмата <sup>24.8</sup>

Добавен е прецизен контрол върху ориентацията и въртенето на етикетите за отметки на оста на диаграмата за по-удобно персонализиране на диаграмата – класът [AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) е разширен с нови свойства за [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) и [rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Замяна на обратната наклонена черта със знака йена <sup>24.8</sup>

Обратно съвместимият HTML и XAML експорт за замяна на обратната наклонена черта със знака йена е подобрен. За да се постигне това, свойството **replace_backslash_with_yen_sign** е добавено към класовете [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) и [XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/).

#### Използване на SDT етикети като имена на полета на формуляр при експортиране в PDF <sup>24.8</sup>

Експортирането на PDF с поддръжка за използване на SDT тагове като имена на полета на формуляр е подобрено чрез добавяне на ново свойство [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) към класа [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/).

### Конвертиране, зареждане и запазване на документи

#### Експортиране на връзки във формат Markdown <sup>24.7</sup>

Възможността за контролиране на експортирането на връзки във формат Markdown е добавена чрез внедряването на свойството [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/).

#### Нисък код <sup>24.8</sup>

Въведен е нов клас [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/), предназначен да предостави набор от методи за конвертиране на различни типове документи с един ред код.

### Търсете и сравнявайте

#### Разширени опции за сравнение <sup>24.6</sup>
Добавена е възможност за рационализиране на работните процеси за анализ на данни с подобрена функционалност за сравнение. Това включва нова опция [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) и преработен интерфейс за разширени сравнения.

### Друго

* Функцията за премахване на празни страници от документ е внедрена чрез добавяне на метода [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/). <sup>24.5</sup>
* Възможността за проверка за наличие на макроси на VBA без зареждане на документ е предоставена чрез добавяне на свойството [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/). <sup>24.5</sup>
* Вече се поддържа запазване на номерирането на източника при вмъкване на документ с помощта на LINQ Reporting Engine. <sup>24.5</sup>
* Добавено е ново свойство [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) – това предоставя по-прецизно времево клеймо за коментари, подобрявайки организацията и проследимостта. <sup>24.6</sup>
* LINQ Reporting Engine е подобрен. Направено е селективно премахване на празни абзаци и дефиниране на персонализирани съобщения за липсващи членове на обекти, което води до по-чисти и по-информативни отчети. <sup>24.6</sup>
* Форматът за дата и час вече се разпознава автоматично за безпроблемно експортиране във формат XLSX. <sup>24.7</sup>
* Добавено е публичното свойство [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/), което ви позволява да проверите дали VBA проект е защитен. <sup>24.7</sup>
* Информацията за шрифта е разширена със свойството **embedding_licensing_rights**, добавено към класовете [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) и [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Добавен е начин за ефективно изчистване на горни и долни колонтитули на секции, като същевременно се запазват водни знаци, за по-прецизна работа със структурата на документа. За да изчистите горните и долните колонтитули на секции, използвайте новия публичен метод [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). <sup>24.8</sup>
* Цифровото подписване на XPS документи с помощта на [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/) е активирано – за тази цел е добавено ново свойство [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/). <sup>24.8</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words за Python чрез .NET 24.5 бележки по изданието](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

Научете повече за [Aspose.Words за Python чрез .NET 24.6 бележки по изданието](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/).

Научете повече за [Aspose.Words за Python чрез .NET 24.7 бележки по изданието](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/).

Научете повече за [Aspose.Words за Python чрез .NET 24.8 бележки по изданието](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words вместо Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 подобрява опита около управлението на цветовете на инсулта, подобрява обектите на OLE, както и въвежда нов `Bibliography Sources` публично API.

Aspose.Words 24.2 разширени карти API и стилово управление. Тази версия Aspose.Words също така въведе възможност за определяне на SvgSaveOptions по време на рендиране, по-гъвкаво натоварване контрол Markdown файлове и работа с референтен текст за бележки под линия и крайни бележки.

Aspose.Words 24.3 въвежда нов TIFF Reader/Writer и Емулация на двоични растер операции за WMF metafiles. Aspose.Words 24.3 също продължава да разширява картите API.

Aspose.Words 24.4 подобрява форматите за спестяване, някои опции за предаване, както и подобрява работата с цифрови подписи.

### Поддържани формати <sup>24.4</sup>

Модерният **WebP** форматът на изображението сега се поддържа в Aspose.Words вместо .NET Framework 4.6.2 и повече. Вече можете да четете и вмъквате WebP изображения в документи, както и запис на изображения в WebP формат.

Моля, обърнете внимание на това. WebP е наличен само в .NET Standard както и .NET Framework v4.6.2 и повече.

### Пренос и печат

#### Контрол на цветовете <sup>24.1</sup>

На [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) класът е удължен с набор от нови обществени свойства, свързани с управлението на цветовете на инсулт: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) както и [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) както и [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### ЧертежML Графики API Разширение <sup>24.2 / 24.3 / 24.4</sup>

На **DrawingML Charts API** продължава да се разширява.

#### Вграждане на шрифтове в @font-face Правила <sup>24.4</sup>

Добавена е възможност за вграждане на шрифтове, декларирани в @font-face правила в получения документ. [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/) собственост.

#### Работа с форматиране на блясъка и отражението <sup>24.4</sup>

Възможността да се работи със светещ и отразяващ формат за рисуващ обект е изпълнена.

### Зареждане и съхраняване на документи

#### Посочете SvgSave Oppositions по време на предаването <sup>24.2</sup>

Възможност за уточняване [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) по време на рендиране е добавен с помощта на [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) както и [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) методи.

#### Запазване на празни линии при зареждане Markdown файлове <sup>24.2</sup>

Възможност за запазване на празни линии при зареждане Markdown Добавени са файлове.

#### Нов TIFF Reader/Writer <sup>24.3</sup>

Нов TIFF четец / писател за Aspose.Words е разработен. Aspose.Words вместо .NET 24.3 добавя подкрепа за четене на TIFF изображения с JPEG и стария JPEG компресиране видове, и също значително подобряване на качеството на четене и писане операции.

### Други

* Възможност за промяна на текста на `TextBox` OLE контрол е въведен чрез добавяне на нов **Text** собственост на новото **TextBoxControl** Клас. <sup>24.1</sup>
* The Bibliography Sources public API беше приложен чрез добавяне на ново пространство за имена [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) с новите си класове и изброявания, и чрез добавянето на нов [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) собственост на [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Клас. <sup>24.1</sup>
* Нови обществени имоти [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/), както и [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) В допълнение към [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) Клас. <sup>24.2</sup>
* Функционалността за извличане на текста на действителната референтна марка за бележки под линия и крайни бележки е подобрена с [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) собственост и [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default) метод. <sup>24.2</sup>
* Емулацията на двоични растерни операции за WMF metafiles е въведена. <sup>24.3</sup>
* Възможност за определяне на опциите за подписване на документи в рамките на **SaveOptions** е активиран чрез добавяне на нов [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) клас с нови членове на обществото, както и добавяне на нови имоти към [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) както и [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/) Класове. <sup>24.4</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words вместо Python via .NET 24.1 Бележки за освобождаване](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Научете повече за [Aspose.Words вместо Python via .NET 24.2 Бележки за освобождаване](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

Научете повече за [Aspose.Words вместо Python via .NET 24.3 Бележки за освобождаване](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

Научете повече за [Aspose.Words вместо Python via .NET 24.4 Бележки за освобождаване](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words вместо Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 разширява възможностите за предоставяне на опции, метафилметапредаване емулация, и markdown Запис на опции.

Aspose.Words 23.10 подобрява представянето, разширява възможностите за зареждане и съхраняване на документи и позволява на потребителите да сливат документи по нови начини.

Aspose.Words 23.11 подобрява работата с ревизии, XLSX формат и шрифтове на графика легенда с допълнителни опции.

Aspose.Words 23.12 въвежда нови свойства и изброявания за работа с PDF и OOXML документи, както и поддръжка за WebP снимки.

### Пренос и печат

#### Персонализиране на титлите на брадва в DrawML Графики <sup>23.9</sup>

Възможността за персонализиране на заглавията на осите в диаграмите на DrawML беше въведена чрез въвеждането на нов публичен клас [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) както и [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) собственост.

####  Определяне на вертикалната позиция на шрифтовете в рамките на параграф <sup>23.9</sup>

Сега е възможно да се определи вертикалната позиция на шрифтовете в рамките на параграф, като се използва новата общественост [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) собственост и новото [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) Изброяване.

#### Контрол на цветовете <sup>23.10</sup>

Способността за извличане на цвета на преден план без модификатори е добавена към [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) както и [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) класове през **BaseForeColor** собственост.

#### Разширяване на функционалността на картите <sup>23.10</sup>

Функцията на [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), както и [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) Класовете са разширени с нови методи и свойства.

#### Автоматично регулиране и поставяне на изображение в форма <sup>23.10</sup>

Беше предоставен прост начин за автоматично регулиране и монтиране на изображение в определена форма чрез новата [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) метод.

#### Форматиране на шрифта по подразбиране за чертеж ML Графика Legend Записи <sup>23.11</sup>

Възможността за определяне на форматиране на шрифта по подразбиране за легенди записи на карти DrawML е добавен чрез [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/) собственост. Тази функция улеснява по-рационализирания и последователен външен вид за картографски елементи, подобрявайки цялостната документна естетика.

#### Посочете подредбата на страниците при отваряне на PDF в Reader <sup>23.12</sup>

Възможността за определяне на оформлението на страницата, която да бъде използвана при отваряне на документ в PDF четеца, е добавена чрез въвеждането на нов [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) собственост на [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) клас и въвеждане на нов [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) Изброяване.

### Зареждане и съхраняване на документи

#### Задаване на име на папка за създаване на изображение URIs в Markdown <sup>23.9</sup>

На [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) Класът е разширен чрез включване на [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/) имот, който позволява да се посочи името на папката, използвана за изграждане на изображение URIs, написано в Markdown документ.

#### Намаляване на PDF Размер на изхода <sup>23.10</sup>

Различни PDF оптимизации за предаване за намаляване на размера на изхода при използване [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) настройките са изпълнени.

#### Разпознаване на хипервръзки при зареждане на TXT документи <sup>23.10</sup>

Функцията за разпознаване на хипервръзки при зареждане на TXT документи е въведена чрез добавяне на нов [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) собственост.

### Други

- Metafile емулация за определяне размера на растеризацията е въведена, специално за WMF ширината на писалката и EMF ширината на козметичната писалка. За да се постигне това, **ScaleWmfFontsToMetafileSize** имотът е заменен с [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) собственост и [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) е добавен имот. <sup>23.9</sup>
- Въведен е опростен метод за въвеждане на един документ в друг документ в текущата позиция на курсора [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) метод. <sup>23.10</sup>
- Възможността за достъп и промяна на стила е добавена чрез въвеждането на новата [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) собственост. <sup>23.10</sup>
- Към методите на [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) Клас. <sup>23.10</sup>
- Възможността да се запишат всички части на документ на същия XLSX работен лист е предоставена чрез новия [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) вид изброяване и новото [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) собственост. <sup>23.11</sup>
* Начин за контрол как ZIP64 формат разширения ще бъдат използвани за OOXML документи е бил приложен чрез новия Zip64Mode собственост на `OoxmlSaveOptions` клас и новия Zip64Mode изброяване. <sup>23.12</sup>
* Подкрепа за WebP Снимката е въведена. Моля, имайте предвид, че тази функция е достъпна само за .NetСтандарт и .NET6+ версии. <sup>23.12</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words вместо Python via .NET 23.9 Бележки за освобождаване](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Научете повече за [Aspose.Words вместо Python via .NET 23.10 Бележки за освобождаване](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Научете повече за [Aspose.Words вместо Python via .NET 23.11 Бележки за освобождаване](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Научете повече за [Aspose.Words вместо Python via .NET 23.12 Бележки за освобождаване](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words вместо Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 подобрява способността за работа с данните от серията карти и способността за работа с документи на ОДТ, както и подобрява заглавните части/краки и текстовата опаковка.

Aspose.Words 23.6 разширява възможностите за предоставяне, добавя нов формат за износ, подобрява отчитането на LINQ и LowCode инструменти.

Aspose.Words 23.7 подобрява възможностите за докладване, добавя нов формат за износ и въвежда промени в работата с таблици и цифрови подписи.

Aspose.Words 23.8 разширява възможностите на различните формати, подобрява представянето и добавя нови възможности за работа с полета

### Поддържани формати

* Започвайки с версия 23.6, е възможно да се запази документ във формат XLSX. Сега можете да конвертирате вашите документи в Excel формат. <sup>23.6</sup>

* Започвайки с версия 23.7, е възможно да се запази страница документ или форма в EPS формат. <sup>23.7</sup>

### Нов формат

- Въведена е функционалността за автоматично генериране на Съдържание (TOC) за документи на MOBI. <sup>23.8</sup>
- На [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) Конструкторът е разширен с [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- Оформянето на вертикалния текст за EMF метафайлове е изпълнено. <sup>23.8</sup>

### Внасяне

#### Получаване и промяна Данни от серията Chart <sup>23.5</sup>

Функцията за получаване и промяна на данните от серията карти беше предоставена чрез добавяне на:

- нови класове: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- нови типове енум: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Подкрепа за напреднала типография <sup>23.6</sup>

Добавена е и подкрепа за усъвършенствана типография в WMF, EMF и EMF+.

#### Цветно съдържание на страницата <sup>23.6</sup>

Обществената собственост [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), показва дали страницата е оцветена или не, е добавена.

#### Форматиране на етикетите на картите <sup>23.6</sup>

Възможността да се зададе попълване, инсулт, и callout форматиране за карти данни етикети е въведена.

### Mail Merge и докладване

#### Dynamic HTML вмъкване за LINQ отчитащ двигател <sup>23.6</sup>

Добавен е нов начин за динамично въвеждане на HTML за LINQ Reporting Engine.

#### Mustache Поддръжка на тагове <sup>23.7</sup>

Mustache Етикетите сега се поддържат в [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) както и [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/) методи.

#### Посочване размера на получени изображения <sup>23.8</sup>

Нова обществена собственост [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) за определяне размера на топираните изображения в пиксел е въведена.

#### Запазете Whitespaces за JSON Струнни стойности по LINQ <sup>23.8</sup>

Към отчитащия LINQ двигател е добавена опция за запазване на белите пространства за стойностите на JSON низ.

### LowCode <sup>23.6</sup>

Нов LowCode са добавени методи, предназначени да слеят различни видове документи в един изходен документ.

### Други

- Подкрепа за текстова опаковка в заглавни/краки е въведена. <sup>23.5</sup>
- Възможността за премахване на цифровите подписи от ОДТ документи е добавена чрез [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str) метод. <sup>23.5</sup>
- Обществената собственост [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) за получаване на основата и рубинения текст на фонетичното ръководство [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) е добавен. <sup>23.5</sup>
- Възможността за извличане на стойност на цифровия подпис от цифров подписан документ като байт масив е добавена чрез въвеждане на нов [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) собственост. <sup>23.7</sup>
- На [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) както и [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) Класовете бяха удължени с нови членове на обществото. [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/), както и [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words вместо Python via .NET 23.5 Бележки за освобождаване](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Научете повече за [Aspose.Words вместо Python via .NET 23.6 Бележки за освобождаване](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Научете повече за [Aspose.Words вместо Python via .NET 23.7 Бележки за освобождаване](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Научете повече за [Aspose.Words вместо Python via .NET 23.8 Бележки за освобождаване](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words вместо Python via .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 подобрява ефективността на емулацията на растерните операции, както и подобрява качеството на износа и представянето на документите.

Aspose.Words 23.2 въвежда съхраняващи документи във формат MOBI, подобрява картографирането и прави забележими промени в детайлите за външния вид на документа.

Aspose.Words 23.3 подобрява вноса и спестяването на документи с нови свойства, както и подобрява качеството на работа с фон и преден цвят и радиален градиент.

Aspose.Words 23.4 подобрява изчисляването на някои параметри и позиционирането на таблицата и околния текст.

### Подобрения на ефективността

#### Емулация на операциите на пистата <sup>23.1</sup>

Изпълнението и качеството на емулацията на операциите с метафилми са значително подобрени.

### Поддържани формати

#### Експортиране в MOBI <sup>23.2</sup>

Като се започне с версия 23.2, е възможно да се запази документ във формат MOBI (наричан още КНР, AZW. Amazon Формат за електронна книга на Kindle). Сега можете не само да заредите документи на MOBI, но и да експортирате файловете си във формат MOBI.

### Внасяне

#### Работа с Shading тема цветове <sup>23.1</sup>

Възможността да се работи със сенки цветове на темата е въведена.

#### Подкрепа на коефициента R-квадрат в DML карти <sup>23.1</sup>

Подкрепа на R квадратен коефициент в DML графика трендлайн етикети, когато е добавен превод.

#### Подобрения при прехвърляне на карти <sup>23.2</sup>

От 23.2 г. картографирането е значително подобрено.

#### Контрол на цветовете и фона <sup>23.3</sup>

На [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) класът е удължен с набор от нови обществени свойства, свързани с фон и цветове на преден план: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) както и [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) както и [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Радиални Градиенти с `SkiaSharp` Местна сянка <sup>23.3</sup>

Пренасяне на радиални наклони с `SkiaSharp` роден нюансер за .NET Standard е изпълнен.

#### Разстояние между масата и заобикалящия текст <sup>23.4</sup>

Способността да се определи разстоянието между таблицата и околния текст се добавя чрез въвеждане на нови свойства към [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) клас: [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/), както и [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Зареждане и съхраняване на документи

#### Генериране `TOC` за AZW3 документи <sup>23.1</sup>

Способността за генериране `TOC` (таблица със съдържание) за AZW3 документите са добавени чрез използването на **epub_navigation_map_level** собственост.

#### Експортиране на списък към Markdown <sup>23.1</sup>

Начин за контрол на износа на елементи от списъка Markdown форматът е предоставен чрез добавяне на [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) собственост на [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) Клас.

#### Нотификации за напредъка на документа <sup>23.3</sup>

Запаметяването на уведомленията за напредъка на MOBI и AZW3 формати е изпълнено.

#### Присъда и поправка на думи <sup>23.3</sup>

Възможността да се определи дали да се коригира изречението и думата разстояние автоматично при внос на документ е добавен чрез въвеждане на [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/) собственост.

### Други

- Възможността за определяне на корекция на разстоянието между символите на даден документ е добавена чрез [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) изпълнение на собствеността <sup>23.2</sup>
- Начина да инструктираш Aspose.Words дали да се включат текстови кутии, бележки под линия и крайни бележки в статистиката за преброяване на думи е предоставена чрез добавяне на [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) собственост <sup>23.2</sup>
- Въведена е нова опция за стил на документ, която позволява да се уточни дали стилът автоматично се променя въз основа на съответната стойност, [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) собственост <sup>23.2</sup>
- Способността да се определи дали [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) е фонетичен пътеводител е добавен с помощта на [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) собственост <sup>23.4</sup>
- Лесен начин за работа със серии и брадви от комбинирани диаграми е реализиран чрез въвеждане на [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) клас и добавяне на [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) собственост <sup>23.4</sup>
- Нови обществени свойства, свързани с формата относително позициониране и оразмеряване са добавени към [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) клас <sup>23.4</sup>
- Точността и ефективността на изчисляване на яркостта на цветовете за автоматична резолюция текст цвят е подобрена в съответствие с последните версии на Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words вместо Python via .NET 23.1 Бележки за освобождаване](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Научете повече за [Aspose.Words вместо Python via .NET 23.2 Бележки за освобождаване](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Научете повече за [Aspose.Words вместо Python via .NET 23.3 Бележки за освобождаване](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Научете повече за [Aspose.Words вместо Python via .NET 23.4 Бележки за освобождаване](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Вижте също

{{% alert color="primary" %}}

Тази страница съдържа последните новини за последните 2 години. За подробности относно по- ранните издания вижте [Бележки за освобождаване '](https://releases.aspose.com/words/python/release-notes/) страници в съответните раздели.

{{% /alert %}}
