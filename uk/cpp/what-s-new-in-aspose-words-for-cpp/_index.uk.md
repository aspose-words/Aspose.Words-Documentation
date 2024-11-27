---
title: Що нового
second_title: Aspose.Words для C++
articleTitle: Що нового в Aspose.Words для C++
linktitle: Що нового в Aspose.Words для C++
type: docs
description: "Aspose.Words для C++ з кожним днем розширюється і вдосконалюється. На цій сторінці ви можете дізнатися про величезні та найцікавіші можливості продукту."
weight: 2
url: /uk/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

На цій сторінці описані найцікавіші нові функції Aspose.Words, що з'явилися в останніх версіях.

## Aspose.Words для C++ 24.9, 24.10

Aspose.Words 24.9 додає вставку group shape і вставку StructuredDocumentTag за допомогою DocumentBuilder, покращує відображення радіальних діаграм за допомогою градуювань, покращує цифрові підписи з підтримкою XAdES-EPES, додає розпізнавання підкреслення Markdown і надає доступ до роздільників виносок/кінцевих приміток.

Aspose.Words 24.10 додана розширена підтримка елементів управління ActiveX з можливістю створення CommandButton, новий елемент управління видимістю фігур, можливість group shapes, покращений Markdown експорт таблиць, форматування діаграм для Pie і Doughnut графіків, поліпшена обробка кодування Big5 і Підтримка застарілих тайваньських шрифтів..

### Рендеринг та друк

#### Градуювання на радіальних графіках <sup>24.9</sup>

Реалізовано рендеринг градацій на радіальних діаграмах.

#### CommandButton елементи керування ActiveX <sup>24.10</sup>

Можливість створення CommandButton елементів керування ActiveX була реалізована шляхом додавання нового загальнодоступного методу [InsertForms2OleControl]() та нового загальнодоступного класу [Forms2OleControl]().

#### Контролюйте видимість фігури <sup>24.10</sup>

Додано нову загальнодоступну властивість [Hidden]() для контролю видимості фігур.

#### Зміни на графіках Pie і Doughnut <sup>24.10</sup>

До діаграм формату Pie та Doughnut було додано кілька нових загальнодоступних властивостей.

### Перетворення, завантаження та збереження документів

#### Підкреслення форматування при завантаженні Markdown файлів <sup>24.9</sup>

Можливість розпізнавати форматування підкреслення під час завантаження документів Markdown була реалізована шляхом додавання нової загальнодоступної властивості [ImportUnderlineFormatting]().

#### Експорт таблиць як HTML при збереженні в Markdown <sup>24.10</sup>

Можливість експортувати таблиці у форматі HTML при збереженні документів у форматі Markdown була реалізована шляхом додавання нової загальнодоступної властивості [ExportAsHtml]() та перерахування [MarkdownExportAsHtml]().

### Цифрові підписи

#### Підписуйте документи за допомогою XAdES-EPES <sup>24.9</sup>

Можливість підписувати документи підписами XAdES-EPES рівня XML-DSig була реалізована шляхом додавання нового загальнодоступного властивості [XmlDsigLevel]() і нового загальнодоступного перерахування [XmlDsigLevel]().

### Інший

* До group shapes було додано новий загальнодоступний метод [InsertGroupShape](). <sup>24.9</sup>
* Додано новий загальнодоступний метод [InsertStructuredDocumentTag]() для вставки **StructuredDocumentTags** у документ. <sup>24.9</sup>
* Відкритий доступ до розділювачів виносок і кінцевих приміток був забезпечений шляхом додавання декількох загальнодоступних класів і властивостей. <sup>24.9</sup>
* Можливість групувати окремі фігури, group shapes разом, а також безпосередньо групувати обидві фігури і group shapes з'явилася завдяки додаванню методу [InsertGroupShape](). <sup>24.10</sup>
* Покращена обробка кодування Big5 для TrueType таблиць cmap. <sup>24.10</sup>
* Була покращена підтримка застарілих тайванських шрифтів. <sup>24.10</sup>

{{% alert color="primary" %}}

Дізнайтеся більше про [Aspose.Words для C++ 24.9 приміток до випуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

Дізнайтеся більше про [Aspose.Words для C++ 24.10 приміток до випуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words для C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 розширює можливості для збірок, покращує можливості рендеринга і розширює деякі інші можливості.

Aspose.Words 24.6 покращено параметри рендеринга, розширені можливості пошуку та порівняння, а також розширено ряд інших функцій.

Aspose.Words 24.7 змінює спосіб роботи з ActiveX, розширює можливості рендеринга, а також експорту в формати Markdown і XLSX.

### Підтримувані формати

Починаючи з версії 24.7, підтримується експорт в PDF/UA-2 для забезпечення доступності для користувачів з обмеженими можливостями.

### Рендеринг та друк

#### Зміни в графіках, фігурах і DrawingML <sup>24.5</sup>

- DrawingML реалізовано рендеринг ефектів для SVG графіки, що розширює попередню функціональність, обмежену зображеннями.
- Підтримка створення комбінованих діаграм та налаштування таких властивостей, як ширина проміжку, перекриття та бульбашковий масштаб у групах рядів була реалізована шляхом додавання класів **ChartSeriesGroup** та **ChartSeriesGroupCollection** та властивості **SeriesGroups**.
- Функціональність для управління ефектом SoftEdge фігур була реалізована шляхом додавання класу **SoftEdgeFormat**.
- Можливість змінювати коригувальні значення фігур була реалізована шляхом додавання загальнодоступних класів **AdjustmentCollection** і **Adjustment** і властивості **Adjustments**.

#### Зміни в діаграмах, фігурах і кресленнях <sup>24.6</sup>

- Можливості побудови графіків були розширені. Тепер ви можете створювати більш широкий спектр діаграм, включаючи *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* графіки, *Box & Whisker* діаграми, *Waterfalls* і *Funnels*. Це дозволяє візуалізувати ваші дані більш різноманітним та інформативним способом.
- Покращено управління кольором для форматування тіней. Ви можете отримати більш точний контроль над зовнішнім виглядом ваших документів, отримавши доступ до кольорів тіней.
- Покращена продуктивність при рендерингу фону. Ви можете значно прискорити рендеринг фону, що містить невеликі елементи, завдяки вбудованій технології тайлінгу.
- Додані реалістичні градієнти для фігур. Тепер ви можете створювати фігури DML з нелінійними градієнтами, імітуючи візуальний стиль Microsoft Word для надання їм більш досконалого вигляду.

#### Налаштування міток даних діаграми <sup>24.7</sup>

Додано Можливість налаштування міток даних діаграми, таких як **Orientation** та **Rotation**.

#### Користувальницький стиль нумерації для рівнів списку <sup>24.7</sup>

Додано параметр налаштування для властивості public [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/). Тепер ви можете задати користувальницький стиль нумерації для рівнів списку.

#### Зміни в роботі з ActiveX <sup>24.7</sup>

- Властивості Об'єктів ActiveX тепер можна змінювати, що дає вам більше контролю над їх поведінкою.
- Додана можливість змінювати значення перемикача ActiveX для включення динамічної взаємодії.
- Додана можливість перемикати ActiveX checkbox на "перевірений" або "неперевірений".

### Завантаження та збереження документів

#### Експорт посилань у формат Markdown <sup>24.7</sup>

Можливість керувати експортом посилань у форматі Markdown була додана завдяки реалізації властивості [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/).

### Пошук та порівняння

#### Розширені параметри порівняння <sup>24.6</sup>

Додана можливість оптимізації робочих процесів аналізу даних з поліпшеною функціональністю порівняння. Це включає нову опцію **IgnoreStoreItemId** та перероблений інтерфейс для розширених порівнянь.

### Інший

- Функція видалення порожніх сторінок з документа була реалізована шляхом додавання методу [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/). <sup>24.5</sup>
- Можливість перевіряти наявність VBA макросів без завантаження документа була надана шляхом додавання властивості **HasMacros**. <sup>24.5</sup>
- Додано нову властивість **DateTimeUtc** – вона забезпечує більш точну позначку часу для коментарів, покращуючи організацію та відстеження. <sup>24.6</sup>
- Формат дати та часу тепер автоматично визначається для безперешкодного експорту у формат XLSX. <sup>24.7</sup>
- Додано загальнодоступну властивість [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), яка дозволяє перевірити, чи захищений проект VBA. <sup>24.7</sup>

{{% alert color="primary" %}}

Дізнайтеся більше про [Aspose.Words для C++ 24.5 приміток до випуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Дізнайтеся більше про [Aspose.Words для C++ 24.6 приміток до випуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Дізнайтеся більше про [Aspose.Words для C++ 24.7 приміток до випуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words для C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 покращено можливості керування кольорами обведення, розширено можливості OLE об'єктів, а також представлено нову бібліографію загальнодоступних джерел API.

Aspose.Words 24.2 розширені діаграми API і управління стилем. У цій версії Aspose.Words також з'явилася можливість вказувати SvgSaveOptions під час рендеринга, більш гнучке управління завантаженням Markdown файлів і робота з посилальним текстом для виносок і кінцевих приміток.

Aspose.Words 24.3 введена емуляція бінарних растрових операцій для WMF метафайлів, а також триває розширення графіків API.

Aspose.Words 24.4 розширені деякі можливості рендеринга, а також поліпшена робота з цифровими підписами.

### Рендеринг та друк

#### Управління кольором обведення <sup>24.1</sup>

Клас [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) був розширений набором нових загальнодоступних властивостей, пов'язаних з Керуванням кольорами обведення: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) і [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) і [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### DrawingML розширення графіків API <sup>24.2 / 24.3 / 24.4</sup>

Параметр **DrawingML Charts API** продовжує розширюватися.

#### Вставити шрифти, оголошені в правилах @font-face <sup>24.4</sup>

Додана можливість вбудовувати шрифти, оголошені в правилах @font-face, в визначення шрифтів результуючого документа була введена шляхом додавання нової властивості [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/).

#### Робота з форматуванням світіння і відображення <sup>24.4</sup>

Реалізована можливість роботи з форматуванням світіння і відображення для об'єкта малювання.

### Завантаження та збереження документів

#### Вкажіть SvgSaveOptions під час рендеринга <sup>24.2</sup>

Додана можливість вказувати [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) під час рендеринга з використанням методів [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) і [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/).

#### Зберігати порожні рядки при завантаженні Markdown файлів <sup>24.2</sup>

Додана можливість зберігати порожні рядки при завантаженні файлів Markdown.

### Інший

- Можливість змінювати текст елемента керування `TextBox` OLE була реалізована шляхом додавання нової властивості **Text** до нового класу **TextBoxControl**. <sup>24.1</sup>
- Загальнодоступні джерела бібліографії API були реалізовані шляхом додавання нового простору імен [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) з його новими класами та перерахуваннями, а також шляхом додавання нової властивості [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) до класу [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). <sup>24.1</sup>
- Клас [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) додав нові загальнодоступні властивості [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) та [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) для вдосконаленого управління стилем. <sup>24.2</sup>
- Функціональність для отримання фактичного тексту опорного знака для виносок і кінцевих виносок була розширена за допомогою властивості [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) і методу [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- Реалізована емуляція бінарних растрових операцій для метафайлів WMF. <sup>24.3</sup>
- Можливість визначення параметрів підпису для документів у межах **SaveOptions** була включена шляхом додавання нового класу **DigitalSignatureDetails** з новими відкритими членами, а також додавання нових властивостей до класів [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) та [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Дізнайтеся більше про [Aspose.Words для C++ 24.1 приміток до випуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Дізнайтеся більше про [Aspose.Words для C++ 24.2 приміток до випуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Дізнайтеся більше про [Aspose.Words для C++ 24.3 приміток до випуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Дізнайтеся більше про [Aspose.Words для C++ 24.4 приміток до випуску](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words для C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 розширює можливості рендеринга, емуляції рендеринга метафайлів і markdown збереження.

Aspose.Words 23.10 покращено рендеринг, розширені можливості завантаження і збереження документів, а також користувачі можуть по-новому об'єднувати документи.

Aspose.Words 23.11 розширює роботу зі змінами, XLSX форматуванням і шрифтами в легенді діаграми за допомогою додаткових опцій.

Aspose.Words 23.12 додані нові властивості і перерахування для роботи з PDF і OOXML документами, а також підтримка WebP зображень.

### Рендеринг та друк

#### Налаштування назв осей в DrawingML діаграмах <sup>23.9</sup>

Можливість налаштовувати назви осей на діаграмах DrawingML з'явилася завдяки впровадженню нового загальнодоступного класу **ChartAxisTitle** і властивості [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/).

#### Визначення вертикального розташування шрифтів в абзаці <sup>23.9</sup>

Тепер можна визначати вертикальне розташування шрифтів в абзаці, використовуючи нову властивість public [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) і нове перерахування [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/).

#### Управління кольором переднього плану <sup>23.10</sup>

Можливість витягувати колір переднього плану без модифікаторів була додана до класів [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) та [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) за допомогою властивості **BaseForeColor**.

#### Розширення функціональності графіків <sup>23.10</sup>

Функціональність класів [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) та [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) була розширена новими методами та властивостями.

#### Автоматична настройка і підгонка зображення під форму <sup>23.10</sup>

Новий метод [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/) надає простий спосіб автоматичної настройки і підгонки зображення під певну форму.

#### Форматування шрифту за замовчуванням для DrawingML записів в умовних позначеннях діаграми <sup>23.11</sup>

Додана можливість задавати форматування шрифту за замовчуванням для записів умовних позначень діаграм DrawingML за допомогою властивості [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/). Ця функція забезпечує більш впорядкований і однаковий зовнішній вигляд елементів діаграми, покращуючи загальну естетику документа.

#### Вкажіть макет сторінки під час відкриття PDF у Reader <sup>23.12</sup>

Можливість вказувати макет сторінки, який буде використовуватися при відкритті документа в PDF рідері, була додана завдяки введенню нового властивості **PageLayout** для класу [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) і введенню нового перерахування **PdfPageLayout**.

### Завантаження та збереження документів

#### Вказівка імені папки для створення зображення URIs в Markdown <sup>23.9</sup>

Клас [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) було розширено додаванням властивості [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/), що дозволяє вказати назву папки, яка використовується для створення зображення URIs, записаного в документ Markdown.

#### Зменшити PDF Розмір вихідних даних <sup>23.10</sup>

Були реалізовані різні оптимізації PDF рендеринга для зменшення розміру вихідних даних при використанні налаштувань [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/).

#### Розпізнавати гіперпосилання при завантаженні TXT документів <sup>23.10</sup>

Функція розпізнавання гіперпосилань при завантаженні документів TXT була реалізована шляхом додавання нової властивості [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/).

### Інший

- Реалізована емуляція рендеринга метафайлів для визначення розміру растеризації, зокрема, для WMF ширини пера і EMF косметичної ширини пера. Для досягнення цієї мети властивість **ScaleWmfFontsToMetafileSize** було замінено властивістю [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) і додано властивість [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/). <sup>23.9</sup>
* З використанням методу [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/) був представлений спрощений метод вставки одного документа в інший в поточному положенні курсору. <sup>23.10</sup>
* Можливість доступу до властивостей стилю і їх зміни була додана завдяки введенню нового властивості [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/). <sup>23.10</sup>
* До методів класу [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) був доданий параметр універсального типу. <sup>23.10</sup>
* За допомогою методів [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) і [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/) був реалізований спосіб контролю того, коли певна редакція повинна бути прийнята/відхилена чи ні. Це вдосконалення надає користувачам більш точний контроль над процесом внесення змін. <sup>23.11</sup>
* Можливість записувати всі розділи документа на один і той же робочий лист XLSX була надана завдяки новому типу перерахування [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) і Новій властивості [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/). <sup>23.11</sup>
* Спосіб управління тим, як розширення формату ZIP64 будуть використовуватися для документів OOXML, був реалізований за допомогою нового властивості Zip64Mode класу `OoxmlSaveOptions` і нового перерахування Zip64Mode. <sup>23.12</sup>
* Додана підтримка зображень WebP. Будь ласка, зверніть увагу, що ця функція доступна тільки для версій .NetStandart і .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Дізнайтеся більше про [Aspose.Words для C++ 23.9 приміток до випуску](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Дізнайтеся більше про [Aspose.Words для C++ 23.10 приміток до випуску](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Дізнайтеся більше про [Aspose.Words для C++ 23.11 приміток до випуску](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Дізнайтеся більше про [Aspose.Words для C++ 23.12 приміток до випуску](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Дивіться також

{{% alert color="primary" %}}

На цій сторінці представлені останні новини про релізи за останні 2 роки. Більш детальну інформацію про попередні випуски дивіться в [Примітки до випуску'](/words/cpp/release-notes/) сторінки у відповідних розділах.

{{% /alert %}}
