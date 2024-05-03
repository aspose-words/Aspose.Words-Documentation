---
title: Какво ново?
second_title: Aspose.Words вместо Java
articleTitle: Какво ново в Aspose.Words вместо Java
linktitle: Какво ново в Aspose.Words вместо Java
type: docs
description: "Aspose.Words вместо Java се разширява и подобрява ежедневно. На тази страница можете да научите за огромните и интересни характеристики на продукта."
weight: 2
url: /bg/java/what-s-new-in-aspose-words-for-java/
---

Тази страница описва най-интересното ново Aspose.Words функции, въведени в последните издания.

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

Научете повече за [Aspose.Words вместо Java 23.5 Бележки за освобождаване](/words/java/aspose-words-for-java-23-5-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.6 Бележки за освобождаване](/words/java/aspose-words-for-java-23-6-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.7 Бележки за освобождаване](/words/java/aspose-words-for-java-23-7-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.8 Бележки за освобождаване](/words/java/aspose-words-for-java-23-8-release-notes/).

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

Научете повече за [Aspose.Words вместо Java 23.1 Бележки за освобождаване](/words/java/aspose-words-for-java-23-1-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.2 Бележки за освобождаване](/words/java/aspose-words-for-java-23-2-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.3 Бележки за освобождаване](/words/java/aspose-words-for-java-23-3-release-notes/).

Научете повече за [Aspose.Words вместо Java 23.4 Бележки за освобождаване](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words вместо Java 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 разширява възможностите за зареждане и спасяване на документи и подобрява взаимодействието с някои други опции.

Aspose.Words 22.10 подобрява намирането и замяната на опции, подобрява обектите на OLE и разширява функционалността на списъка.

Aspose.Words 22.11 разширява функционалността си с нови опции за по-удобна работа с вече познати обекти: полета, печат, OLE и структурирани документи.

Aspose.Words 22.12 подобрява възможностите за предаване и въвежда възможности за работа с маржове при зареждане/спестяване на документ.

### Подобрения на ефективността <sup>22.12</sup>

Въведена е оптимизация, която значително намалява дълбочината на гнезденето на графиката, когато се предава на PDF, за да се поддържа съответствие със спецификацията.

### Пренос и печат

#### Печат без цвят Страници на цветов принтер <sup>22.11</sup>

Режимът на печат с цвят/грайскейл е приложен чрез добавяне на нов **GrayscaleAuto** стойност за [ColorPrintMode](https://reference.aspose.com/words/java/com.aspose.words/colorprintmode/) Изброяване.

Ново свойство за печат позволява на потребителите да контролират как се печатат нецветни страници, ако устройството поддържа цветен печат. Тази функция може да бъде полезна, ако потребителите искат автоматично да печатат нецветни страници само чрез сив режим на печат.

#### Свойства за ново подаване на границата <sup>22.12</sup>

Нови публични имоти [ThemeColor](https://reference.aspose.com/words/java/com.aspose.words/border/#getThemeColor) както и [TintAndShade](https://reference.aspose.com/words/java/com.aspose.words/border/#getTintAndShade) бяха представени.

#### Linear Trendline Formula for DrawML Rendering <sup>22.12</sup>

Линейна трендлайн формула, която прави за DrawML диаграми е била въведена.

#### Настройки за връщане на шрифта Google Noto Шрифтове <sup>22.12</sup>

Предварителните настройки на шрифта Google Noto шрифтовете са актуализирани.

### Зареждане и съхраняване на документи

#### Chaper или Footer форма за намаляване на размера на PDF <sup>22.9</sup>

Възможността за кеширане на заглавни/краки форми за намаляване на размера на изходния PDF файл е въведена чрез добавяне на нов [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) собственост.

#### Автоматично откриване на номера при зареждане на документ <sup>22.9</sup>

Способността за определяне на [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) Имуществото при зареждане на текст се осъществява чрез разширяване на обхвата на [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) Клас.

#### Посочване на конкретен Вид марж <sup>22.12</sup>

Способността да се определи конкретен [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) типът за съответния раздел е изпълнен.

### Търсене и сравняване <sup>22.10</sup>

Способността да се игнорира [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) След намиране и замяна опциите са били изпълнени чрез добавяне на нов [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) собственост на [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) Клас.

### Други

- Добавена е нова функция за FieldEQ като OfficeMath. <sup>22.9</sup>
- Създаване на структурирани документи на Group е бил разрешен тип на ниво Ред. <sup>22.9</sup>
- OLE обекти и контроли сега се третират като метафилни изображения при конвертиране на документ в HTML. <sup>22.0</sup>
- Нова функция за проверка, че даден списък е създаден от същия шаблон като списъка в сравнение е добавен чрез въвеждане на нов [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) метод в [List](https://reference.aspose.com/words/java/com.aspose.words/list/) Клас. <sup>22.10</sup>
- Възможността за създаване на нови структурирани тагове на документа [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) типът е добавен. <sup>22.11</sup>
- Осигурява се възможност за проследяване на напредъка в актуализирането на полето. <sup>22.11</sup>
- Нов. **EmbedAttachments** Въведен е имот, който позволява на потребителите да вграждат прикачени файлове OLE от изходния документ в изходния PDF документ. <sup>22.11</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words вместо Java 22.9 Бележки за освобождаване](/words/java/aspose-words-for-java-22-9-release-notes/).

Научете повече за [Aspose.Words вместо Java 22.10 Бележки за освобождаване](/words/java/aspose-words-for-java-22-10-release-notes/).

Научете повече за [Aspose.Words вместо Java 22.11 Бележки за освобождаване](/words/java/aspose-words-for-java-22-11-release-notes/).

Научете повече за [Aspose.Words вместо Java 22.12 Бележки за освобождаване](/words/java/aspose-words-for-java-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words вместо Java 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 въвежда поддръжка за нови формати за зареждане и нов размер на печатната страница, както и подобрява някои опции за рязане.

Aspose.Words 22.6 разширява възможностите за преобразуване на PDF в други формати, както и подобрява работата с DrawML и ефекта на попълване на твърдия текст.

Aspose.Words 22.7 подобрява възможностите за работа с рендиращи функции и добавя нови функции за работа с HTML внос и износ в PDF.

Aspose.Words 22.8 въвежда нов формат за износ и подобрява различни алгоритми за превод.

На API е подобрена за по-гъвкаво и удобно развитие.

### Поддържани формати

* Подкрепа за зареждането на EPUB и XML документите е въведена чрез добавяне на нови стойности към [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) Изброяване. Започвайки от версия 22.5, е възможно да се заредят EPUB и XML документи в Aspose.Words документ модел и да ги конвертирате във всеки [поддържани формати](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). <sup>22.5</sup>
* Започвайки от версия 22.8, е възможно да се запази документ във формат AZW3 Amazon Kindle е патентована електронна книга файл формат (KF8 е друго име за формат). Сега можете не само да заредите AZW3 документи, но и да експортирате файловете си във формат AZW3, който по същество е компилиран EPUB. <sup>22.8</sup>

### Пренос и печат

#### Нов размер на печат <sup>22.5</sup>

Поддръжка на страницата с шрифтове No 10 е добавена чрез въвеждане на нова стойност към [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/) Изброяване.

#### Пренасяне на MathML формули <sup>22.5</sup>

Предаването на гранична кутия около MathML формули и откриване на шрифта при превръщането на герои за такива формули е подобрено.

#### DML Подобрения на графиката <sup>22.6</sup>

DrawML диаграми публично API е удължен до поддържане на градиента, текстурата и шаблоните.

#### Glyph Outlines Parsing for OpenType <sup>22.7</sup>

Aspose.Words Собствен glyph са въведени очертания за шрифтовете OpenType (CFF).

Досега, glyph парсинг за шрифтове OpenType (CFF) е извършен чрез GDI+. Така че сега тя работи в случаите, когато GDI+ не е на разположение Java, .NET Standard платформи, Linux OS и др. Glyph В конкретни случаи се изисква анализ на очертанията като WordArt, текстови ефекти, някои функции по математика в офиса и други.

#### Форматиране на форма на сянка <sup>22.7</sup>

Възможността да зададете формата на сянката на обект форма е предоставена чрез добавяне на нов [ShadowFormat](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getShadowFormat) собственост.

#### Подкрепа за разделяне на клетки в таблици <sup>22.8</sup>

Сега макетният двигател е значително подобрен: в таблиците е въведен много сложен механизъм за клетъчни разстояния.

#### Заместване на шрифта за символи <sup>22.8</sup>

Заместването на шрифта за символи е подобрено.

#### Алгоритъм за въртене на оста на картата <sup>22.8</sup>

Алгоритъмът за въртене на етикетите на осите на диаграмата е подобрен.

### Зареждане и съхраняване на документи

#### Зареждане и преобразуване на PDF в формат с фиксирана страница без модел на подреждане <sup>22.6</sup>

Възможността за зареждане и преобразуване на PDF документи в фиксирани формати на страници с висока вярност и изпълнение е въведена.

#### Нов HTML режим на импортиране <sup>22.7</sup>

Въведен е нов HTML режим за внос на елементи на ниво блок чрез добавяне на нова стойност към [HtmlInsertOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlinsertoptions/) Изброяване.

#### Конвертиране в PDF/UA-1 CSSompliant с WCAG 2.0 <sup>22.7</sup>

Добавена е поддръжка за конвертиране на документ във формат PDF/UA-1 в съответствие с WCAG 2.0.

Така че, ако клиентът има достъпен Word документ и го конвертира в PDF/UA-1 чрез Aspose.Words споменавайки конверсионните специфики, резултатът ще бъде WCAG 2.0 съвместим.

Достъпност на WCAG или Web Content Насоки е набор от насоки, разработени от W3C в сътрудничество с физически лица и организации по целия свят. Сега с Aspose.Words Можете да конвертирате вашия документ във формат PDF/UA-1, който е подходящ за изграждане на WCAG 2.0 съвместими PDF документи.

Струва си да се отбележи, че WCAG 2.0 има две допълнителни изисквания, които не са посочени в спецификацията PDF/UA-1:

- изисквания за контраст
- изисквания за маркиране на мултимедийно съдържание

Но и двете изисквания не са свързани с нашия случай на преобразуване от Word на PDF.

### Други

* Изключването на наследяването на твърдия текст запълва ефекта, който имитира поведението на MS Word. <sup>22.6</sup>
* Подкрепа на `DATABASE` са добавени полета. Използването на този тип поле, можете, например, да покаже резултатите от справка база данни в Microsoft Word Маса. <sup>22.7</sup>

{{% alert color="primary" %}}

Научете повече за [Aspose.Words вместо Java 22.5 Бележки за освобождаване](/words/java/aspose-words-for-java-22-5-release-notes/).

Научете повече за [Aspose.Words вместо Java 22.6 Бележки за освобождаване](/words/java/aspose-words-for-java-22-6-release-notes/).

Научете повече за [Aspose.Words вместо Java 22.7 Бележки за освобождаване](/words/java/aspose-words-for-java-22-7-release-notes/).

Научете повече за [Aspose.Words вместо Java 22.8 Бележки за освобождаване](/words/java/aspose-words-for-java-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words вместо Java 22.1, 22.2, 22.3, 22.4

Aspose.Words 22.1 подобрява предоставянето на опции, както и зареждането и спасяването на документи.

Aspose.Words 22.2 въвежда нов формат за зареждане и нови опции за експортиране на документи. Той също така съдържа голяма актуализация за таблици и някои промени за работа с полета.

Aspose.Words 22.3 разширява възможностите за работа с PDF и TXT формати и подобрява работата на някои съществуващи алгоритми и двигатели.

Aspose.Words 22.4 подобрява PDF networks и сега можете да запишете файл във формат PDF/A-4 и да получите редица други подобрения в PDF изхода. В същото време, Aspose.Words 22.4 осигурява допълнителни възможности за работа с DML карти, четете метаданните Photoshop, и импортирайте HTML блок-ниво елементи.

На API е подобрена за по-гъвкаво и удобно развитие.

### Поддържани формати

Зареждане на документ във формат AZW3 (KF8 е друго име за формата) е добавено. Сега можете да заредите AZW3 документ и да го превърнете във всеки друг поддържан формат.

### Нанасяне

#### Предаване на PDF с PDF/UA-1 съответствие

Въвеждането в PDF с PDF/UA-1 е извършено чрез добавяне на нови стойности към [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) Изброяване **PDF_UA_1**. Тази опция приема спазването на специални изисквания за достъпност на документите.

#### Пренасяне на MathML формули

Предаването на операторите в MathML формули е подобрено.

#### DML Подобрения на графиката

Следните подобрения са направени на DML диаграми:

- DML графика ос мащабиране алгоритъм е подобрена да бъде същата като в MS Word
- Възможността да се манипулират с картинката на TrigingML легенда записи е била предоставена, за да направи нашата диаграма API все по-всеобхватно
- Възможността да се посочи името на xls/xlsx файл е свързана с графиката на DrawML

#### Предаване на PDF с PDF/A-4

Добавяне на нови стойности към PDF с PDF/A-4 [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) Изброяване на PDF_A_4. Тази опция приема ревизирани нива на съответствие: редовното PDF/A-4 съответствие е еквивалентно на ниво на съответствие U на предишните версии, а нивото A се премахва.

#### Четене на резолюция на фотошоп метаданни в JPEG

Четенето на резолюция на фотошоп метаданни в JPEG изображения е извършено, за да се определи интересен въпрос с неправилно мащабиране на изображения при предаване.

### Зареждане и съхраняване на документи

#### Контрол на поведението на стила При зареждане на документ

Нов вариант [ForceCopyStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getForceCopyStyles) е въведена, за да контролира поведението на противоречиви стилове при внос на документи.

#### Документ за запазване на уведомленията за напредъка

Добавена е възможност за получаване на уведомления за напредъка на спасяването на документи чрез [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) собственост в 22.1.

В 22.2, спестяването на уведомления за прогрес са разширени за HTML и XAML базирани формати: HTML, MHTML, Epub, XamlFlow и XamlFlowPack.

През 22.3, спестяването на уведомления за напредъка е разширено за TXT формат.

#### Конвертиране на форма в SVG При експортиране

Възможността за преобразуване на форми в SVG изображения при експортиране към HTML, MHTML или EPUB е предоставена чрез добавяне на [ExportShapesAsSvg](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportShapesAsSvg) собственост.

#### Експортиране на списък с номера в PDF Логическа структура

Въведен е списък с номерационния износ до PDF логическата структура.

#### Запис на PDF 2.0 и подобрения в PDF изход

Възможността за запазване на документ като PDF 2.0 чрез добавяне на нова стойност към [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) Въведени са изброявания, както и няколко други поискани подобрения в PDF изхода.

#### Нов HTML режим на импортиране

Нов режим на внос на HTML елементи на ниво блок е приложен, за да имитира Microsoft Word поведение.

### Други

* Добавена е възможност за получаване на персонализирани данни от полето.
* Последната версия на Aspose.Words Също така е включена голяма актуализация, която обработва таблици с неправилни или липсващи данни за ширината на колоната в изходния документ.
* Таблицата сравнява алгоритъм, разчитащ на дълбок анализ на Microsoft Word механизмът за сравнение е подобрен.
* Предоставен е синтаксисът на коментарите в двигателя за докладване на LINQ.

{{% alert color="primary" %}}

Научете повече за [Aspose.Words вместо Java 22.1 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-1-release-notes/).

Научете повече за [Aspose.Words вместо Java 22.2 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-2-release-notes/).

Научете повече за [Aspose.Words вместо Java 22.3 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-3-release-notes/).

Научете повече за [Aspose.Words вместо Java 22.4 Бележки за освобождаване](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-4-release-notes/).

{{% /alert %}}

## Aspose.Words вместо Java 21, 9, 21, 10, 21, 11, 21, 12

Aspose.Words 21.9 разширява контрола на форматирането на списъка.

Aspose.Words 21.10 подобрява възможностите за предаване, подобрява намирането и замяната на опции и разширява Mail Merge функционалност и структура документ Етикет.

Aspose.Words 21.11 разширява натоварването и спестява функционалност, подобрява намирането и замяната на опция и работата с PDF.

Aspose.Words 21.12 въвежда допълнителни възможности за работа с латински текст и шрифтове за подобряване на външния вид и производителността и разширява способността за работа с контрол на съдържанието и бележки под линия

На API е подобрена за по-гъвкаво и удобно развитие.

### Подобрения на ефективността

Зареждането на предварително запаметен кеш за търсене на шрифт, за да се ускори процесът на инициализация на шрифта при инициализацията е бил приложен. Сега вашите решения ще работят още по-бързо.

### Нанасяне

#### Работа със запълвания на наклона и спирания на наклона

Добавени са нови публични методи и свойства за работа с градиентни запълвания и градиентни спирки, за да задоволят най-ярките идеи при разработването на вашите документи.

#### Прикрепяне Пане в изходните PDF документи

Нов вариант [UseAttachments](https://reference.aspose.com/words/java/com.aspose.words/pdfpagemode/) е въведена, за да се покаже прикаченото стъкло в изходните PDF документи.

#### Позволи на латинския текст да завърши по средата на една дума

Подкрепата за "Остави латинския текст да се увие в средата на една дума" е приложена, за да направи нашата латинска подкрепа още по-добра при представянето.

### Търсене и сравняване

* Нова опция [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes) Добавено е да се игнорират бележките под линия по време на операцията за намиране и замяна.

* Нова опция [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes) Добавено е да се игнорират кодовете на полетата по време на намирането и замяната.

### Преобразуване

Лесен начин за запис на изображения като Base64 низ в Markdown форматът е предоставен чрез [ExportImagesAsBase64](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportImagesAsBase64) собственост.

### Mail Merge и докладване

Способността да се получи [ParentRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/#getParentRegion) през [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/), което направи нашият MailMerge двигател по-точен, беше добавен.

### Други

- Способност за получаване на [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) собственост на [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) Обектът е добавен.
- Възможност за получаване на низ представяне на [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) обект за определен индекс, като се използва [GetEffectiveValue](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getEffectiveValue-int-int-java.lang.String) е добавен метод.
- Въведена е интуитивна възможност за промяна на външния вид на структурираните тагове на документи, които всъщност позволяват вграждането на клиентска семантика, както и поведението й в документ.
- Нов клас. [ChmLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/chmloadoptions/) е добавен, за да получи повече контрол върху зареждането на CHM.
- Въведена е възможността да се получи OOXML контрол на съдържанието и да се запази до низ. За да направите това, **WordOpenXML** Имението е добавено към [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) както и [StructuredDocumentTagRangeStart](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttagrangestart/) Класове.
- Добавено е признаване на нестандартни бележки под линия в PDF документите за внос.

{{% alert color="primary" %}}

Научете повече за [Aspose.Words вместо Java 21.9 Бележки за освобождаване](/words/java/aspose-words-for-java-21-9-release-notes/).

Научете повече за [Aspose.Words вместо Java 21.10 Бележки за освобождаване](/words/java/aspose-words-for-java-21-10-release-notes/).

Научете повече за [Aspose.Words вместо Java 21.11 Бележки за освобождаване](/words/java/aspose-words-for-java-21-11-release-notes/).

Научете повече за [Aspose.Words вместо Java 21.12 Бележки за освобождаване](/words/java/aspose-words-for-java-21-12-release-notes/).

{{% /alert %}}

## Вижте също

{{% alert color="primary" %}}

Тази страница съдържа последните новини за последните 2 години. За подробности относно по- ранните издания вижте [Бележки за освобождаване '](/words/java/release-notes/) страници в съответните раздели.

{{% /alert %}}
