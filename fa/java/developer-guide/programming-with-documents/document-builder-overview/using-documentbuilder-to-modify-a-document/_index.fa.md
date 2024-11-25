---
title: استفاده از `DocumentBuilder` برای تغییر یک سند
second_title: Aspose.Words برای Java
articleTitle: استفاده از `DocumentBuilder` برای تغییر یک سند
linktitle: استفاده از `DocumentBuilder` برای تغییر یک سند
type: docs
description: "از سازنده سند برای تغییر یک سند به راحتی در Java استفاده کنید."
weight: 20
url: /fa/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## مشخص کردن قالب بندی

### قالب بندی فونت

قالب بندی فونت فعلی با یک شیء `Font` که توسط ویژگی `DocumentBuilder.Font` بازگردانده شده است، نشان داده می شود. کلاس `Font` شامل طیف گسترده ای از ویژگی های فونت ممکن در Microsoft Word است.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
مثال کد زیر نشان می دهد که چگونه قالب بندی فونت را تنظیم کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### قالب بندی سلولی

قالب بندی سلولی در طول ساخت یک جدول استفاده می شود. این با یک شی `CellFormat` که توسط ویژگی `DocumentBuilder.CellFormat` بازگردانده شده است، نشان داده می شود. CellFormat ویژگی های مختلف سلول های جدول مانند عرض یا تراز عمودی را در بر می گیرد.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
مثال کد زیر نشان می دهد که چگونه یک جدول که شامل یک سلول فرمت شده است ایجاد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### قالب بندی ردیف

قالب بندی ردیف فعلی توسط یک شی `RowFormat` تعیین می شود که توسط ویژگی `DocumentBuilder.RowFormat` بازگردانده می شود. این شی اطلاعات مربوط به تمام قالب بندی ردیف جدول را در بر می گیرد.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
مثال below code نشان می دهد که چگونه یک جدول را که شامل یک سلول واحد است ایجاد کنید و قالب بندی ردیف را اعمال کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### قالب بندی لیست

Aspose.Words با استفاده از قالب بندی لیست، ایجاد آسان لیست ها را امکان پذیر می کند. DocumentBuilder ویژگی `DocumentBuilder.ListFormat` را فراهم می کند که یک شی `ListFormat` را باز می گرداند. این شی دارای چندین روش برای شروع و پایان دادن به یک لیست و افزایش/کاهش شکاف است.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
دو نوع کلی لیست در Microsoft Word وجود دارد: با گلوله و شماره گذاری.

- برای شروع یک لیست با گلوله، با [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault) تماس بگیرید.
- برای شروع یک لیست شماره گذاری شده، با [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault) تماس بگیرید.

گلوله یا شماره و قالب بندی به پاراگراف فعلی اضافه می شود و تمام پاراگراف های بعدی که با استفاده از **DocumentBuilder** تا [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) ایجاد شده اند، برای متوقف کردن قالب بندی لیست گلوله ای فراخوانده می شوند.

در اسناد Word، لیست ها ممکن است تا نه سطح داشته باشند. قالب بندی لیست برای هر سطح مشخص می کند که چه گلوله یا شماره ای استفاده می شود، ترک شده، فضای بین گلوله و متن و غیره.

- برای افزایش سطح لیست پاراگراف فعلی به یک سطح، با [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent) تماس بگیرید.
- برای کاهش سطح لیست پاراگراف فعلی به یک سطح، با [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent) تماس بگیرید.

روش ها سطح لیست را تغییر می دهند و ویژگی های قالب بندی سطح جدید را اعمال می کنند.

{{% alert color="primary" %}}

همچنین می توانید از ویژگی [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) برای دریافت یا تنظیم سطح لیست برای پاراگراف استفاده کنید. سطوح لیست 0 تا 8 شماره گذاری شده اند.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک لیست چند سطحی بسازیم.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### تنظیم صفحه و قالب بندی بخش ها

ویژگی های تنظیم صفحه و بخش در شیء `PageSetup` که توسط ویژگی `DocumentBuilder.PageSetup` بازگردانده می شود، کپسول شده است. این شی شامل تمام ویژگی های تنظیم صفحه یک بخش (حاشیه چپ، حاشیه پایین، اندازه کاغذ و غیره) به عنوان خواص است.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
مثال کد زیر نشان می دهد که چگونه ویژگی هایی مانند اندازه صفحه و جهت گیری برای بخش فعلی را تنظیم کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### استفاده از یک سبک

برخی از اشیاء قالب بندی مانند فونت یا سبک های پشتیبانی ParagraphFormat. یک سبک داخلی یا تعریف شده توسط کاربر توسط یک شیء `Style` نشان داده می شود که شامل ویژگی های سبک مربوطه مانند نام، سبک پایه، فونت و قالب بندی پاراگراف سبک و غیره است.

علاوه بر این، یک شی **Style** ویژگی [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) را فراهم می کند که یک شناسه سبک مستقل از محلی را که با یک مقدار **Style.StyleIdentifier** شمارش نشان داده شده است، باز می گرداند. نکته این است که نام سبک های داخلی در Microsoft Word برای زبان های مختلف محلی شده است. با استفاده از یک شناسه سبک، می توانید سبک صحیح را صرف نظر از زبان سند پیدا کنید. مقادیر شمارش با سبک های داخلی Microsoft Word مانند Normal، Heading 1، Heading 2 و غیره مطابقت دارد. تمام سبک های تعریف شده توسط کاربر به **StyleIdentifier.User value** اختصاص داده شده است.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
مثال کد زیر نشان می دهد که چگونه یک سبک پاراگراف را اعمال کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### مرزها و سایه ها

مرزها توسط BorderCollection نشان داده می شوند. این مجموعه ای از اشیاء مرزی است که با شاخص یا نوع مرزی قابل دسترسی است. نوع مرز با شمارش `BorderType` نشان داده می شود. برخی از مقادیر شمارش برای چندین یا تنها یک عنصر سند قابل استفاده است. به عنوان مثال، `BorderType.Bottom` برای یک پاراگراف یا سلول جدول قابل استفاده است در حالی که `BorderType.DiagonalDown` مرز مورب را فقط در یک سلول جدول مشخص می کند.

هر دو مجموعه مرزی و هر مرز جداگانه دارای ویژگی های مشابهی مانند رنگ، سبک خط، عرض خط، فاصله از متن و سایه اختیاری هستند. آنها با ویژگی های یک نام نشان داده می شوند. شما می توانید با ترکیب ارزش ملک به انواع مختلف مرز دست یابید. علاوه بر این، هر دو شی **BorderCollection** و **Border** به شما اجازه می دهند که این مقادیر را با فراخوانی روش [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) به حالت پیش فرض تنظیم کنید. توجه داشته باشید که وقتی ویژگی های مرزی به مقادیر پیش فرض تنظیم می شوند، مرز نامرئی است.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
کلاس [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) شامل ویژگی های سایه برای عناصر سند است. شما می توانید بافت سایه مورد نظر و رنگ هایی که به پس زمینه و پیش زمینه عنصر اعمال می شود را تنظیم کنید.

بافت سایه با یک [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) مقدار شمارش که اجازه استفاده از الگوهای مختلف را به شیء **Shading** می دهد. برای مثال، برای تنظیم رنگ پس زمینه برای یک عنصر سند، از [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) رنگ سایه پیش زمینه را به عنوان مناسب تنظیم کنید.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
مثال زیر نشان می دهد که چگونه مرزها و سایه ها را به یک پاراگراف اعمال کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### ضربه محکم و ناگهانی به شبکه

Aspose.Words دو ویژگی `ParagraphFormat.SnapToGrid` و `Font.SnapToGrid` را برای گرفتن و تنظیم پاراگراف property snap به grid فراهم می کند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### حرکت مکان نما

### تشخیص موقعیت فعلی مکان نما

شما می توانید مکان نشانگر سازنده را در حال حاضر در هر زمان پیدا کنید. ویژگی [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) گره ای را که در حال حاضر در این سازنده انتخاب شده است، باز می گرداند. گره یک فرزند مستقیم یک پاراگراف است. هر عملیاتی که با استفاده از `DocumentBuilder` انجام می دهید قبل از `DocumentBuilder.CurrentNode` وارد می شود. وقتی پاراگراف فعلی خالی است یا نشانگر درست قبل از پایان پاراگراف قرار گرفته است، `DocumentBuilder.CurrentNode` null را باز می گرداند.

همچنین، شما می توانید از ویژگی [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) استفاده کنید، که پاراگراف را که در حال حاضر در این **DocumentBuilder** انتخاب شده است، دریافت می کند. مثال be low code نشان می دهد که چگونه به گره فعلی در یک سازنده سند دسترسی پیدا کنیم.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### حرکت به هر گره (پاراگراف ها و فرزندان آنها)

اگر یک گره شیء سند دارید، که یک پاراگراف یا یک فرزند مستقیم یک پاراگراف است، می توانید نشانگر سازنده را به این گره نشان دهید. برای انجام این کار از روش [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) استفاده کنید.
مثال کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به یک گره مشخص منتقل کنیم.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### حرکت به سمت سند شروع / پایان

اگر نیاز به حرکت به ابتدای سند دارید، با [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) تماس بگیرید. اگر نیاز به حرکت به انتهای سند دارید، با [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) تماس بگیرید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### انتقال به یک بخش

اگر با سندی کار می کنید که شامل چندین بخش است، می توانید با استفاده از [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) به بخش مورد نظر بروید. این روش نشانگر را به ابتدای یک بخش مشخص منتقل می کند و شاخص بخش مورد نیاز را می پذیرد. هنگامی که شاخص بخش بزرگتر از یا برابر با 0 است، یک شاخص را از ابتدای سند مشخص می کند که 0 اولین بخش است. هنگامی که شاخص بخش کمتر از 0 است، یک شاخص از پایان سند را با -1 آخرین بخش مشخص می کند. مثال below code نشان می دهد که چگونه یک موقعیت نشانگر را به بخش مشخص شده منتقل کنیم. شما می توانید فایل قالب این مثال را از [اینجا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### حرکت به سمت هدر / فوتر

وقتی نیاز به قرار دادن برخی از داده ها در یک سر یا پای صفحه دارید، باید ابتدا با استفاده از [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) به آنجا بروید.این روش یک مقدار شمارش HeaderFooterType را می پذیرد که نوع سر یا پای صفحه را به جایی که نشانگر باید منتقل شود، شناسایی می کند.

اگر می خواهید سرصفحه ها و پاورقی هایی ایجاد کنید که برای صفحه اول متفاوت باشد، باید ویژگی [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) را به **true** تنظیم کنید. اگر می خواهید هدر و پاورقی ایجاد کنید که برای صفحات زوج و فرد متفاوت باشد، باید [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) را به **true** تنظیم کنید.

اگر می خواهید به داستان اصلی برگردید، از[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) برای حرکت از سر یا پای صفحه استفاده کنید. در زیر مثال ایجاد سرصفحه ها و پاورقی در یک سند با استفاده از DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### حرکت به یک پاراگراف

برای انتقال مکان نما به یک پاراگراف مورد نظر در بخش فعلی از[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) استفاده کنید. شما باید دو پارامتر را به این روش منتقل کنید: paragraphIndex (شاخص پاراگراف برای حرکت به) و characterIndex (شاخص کاراکتر داخل پاراگراف).

ناوبری در داخل داستان فعلی بخش فعلی انجام می شود. یعنی اگر مکان نما را به سرصفحه اصلی بخش اول منتقل کردید، paragraphIndex فهرست پاراگراف داخل آن سرصفحه آن بخش را مشخص می کند.

هنگامی که paragraphIndex بزرگتر از یا برابر با 0 باشد، یک شاخص از ابتدای بخش را مشخص می کند که 0 پاراگراف اول است. وقتی paragraphIndex کمتر از 0 باشد، یک شاخص از پایان بخش را با -1 آخرین پاراگراف مشخص می کند. شاخص کاراکتر در حال حاضر فقط می تواند به عنوان 0 برای حرکت به ابتدای پاراگراف یا -1 برای حرکت به پایان پاراگراف مشخص شود. مثال کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به پاراگراف مشخص شده منتقل کنیم. شما می توانید فایل قالب این مثال را از [اینجا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### حرکت به سمت سلول جدول

اگر می خواهید مکان نما را به یک سلول جدول در بخش فعلی منتقل کنید، از [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) استفاده کنید. این روش چهار پارامتر را می پذیرد:

- tableIndex - شاخص جدول برای حرکت به.
- rowIndex - شاخص ردیف در جدول.
- columnIndex - شاخص ستون در جدول.
- characterIndex - شاخص کاراکتر داخل سلول.

ناوبری در داخل داستان فعلی بخش فعلی انجام می شود.

برای پارامترهای شاخص، وقتی شاخص بزرگتر از یا برابر با 0 باشد، یک شاخص را از ابتدا مشخص می کند که 0 اولین عنصر است. هنگامی که شاخص کمتر از 0 است، یک شاخص از پایان را با -1 آخرین عنصر مشخص می کند.

همچنین توجه داشته باشید که characterIndex در حال حاضر فقط می تواند 0 را برای حرکت به ابتدای سلول یا -1 برای حرکت به انتهای سلول مشخص کند. مثال کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به سلول جدول مشخص شده منتقل کنیم. شما می توانید فایل قالب این مثال را از [اینجا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### انتقال به یک نشانک

نشانه ها اغلب برای نشان دادن مکان های خاص در سند که عناصر جدید باید وارد شوند استفاده می شوند. برای حرکت به یک نشانه، از [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) استفاده کنید. این روش دارای دو بار اضافی است. ساده ترین چیز چیزی جز نام نشانه ای که نشانگر باید جابجا شود را نمی پذیرد. مثال کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به یک نشانه گذاری منتقل کنیم.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

این اضافه بار نشانگر را درست بعد از شروع علامت گذاری با نام مشخص شده به موقعیتی منتقل می کند. یک بار اضافی دیگر [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) نشانگر را با دقت بیشتری به یک نشانک منتقل می کند. دو پارامتر بولی اضافی را می پذیرد:

- isStart تعیین می کند که آیا نشانگر را به آغاز یا پایان نشانه گذاری منتقل کند.
- isAfter تعیین می کند که آیا نشانگر را بعد از موقعیت شروع یا پایان نشانه گذاری حرکت دهد یا نشانگر را قبل از موقعیت شروع یا پایان نشانه گذاری حرکت دهد.

مثال کد زیر نشان می دهد که چگونه یک موقعیت نشانگر را به درست بعد از پایان نشانه گذاری حرکت دهید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

قرار دادن متن جدید به این روش جایگزین متن موجود نشانک نمی شود. توجه داشته باشید که برخی از نشانه ها در سند به زمینه های فرم اختصاص داده شده است. حرکت به چنین نشانه گذاری و قرار دادن متن در آنجا متن را در کد فیلد فرم قرار می دهد. اگرچه این فیلد فرم را باطل نمی کند، متن وارد شده قابل مشاهده نخواهد بود زیرا بخشی از کد فیلد می شود.

### حرکت به یک فیلد `Merge`

گاهی اوقات ممکن است لازم باشد که یک "دستور" Mail Merge را با استفاده از `DocumentBuilder` انجام دهید یا یک فیلد ادغام را به روشی خاص در داخل یک کنترل کننده رویداد Mail Merge پر کنید. این زمانی است که [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) می تواند مفید باشد. این روش نام فیلد ادغام را قبول می کند. این نشانگر را به موقعیتی درست فراتر از فیلد ادغام مشخص شده منتقل می کند و فیلد ادغام را حذف می کند. مثال کد زیر نشان می دهد که چگونه نشانگر را به موقعیت درست فراتر از فیلد ادغام مشخص شده منتقل کنیم.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## نحوه تبدیل بین واحدهای اندازه گیری

بیشتر ویژگی های شیء ارائه شده در Aspose.Words API که نشان دهنده برخی از اندازه گیری ها (عرض/ارتفاع، حاشیه ها و فاصله های مختلف) است، مقادیر را در نقاط (1 اینچ برابر با 72 امتیاز) قبول می کند. گاهی اوقات این کار راحت نیست بنابراین کلاس `ConvertUtil` وجود دارد که توابع کمک کننده را برای تبدیل بین واحدهای اندازه گیری مختلف فراهم می کند. این اجازه می دهد تا تبدیل اینچ به نقاط، نقاط به اینچ، پیکسل به نقاط، و نقاط به پیکسل. هنگامی که پیکسل ها به نقاط تبدیل می شوند و برعکس، می توان آن را در رزولوشن 96 dpi (نقطه در اینچ) یا در رزولوشن dpi مشخص شده انجام داد.

**ConvertUtil**

مثال کد زیر نشان می دهد که چگونه ویژگی های صفحه را در اینچ مشخص کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
