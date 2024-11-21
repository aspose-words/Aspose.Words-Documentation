---
title: استفاده از `DocumentBuilder` برای تغییر یک سند به راحتی
second_title: Aspose.Words برای C++
articleTitle: استفاده از `DocumentBuilder` برای تغییر یک سند به راحتی
linktitle: استفاده از `DocumentBuilder` برای تغییر یک سند به راحتی
type: docs
description: "از سازنده سند برای تغییر یک سند به راحتی در C++ استفاده کنید."
weight: 190
url: /fa/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## مشخص کردن قالب بندی

### قالب بندی فونت

قالب بندی فونت فعلی با یک شی `Font` که توسط ویژگی `DocumentBuilder.Font` بازگردانده شده است، نشان داده می شود. کلاس `Font` شامل طیف گسترده ای از ویژگی های فونت ممکن در Microsoft Word است. مثال زیر نشان می دهد که چگونه قالب بندی فونت را تنظیم کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### قالب بندی پاراگراف

قالب بندی پاراگراف فعلی با یک شیء `ParagraphFormat` که توسط ویژگی `DocumentBuilder.ParagraphFormat` بازگردانده می شود، نشان داده می شود. این شی ویژگی های مختلف قالب بندی پاراگراف موجود در Microsoft Word را در بر می گیرد. شما به راحتی می توانید قالب بندی پاراگراف را به حالت پیش فرض به سبک عادی، چپ تراز، بدون تورفتگی، بدون فاصله، بدون مرز و بدون سایه با فراخوانی `ParagraphFormat.ClearFormatting` تنظیم کنید. مثال زیر نشان می دهد که چگونه قالب بندی پاراگراف را تنظیم کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### کار با تایپوگرافی آسیایی

#### تنظیم خودکار فضای بین متن آسیایی و لاتین، اعداد

اگر شما در حال طراحی یک قالب با متن شرق آسیا و لاتین هستید و می خواهید ظاهر قالب فرم را با کنترل فضاهای بین هر دو نوع متن افزایش دهید، می توانید قالب فرم خود را برای تنظیم خودکار فضاهای بین این دو نوع متن تنظیم کنید. شما می توانید از ویژگی های AddSpaceBetweenFarEastAndAlpha و AddSpaceBetweenFarEastAndDigit کلاس ParagraphFormat برای رسیدن به این هدف استفاده کنید.

مثال کد زیر نشان می دهد که چگونه از ویژگی های `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` و `ParagraphFormat.AddSpaceBetweenFarEastAndDigit` استفاده کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### تغییر فاصله پاراگراف آسیایی و تورفتگی

مثال کد زیر نشان می دهد که چگونه فاصله پاراگراف آسیایی و حفره ها را تغییر دهید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### گزینه های شکستن خط را تنظیم کنید

برگه تایپوگرافی آسیایی از دیالوگ `Paragraph` properties در MS Word دارای گروه شکستن خط است. گزینه های این گروه را می توان با استفاده از FarEastLineBreakControl, WordWrap, HangingPunctuation خواص کلاس ParagraphFormat. مثال Below code نشان می دهد که چگونه از این ویژگی ها استفاده کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### قالب بندی سلولی

قالب بندی سلولی در هنگام ساخت یک جدول استفاده می شود. این با یک شی `CellFormat` که توسط ویژگی `DocumentBuilder.CellFormat` بازگردانده شده است، نشان داده می شود. CellFormat ویژگی های مختلف سلول های جدول مانند عرض یا تراز عمودی را در بر می گیرد. مثال زیر نشان می دهد که چگونه یک جدول ایجاد کنید که شامل یک سلول فرمت شده باشد.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### قالب بندی ردیف

قالب بندی ردیف فعلی توسط یک شی `RowFormat` تعیین می شود که توسط ویژگی `DocumentBuilder.RowFormat` بازگردانده می شود. این شی اطلاعات مربوط به تمام قالب بندی ردیف جدول را در بر می گیرد. مثال زیر نشان می دهد که چگونه یک جدول که شامل یک سلول واحد است ایجاد کنید و قالب بندی ردیف را اعمال کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### قالب بندی لیست

Aspose.Words امکان ایجاد آسان لیست ها را با استفاده از قالب بندی لیست فراهم می کند. DocumentBuilder ویژگی `DocumentBuilder.ListFormat` را فراهم می کند که یک شی `ListFormat` را باز می گرداند. این شی دارای چندین روش برای شروع و پایان دادن به یک لیست و افزایش/کاهش شکاف است. دو نوع کلی لیست در Microsoft Word وجود دارد: با گلوله و شماره گذاری.

- برای شروع یک لیست با گلوله، با `ListFormat.ApplyBulletDefault` تماس بگیرید.
- برای شروع یک لیست شماره گذاری شده، با `ListFormat.ApplyNumberDefault` تماس بگیرید.

گلوله یا شماره و قالب بندی به پاراگراف فعلی اضافه می شود و تمام پاراگراف های بعدی که با استفاده از **DocumentBuilder** تا `ListFormat.RemoveNumbers` ایجاد شده اند، برای متوقف کردن قالب بندی لیست گلوله ای فراخوانده می شوند. در اسناد Word، لیست ها ممکن است تا نه سطح داشته باشند. قالب بندی لیست برای هر سطح مشخص می کند که چه گلوله یا شماره ای استفاده می شود، ترک شده، فضای بین گلوله و متن و غیره.

- برای افزایش سطح لیست پاراگراف فعلی به یک سطح، با `ListFormat.ListIndent` تماس بگیرید.
- برای کاهش سطح لیست پاراگراف فعلی به یک سطح، با `ListFormat.ListOutdent` تماس بگیرید.

روش ها سطح لیست را تغییر می دهند و ویژگی های قالب بندی سطح جدید را اعمال می کنند.

{{% alert color="primary" %}}

همچنین می توانید از ویژگی `ListFormat.ListLevelNumber` برای دریافت یا تنظیم سطح لیست برای پاراگراف استفاده کنید. سطوح لیست 0 تا 8 شماره گذاری شده اند.

{{% /alert %}}

مثال زیر نشان می دهد که چگونه یک لیست چند سطحی بسازیم.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### تنظیم صفحه و قالب بندی بخش ها

ویژگی های تنظیم صفحه و بخش در شیء `PageSetup` که توسط ویژگی `DocumentBuilder.PageSetup` بازگردانده می شود، کپسول شده است. این شی شامل تمام ویژگی های تنظیم صفحه یک بخش (حاشیه چپ، حاشیه پایین، اندازه کاغذ و غیره) به عنوان خواص است. مثال زیر نشان می دهد که چگونه ویژگی هایی مانند اندازه صفحه و جهت گیری برای بخش فعلی را تنظیم کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### استفاده از یک سبک

برخی از اشیاء قالب بندی مانند فونت یا سبک های پشتیبانی ParagraphFormat. یک سبک داخلی یا تعریف شده توسط کاربر توسط یک شیء `Style` نشان داده می شود که شامل ویژگی های سبک مربوطه مانند نام، سبک پایه، فونت و قالب بندی پاراگراف سبک و غیره است.

علاوه بر این، یک شی **Style** ویژگی `Style.StyleIdentifier` را فراهم می کند که یک شناسه سبک مستقل از محلی را که با یک مقدار **Style.StyleIdentifier** شمارش نشان داده شده است، باز می گرداند. نکته این است که نام سبک های داخلی در Microsoft Word برای زبان های مختلف محلی شده است. با استفاده از یک شناسه سبک، می توانید سبک صحیح را صرف نظر از زبان سند پیدا کنید. مقادیر شمارش با سبک های داخلی Microsoft Word مانند Normal، Heading 1، Heading 2 و غیره مطابقت دارد. تمام سبک های تعریف شده توسط کاربر به **StyleIdentifier.User value** اختصاص داده شده است. مثال زیر نشان می دهد که چگونه یک سبک پاراگراف را اعمال کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### مرزها و سایه ها

مرزها توسط BorderCollection نشان داده می شوند. این مجموعه ای از اشیاء مرزی است که با شاخص یا نوع مرزی قابل دسترسی است. نوع مرز با شمارش `BorderType` نشان داده می شود. برخی از مقادیر شمارش برای چندین یا تنها یک عنصر سند قابل استفاده است. به عنوان مثال، `BorderType.Bottom` برای یک پاراگراف یا سلول جدول قابل استفاده است در حالی که `BorderType.DiagonalDown` مرز مورب را فقط در یک سلول جدول مشخص می کند.

هر دو مجموعه مرزی و هر مرز جداگانه دارای ویژگی های مشابهی مانند رنگ، سبک خط، عرض خط، فاصله از متن و سایه اختیاری هستند. آنها با ویژگی های یک نام نشان داده می شوند. شما می توانید با ترکیب ارزش ملک به انواع مختلف مرز دست یابید. علاوه بر این، هر دو شیء **BorderCollection** و **Border** به شما اجازه می دهند که این مقادیر را با فراخوانی روش `Border.ClearFormatting` به حالت پیش فرض تنظیم کنید. توجه داشته باشید که وقتی ویژگی های مرزی به مقادیر پیش فرض تنظیم می شوند، مرز نامرئی است. کلاس `Shading` شامل ویژگی های سایه برای عناصر سند است. شما می توانید بافت سایه مورد نظر و رنگ هایی که به پس زمینه و پیش زمینه عنصر اعمال می شود را تنظیم کنید.

بافت سایه با یک مقدار شمارش `TextureIndex` تنظیم شده است که اجازه می دهد تا الگوهای مختلف را به شی **Shading** اعمال کند. به عنوان مثال، برای تنظیم رنگ پس زمینه برای یک عنصر سند، از مقدار `TextureIndex.TextureSolid` استفاده کنید و رنگ سایه پیش زمینه را به عنوان مناسب تنظیم کنید. مثال زیر نشان می دهد که چگونه مرزها و سایه ها را به یک پاراگراف اعمال کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### ضربه محکم و ناگهانی به شبکه

Aspose.Words دو ویژگی `ParagraphFormat.SnapToGrid` و `Font.SnapToGrid` را برای گرفتن و تنظیم پاراگراف property snap به grid فراهم می کند.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## حرکت مکان نما

### تشخیص موقعیت فعلی مکان نما

شما می توانید مکان نشانگر سازنده را در حال حاضر در هر زمان پیدا کنید. ویژگی `DocumentBuilder.CurrentNode` گره ای را که در حال حاضر در این سازنده انتخاب شده است، باز می گرداند. گره یک فرزند مستقیم یک پاراگراف است. هر عملیاتی که با استفاده از `DocumentBuilder` انجام می دهید قبل از `DocumentBuilder.CurrentNode` وارد می شود. وقتی پاراگراف فعلی خالی است یا نشانگر درست قبل از پایان پاراگراف قرار گرفته است، `DocumentBuilder.CurrentNode` null را باز می گرداند.

همچنین، شما می توانید از ویژگی `DocumentBuilder.CurrentParagraph` استفاده کنید، که پاراگراف را که در حال حاضر در این **DocumentBuilder** انتخاب شده است، دریافت می کند. مثال زیر نشان می دهد که چگونه به گره فعلی در یک سازنده سند دسترسی پیدا کنید. شما می توانید فایل قالب این مثال را از اینجا دانلود کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### حرکت به هر گره (پاراگراف ها و فرزندان آنها)

اگر یک گره شیء سند دارید، که یک پاراگراف یا یک فرزند مستقیم یک پاراگراف است، می توانید نشانگر سازنده را به این گره نشان دهید. برای انجام این کار از روش `DocumentBuilder.MoveTo` استفاده کنید. مثال زیر نشان می دهد که چگونه یک موقعیت نشانگر را به یک گره مشخص منتقل کنیم. شما می توانید فایل قالب این مثال را از اینجا دانلود کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### حرکت به سمت سند شروع / پایان

اگر نیاز به حرکت به ابتدای سند دارید، با `DocumentBuilder.MoveToDocumentStart` تماس بگیرید. اگر نیاز به حرکت به انتهای سند دارید، با `DocumentBuilder.MoveToDocumentEnd` تماس بگیرید. مثال زیر نشان می دهد که چگونه یک موقعیت نشانگر را به ابتدای یا پایان یک سند منتقل کنید. شما می توانید فایل قالب این مثال را از اینجا دانلود کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### انتقال به یک بخش

اگر با سندی کار می کنید که شامل چندین بخش است، می توانید با استفاده از `DocumentBuilder.MoveToSection` به بخش مورد نظر بروید. این روش نشانگر را به ابتدای یک بخش مشخص منتقل می کند و شاخص بخش مورد نیاز را می پذیرد. هنگامی که شاخص بخش بزرگتر یا برابر با 0 است، یک شاخص را از ابتدای سند با 0 اولین بخش مشخص می کند. هنگامی که شاخص بخش کمتر از 0 است، یک شاخص از پایان سند را با -1 آخرین بخش مشخص می کند. مثال زیر نشان می دهد که چگونه یک موقعیت نشانگر را به بخش مشخص شده منتقل کنیم. شما می توانید فایل قالب این مثال را از اینجا دانلود کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### حرکت به سمت هدر / فوتر

وقتی نیاز به قرار دادن برخی از داده ها در یک سر یا پای صفحه دارید، باید ابتدا با استفاده از `DocumentBuilder.MoveToHeaderFooter` به آنجا بروید. این روش یک مقدار شمارش HeaderFooterType را می پذیرد که نوع سر یا پای صفحه را به جایی که نشانگر باید منتقل شود، شناسایی می کند. اگر می خواهید سرصفحه ها و پاورقی هایی ایجاد کنید که برای صفحه اول متفاوت باشد، باید ویژگی `PageSetup.DifferentFirstPageHeaderFooter` را به **true** تنظیم کنید. اگر می خواهید هدر و پاورقی ایجاد کنید که برای صفحات زوج و فرد متفاوت باشد، باید `PageSetup.OddAndEvenPagesHeaderFooter` را به **true** تنظیم کنید.

اگر می خواهید به داستان اصلی برگردید، از **DocumentBuilder.MoveToSection** برای حرکت از سر یا پای صفحه استفاده کنید. در زیر مثال ایجاد سرصفحه ها و پاورقی در یک سند با استفاده از DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### حرکت به یک پاراگراف

برای انتقال مکان نما به یک پاراگراف مورد نظر در بخش فعلی از `DocumentBuilder.MoveToParagraph` استفاده کنید. شما باید دو پارامتر را به این روش منتقل کنید: paragraphIndex (شاخص پاراگراف برای حرکت به) و characterIndex (شاخص کاراکتر داخل پاراگراف).

ناوبری در داخل داستان فعلی بخش فعلی انجام می شود. یعنی اگر مکان نما را به سرصفحه اصلی بخش اول منتقل کردید، paragraphIndex فهرست پاراگراف داخل آن سرصفحه آن بخش را مشخص می کند.

هنگامی که paragraphIndex بزرگتر یا برابر با 0 باشد، یک شاخص از ابتدای بخش را با 0 اولین پاراگراف مشخص می کند. وقتی paragraphIndex کمتر از 0 باشد، یک شاخص از انتهای بخش را با -1 آخرین پاراگراف مشخص می کند.

شاخص کاراکتر در حال حاضر فقط می تواند به عنوان 0 برای حرکت به ابتدای پاراگراف یا -1 برای حرکت به پایان پاراگراف مشخص شود. مثال زیر نشان می دهد که چگونه یک موقعیت نشانگر را به پاراگراف مشخص شده منتقل کنیم. شما می توانید فایل قالب این مثال را از اینجا دانلود کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### حرکت به سمت سلول جدول

اگر می خواهید مکان نما را به یک سلول جدول در بخش فعلی منتقل کنید، از `DocumentBuilder.MoveToCell` استفاده کنید. این روش چهار پارامتر را می پذیرد:

- tableIndex - شاخص جدول برای حرکت به.
- rowIndex - شاخص ردیف در جدول.
- columnIndex - شاخص ستون در جدول.
- characterIndex - شاخص کاراکتر داخل سلول.

ناوبری در داخل داستان فعلی بخش فعلی انجام می شود. برای پارامترهای شاخص، هنگامی که شاخص بزرگتر یا برابر با 0 است، یک شاخص را از ابتدا با 0 اولین عنصر مشخص می کند. وقتی شاخص کمتر از 0 باشد، یک شاخص از پایان را با -1 آخرین عنصر مشخص می کند.

همچنین توجه داشته باشید که characterIndex در حال حاضر فقط می تواند 0 را برای حرکت به ابتدای سلول یا -1 برای حرکت به انتهای سلول مشخص کند. مثال زیر نشان می دهد که چگونه یک موقعیت نشانگر را به سلول جدول مشخص شده منتقل کنیم. شما می توانید فایل قالب این مثال را از اینجا دانلود کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### انتقال به یک نشانک

نشانه ها اغلب برای نشان دادن مکان های خاص در سند که عناصر جدید باید وارد شوند استفاده می شوند. برای حرکت به یک نشانه، از `DocumentBuilder.MoveToBookmark` استفاده کنید. این روش دارای دو بار اضافی است. ساده ترین چیز چیزی جز نام نشانه ای که نشانگر باید جابجا شود را نمی پذیرد. مثال زیر نشان می دهد که چگونه یک موقعیت نشانگر را به یک نشانه گذاری منتقل کنیم. شما می توانید فایل قالب این مثال را از اینجا دانلود کنید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

این اضافه بار نشانگر را درست بعد از شروع علامت گذاری با نام مشخص شده به موقعیتی منتقل می کند. یک بار اضافی دیگر `DocumentBuilder.MoveToBookmark` نشانگر را با دقت بیشتری به یک نشانک منتقل می کند. دو پارامتر بولی اضافی را می پذیرد:

- isStart تعیین می کند که آیا نشانگر را به آغاز یا پایان نشانه گذاری منتقل کند.
- isAfter تعیین می کند که آیا نشانگر را بعد از موقعیت شروع یا پایان نشانه گذاری حرکت دهد یا نشانگر را قبل از موقعیت شروع یا پایان نشانه گذاری حرکت دهد.

مثال زیر نشان می دهد که چگونه یک موقعیت نشانگر را درست بعد از پایان نشانه گذاری حرکت دهید.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

مقایسه برای هر دو روش حساس به حروف بزرگ و کوچک نیست.

قرار دادن متن جدید به این روش جایگزین متن موجود نشانک نمی شود. توجه داشته باشید که برخی از نشانه ها در سند به زمینه های فرم اختصاص داده شده است. حرکت به چنین نشانه گذاری و قرار دادن متن در آنجا متن را در کد فیلد فرم قرار می دهد. اگرچه این فیلد فرم را باطل نمی کند، متن وارد شده قابل مشاهده نخواهد بود زیرا بخشی از کد فیلد می شود.

## نحوه تبدیل بین واحدهای اندازه گیری

بیشتر ویژگی های شیء ارائه شده در Aspose.Words API که نشان دهنده برخی از اندازه گیری (عرض/ارتفاع، حاشیه ها و فاصله های مختلف) است، مقادیر را در نقاط (1 اینچ برابر با 72 امتیاز) قبول می کند. گاهی اوقات این کار راحت نیست بنابراین کلاس `ConvertUtil` وجود دارد که توابع کمک کننده را برای تبدیل بین واحدهای اندازه گیری مختلف فراهم می کند. این اجازه می دهد تا تبدیل اینچ به نقاط، نقاط به اینچ، پیکسل به نقاط، و نقاط به پیکسل. هنگامی که پیکسل ها به نقاط تبدیل می شوند و برعکس، می توان آن را در رزولوشن 96 dpi (نقطه در اینچ) یا در رزولوشن dpi مشخص شده انجام داد.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
