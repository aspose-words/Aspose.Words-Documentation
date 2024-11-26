---
title: Какво ново
second_title: Aspose.Words за C++
articleTitle: Какво ново в Aspose.Words за C++
linktitle: Какво ново в Aspose.Words за C++
type: docs
description: "Aspose.Words за C++ разширява и увеличава ежедневно. На тази страница можете да научите за огромните и най-интересните характеристики на продукта."
weight: 2
url: /bg/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

Тази страница описва най-интересните нови Aspose.Words функции, въведени в последните издания.

## Aspose.Words за C++ 24.9, 24.10

Aspose.Words 24.9 въвежда group shape Вмъкване и StructuredDocumentTag Вмъкване чрез DocumentBuilder, подобрява рендирането на радиалната диаграма с градуации, подобрява цифровите подписи с поддръжка XAdES-EPES, добавя Markdown подчертаване и осигурява достъп до разделители на бележки под линия/бележка в края.

Aspose.Words 24.10 въвежда подобрена поддръжка на активния контрол с CommandButton Създаване, нов контрол на видимостта на формата, възможност за group shapes, подобрен Markdown износ за таблици, форматиране на диаграми за Pie и Doughnut, по-добра работа с кодиране на големи 5 и поддръжка на остарели тайвански шрифтове.

### Рендериране и печат

#### Градуации по радиални карти <sup>24.9</sup>

Реализирано е рендиране на градуации по радиални карти.

#### CommandButton Активни Контроли <sup>24.10</sup>

Възможността за създаване на CommandButton активни контроли е въведена чрез добавяне на нов публичен метод [InsertForms2OleControl]() и нов публичен клас [Forms2OleControl]().

#### Контрол На Видимостта На Формата <sup>24.10</sup>

Добавена е нова обществена собственост [Hidden](), за да се контролира видимостта на фигурите.

#### Промени в Pie и Doughnut диаграми <sup>24.10</sup>

Няколко нови публични свойства са добавени към формат Pie и Doughnut диаграми.

### Конвертиране, зареждане и запазване на документи

#### Подчертаване на форматирането при зареждане Markdown файлове <sup>24.9</sup>

Опцията за разпознаване на форматирането на подчертаването при зареждане на документи Markdown е включена чрез добавяне на нова публична собственост [ImportUnderlineFormatting]().

#### Експортиране на таблици като HTML при запис до Markdown <sup>24.10</sup>

Възможност за експортиране на таблици като HTML при записване на документи във формат Markdown е реализирана чрез добавяне на нова публична собственост [ExportAsHtml]() и изброяване [MarkdownExportAsHtml]().

### Цифрови Подписи

#### Подписвайте документи с XAdES-EPES <sup>24.9</sup>

Възможността за подписване на документи с XAdES-EPES Ниво XML-DSig е въведена чрез добавяне на нова обществена собственост [XmlDsigLevel]() и ново публично изброяване [XmlDsigLevel]().

### Друго

* Добавен е нов публичен метод [InsertGroupShape]() към group shapes. <sup>24.9</sup>
* Добавен е нов публичен метод [InsertStructuredDocumentTag](), за да вмъкнете **StructuredDocumentTags** в документ. <sup>24.9</sup>
* Публичен достъп до разделители на бележки под линия/бележка в края е осигурен чрез добавяне на няколко публични класове и свойства. <sup>24.9</sup>
* Възможността за групиране на отделни фигури, group shapes заедно и директно групиране на фигури и group shapes е въведена чрез добавяне на [InsertGroupShape]() Метод. <sup>24.10</sup>
* Биг5 обработка на кодиране за TrueType таблица с изображения е подобрена. <sup>24.10</sup>
* Подкрепата за остарели тайвански шрифтове е подобрена. <sup>24.10</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words за C++ 24.9 бележки към изданието](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

Научете повече за [Aspose.Words за C++ 24.10 бележки към изданието](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words за C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 разширява опциите за сглобки, подобрява възможностите за рендиране и разширява някои други опции.

Aspose.Words 24.6 подобрява опциите за рендиране, подобрява функционалността за търсене и сравняване и разширява няколко други функции.

Aspose.Words 24.7 променя начина, по който работите с Активекс, разширява възможностите за рендиране, както и експортиране в Markdown и XLSX формати.

### Поддържани Формати

Като се започне от версия 24.7, Експортиране до PDF/UA-2 се поддържа, за да се осигури достъпност за потребители с увреждания.

### Рендериране и печат

#### Промени в диаграми, форми и DrawingML <sup>24.5</sup>

- DrawingML ефекти рендиране за SVG графики, разширяване на предишната функционалност, ограничена до изображения, е изпълнено.
- Поддръжка за създаване на комбо диаграми и коригиране на свойства като ширина на празнината, припокриване и мехурчеста скала в групи от серии е въведена чрез добавяне на класове **ChartSeriesGroup** и **ChartSeriesGroupCollection** и свойство **SeriesGroups**.
- Функционалността за манипулиране на SoftEdge ефекта на фигурите е реализирана чрез добавяне на **SoftEdgeFormat** класа.
- Възможността за промяна на коригираните стойности на фигури е реализирана чрез добавяне на **AdjustmentCollection** и **Adjustment** публични класове и **Adjustments** собственост.

#### Промени в диаграми, форми и чертеж <sup>24.6</sup>

- Възможностите за картографиране са подобрени. Сега можете да създадете по-голямо разнообразие от диаграми, включително *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* диаграми, *Box & Whisker* диаграми, *Waterfalls* и *Funnels*. Това ви позволява да визуализирате данните си по по-разнообразен и информативен начин.
- Контролът на цветовете за форматиране на сенки е подобрен. Можете да получите по-прецизен контрол върху външния вид на вашите документи чрез достъп до цветове в сянка.
- Подобрението на производителността за фоново рендиране е подобрено. Можете значително да ускорите рендирането на фонове, съдържащи малки елементи, благодарение на естествената технология за облицоване.
- Добавени са реалистични градиенти за форми. Вече можете да създавате DML форми с нелинейни градиенти, имитирайки визуалния стил на Microsoft Word за по-полиран вид.

#### Персонализиране На Етикети За Данни На Диаграми <sup>24.7</sup>

Възможността за персонализиране на етикети на данни на диаграма, като **Orientation** и **Rotation** е добавена.

#### Потребителски номер стайлинг за списък нива <sup>24.7</sup>

Добавен е сетер за обществена собственост [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/). Сега можете да дефинирате персонализиран номер за списъчни нива.

#### Промени в работата с Активекс <sup>24.7</sup>

- Свойствата на активните обекти вече могат да бъдат променяни, което ви дава по-голям контрол върху тяхното поведение.
- Добавена е възможност за промяна на стойността на активния контрол на радио бутона, за да се даде възможност за динамично взаимодействие.
- Добавена е възможността за превключване на актив checkbox на "проверен " или" нерегистриран".

### Зареждане и съхранение на документи

#### Експортиране на връзки към Markdown формат <sup>24.7</sup>

Възможността да се контролира експортирането на връзки във формат Markdown е добавена чрез имплементацията на [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/) свойството.

### Търсене и сравняване

#### Разширени Опции За Сравнение <sup>24.6</sup>

Добавена е възможността за рационализиране на работните потоци за анализ на данни с подобрена функционалност за сравнение. Това включва нова опция **IgnoreStoreItemId** и преработен интерфейс за напреднали сравнения.

### Друго

- Функцията за премахване на празни страници от документ е реализирана чрез добавяне на метода [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/). <sup>24.5</sup>
- Възможността да се провери за наличие на VBA макроси без зареждане на документ е осигурена чрез добавяне на свойство **HasMacros**. <sup>24.5</sup>
- Добавено е ново **DateTimeUtc** свойство-това осигурява по-точен времеви печат за коментари, подобряване на организацията и проследимостта. <sup>24.6</sup>
- Форматът за дата и час сега автоматично се открива за безпроблемно експортиране във формат XLSX. <sup>24.7</sup>
- Добавена е обществена собственост [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), която ви позволява да проверите дали даден проект VBA е защитен. <sup>24.7</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words за C++ 24.5 бележки към изданието](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Научете повече за [Aspose.Words за C++ 24.6 бележки към изданието](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Научете повече за [Aspose.Words за C++ 24.7 бележки към изданието](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words за C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 подобрява опита за управление на цветовете на инсулт, подобрява OLE обекти, както и въвежда нова библиография източници публично API.

Aspose.Words 24.2 разширени графики API и управление на стила. Тази версия на Aspose.Words също така въведе възможността за задаване на SvgSaveOptions по време на рендиране, по-гъвкав контрол за зареждане Markdown файлове и работа с референтен текст за бележки под линия и бележки в края.

Aspose.Words 24.3 въвежда емулация на бинарни растерни операции за WMF метафили и продължава да разширява класациите API.

Aspose.Words 24.4 подобрява някои опции за рендиране, както и подобрява работата с цифрови подписи.

### Рендериране и печат

#### Контрол На Цвета На Хода <sup>24.1</sup>

Класът [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) е разширен с набор от нови публични свойства, свързани с управлението на цветовете на ходовете: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) и [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) и [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### DrawingML Диаграми API Разширение <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** продължава да се разширява.

#### Вграждане на шрифтове, обявени в @font-face правила <sup>24.4</sup>

Добавена е възможност за вграждане на шрифтове, декларирани в @font-face Правила в получените дефиниции на шрифта на документа, чрез добавяне на ново свойство [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/).

#### Работа с форматиране на отблясъци и отражения <sup>24.4</sup>

Способността да се работи с блясък и отражение форматиране за чертеж обект е реализирана.

### Зареждане и съхранение на документи

#### Посочете SvgSaveOptions По Време На Рендирането <sup>24.2</sup>

Възможността за задаване на [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) по време на рендирането е добавена с помощта на [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) и [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) методи.

#### Запазване на празните редове при зареждане Markdown файлове <sup>24.2</sup>

Възможността за запазване на празни линии при зареждане Markdown файлове е добавена.

### Друго

- Възможността за промяна на текста на `TextBox` OLE контролата е въведена чрез добавяне на ново свойство **Text** към новия **TextBoxControl** клас. <sup>24.1</sup>
- Библиографията източници публичен API е реализирана чрез добавяне на ново пространство от имена [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) с неговите нови класове и изброявания и чрез добавяне на ново свойство [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) към [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) клас. <sup>24.1</sup>
- Нови публични свойства [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) и [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) за подобрено управление на стила са добавени към [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) класа. <sup>24.2</sup>
- Функционалността за извличане на действителния текст на референтния знак за бележки под линия и бележки в края е подобрена със свойството [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) и метода [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- Въведена е емулация на бинарни растерни операции за WMF метафили. <sup>24.3</sup>
- Възможността за дефиниране на опции за подпис за документи в рамките на **SaveOptions** е разрешена чрез добавяне на нов клас **DigitalSignatureDetails** с нови публични членове, както и добавяне на нови свойства към класовете [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) и [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words за C++ 24.1 бележки към изданието](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Научете повече за [Aspose.Words за C++ 24.2 бележки към изданието](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Научете повече за [Aspose.Words за C++ 24.3 бележки към изданието](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Научете повече за [Aspose.Words за C++ 24.4 бележки към изданието](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words за C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 разширява опциите за рендиране, емулацията на рендиране на метаданни и markdown Опции за записване.

Aspose.Words 23.10 подобрява рендирането, разширява опциите за зареждане и записване на документи и позволява на потребителите да обединяват документи по нови начини.

Aspose.Words 23.11 подобрява работата с ревизии, XLSX формат и шрифтове на легендата на диаграмата с допълнителни опции.

Aspose.Words 23.12 въвежда нови свойства и изброявания за работа с PDF и OOXML документи, както и поддръжка на WebP изображения.

### Рендериране и печат

#### Персонализиране на заглавията на осите в DrawingML диаграми <sup>23.9</sup>

Възможността за персонализиране на заглавията на осите в DrawingML диаграми е въведена чрез внедряването на ново свойство на публичен клас **ChartAxisTitle** и [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/).

#### Определяне на вертикалната позиция на шрифтовете в абзац <sup>23.9</sup>

Сега е възможно да се определи вертикалната позиция на шрифтовете в рамките на абзац, като се използва новото публично свойство [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) и новото изброяване [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/).

#### Контрол На Цветовете На Преден План <sup>23.10</sup>

Възможността за извличане на цвета на преден план без модификатори е добавена към класовете [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) и [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) чрез свойството **BaseForeColor**.

#### Разширяване на функционалността на графиките <sup>23.10</sup>

Функционалността на класовете [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) и [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) е разширена с нови методи и свойства.

#### Автоматично регулиране и поставяне на изображение във фигура <sup>23.10</sup>

Лесен начин за автоматично регулиране и поставяне на изображение в определена форма е предоставен чрез новия метод [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/).

#### Форматиране на шрифта по подразбиране за записи в Легендата на диаграмата DrawingML <sup>23.11</sup>

Възможността за задаване на форматиране на шрифта по подразбиране за записи в легендата на DrawingML диаграми е добавена чрез свойството [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/). Тази функция улеснява по-опростен и последователен външен вид за елементите на диаграмата, подобрявайки цялостната естетика на документа.

#### Посочете оформлението на страницата при отваряне PDF в четец <sup>23.12</sup>

Възможността да се определи оформлението на страницата, което да се използва при отваряне на документ в четец PDF, е добавена чрез въвеждането на ново свойство **PageLayout** в класа [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) и въвеждането на ново изброяване **PdfPageLayout**.

### Зареждане и съхранение на документи

#### Задаване на име на папка за изграждане на изображение URIs в Markdown <sup>23.9</sup>

Класът [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) е разширен чрез включване на свойството [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/), което позволява да се зададе името на папката, използвана за конструиране на изображение URIs, написано в документа Markdown.

#### Намаляване PDF Изходния Размер <sup>23.10</sup>

Изпълнени са различни PDF оптимизации за рендиране, за да се намали размерът на изхода при използване на [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/) настройки.

#### Разпознаване на хипервръзки при зареждане TXT документи <sup>23.10</sup>

Функцията за разпознаване на хипервръзки при зареждане на документи TXT е внедрена чрез добавяне на ново свойство [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/).

### Друго

- Въведена е емулация на метафил за определяне на размера на растеризацията, по-специално за ширина на писалката WMF и ширина на козметичната писалка EMF. За да се постигне това, собствеността **ScaleWmfFontsToMetafileSize** е заменена с собственост [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) и собствеността [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) е добавена. <sup>23.9</sup>
* Чрез метода [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/) е въведен опростен метод за вмъкване на един документ в друг документ в текущата позиция на курсора. <sup>23.10</sup>
* Възможността за достъп и промяна на свойствата на стила е добавена чрез въвеждането на новата [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/) собственост. <sup>23.10</sup>
* Към методите от класа [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) е добавен общ тип параметър. <sup>23.10</sup>
* Начин да се контролира кога дадена ревизия трябва да бъде приета/отхвърлена или не, е бил приложен чрез използване на методите [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) и [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/). Това подобрение дава на потребителите по-фин контрол върху процеса на преразглеждане. <sup>23.11</sup>
* Възможността да се напишат всички раздели на документ върху един и същ работен лист XLSX е предоставена чрез новото свойство [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) изброяване и новото [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/). <sup>23.11</sup>
* Начин да се контролира как ще се използват разширенията за формат ZIP64 за документи OOXML е имплементиран чрез новото свойство Zip64Mode на класа `OoxmlSaveOptions` и новото Zip64Mode изброяване. <sup>23.12</sup>
* Въведена е поддръжка за WebP изображение. Моля, имайте предвид, че тази функция е достъпна само за .NetStandart и .NET6+ версии. <sup>23.12</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words за C++ 23.9 Бележки към изданието](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Научете повече за [Aspose.Words за C++ 23.10 бележки към изданието](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Научете повече за [Aspose.Words за C++ 23.11 бележки към изданието](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Научете повече за [Aspose.Words за C++ 23.12 бележки към изданието](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Вижте Също

{{% alert color="primary" %}}

Тази страница съдържа последните новини за последните 2 години. За подробности относно предишните издания вижте [Бележки](/words/cpp/release-notes/) страници в съответните раздели.

{{% /alert %}}
