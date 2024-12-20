---
title: Какво ново?
second_title: Aspose.Words вместо Java
articleTitle: Какво ново в Aspose.Words вместо Java
linktitle: Какво ново в Aspose.Words вместо Java
type: docs
description: "Aspose.Words вместо Java се разширява и подобрява ежедневно. На тази страница можете да научите за огромните и интересни характеристики на продукта."
weight: 2
url: /bg/java/what-s-new-in-aspose-words-for-java/
timestamp: 2024-10-14-12-53-06
---

Тази страница описва най-интересното ново Aspose.Words функции, въведени в последните издания.

## Aspose.Words за Java 24.9, 24.10

Aspose.Words 24.9 въвежда вмъкване на групова форма и вмъкване на StructuredDocumentTag чрез DocumentBuilder, подобрява изобразяването на радиална диаграма с градуировки, подобрява цифровите подписи с поддръжка на XAdES-EPES, добавя разпознаване на подчертаване на Markdown и осигурява достъп до разделители за бележки под линия/бележки в края.

Aspose.Words 24.10 въвежда подобрена поддръжка на ActiveX контрол със създаване на CommandButton, нов контрол на видимостта на фигурите, възможност за групиране на фигури, подобрено експортиране на Markdown за таблици, форматиране на диаграми за кръгови и поничкови диаграми, по-добро управление на кодирането на Big5 и поддръжка за остарели тайвански шрифтове.

### Изобразяване и печат

#### Градуации на радиални диаграми <sup>24.9</sup>

Изпълнено е изобразяване на градуировки върху радиални диаграми.
#### CommandButton ActiveX контроли <sup>24.10</sup>

Възможността за създаване на ActiveX контроли CommandButton е въведена чрез добавяне на нов публичен метод [InsertForms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertForms2OleControl-com.aspose.words.Forms2OleControl) и нов публичен клас [Forms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/forms2olecontrol/).

#### Контролна видимост на формата <sup>24.10</sup>

Добавено е ново публично свойство [Hidden](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getHidden) за контрол на видимостта на формите.

#### Промени в пайови и кръгови диаграми <sup>24.10</sup>

Няколко нови публични свойства са добавени за форматиране на кръгови и кръгови диаграми.

### Конвертиране, зареждане и запазване на документи

#### Подчертайте форматирането при зареждане на файлове с маркиране <sup>24.9</sup>

Опцията за разпознаване на подчертано форматиране при зареждане на документи на Markdown е включена чрез добавяне на ново публично свойство [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting).

#### Експортиране на таблици като HTML при запис в Markdown <sup>24.10</sup>

Въведена е опция за експортиране на таблици като HTML при записване на документи във формат Markdown чрез добавяне на ново публично свойство [ExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportAsHtml) и изброяване [MarkdownExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownexportashtml/).

### Цифрови подписи

#### Подписвайте документи с XAdES-EPES <sup>24.9</sup>

Възможността за подписване на документи с XML-DSig подписи на ниво XAdES-EPES беше въведена чрез добавяне на ново публично свойство [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) и ново публично изброяване [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)

### Друго

* Нов публичен метод [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...) е добавен към формите на групата. <sup>24.9</sup>
* Добавен е нов публичен метод [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int) за вмъкване на **StructuredDocumentTags** в документ. <sup>24.9</sup>
* Осигурен е публичен достъп до разделителите за бележки под линия/бележки в края чрез добавяне на няколко публични класа и свойства. <sup>24.9</sup>
* Възможността за групиране на отделни фигури, групиране на форми заедно и директно групиране както на форми, така и на групови форми е въведена чрез добавяне на метода [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-double-double-double-double-com.aspose.words.ShapeBase...). <sup>24.10</sup>
* Обработката на Big5 кодиране за TrueType cmap таблици е подобрена. <sup>24.10</sup>
* Поддръжката за остарели тайвански шрифтове е подобрена. <sup>24.10</sup>

{{% alert color="primary" %}}

Научете повече за [Бележки по изданието на Aspose.Words за Java 24.9](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

Научете повече за [Бележки по изданието на Aspose.Words за Java 24.10](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words за Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 разширява опциите за сглобки, подобрява възможностите за изобразяване и разширява някои други опции.

Aspose.Words 24.6 подобрява опциите за изобразяване, подобрява функционалността за търсене и сравняване и разширява няколко други функции.

Aspose.Words 24.7 променя начина, по който работите с ActiveX, разширява възможностите за изобразяване, както и експортиране във формати Markdown и XLSX.

Aspose.Words 24.8 подобрява персонализирането на диаграмата с прецизен контрол върху етикетите на осите, разширява управлението на шрифтове, подобрява обработката на структурата на документа и добавя нови възможности за HTML/XAML експорт, PDF функционалност, конвертиране на документи и цифрови подписи.

### Поддържани формати

Започвайки от версия 24.7, експортирането в PDF/UA-2 се поддържа, за да се осигури достъпност за потребители с увреждания.

### Изобразяване и печат

#### Промени в Charts, Shapes и DrawingML <sup>24.5</sup>

- Рендиране на DrawingML ефекти за SVG графики, разширяване на предишната функционалност, ограничена до изображения, е внедрено.
– Въведена е поддръжка за създаване на комбинирани диаграми и коригиране на свойства като ширина на празнина, припокриване и мащаб на балончета в рамките на групи серии чрез добавяне на [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) и [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) класове и [SeriesGroups](https://reference.aspose.com/ words/java/com.aspose.words/chart/#getSeriesGroups) свойство.
- Функционалността за манипулиране на ефекта SoftEdge на фигурите е внедрена чрез добавяне на клас [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- Възможността за промяна на коригиращите стойности на фигурите е реализирана чрез добавяне на [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) и [Adjustment](https:/ /reference.aspose.com/words/java/com.aspose.words/adjustment/) публични класове и [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/# getAdjustments) свойство.

#### Промени в диаграми, форми и чертежи <sup>24.6</sup>

* Възможностите за диаграми са подобрени. Вече можете да създавате по-голямо разнообразие от диаграми, включително *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* диаграми, *Box & Whisker* диаграми, *Waterfalls* и *Funnels*. Това ви позволява да визуализирате вашите данни по по-разнообразен и информативен начин.
* Контролът на цветовете за форматиране на сянка е подобрен. Можете да получите по-прецизен контрол върху външния вид на вашите документи чрез достъп до цветовете на сенките.
* Увеличаването на производителността за фоново изобразяване е подобрено. Можете значително да ускорите изобразяването на фонове, съдържащи малки елементи, благодарение на собствената технология за подреждане.
* Добавени са реалистични градиенти за форми. Вече можете да създавате DML форми с нелинейни градиенти, имитиращи визуалния стил на Microsoft Word за по-изчистен вид.

#### Персонализиране на етикета с данни на диаграма <sup>24.7</sup>

Добавена е възможност за персонализиране на етикети с данни на диаграма, като **Ориентация** и **Въртене**.

#### Персонализиран стил на номера за нива на списък <sup>24.7</sup>

Добавен е сетер за публичното свойство [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat). Вече можете да дефинирате персонализиран стил на номера за нивата на списъка.

#### Промени в работата с ActiveX <sup>24.7</sup>

* Свойствата на ActiveX обектите вече могат да се променят, което ви дава повече контрол върху тяхното поведение.
* Добавена е възможност за промяна на стойността на ActiveX контролата за радио бутон, за да се активира динамично взаимодействие.
* Добавена е възможността за превключване на квадратчето за отметка на ActiveX на „отметнато“ или „неотметнато“.

#### Контрол върху ориентацията и завъртането на отметките на оста на диаграмата <sup>24.8</sup>

Добавен е прецизен контрол върху ориентацията и въртенето на етикетите за отметки на оста на диаграмата за по-удобно персонализиране на диаграмата – класът [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) е разширен с нови свойства за **Orientation** и **Rotation**.

#### Замяна на обратната наклонена черта със знака йена <sup>24.8</sup>

Обратно съвместимият HTML и XAML експорт за замяна на обратната наклонена черта със знака йена е подобрен. За да се постигне това, свойството **ReplaceBackslashWithYenSign** е добавено към класовете [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) и [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### Използване на SDT етикети като имена на полета на формуляр при експортиране в PDF <sup>24.8</sup>

Експортирането на PDF с поддръжка за използване на SDT тагове като имена на полета на формуляр е подобрено чрез добавяне на ново свойство **UseSdtTagAsFormFieldName** към класа [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Конвертиране, зареждане и запазване на документи

#### Експортиране на връзки във формат Markdown <sup>24.7</sup>

Възможността за контролиране на експортирането на връзки във формат Markdown е добавена чрез внедряването на свойството [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### Нисък код <sup>24.8</sup>

Въведен е нов клас **LowCode.Converter**, предназначен да предостави набор от методи за конвертиране на различни типове документи с един ред код.

### Търсете и сравнявайте

#### Разширени опции за сравнение <sup>24.6</sup>
Добавена е възможност за рационализиране на работните процеси за анализ на данни с подобрена функционалност за сравнение. Това включва нова опция [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) и преработен интерфейс за разширени сравнения.

### Друго

* Функцията за премахване на празни страници от документ е внедрена чрез добавяне на метода [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* Възможността за проверка за наличие на макроси на VBA без зареждане на документ е предоставена чрез добавяне на [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) Имот. <sup>24.5</sup>
* Вече се поддържа запазване на номерирането на източника при вмъкване на документ с помощта на LINQ Reporting Engine. <sup>24.5</sup>
* Добавено е ново свойство [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) – това предоставя по-прецизно времево клеймо за коментари, подобрявайки организацията и проследимостта. <sup>24.6</sup>
* LINQ Reporting Engine е подобрен. Направено е селективно премахване на празни абзаци и дефиниране на персонализирани съобщения за липсващи членове на обекти, което води до по-чисти и по-информативни отчети. <sup>24.6</sup>
* Форматът за дата и час вече се разпознава автоматично за безпроблемно експортиране във формат XLSX. <sup>24.7</sup>
* Добавено е публичното свойство [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), което ви позволява да проверите дали VBA проект е защитен. <sup>24.7</sup>
* Информацията за шрифта е разширена със свойството **EmbeddingLicensingRights**, добавено към класовете [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) и [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* Добавен е начин за ефективно изчистване на горни и долни колонтитули на секции, като същевременно се запазват водни знаци, за по-прецизна работа със структурата на документа. За да изчистите горните и долните колонтитули на секции, използвайте новия публичен метод **ClearHeadersFooters**. <sup>24.8</sup>
* Цифровото подписване на XPS документи с помощта на [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) е активирано – за тази цел е добавено ново свойство **DigitalSignatureDetails**. <sup>24.8</sup>

{{% alert color="primary" %}}

Научете повече за [Бележки по изданието на Aspose.Words за Java 24.5](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Научете повече за [Бележки по изданието на Aspose.Words за Java 24.6](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Научете повече за [Бележки по изданието на Aspose.Words за Java 24.7](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Научете повече за [Бележки по изданието на Aspose.Words за Java 24.8](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words вместо Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 подобрява опита около управлението на цветовете на инсулта, подобрява обектите на OLE и LINQ репортажа, както и въвежда нова библиография Източници обществеността API.

Aspose.Words 24.2 разширени карти API, стил мениджмънт, и LINQ опции. Тази версия Aspose.Words също така въведе възможност за определяне на SvgSaveOptions по време на рендиране, по-гъвкаво натоварване контрол Markdown файлове и работа с референтен текст за бележки под линия и крайни бележки.

Aspose.Words 24.3 въвежда нов TIFF Reader/Писач и Емулация на двоични операции на Raster за WMF metafiles. Aspose.Words 24.3 също продължава да разширява картите API.

Aspose.Words 24.4 подобрява форматите за спестяване, някои опции за предаване, както и подобрява работата с цифрови подписи.

### Поддържани формати <sup>24.4</sup>

Модерният **WebP** форматът на изображението сега се поддържа в Aspose.Words. Вече можете да четете и вмъквате WebP изображения в документи, както и запис на изображения в WebP формат.

### Пренос и печат

#### Контрол на цветовете <sup>24.1</sup>

На [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) класът е удължен с набор от нови обществени свойства, свързани с управлението на цветовете на инсулт: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) както и [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) както и [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### Чертежи на ML API Разширение <sup>24.2 / 24.3 / 24.4</sup>

На **DrawingML Charts API** продължава да се разширява.

#### Вграждане на шрифтове в @font-face Правила <sup>24.4</sup>

Добавена е възможност за вграждане на шрифтове, декларирани в @font-face правила в получения документ. [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules) собственост.

#### Работа с форматиране на блясъка и отражението <sup>24.4</sup>

Възможността да се работи със светещ и отразяващ формат за рисуващ обект е изпълнена.

### Зареждане и съхраняване на документи

#### Посочете SvgSave Oppositions по време на предаването <sup>24.2</sup>

Възможност за уточняване [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) по време на рендиране е добавен с помощта на [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) както и [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) методи.

#### Запазване на празните линии при зареждане Markdown файлове <sup>24.2</sup>

Възможност за запазване на празните линии при зареждане Markdown Добавени са файлове.

#### Нов TIFF Reader/Writer <sup>24.3</sup>

Нов TIFF четец / писател за Aspose.Words вместо .NET Standard, .NET 6 и по-късно е разработена. Aspose.Words вместо .NET 24.3 добавя подкрепа за четене на TIFF изображения с JPEG и стария JPEG компресиране видове, и също значително подобряване на качеството на четене и писане операции.

### Други

* Възможност за промяна на текста на `TextBox` OLE контрол е въведен чрез добавяне на нов [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) собственост на новото [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) Клас. <sup>24.1</sup>
* The Bibliography Sources public API е изпълнен чрез добавяне на няколко нови [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) както и [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) класове и [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) изброяване, както и чрез добавяне на нов [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) собственост на [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Клас. <sup>24.1</sup>
* An API да се ограничи достъпът до членове на типа, като се използва шаблонен синтаксис за двигателя за докладване на LINQ. <sup>24.1</sup>
* Нови обществени имоти [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), както и [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) за засилено управление на стила са добавени към [Style](https://reference.aspose.com/words/net/aspose.words/style/) Клас. <sup>24.2</sup>
* Функционалността за извличане на текста на действителната референтна марка за бележките под линия и крайните бележки е подобрена с [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) собственост и [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) метод. <sup>24.2</sup>
* Съвместимост с `Word 2016` графики за `LINQ Reporting Engine` е включен. <sup>24.2</sup>
* Емулацията на двоични растерни операции за WMF metafiles е въведена. <sup>24.3</sup>
* Възможност за определяне на опциите за подписване на документи в рамките на **SaveOptions** е активиран чрез добавяне на нов [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) клас с нови членове на обществото, както и добавяне на нови имоти към [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) както и [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) Класове. <sup>24.4</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words вместо Java 24.1 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Научете повече за [Aspose.Words вместо Java 24.2 Бележки за освобождаване.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

Научете повече за [Aspose.Words вместо Java 24.3 Бележки за освобождаване.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

Научете повече за [Aspose.Words вместо Java 24.4 Бележки за освобождаване.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words вместо Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 разширява предоставянето на опции, метафилметапредаване емулация, и markdown Запис на опции.

Aspose.Words 23.10 подобрява представянето, разширява възможностите за зареждане и съхраняване на документи и позволява на потребителите да сливат документи по нови начини.

Aspose.Words 23.11 подобрява работата с ревизии, XLSX формат и шрифтове на графика легенда с допълнителни опции.

Aspose.Words 23.12 въвежда нови свойства и изброявания за работа с PDF документи, поддръжка за WebP изображения, и актуализира библиотеката Buncy Castle.

### Пренос и печат

#### Персонализиране на заглавията на брадва в DrawML Графики <sup>23.9</sup>

Способността за персонализиране на заглавията на осите в диаграмите на DrawML беше въведена чрез въвеждането на нов публичен клас [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) както и [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) собственост.

#### Определяне на вертикалната позиция на шрифтовете в рамките на параграф <sup>23.9</sup>

Сега е възможно да се определи вертикалната позиция на шрифтовете в рамките на параграф, като се използва новата общественост [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) собственост и новото [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) Изброяване.

#### Контрол на цветовете <sup>23.10</sup>

Способността за извличане на цвета на преден план без модификатори е добавена към [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) както и [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) класове през **BaseForeColor** собственост.

#### Разширяване на функционалността на графиките <sup>23.10</sup>

Функционалност на [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), както и [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) Класовете са разширени с нови методи и свойства.

#### Автоматично регулиране и поставяне на изображение в форма <sup>23.10</sup>

Лесен начин за автоматично регулиране и монтиране на изображение в определена форма е предоставена чрез новата [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) метод.

#### Форматиране на шрифта по подразбиране за чертеж ML Графика Legend Записи <sup>23.11</sup>

Възможността за определяне на форматирането на шрифта по подразбиране за легенди записи на карти DrawML е добавен чрез **Font** собственост. Тази функция улеснява по-рационализиран и последователен външен вид за картографски елементи, подобряване на цялостната документна естетика.

#### Посочете подредбата на страницата при отваряне на PDF в Reader <sup>23.12</sup>

Възможността за определяне на оформлението на страницата, която да се използва при отваряне на документ в PDF четец, беше добавена чрез въвеждането на нов [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) собственост на [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) клас и въвеждане на нов [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) Изброяване.

### Зареждане и съхраняване на документи

#### Посочване на име на папка за създаване на изображения в Markdown <sup>23.9</sup>

На [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) Класът е разширен чрез включване на [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) имот, който позволява да се посочи името на папката, използвана за изграждане на изображение URIs, написано в Markdown документ.

#### Намаляване на PDF Размер на изхода <sup>23.10</sup>

Различни PDF компилации за намаляване размера на изхода при използване [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) настройките са изпълнени.

#### Разпознаване на хипервръзки при зареждане на TXT документи <sup>23.10</sup>

Функцията за разпознаване на хипервръзки при зареждането на TXT документи е въведена чрез добавяне на нов [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) собственост.

### Други

- Metafile емулация за определяне размера на растеризацията е въведена, специално за WMF ширината на писалката и EMF ширината на козметичната писалка. За да се постигне това, **ScaleWmfFontsToMetafileSize** имотът е заменен с [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) собственост и [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) е добавен имот. <sup>23.9</sup>
- Въведен е опростен метод за въвеждане на един документ в друг документ в текущата позиция на курсора [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) метод. <sup>23.10</sup>
- Възможността за достъп и промяна на стила е добавена чрез въвеждането на новата [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) собственост. <sup>23.10</sup>
- Към методите на [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) Клас. <sup>23.10</sup>
- Начин за контрол, когато определена ревизия трябва да бъде приета/отказана или не е приложена чрез [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) както и [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) методи. Това подобрение дава на потребителите по-фин контрол върху процеса на преразглеждане. <sup>23.11</sup>
- Възможността да се запишат всички части на документ на същия XLSX работен лист е предоставена чрез новия [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) вид изброяване и новото [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) собственост. <sup>23.11</sup>
- Подкрепа за WebP Снимката е въведена. Моля, имайте предвид, че тази функция е достъпна само за .NetСтандарт и .NET6+ версии. <sup>23.12</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words вместо Java 23.9 Бележки за освобождаване](/words/java/aspose-words-for-java-23-9-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.10 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.11 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.12 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words вместо Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 подобрява способността за работа с данните от серията карти и способността за работа с документи от ОДТ, както и подобрява заглавните части/краки и текстовата опаковка.

Aspose.Words 23.6 разширява предоставянето на опции, добавя нов формат за износ, подобрява отчитането на LINQ и LowCode инструменти.

Aspose.Words 23.7 подобрява капацитета за докладване, добавя нов формат за износ и въвежда промени в работата с таблици и цифрови подписи.

Aspose.Words 23.8 разширява възможностите на различните формати, подобрява представянето и добавя нови възможности за работа с полета

### Поддържани формати

* Започвайки с версия 23.6, е възможно да се запази документ във формат XLSX. Сега можете да конвертирате вашите документи в Excel формат. <sup>23.6</sup>

* Започвайки с версия 23.7, е възможно да се запази страница документ или форма в EPS формат. <sup>23.7</sup>

* ## Нови функции за форматиране

  - Въведена е функционалността за автоматично генериране на Съдържание (TOC) за документи на MOBI. <sup>23.8</sup>
  - На [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) Конструкторът е разширен с [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - Оформянето на вертикалния текст за EMF метафайлове е изпълнено. <sup>23.8</sup>

### Нанасяне

#### Получаване и промяна Данни от серията Chart <sup>23.5</sup>

Функцията за получаване и промяна на данните от серията карти беше предоставена чрез добавяне на:

- нови класове: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- нови типове енум: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Подкрепа за напреднала типография <sup>23.6</sup>

Добавена е и подкрепа за усъвършенствана типография в WMF, EMF и EMF+.

#### Цветно съдържание на страницата <sup>23.6</sup>

Обществена собственост [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), показва дали страницата е оцветена или не, е добавена.

#### Форматиране на етикетите за данни на диаграмата <sup>23.6</sup>

Възможността да се зададе попълване, инсулт, и callout форматиране за карти данни етикети е въведена.

### Mail Merge и докладване

#### Dynamic HTML вмъкване за LINQ отчитащ двигател <sup>23.6</sup>

Добавен е нов начин за динамично въвеждане на HTML за LINQ Reporting Engine.

#### Mustache Поддръжка на тагове <sup>23.7</sup>

Mustache тагове сега се поддържат в [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) както и [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) методи.

#### Синтактични актуализации на шаблона за докладване на LINQ <sup>23.7</sup>

Образецът на LINQ за докладване на двигателя сега поддържа `ElementAt` и методи за разширение на ElementAtOrDefault.

#### Посочване размера на получени изображения <sup>23.8</sup>

Нова обществена собственост **ImageSize** за определяне размера на топираните изображения в пиксел е въведена.

#### Запазване на Whitespaces за JSON Струнни стойности по LINQ <sup>23.8</sup>

Към LINQ Reporting Engine е добавен вариант за запазване на бели пространства за JSON низови стойности.

### LowCode <sup>23.6</sup>

Нов LowCode са добавени методи, предназначени за сливане на различни видове документи в един изходен документ.

### Други

- Подкрепа за текстова опаковка в заглавни/краки е въведена. <sup>23.5</sup>
- Възможността за премахване на цифровите подписи от ОДТ документи е добавена през [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) метод. <sup>23.5</sup>
- Обществена собственост [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) за получаване на основата и рубинен текст на фонетичното ръководство [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) е добавен. <sup>23.5</sup>
- Възможността за извличане на стойност на цифров подпис от цифров подписан документ като байт масив е добавена чрез въвеждане на нов [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) собственост. <sup>23.7</sup>
- На [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) както и [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Класовете са разширени с нови членове на обществото го [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), както и [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- Добавена е подкрепа за CITATION и BIBLIOGRAPHY полета. <sup>23.8</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words вместо Java 23.5 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.6 Бележки за освобождаване](/words/java/aspose-words-for-java-23-6-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.7 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.8 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words вместо Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 подобрява ефективността на емулацията на растерните операции, както и подобрява качеството на износа и представянето на документите.

Aspose.Words 23.2 въвежда спестяване на документи във формат MOBI, подобрява картографирането и прави забележими промени в детайлите за външния вид на документа.

Aspose.Words 23.3 подобрява вноса и спестяването на документи с нови свойства, а също така подобрява качеството на работа с фонов и преден цвят и радиален градиент.

Aspose.Words 23.4 подобрява изчисляването на някои параметри и позиционирането на таблицата и околния текст.

### Подобрения на ефективността

#### Емулация на операциите на пистата <sup>23.1</sup>

Изпълнението и качеството на емулацията на операциите с метафилми са значително подобрени.

### Поддържани формати

#### Експортиране в MOBI <sup>23.2</sup>

Започвайки с версия 23.2, е възможно да се запази документ във формат MOBI (наричан още КНР, AZW год. Amazon Формат за електронна книга на Kindle). Сега можете не само да заредите документи на MOBI, но и да експортирате файловете си във формат MOBI.

### Нанасяне

#### Работа с Shading тема цветове <sup>23.1</sup>

Възможността да се работи със сенчести цветове на темата е изпълнена.

#### Подкрепа на коефициента R-квадрат в DML карти <sup>23.1</sup>

Подкрепа на коефициента R-квадрат в DML графика трендлайн етикети, когато е добавен превод.

#### Подобрения при прехвърляне на карти <sup>23.2</sup>

От 23.2 г. насам картографирането е значително подобрено.

#### Контрол на цветовете и фона <sup>23.3</sup>

На [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) класът е удължен с набор от нови обществени свойства, свързани с фон и преден план цветове: **ForeThemeColor** както и **BackThemeColor**, **ForeTintAndShade** както и **BackTintAndShade**.

#### Радиални Градиенти с `SkiaSharp` Native Shader <sup>23.3</sup>

Пренасяне на радиални наклони с `SkiaSharp` роден нюансер за .NET Standard е изпълнен.

#### Разстояние между масата и заобикалящия текст <sup>23.4</sup>

Способността да се определи разстоянието между таблицата и околния текст е добавена чрез въвеждане на нови свойства към [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) клас: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), както и [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Зареждане и съхраняване на документи

#### Генериране `TOC` за документи AZW3 <sup>23.1</sup>

Способността за генериране `TOC` (таблица със съдържание) за AZW3 документите са добавени чрез използването на [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) собственост.

#### Експортиране в списъка Markdown <sup>23.1</sup>

Начин за контрол на износа на елементи от списъка Markdown форматът е предоставен чрез добавяне на [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) собственост на [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) Клас.

#### Документ за запазване на уведомленията за напредъка <sup>23.3</sup>

Записът на уведомленията за напредъка за MOBI и AZW3 формати е приложен.

#### Присъда и поправка на думи <sup>23.3</sup>

Възможността да се уточни дали автоматично да се коригира изречението и думата разстояние при внос на документи е добавена чрез въвеждане на **AdjustSentenceAndWordSpacing** собственост.

### Други

- Възможността за определяне на корекция на разстоянието между символите на даден документ е добавена чрез [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) изпълнение на собствеността <sup>23.2</sup>
- Начина да инструктираш Aspose.Words дали да се включат текстови кутии, бележки под линия и крайни бележки в статистиката за преброяването на думи е предоставена чрез добавяне на [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) собственост <sup>23.2</sup>
- Въведена е нова опция за стил на документ, която позволява да се уточни дали стилът автоматично се променя въз основа на съответната стойност, [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) собственост <sup>23.2</sup>
- Способността да се определи дали [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) е фонетичен пътеводител е добавен с помощта на **IsPhoneticGuide** собственост <sup>23.4</sup>
- Лесен начин за работа със серии и брадви от комбинирани диаграми се осъществява чрез въвеждане на **ChartAxisCollection** клас и добавяне на **Chart.Axes** собственост <sup>23.4</sup>
- Нови обществени свойства, свързани с формата относително позициониране и оразмеряване са добавени към [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) клас <sup>23.4</sup>
- Точността и ефективността на изчисляването на яркостта на цветовете за автоматична резолюция текст цвят е подобрена в съответствие с последните версии на Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words вместо Java 23.1 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.2 Бележки за освобождаване](/words/java/aspose-words-for-java-23-2-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.3 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.4 Бележки за освобождаване](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Вижте също

{{% alert color="primary" %}}

Тази страница съдържа последните новини за последните 2 години. За подробности относно по- ранните издания вижте [Бележки за освобождаване '](/words/java/release-notes/) страници в съответните раздели.

{{% /alert %}}
