---
title: Що нового
second_title: Aspose.Words для Python via .NET
articleTitle: Що нового в Aspose.Words для Python via .NET
linktitle: Що нового в Aspose.Words для Python via .NET
type: docs
description: "Aspose.Words для Python via .NET Розширює і підсилює щодня. На цій сторінці ви можете дізнатися про величезні і найцікавіші особливості виробу."
weight: 10
url: /uk/python-net/what-s-new-in-aspose-words-for-python-net/
---

Ця сторінка описує найцікавіше Aspose.Words Особливості, введені в останні релізи.

## Aspose.Words для Python via .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 розширює параметри збірок, покращує можливості візуалізації та розширює деякі інші параметри.

Aspose.Words 24.6 покращує параметри візуалізації, розширює функції пошуку та порівняння та розширює кілька інших функцій.

Aspose.Words 24.7 змінює спосіб роботи з ActiveX, розширює можливості відтворення, а також експорт у формати Markdown і XLSX.

Aspose.Words 24.8 покращує налаштування діаграм за допомогою точного контролю над мітками осей, розширює керування шрифтами, покращує обробку структури документів і додає нові можливості для експорту HTML/XAML, функціональності PDF, перетворення документів і цифрових підписів.

### Підтримувані формати

Починаючи з версії 24.7 підтримується експорт у PDF/UA-2 для забезпечення доступності для користувачів з обмеженими можливостями.

### Візуалізація та друк

#### Зміни в Charts, Shapes і DrawingML <sup>24.5</sup>

* Реалізовано ефекти DrawingML для графіки SVG, що розширює попередні функції, обмежені зображеннями.
* Підтримку створення комбінованих діаграм і налаштування таких властивостей, як ширина проміжків, перекриття та масштаб бульбашок у групах серій, було введено шляхом додавання [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) і [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) класів і [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/).
* Додано клас [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/) для керування ефектом SoftEdge форм.
* Можливість змінювати значення коригування фігур було реалізовано шляхом додавання **AdjustmentCollection** і **Adjustment** публічні класи та [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) власність.

#### Зміни в діаграмах, фігурах і малюнках <sup>24.6</sup>

* Розширено можливості створення діаграм. Тепер ви можете створювати більше різноманітних діаграм, зокрема *Деревоподібні карти*, *Сонячні промені*, *Гістограми*, *Діаграми Парето*, діаграми *Коробки та вуса*, *Водоспади* та *Воронки*. Це дозволяє візуалізувати ваші дані більш різноманітно та інформативно.
* Покращено керування кольором для форматування тіні. Ви можете отримати більш точний контроль над зовнішнім виглядом ваших документів, отримавши доступ до кольорів тіні.
* Підвищення продуктивності фонового рендерингу покращено. Ви можете значно пришвидшити рендеринг фону, що містить дрібні елементи, завдяки власній технології мозаїки.
* Додано реалістичні градієнти для фігур. Тепер ви можете створювати форми DML із нелінійними градієнтами, імітуючи візуальний стиль Microsoft Word для більш вишуканого вигляду.

#### Налаштування мітки даних діаграми <sup>24.7</sup>

Додано можливість налаштовувати позначки даних діаграми, такі як **Orientation** та **Rotation**.

#### Спеціальний стиль чисел для рівнів списку <sup>24.7</sup>

Додано засіб налаштування загальнодоступної властивості [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/). Тепер ви можете визначити власний стиль номерів для рівнів списку.

#### Зміни в роботі з ActiveX <sup>24.7</sup>

* Властивості об'єктів ActiveX тепер можна змінювати, що дає вам більше контролю над їх поведінкою.
* Додано можливість змінювати значення перемикача ActiveX, щоб увімкнути динамічну взаємодію.
* Додано можливість перемикати прапорець ActiveX на «позначений» або «не позначений».

#### Керування орієнтацією та обертанням міток позначок осі діаграми <sup>24.8</sup>

Для більш зручного налаштування діаграми додано точний контроль над орієнтацією та обертанням позначок позначок осі діаграми – клас [AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) розширено новими властивостями [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) і [rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Заміна зворотної скісної риски на знак ієни <sup>24.8</sup>

Покращено зворотний сумісний експорт HTML і XAML для заміни символу зворотної косої риски знаком ієни. Щоб досягти цього, властивість **replace_backslash_with_yen_sign** було додано до класів [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) і [XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/).

#### Використання тегів SDT як імен полів форми під час експорту в PDF <sup>24.8</sup>

Експорт у PDF із підтримкою використання тегів SDT як назв полів форми покращено шляхом додавання нової властивості [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) до класу [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/).

### Перетворення, завантаження та збереження документів

#### Експорт посилань у формат Markdown <sup>24.7</sup>

Можливість керувати експортом посилань у форматі Markdown додано через реалізацію властивості [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/).

#### LowCode <sup>24.8</sup>

Представлено новий клас [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/), призначений для надання набору методів для перетворення різних типів документів за допомогою одного рядка коду.

### Пошук і порівняння

#### Розширені параметри порівняння <sup>24.6</sup>
Додано можливість оптимізувати робочі процеси аналізу даних за допомогою покращеної функції порівняння. Це включає новий параметр [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) та оновлений інтерфейс для розширених порівнянь.

### Інший

* Функцію видалення порожніх сторінок із документа було реалізовано шляхом додавання методу [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/). <sup>24.5</sup>
* Додано властивість [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/) для перевірки наявності макросів VBA без завантаження документа. <sup>24.5</sup>
* Тепер підтримується збереження вихідної нумерації під час вставлення документа за допомогою механізму звітування LINQ. <sup>24.5</sup>
* Додано нову властивість [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) – вона надає точнішу позначку часу для коментарів, покращує організацію та відстежуваність. <sup>24.6</sup>
* Механізм звітування LINQ покращено. Зроблено вибіркове видалення порожніх абзаців і визначення користувацьких повідомлень для відсутніх членів об’єктів, що призвело до більш чітких і інформативних звітів. <sup>24.6</sup>
* Формат дати й часу тепер автоматично визначається для безперебійного експорту у формат XLSX. <sup>24.7</sup>
* Додано загальнодоступну властивість [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/), яка дозволяє перевірити, чи захищений проект VBA. <sup>24.7</sup>
* Інформацію про шрифт було розширено за допомогою властивості **embedding_licensing_rights**, доданої до класів [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) та [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Для більш точної роботи зі структурою документа додано спосіб ефективного очищення верхніх і нижніх колонтитулів із збереженням водяних знаків. Щоб очистити верхні та нижні колонтитули розділів, використовуйте новий публічний метод [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). <sup>24.8</sup>
* Увімкнено цифровий підпис XPS-документів за допомогою [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/) – для цього додано нову властивість [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/). <sup>24.8</sup>

{{% alert color="primary" %}}

Дізнатися більше [Aspose.Words для Python via .NET 24.5 Release Примітки](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 24.6 Release Примітки](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 24.7 Release Примітки](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 24.8 Release Примітки](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/)

{{% /alert %}}

## Aspose.Words для Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 покращує досвід управління кольорами інсульту, посилює об'єкти OLE, а також впроваджує новий `Bibliography Sources` громадськість APIй

Aspose.Words 24.2 розширені діаграми API та управління стилем. Дана версія Aspose.Words також запровадив можливість вказати SvgSaveOptions під час рендерингу, більш гнучке навантаження Markdown Файли та роботи з посиланням текстом для приміток та ендонот.

Aspose.Words 24.3 представила новий TIFF Reader/Writer і Емульація бінарних растрових операцій для метафілів WMF. Aspose.Words 24.3 продовжує розширювати діаграми APIй

Aspose.Words 24.4 посилює збереження форматів, деякі параметри рендерингу, а також покращує роботу з цифровими підписами.

### Підтримані формати <sup>24.4</sup>

Сучасний **WebP** Формат зображень тепер підтримується в Aspose.Words для .NET Framework 4.6.2 і вище. Тепер можна прочитати і вставити WebP зображення в документи, а також збереження зображень в WebP Формат.

Зверніть увагу, що WebP В даний час ми використовуємо тільки .NET Standard і .NET Framework v4.6.2 і вище.

### Рендеринг і друк

#### Stroke Колір контроль <sup>24.1</sup>

Про нас [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) Клас був розширений з набором нових публічних властивостей, пов'язаних з управлінням колірами інсульту: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) і [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) і [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/)й

#### МалюванняML діаграми API Продовжити <sup>24.2 / 24.3 / 24.4</sup>

Про нас **DrawingML Charts API** продовжує розширюватися.

#### Увімкніть шрифти, декларовані в @font-face <sup>24.4</sup>

Додано можливість складання шрифтів, заявлених у правилах шрифту @font-face у визначенні шрифту отриманого документа [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/) майно.

#### Робота з форматуванням Glow і відбиття <sup>24.4</sup>

Впроваджено можливість роботи з форматуванням свічок та відбиття для об’єкта малювання.

### Завантаження та збереження документів

#### Вказати SvgSaveOptions Під час Rendering <sup>24.2</sup>

Можливість вказати [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) при рендерингу додано за допомогою [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/)й[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) і [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/)й[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) методи.

#### Збереження Empty Lines при навантаженні Markdown Файли <sup>24.2</sup>

Можливість збереження порожніх ліній при завантаженні Markdown додано файли.

#### Новий TIFF Reader/Writer <sup>24.3</sup>

Новий TIFF зчитувач / автор для Aspose.Words Розроблено. Aspose.Words для .NET 24.3 додано підтримку для читання зображень TIFF з JPEG та Старими типами стиснення JPEG, а також значно покращило якість читання та запису операцій.

### Інше

* Ім'я * Можливість змінити текст тексту `TextBox` ОЛЕ-контроль був представлений шляхом додавання нового **Text** нерухомість в новий **TextBoxControl** клас. <sup>24.1</sup>
* Бібліографія Джерела API реалізовано через додавання нового простору імені [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) з новими класами і ентумераціями, і шляхом додавання нового [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) майно до [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) клас. <sup>24.1</sup>
* Нові публічні властивості [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/), і [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) для розширеного управління стилем додано [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) клас. <sup>24.2</sup>
* Ім'я * Функціональність для отримання фактичного текстового позначки для приміток та ендонот [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) майно та [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default) метод. <sup>24.2</sup>
* Реалізовано емульацію бінарних растрових операцій для метафілів WMF. <sup>24.3</sup>
* Ім'я * Можливість визначення варіантів підпису документів в межах **SaveOptions** Увімкнено додавання нового [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) клас з новими державними членами, а також додавання нових властивостей [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) і [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/) класи. <sup>24.4</sup>

{{% alert color="primary" %}}

Дізнатися більше [Aspose.Words для Python via .NET 24.1 Реліз Примітки](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 24.2 Реліз Примітки](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 24.3 Реліз Примітки](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 24.4 Release Примітки](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words для Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 розширює параметри рендерингу, емуляцію метафілу, і markdown Варіанти збереження.

Aspose.Words 23.10 покращує рендеринг, розширює параметри завантаження та збереження документів, а також дозволяє користувачам об’єднати документи новими способами.

Aspose.Words 23.11 посилює роботу з версіями, форматом XLSX і шрифтами на діаграмі легенди з додатковими варіантами.

Aspose.Words 23.12 впроваджує нові властивості та заохочення для роботи з документами PDF та OOXML, а також підтримки WebP зображення.

### Рендеринг і друк

#### Налаштування Axes Назва в DrawingML Графіки <sup>23.9</sup>

Можливість налаштування назв осі в діаграмах DrawingML було впроваджено шляхом реалізації нового публічного класу [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) і [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) майно.

####  Визначення вертикальної позиції шрифтів в рамках пункту <sup>23.9</sup>

Тепер можна визначити вертикальну позицію шрифтів у пункті за допомогою нової громадськості [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) нерухомість та нові [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) заохочення.

#### Foreground Колір Контроль <sup>23.10 р.</sup>

Додана можливість отримання фонового кольору без модифікаторів [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) і [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) класи через **BaseForeColor** майно.

#### Розширення функціональності діаграм <sup>23.10 р.</sup>

Функціональність функціоналу [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), і [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) класи розширилися з новими методами і властивостями.

#### Автоматично регулюйте і встановіть зображення в форму <sup>23.10 р.</sup>

Простий спосіб автоматично регулювати і підійти зображення в певній формі за допомогою нової [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) метод.

#### Форматування за замовчуванням для малювання МЛ Карта Легенда Вхід <sup>23.11 р.</sup>

Уміння вказати форматування шрифтів за типовими записами на діаграми DrawingML [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/) майно. Ця функція полегшує більш динамічний і послідовний зовнішній вигляд для елементів діаграми, покращуючи загальну естетику документа.

#### Вказати сторінку розміщення при відкритті PDF в Reader <sup>23.12 р.</sup>

Уміння вказати макет сторінки, який використовується при відкритті документа в PDF-чителю додано через введення нового [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) майно до [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) клас і впровадження нового [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) заохочення.

### Завантаження та збереження документів

#### Вкажіть ім'я папки для побудови зображень Markdown <sup>23.9</sup>

Про нас [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) Клас розширився в тому числі [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/) властивість, що дозволяє вказати назву папки, що використовується для побудови зображення URIs, записаного в Markdown документ.

#### Зменшення PDF Розмір виходу <sup>23.10 р.</sup>

Різні параметри рендерингу PDF для зменшення розміру виходу при використанні [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) Реалізовано налаштування.

#### Визначте гіперпосилання при завантаженні документів TXT <sup>23.10 р.</sup>

Можливість розпізнати гіперпосилання при завантаженні документів TXT реалізовано шляхом додавання нових [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) майно.

### Інше

- Реалізовано емуляцію метафілу для визначення розміру расстеризації, зокрема для ширини ручки WMF та EMF. Для досягнення цього, **ScaleWmfFontsToMetafileSize** майно було замінено на [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) майно та [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) додано майно. <sup>23.9</sup>
- Проведено спрощений метод введення одного документа в інший документ на позицію поточного курсора [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) метод. <sup>23.10 р.</sup>
- до Додана можливість доступу та модифікації властивостей стилю через введення нового [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) майно. <sup>23.10 р.</sup>
- Додано загальний параметр типу до методів [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) клас. <sup>23.10 р.</sup>
- до Уміння писати всі розділи документа на той самий робочий аркуш XLSX надається через новий [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) тип і новий [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) майно. <sup>23.11 р.</sup>
* Шляхом управління розширенням формату ZIP64 буде використовуватися для документів OOXML, які реалізовані через нове ім'я Zip64Mode `OoxmlSaveOptions` клас і нова конвертація Zip64Mode. <sup>23.12 р.</sup>
* Підтримка WebP Представлено зображення. Будь ласка, зауважте, що ця функція доступна тільки для .NetСтандарт і .NET6+ версій. <sup>23.12 р.</sup>

{{% alert color="primary" %}}

Дізнатися більше [Aspose.Words для Python via .NET 23.9 Реліз Примітки](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 23.10 Реліз Примітки](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 23.11 Реліз Примітки](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/)

Дізнатися більше [Aspose.Words для .NET 23.12 Реліз Примітки](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/)

{{% /alert %}}

## Aspose.Words для Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 посилює здатність працювати з даними діаграми та можливістю роботи з документами ODT, а також покращувати заголовки/ножиці та їх текстове обгортання.

Aspose.Words 23.6 розширює параметри рендерингу, додає новий формат експорту, покращує звітність LINQ та LowCode інструменти.

Aspose.Words 23.7 посилює можливості звітності, додає новий формат експорту, вводить зміни до роботи з таблицями та цифровими підписами.

Aspose.Words 23.8 розширює можливості різних форматів, покращує рендерінг і додає нові можливості для роботи з полями

### Підтримані формати

* Починаючи з версії 23.6, можна зберегти документ у форматі XLSX. Тепер ви можете конвертувати документи в формат Excel. <sup>23.6</sup>

* Починаючи з версії 23.7, можна зберегти сторінку документа або форму в форматі EPS. <sup>23.7</sup>

### Нові можливості формату

- Реалізовано функціонал для автоматичного створення таблиці змісту (TOC) для документів MOBI. <sup>23.8</sup>
- У [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) Конструктор розширився з [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions)й <sup>23.8</sup>
- Реалізовано формування вертикального тексту для метафілів EMF. <sup>23.8</sup>

### Рендеринг

#### Отримати і модифікувати Дані серії діаграм <sup>23.5</sup>

Для отримання та модифікації даних діаграми передбачено додаванням:

- нові класи: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- нові типи енму: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Підтримка розширеної типографії <sup>23.6</sup>

Додано підтримку розширеної типографії в WMF, EMF та EMF+.

#### Забарвлений вміст на сторінці <sup>23.6</sup>

Громадська нерухомість [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), вказуючи, чи додана сторінка кольорова або ні.

#### Форматування етикеток даних діаграм <sup>23.6</sup>

Впроваджено можливість налаштовувати, інсульти та форматування макетів даних.

### Mail Merge та звітність

#### Динамічне введення HTML для двигуна LINQ <sup>23.6</sup>

Додано новий спосіб динамічної вставки HTML для двигуна LINQ.

#### Mustache Підтримка <sup>23.7</sup>

Mustache теги тепер підтримуються в [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) і [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/) методи.

#### Вказати розмір Rendered Зображення <sup>23.8</sup>

Нове публічне майно [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) для визначення розміру наданих зображень в пікселях.

#### Збереження білих просторів для JSON String Values - LINQ <sup>23.8</sup>

Опція була додана до двигуна LINQ, щоб зберегти білі простори для значень рядків JSON.

### LowCode <sup>23.6</sup>

Нові LowCode Додано методи, призначені для об'єднання різних типів документів в один вихідний документ.

### Інше

- Реалізовано підтримку обгортання тексту в заголовках/футах. <sup>23.5</sup>
- до Додана можливість видалення цифрових підписів з документів ODT [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str) метод. <sup>23.5</sup>
- до Громадська нерухомість [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) для отримання бази та рубати тексту фонетичного керівництва [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) Додано. <sup>23.5</sup>
- до Уміння отримати цифрову вартість підпису з цифрово підписаного документа як байтовий масив додано шляхом введення нового [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) майно. <sup>23.7</sup>
- У [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) і [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) Завершилися заняття з новими членами [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/), і [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/)й <sup>23.7</sup>

{{% alert color="primary" %}}

Дізнатися більше [Aspose.Words для Python via .NET 23.5 Реліз Примітки](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 23.6 Release Примітки](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 23.7 Release Примітки](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 23.8 Release Примітки](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/)

{{% /alert %}}

## Aspose.Words для Python via .NET 23.1, 23.2, 23.3, 23.4

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

Про нас [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) Клас був розширений з набором нових публічних властивостей, пов'язаних з фоновими та передовими кольорами: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) і [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) і [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/)й

#### Радіальні градієнти з `SkiaSharp` Нативний шейдер <sup>23.3</sup>

Рендеринг радіальних градієнтів з `SkiaSharp` рідний шейдер для .NET Standard Реалізовано.

#### Відстань між таблицею та обурочним текстом <sup>23.4</sup>

Уміння встановити відстань між таблицю і навколишнім текстом додано шляхом введення нових властивостей [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) клас: [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/), і [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/)й

### Завантаження та збереження документів

#### Генерація `TOC` AZW3 Документи <sup>23.1</sup>

Можливість генерувати `TOC` (табл. змісту) для документів AZW3 додано за допомогою використання [epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/) майно.

#### Експортувати список товарів до Markdown <sup>23.1</sup>

Спосіб управління експортом товарів списку Markdown Формат було надано шляхом додавання [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) майно до [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) клас.

#### Повідомлення про збереження документів <sup>23.3</sup>

Реалізовано сповіщення про конфіденційність форматів МОБ та АЗВ3.

#### Налаштування та налаштування Word <sup>23.3</sup>

Уміння уточнити, чи автоматично корегувати вирок та розсипання слів при імпорті документів [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/) майно.

### Інше

- до Уміння уточнити налаштування корекції символів документа додано через [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) Реалізація майна <sup>23.2</sup>
- Шлях до інструкції Aspose.Words Чи можна включати текстові скриньки, примітки та кінцеві помилки у статистичній статистиці підрахунку слів, додавши додавання [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) Проживання <sup>23.2</sup>
- Новий варіант для стилю документа, який дозволяє вказати, чи автоматично перевизнається стиль на основі відповідного значення, представлений за допомогою відповідного значення. [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) Проживання <sup>23.2</sup>
- до Уміння визначити чи [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) є фонетичним гідом, який додано за допомогою [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) Проживання <sup>23.4</sup>
- Простий спосіб роботи з серією та осями комбінованих діаграм реалізовано шляхом введення [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) клас і додавання [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) Проживання <sup>23.4</sup>
- Додані нові публічні властивості, пов'язані з формою відносного позиціонування та зміщення [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) клас <sup>23.4</sup>
- Удосконалено точність та продуктивність розрахунку яскравості кольору для автоматичного визначення кольору тексту відповідно до останніх версій Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Дізнатися більше [Aspose.Words для Python via .NET 23.1 Release Примітки](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 23.2 Release Примітки](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 23.3 Release Примітки](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 23.4 Випускають Примітки](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/)

{{% /alert %}}

## Aspose.Words для Python via .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 розширює параметри завантаження та збереження документів та поліпшення взаємодії з деякими іншими опціями.

Aspose.Words 22.10 поліпшує пошук та заміну опцій, посилює об'єкти OLE та розширює функціонал списку.

Aspose.Words 22.11 розширює можливості з новими опціями для більш зручної роботи з уже знайомими предметами: OLE і структуровані теги документів.

Aspose.Words 22.12 посилює можливості та вводить параметри роботи з запасами при завантаженні/збереженні документа.

### Покращення продуктивності <sup>22.12 р.</sup>

Реалізовано оптимізацію, що значно знижує глибину графічного стану при рендерингу в PDF для підтримки відповідності специфікації.

### Рендеринг і друк

#### Нові прикордонні рендерингові властивості <sup>22.12 р.</sup>

Нові публічні властивості [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) і [tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/) були введені.

#### Лінійний Trendline Formula для DrawingML Rendering <sup>22.12 р.</sup>

Реалізовано лінійну модну формулу для діаграм DrawingML.

#### Настройки за замовчуванням Google Noto Кошик <sup>22.12 р.</sup>

Визначені параметри кешування шрифтів для Google Noto було оновлено шрифти.

### Завантаження та збереження документів

#### Шашлик Header або Footer для зменшення розміру PDF <sup>22.9</sup>

Уміння кеш-пам'яти форм для зменшення розміру вихідного PDF-файлу реалізовано шляхом додавання нового **CacheHeaderFooterShapes** майно.

#### Автоматичне видалення номера при завантаженні документів <sup>22.9</sup>

Уміння вказати можливість [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/) об'єкт на текстове завантаження реалізовано через розширене [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) клас.

#### Вимірювальні характеристики Тип маргіна <sup>22.12 р.</sup>

Уміння вказати конкретну **Margin** Реалізовано тип для даного розділу.

### Пошук та порівняння <sup>22.10 р.</sup>

Можливість ігнорувати [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) при пошуку та заміні опції реалізовано шляхом додавання нового [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/) майно до [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) клас.

### Інше

- Додано нову функцію для отримання FieldEQ як OfficeMath. <sup>22.9</sup>
- до Створення структурованих тегів документів Group допускається тип на рівні руп. <sup>22.9</sup>
- OLE об'єкти та елементи керування тепер обробляються як зображення метафайлу при перетворенні документа в HTML. <sup>22.10 р.</sup>
- Додана нова функція для перевірки певного списку з того ж шаблону, як список порівняння було додано шляхом введення нового **HasSameTemplate** метод в [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) клас. <sup>22.10 р.</sup>
- до Уміння створювати нові структуровані теги документів [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) додано тип. <sup>22.11 р.</sup>
- Новий **EmbedAttachments** Представлено майно, що дозволяє користувачам вставляти вкладення OLE з початкового документа у вихідний документ PDF. <sup>22.11 р.</sup>

{{% alert color="primary" %}}

Дізнатися більше [Aspose.Words для Python via .NET 22.9 Примітки](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 22.10 Реліз Примітки](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 22.11 Реліз Примітки](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/)

Дізнатися більше [Aspose.Words для Python via .NET 22.12 Реліз Примітки](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/)

{{% /alert %}}

## Дивитися ще

{{% alert color="primary" %}}

Ця сторінка містить останні новини релізу за останні 2 роки. Для деталей на попередніх релізах див. [Видаляє Примітки Р](/words/python-net/release-notes/) сторінки в відповідних розділах.

{{% /alert %}}