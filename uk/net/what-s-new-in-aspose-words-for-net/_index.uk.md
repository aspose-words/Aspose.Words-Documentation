---
title: Що нового
second_title: Aspose.Words для .NET
articleTitle: Що нового в Aspose.Words для .NET
linktitle: Що нового в Aspose.Words для .NET
type: docs
description: "Aspose.Words для .NET Розширює і підсилює щодня. На цій сторінці ви можете дізнатися про величезні і найцікавіші особливості виробу."
weight: 10
url: /uk/net/what-s-new-in-aspose-words-for-net/
---

Ця сторінка описує найцікавіше Aspose.Words Особливості, введені в останні релізи.

## Aspose.Words для .NET 24.5, 24.6, 24.7

Aspose.Words 24.5 розширює параметри збірок, покращує можливості візуалізації та розширює деякі інші параметри.

Aspose.Words 24.6 покращує параметри візуалізації, розширює функції пошуку та порівняння та розширює кілька інших функцій.

Aspose.Words 24.7 змінює спосіб роботи з ActiveX, розширює можливості відтворення, а також експорт у формати Markdown і XLSX.

### Підтримувані формати

Починаючи з версії 24.7 підтримується експорт у PDF/UA-2 для забезпечення доступності для користувачів з обмеженими можливостями.

### Платформи <sup>24.5</sup>

Збірки .NET 7.0/8.0 включено в пакет Aspose.Words NuGet.

### Візуалізація та друк

#### Зміни в Charts, Shapes і DrawingML <sup>24.5</sup>

* Реалізовано ефекти DrawingML для графіки SVG, що розширює попередні функції, обмежені зображеннями.
* Підтримку створення комбінованих діаграм і налаштування таких властивостей, як ширина проміжків, перекриття та масштаб бульбашок у групах серій, було введено шляхом додавання [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) і [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) класів і [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/).
* Додано клас [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/) для керування ефектом SoftEdge форм.
* Можливість змінювати значення коригування фігур було реалізовано шляхом додавання [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) і [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) публічні класи та [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) власність.

#### Зміни в діаграмах, фігурах і малюнках <sup>24.6</sup>

* Розширено можливості створення діаграм. Тепер ви можете створювати більше різноманітних діаграм, зокрема *Деревоподібні карти*, *Сонячні промені*, *Гістограми*, *Діаграми Парето*, діаграми *Коробки та вуса*, *Водоспади* та *Воронки*. Це дозволяє візуалізувати ваші дані більш різноманітно та інформативно.
* Покращено керування кольором для форматування тіні. Ви можете отримати більш точний контроль над зовнішнім виглядом ваших документів, отримавши доступ до кольорів тіні.
* Підвищення продуктивності фонового рендерингу покращено. Ви можете значно пришвидшити рендеринг фону, що містить дрібні елементи, завдяки власній технології мозаїки.
* Додано реалістичні градієнти для фігур. Тепер ви можете створювати форми DML із нелінійними градієнтами, імітуючи візуальний стиль Microsoft Word для більш вишуканого вигляду.

#### Налаштування мітки даних діаграми <sup>24.7</sup>

Додано можливість налаштовувати позначки даних діаграми, такі як **Orientation** та **Rotation**.

#### Спеціальний стиль чисел для рівнів списку <sup>24.7</sup>

Додано засіб налаштування загальнодоступної властивості [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/). Тепер ви можете визначити власний стиль номерів для рівнів списку.

#### Зміни в роботі з ActiveX <sup>24.7</sup>

* Властивості об'єктів ActiveX тепер можна змінювати, що дає вам більше контролю над їх поведінкою.
* Додано можливість змінювати значення перемикача ActiveX, щоб увімкнути динамічну взаємодію.
* Додано можливість перемикати прапорець ActiveX на «позначений» або «не позначений».

### Завантаження та збереження документів

#### Експорт посилань у формат Markdown <sup>24.7</sup>

Можливість керувати експортом посилань у форматі Markdown додано через реалізацію властивості [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/).

### Пошук і порівняння

#### Розширені параметри порівняння <sup>24.6</sup>
Додано можливість оптимізувати робочі процеси аналізу даних за допомогою покращеної функції порівняння. Це включає новий параметр [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) та оновлений інтерфейс для розширених порівнянь.

### Інший

* Функцію видалення порожніх сторінок із документа було реалізовано шляхом додавання методу [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/). <sup>24.5</sup>
* Додано властивість [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/) для перевірки наявності макросів VBA без завантаження документа. <sup>24.5</sup>
* Тепер підтримується збереження вихідної нумерації під час вставлення документа за допомогою механізму звітування LINQ. <sup>24.5</sup>
* Додано нову властивість [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) – вона надає точнішу позначку часу для коментарів, покращує організацію та відстежуваність. <sup>24.6</sup>
* Механізм звітування LINQ покращено. Зроблено вибіркове видалення порожніх абзаців і визначення користувацьких повідомлень для відсутніх членів об’єктів, що призвело до більш чітких і інформативних звітів. <sup>24.6</sup>
* Формат дати й часу тепер автоматично визначається для безперебійного експорту у формат XLSX. <sup>24.7</sup>
* Додано загальнодоступну властивість [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), яка дозволяє перевірити, чи захищений проект VBA. <sup>24.7</sup>

{{% alert color="primary" %}}

Дізнатися більше [Aspose.Words для .NET 24.5 Release Примітки](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/)

Дізнатися більше [Aspose.Words для .NET 24.6 Release Примітки](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/)

Дізнатися більше [Aspose.Words для .NET 24.7 Release Примітки](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/)

{{% /alert %}}

## Aspose.Words для .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 покращує досвід управління кольорами інсульту, посилює об'єкти OLE і LINQ звітності, а також представляє новий `Bibliography Sources` громадськість APIй

Aspose.Words 24.2 розширені діаграми API, Менеджмент стилю та параметри LINQ. Дана версія Aspose.Words також запровадив можливість вказати SvgSaveOptions під час рендерингу, більш гнучке навантаження Markdown Файли та роботи з посиланням текстом для приміток та ендонот.

Aspose.Words 24.3 представила новий TIFF Reader/Writer і Емульація бінарних растрових операцій для метафілів WMF. Aspose.Words 24.3 продовжує розширювати діаграми APIй

Aspose.Words 24.4 посилює збереження форматів, деякі параметри рендерингу, а також покращує роботу з цифровими підписами.

### Підтримані формати <sup>24.4</sup>

Сучасний **WebP** Формат зображень тепер підтримується в Aspose.Words для .NET Framework 4.6.2 і вище. Тепер можна прочитати і вставити WebP зображення в документи, а також збереження зображень в WebP Формат.

Зверніть увагу, що WebP В даний час ми використовуємо тільки .NET Standard і .NET Framework v4.6.2 і вище.

### Рендеринг і друк

#### Stroke Колір контроль <sup>24.1</sup>

Про нас [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) Клас був розширений з набором нових публічних властивостей, пов'язаних з управлінням колірами інсульту: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) і [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) і [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/)й

#### МалюванняML діаграми API Продовжити <sup>24.2 / 24.3 / 24.4</sup>

Про нас **DrawingML Charts API** продовжує розширюватися.

#### Увімкніть шрифти, декларовані в @font-face <sup>24.4</sup>

Додано можливість складання шрифтів, заявлених у правилах шрифту @font-face у визначенні шрифту отриманого документа [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/) майно.

#### Робота з форматуванням Glow і відбиття <sup>24.4</sup>

Впроваджено можливість роботи з форматуванням свічок та відбиття для об’єкта малювання.

### Завантаження та збереження документів

#### Вказати SvgSaveOptions Під час Rendering <sup>24.2</sup>

Можливість вказати [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) при рендерингу додано за допомогою [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/)й[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) і [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/)й[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) методи.

#### Збереження Empty Lines при навантаженні Markdown Файли <sup>24.2</sup>

Можливість збереження порожніх ліній при завантаженні Markdown додано файли.

#### Новий TIFF Reader/Writer <sup>24.3</sup>

Новий TIFF зчитувач / автор для Aspose.Words для .NET Standard, .NET Розроблено 6 і пізніше. Aspose.Words для .NET 24.3 додано підтримку для читання зображень TIFF з JPEG та Старими типами стиснення JPEG, а також значно покращило якість читання та запису операцій.

### Інше

* Ім'я * Можливість змінити текст тексту `TextBox` ОЛЕ-контроль був представлений шляхом додавання нового [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) нерухомість в новий [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) клас. <sup>24.1</sup>
* Бібліографія Джерела API реалізовано через додавання нового простору імені [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) з новими класами і ентумераціями, і шляхом додавання нового [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) майно до [Document](https://reference.aspose.com/words/net/aspose.words/document/) клас. <sup>24.1</sup>
* Ім'я * API обмежити доступ до користувачів типу за допомогою синтаксису шаблону для `LINQ Reporting Engine` Надано. <sup>24.1</sup>
* Нові публічні властивості [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), і [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) для розширеного управління стилем додано [Style](https://reference.aspose.com/words/net/aspose.words/style/) клас. <sup>24.2</sup>
* Ім'я * Функціональність для отримання фактичного текстового позначки для приміток та ендонот [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) майно та [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) метод. <sup>24.2</sup>
* Сумісність з `Word 2016` графіки для `LINQ Reporting Engine` Увімкнено. <sup>24.2</sup>
* Реалізовано емульацію бінарних растрових операцій для метафілів WMF. <sup>24.3</sup>
* Ім'я * Можливість визначення варіантів підпису документів в межах **SaveOptions** Увімкнено додавання нового [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) клас з новими державними членами, а також додавання нових властивостей [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) і [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) класи. <sup>24.4</sup>

{{% alert color="primary" %}}

Дізнатися більше [Aspose.Words для .NET 24.1 Реліз Примітки](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/)

Дізнатися більше [Aspose.Words для .NET 24.2 Реліз Примітки](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/)

Дізнатися більше [Aspose.Words для .NET 24.3 Реліз Примітки](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/)

Дізнатися більше [Aspose.Words для .NET 24.4 Release Примітки](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words для .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 розширює параметри рендерингу, емуляцію метафілу, і markdown Варіанти збереження.

Aspose.Words 23.10 покращує рендеринг, розширює параметри завантаження та збереження документів, а також дозволяє користувачам об’єднати документи новими способами.

Aspose.Words 23.11 посилює роботу з версіями, форматом XLSX і шрифтами на діаграмі легенди з додатковими варіантами.

Aspose.Words 23.12 впроваджує нові властивості та заохочення для роботи з документами PDF та OOXML, а також підтримки WebP зображення.

### Рендеринг і друк

#### Налаштування Axes Назва в DrawingML Графіки <sup>23.9</sup>

Можливість налаштування назв осі в діаграмах DrawingML було впроваджено шляхом реалізації нового публічного класу [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) і [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) майно.

#### Визначення вертикальної позиції шрифтів в рамках пункту <sup>23.9</sup>

Тепер можна визначити вертикальну позицію шрифтів у пункті за допомогою нової громадськості [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) нерухомість та нові [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/) заохочення.

#### Foreground Колір Контроль <sup>23.10 р.</sup>

Додана можливість отримання фонового кольору без модифікаторів [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) і [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) класи через **BaseForeColor** майно.

#### Розширення функціональності діаграм <sup>23.10 р.</sup>

Функціональність функціоналу [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/), і [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) класи розширилися з новими методами і властивостями.

#### Автоматично регулюйте і встановіть зображення в форму <sup>23.10 р.</sup>

Простий спосіб автоматично регулювати і підійти зображення в певній формі за допомогою нової [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) метод.

#### Форматування за замовчуванням для малювання МЛ Карта Легенда Вхід <sup>23.11 р.</sup>

Уміння вказати форматування шрифтів за типовими записами на діаграми DrawingML [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) майно. Ця функція полегшує більш динамічний і послідовний зовнішній вигляд для елементів діаграми, покращуючи загальну естетику документа.

#### Вказати сторінку розміщення при відкритті PDF в Reader <sup>23.12 р.</sup>

Уміння вказати макет сторінки, який використовується при відкритті документа в PDF-чителю додано через введення нового [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) майно до [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) клас і впровадження нового [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) заохочення.

### Завантаження та збереження документів

#### Вкажіть ім'я папки для побудови зображень Markdown <sup>23.9</sup>

Про нас [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) Клас розширився в тому числі [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/) властивість, що дозволяє вказати назву папки, що використовується для побудови зображення URIs, записаного в Markdown документ.

#### Зменшення PDF Розмір виходу <sup>23.10 р.</sup>

Різні параметри рендерингу PDF для зменшення розміру виходу при використанні [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) Реалізовано налаштування.

#### Визначте гіперпосилання при завантаженні документів TXT <sup>23.10 р.</sup>

Можливість розпізнати гіперпосилання при завантаженні документів TXT реалізовано шляхом додавання нових [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) майно.

### Інше

* Реалізовано емуляцію метафілу для визначення розміру расстеризації, зокрема для ширини ручки WMF та EMF. Для досягнення цього, **ScaleWmfFontsToMetafileSize** майно було замінено на [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) майно та [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) додано майно. <sup>23.9</sup>
* Введено спрощений метод введення одного документа в інший документ на поточні позиції курсора [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) метод. <sup>23.10 р.</sup>
* Ім'я * Додана можливість доступу та модифікації властивостей стилю через введення нового [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) майно. <sup>23.10 р.</sup>
* Ім'я * Додано загальний параметр типу до методів [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) клас. <sup>23.10 р.</sup>
* Спосіб керування при визначеному доопрацюванні слід прийняти/відводити або не було здійснено за допомогою використання [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) і [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/) методи. Цей вдосконалення надає користувачам тонкий контроль над процесом перегляду. <sup>23.11 р.</sup>
* Ім'я * Уміння писати всі розділи документа на той самий робочий аркуш XLSX надається через новий [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) тип і новий [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) майно. <sup>23.11 р.</sup>
* Шляхом управління розширенням формату ZIP64 буде використовуватися для документів OOXML, які реалізовані через нове ім'я Zip64Mode `OoxmlSaveOptions` клас і нова конвертація Zip64Mode. <sup>23.12 р.</sup>
* Підтримка WebP Представлено зображення. Будь ласка, зауважте, що ця функція доступна тільки для .NetСтандарт і .NET6+ версій. <sup>23.12 р.</sup>

{{% alert color="primary" %}}

Дізнатися більше [Aspose.Words для .NET 23.9 Реліз Примітки](/words/net/aspose-words-for-net-23-9-release-notes/)

Дізнатися більше [Aspose.Words для .NET 23.10 Реліз Примітки](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/)

Дізнатися більше [Aspose.Words для .NET 23.11 Реліз Примітки](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/)

Дізнатися більше [Aspose.Words для .NET 23.12 Реліз Примітки](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/)

{{% /alert %}}

## Aspose.Words для .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 посилює здатність працювати з даними діаграми та можливістю роботи з документами ODT, а також покращувати заголовки/ножиці та їх текстове обгортання.

Aspose.Words 23.6 розширює параметри рендерингу, додає новий формат експорту, покращує звітність LINQ та LowCode інструменти.

Aspose.Words 23.7 посилює можливості звітності, додає новий формат експорту, вводить зміни до роботи з таблицями та цифровими підписами.

Aspose.Words 23.8 розширює можливості різних форматів, покращує рендерінг і додає нові можливості для роботи з полями

### Підтримані формати

* Починаючи з версії 23.6, можна зберегти документ у форматі XLSX. Тепер ви можете конвертувати документи в формат Excel. <sup>23.6</sup>
* Починаючи з версії 23.7, можна зберегти сторінку документа або форму в форматі EPS. <sup>23.7</sup>

### Нові можливості формату

* Ім'я * Реалізовано функціонал для автоматичного створення таблиці змісту (TOC) для документів MOBI. <sup>23.8</sup>
* Ім'я * Про нас [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) Конструктор розширився з [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/)й <sup>23.8</sup>
* Реалізовано формування вертикального тексту для метафілів EMF. <sup>23.8</sup>

### Рендеринг і друк

#### Отримати і модифікувати Дані серії діаграм <sup>23.5</sup>

Для отримання та модифікації даних діаграми передбачено додаванням:

* нові класи: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* нові типи енму: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Підтримка розширеної типографії <sup>23.6</sup>

Додано підтримку розширеної типографії в WMF, EMF та EMF+.

#### Забарвлений вміст на сторінці <sup>23.6</sup>

Громадська нерухомість [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/), вказуючи, чи додана сторінка кольорова або ні.

#### Форматування етикеток даних діаграм <sup>23.6</sup>

Впроваджено можливість налаштовувати, інсульти та форматування макетів даних.

### Mail Merge та звітність

#### Динамічне введення HTML для двигуна LINQ <sup>23.6</sup>

Додано новий спосіб динамічної вставки HTML для двигуна LINQ.

#### Mustache Підтримка <sup>23.7</sup>

Mustache теги тепер підтримуються в [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) і [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion) методи.

#### LINQ Повідомлення двигуна шаблон Синтаксис оновлення <sup>23.7</sup>

Синтаксис LINQ звітує двигун тепер підтримує `ElementAt` і ЕлементПрограма розширення.

#### Вказати розмір Rendered Зображення <sup>23.8</sup>

Нове публічне майно [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) для визначення розміру наданих зображень в пікселях.

#### Збереження білих просторів для JSON String Values - LINQ <sup>23.8</sup>

Опція була додана до двигуна LINQ, щоб зберегти білі простори для значень рядків JSON.

### LowCode <sup>23.6</sup>

Нові LowCode Додано методи, призначені для об'єднання різних типів документів в один вихідний документ.

### Інше

* Реалізовано підтримку текстового обгортання в заголовках/ножиці. <sup>23.5</sup>
* Ім'я * Додана можливість видалення цифрових підписів з документів ODT [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) метод. <sup>23.5</sup>
* Ім'я * Громадська нерухомість [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) для отримання бази та рубати тексту фонетичного керівництва [Run](https://reference.aspose.com/words/net/aspose.words/run/) Додано. <sup>23.5</sup>
* Ім'я * Уміння отримати цифрову вартість підпису з цифрово підписаного документа як байтовий масив додано шляхом введення нового [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) майно. <sup>23.7</sup>
* Ім'я * Про нас [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) і [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) Завершилися заняття з новими членами [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/), і [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/)й <sup>23.7</sup>
* Додано підтримку полів CITATION та BIBLIOGRAPHY. <sup>23.8</sup>

{{% alert color="primary" %}}

Дізнатися більше [Aspose.Words для .NET 23.5 Реліз Примітки](/words/net/aspose-words-for-net-23-5-release-notes/)

Дізнатися більше [Aspose.Words для .NET 23.6 Release Примітки](/words/net/aspose-words-for-net-23-6-release-notes/)

Дізнатися більше [Aspose.Words для .NET 23.7 Release Примітки](/words/net/aspose-words-for-net-23-7-release-notes/)

Дізнатися більше [Aspose.Words для .NET 23.8 Release Примітки](/words/net/aspose-words-for-net-23-8-release-notes/)

{{% /alert %}}

## Aspose.Words для .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 покращує продуктивність емуляції растерської операції, а також посилює експорт документів та якість рендерингу.

Aspose.Words 23.2 впроваджує ощадні документи у форматі MOBI, поліпшує рендеринг діаграми та робить нездатні зміни до реквізитів зовнішнього вигляду документів.

Aspose.Words 23.3 посилює імпорт документів і збереження нових властивостей, а також покращує якість роботи з фоном і кольором передземного та радіального градієнту.

Aspose.Words 23.4 покращує розрахунок деяких параметрів та позиціонування таблиці та зовнішнього тексту.

### Покращення продуктивності

#### Емульація Растрових операцій <sup>23.1</sup>

Вдосконалено продуктивність та якість емульсійних операцій з метафілами.

### Підтримані формати

#### Експорт до MOBI <sup>23.2</sup>

Починаючи з версії 23.2, можна зберегти документ у форматі MOBI (також називається PRC, AZW - Amazon Формат файлів електронних книг Kindle. Тепер ви можете не тільки завантажити документи MOBI, але і експортувати файли до формату MOBI.

### Рендеринг

#### Робота з затінками темних кольорів <sup>23.1</sup>

Реалізовано можливість роботи з затінками тематичних кольорів.

#### Підтримка R-squared Коефіцієнт в діаграмах DML <sup>23.1</sup>

Додано підтримку коефіцієнта R-squared в DML діаграмі трендових етикеток при рендерингу.

#### Рендерингові вдосконалення <sup>23.2</sup>

З 23.2 рендеринг діаграми значно покращився.

#### Підземний і передній колір контроль <sup>23.3</sup>

Про нас [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) Клас був розширений з набором нових публічних властивостей, пов'язаних з фоновими та передовими кольорами: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) і [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) і [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/)й

#### Радіальні градієнти з `SkiaSharp` Нативний шейдер <sup>23.3</sup>

Рендеринг радіальних градієнтів з `SkiaSharp` рідний шейдер для .NET Standard Реалізовано.

#### Відстань між таблицею та обурочним текстом <sup>23.4</sup>

Уміння встановити відстань між таблицю і навколишнім текстом додано шляхом введення нових властивостей [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) клас: [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/), і [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/)й

### Завантаження та збереження документів

#### Генерація `TOC` AZW3 Документи <sup>23.1</sup>

Можливість генерувати `TOC` (табл. змісту) для документів AZW3 додано за допомогою використання [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/) майно.

#### Експортувати список товарів до Markdown <sup>23.1</sup>

Спосіб управління експортом товарів списку Markdown Формат було надано шляхом додавання [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) майно до [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) клас.

#### Повідомлення про збереження документів <sup>23.3</sup>

Реалізовано сповіщення про конфіденційність форматів МОБ та АЗВ3.

#### Налаштування та налаштування Word <sup>23.3</sup>

Уміння уточнити, чи автоматично корегувати вирок та розсипання слів при імпорті документів [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/) майно.

### Інше

* Ім'я * Уміння уточнити налаштування корекції символів документа додано через [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) Реалізація майна <sup>23.2</sup>
* Ім'я * Шлях до інструкції Aspose.Words Чи можна включати текстові скриньки, примітки та кінцеві помилки у статистичній статистиці підрахунку слів, додавши додавання [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) Проживання <sup>23.2</sup>
* Новий варіант для стилю документа, який дозволяє вказати, чи автоматично перевизнається стиль на основі відповідного значення, представлений за допомогою відповідного значення. [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) Проживання <sup>23.2</sup>
* Ім'я * Уміння визначити чи [Run](https://reference.aspose.com/words/net/aspose.words/run/) є фонетичним гідом, який додано за допомогою [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) Проживання <sup>23.4</sup>
* Простий спосіб роботи з серією та осями комбінованих графіків реалізовано шляхом введення [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) клас і додавання [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) Проживання <sup>23.4</sup>
* Ім'я * Додані нові публічні властивості, пов'язані з формою відносного позиціонування та зміщення [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) клас <sup>23.4</sup>
* Покращено точність та продуктивність розрахунку яскравості кольору для автоматичного визначення кольору тексту Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Дізнатися більше [Aspose.Words для .NET 23.1 Release Примітки](/words/net/aspose-words-for-net-23-1-release-notes/)

Дізнатися більше [Aspose.Words для .NET 23.2 Release Примітки](/words/net/aspose-words-for-net-23-2-release-notes/)

Дізнатися більше [Aspose.Words для .NET 23.3 Release Примітки](/words/net/aspose-words-for-net-23-3-release-notes/)

Дізнатися більше [Aspose.Words для .NET 23.4 Випускають Примітки](/words/net/aspose-words-for-net-23-4-release-notes/)

{{% /alert %}}

## Aspose.Words для .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 розширює параметри завантаження та збереження документів та поліпшення взаємодії з деякими іншими опціями.

Aspose.Words 22.10 поліпшує пошук та заміну опцій, посилює об'єкти OLE та розширює функціонал списку.

Aspose.Words 22.11 розширює свою функціональність з новими опціями для більш зручної роботи з вже знайомими об'єктами: полями, друку, OLE та структурованими тегами документів.

Aspose.Words 22.12 посилює можливості та вводить параметри роботи з запасами при завантаженні/збереженні документа.

### Покращення продуктивності <sup>22.12 р.</sup>

Реалізовано оптимізацію, що значно знижує глибину графічного стану при рендерингу в PDF для підтримки відповідності специфікації.

### Рендеринг і друк

#### Друк Некольоровий Сторінки на кольоровому принтері <sup>22.11 р.</sup>

Реалізовано користувацький кольоровий / сірий режим друку, додаючи новий **GrayscaleAuto** значення до [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/) заохочення.

Новий тип друку дозволяє користувачам контролювати, як нефарбовані сторінки друкуються, якщо пристрій підтримує кольоровий друк. Ця функція може бути корисною, якщо користувачі хочуть автоматично друкувати некольорові сторінки, використовуючи тільки сірий режим друку.

#### Нові прикордонні рендерингові властивості <sup>22.12 р.</sup>

Нові публічні властивості [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) і [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/) були введені.

#### Лінійний Trendline Formula для DrawingML Rendering <sup>22.12 р.</sup>

Реалізовано лінійну модну формулу для діаграм DrawingML.

#### Настройки за замовчуванням Google Noto Кошик <sup>22.12 р.</sup>

Визначені параметри кешування шрифтів для Google Noto було оновлено шрифти.

### Завантаження та збереження документів

#### Cache Header або Footer Shapes для зменшення PDF Розмір <sup>22.9</sup>

Уміння кеш-пам'яти форм для зменшення розміру вихідного PDF-файлу реалізовано шляхом додавання нового **CacheHeaderFooterShapes** майно.

#### Автоматичне видалення номера при завантаженні документів <sup>22.9</sup>

Уміння вказати можливість [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) об'єкт на текстове завантаження реалізовано через розширене [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) клас.

#### Вимірювальні характеристики Тип маргіна <sup>22.12 р.</sup>

Уміння вказати конкретну [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) Реалізовано тип для даного розділу.

### Пошук та порівняння <sup>22.10 р.</sup>

Можливість ігнорувати [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) при пошуку та заміні опції реалізовано шляхом додавання нового [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) майно до [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) клас.

### Інше

* Додано нову функцію для отримання FieldEQ як OfficeMath. <sup>22.9</sup>
* Ім'я * Створення структурованих тегів документів Group допускається тип на рівні руп. <sup>22.9</sup>
* OLE об'єкти та елементи керування тепер обробляються як зображення метафайлу при перетворенні документа в HTML. <sup>22.10 р.</sup>
* Додана нова функція для перевірки того, що окремий список був створений з одного шаблону, оскільки список порівняння було додано шляхом введення нового [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) метод в [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) клас. <sup>22.10 р.</sup>
* Ім'я * Уміння створювати нові структуровані теги документів [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) додано тип. <sup>22.11 р.</sup>
* Ім'я * Надано можливість відстежувати прогрес оновлення поля. <sup>22.11 р.</sup>
* Новий **EmbedAttachments** Представлено майно, що дозволяє користувачам вставляти вкладення OLE з початкового документа у вихідний документ PDF. <sup>22.11 р.</sup>

{{% alert color="primary" %}}

Дізнатися більше [Aspose.Words для .NET 22.9 Примітки](/words/net/aspose-words-for-net-22-9-release-notes/)

Дізнатися більше [Aspose.Words для .NET 22.10 Реліз Примітки](/words/net/aspose-words-for-net-22-10-release-notes/)

Дізнатися більше [Aspose.Words для .NET 22.11 Реліз Примітки](/words/net/aspose-words-for-net-22-11-release-notes/)

Дізнатися більше [Aspose.Words для .NET 22.12 Реліз Примітки](/words/net/aspose-words-for-net-22-12-release-notes/)

{{% /alert %}}

## Дивитися ще

{{% alert color="primary" %}}

Ця сторінка містить останні новини релізу за останні 2 роки. Для деталей на попередніх релізах див. [Видаляє Примітки Р](/words/net/release-notes/) сторінки в відповідних розділах.

{{% /alert %}}