---
title: نمای کلی فیلدها در C#
second_title: Aspose.Words برای .NET
articleTitle: نمای کلی فیلدها
linktitle: نمای کلی فیلدها
description: "فیلدها با جزئیات، کدهای فیلد و نتایج میدانی که در Aspose.Words برای .NET توضیح داده شده است."
type: docs
weight: 10
url: /fa/net/fields-overview/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words یک کتابخانه کلاسی است که برای پردازش اسناد Microsoft Word در سمت سرور طراحی شده است و فیلدها را به روش های زیر پشتیبانی می کند:

- تمام فیلدهای یک سند در هنگام باز کردن/ذخیره و تبدیل ها حفظ می شوند
- امکان به روز رسانی نتایج اکثر فیلدها وجود دارد

در این مقاله با ساختار فیلد، فیلدهای پشتیبانی شده در Aspose.Words و جزئیات کار با چنین فیلدهایی بیشتر آشنا می شویم.

## ساختار میدان

یک فیلد شامل:

- گره های شروع فیلد و جداکننده برای دربرگرفتن محتوایی که کد فیلد را می سازد (معمولاً به صورت متن ساده) استفاده می شود.
- جداکننده میدان و انتهای فیلد نتیجه میدان را در بر می گیرد. این می تواند از انواع مختلفی از محتوا اعم از اجراهای متن گرفته تا پاراگراف ها و جداول تشکیل شود.
- برخی از فیلدها ممکن است جداکننده نداشته باشند که به این معنی است که کل محتوا کد فیلد را تشکیل می دهد.
- کد فیلد رفتار فیلد را تعریف می کند و از شناسه فیلد و اغلب پارامترهای دیگر مانند نام فیلد و سوئیچ ها تشکیل شده است.
- نتیجه فیلد حاوی جدیدترین ارزیابی رشته است. این مقدار در نتیجه فیلد ذخیره می شود و همان چیزی است که به کاربر نمایش داده می شود. برخی از فیلدها ممکن است هیچ نتیجه فیلدی نداشته باشند، بنابراین چیزی در سند نمایش داده نمی شود. به همین ترتیب، برخی از فیلدها ممکن است هنوز به روز نشده باشند، بنابراین نتیجه فیلدی نیز نخواهند داشت.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

محتوایی که کد فیلد را تشکیل می دهد به عنوان گره های [Run](https://reference.aspose.com/words/net/aspose.words/run/) بین [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) و [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) ذخیره می شود. نتیجه میدان بین گره‌های **FieldSeparator** و [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) ذخیره می‌شود و می‌تواند از انواع مختلف محتوا تشکیل شود. معمولاً نتیجه فیلد فقط حاوی متنی است که از گره‌های **Run** تشکیل شده است، با این حال ممکن است گره **FieldEnd** در یک پاراگراف کاملاً متفاوت قرار گیرد و بنابراین نتیجه فیلد متشکل از گره‌های [سطوح منطقی گره ها در یک سند](/words/fa/net/logical-levels-of-nodes-in-a-document/) مانند **Table** و **Paragraph** نیز باشد.

در اینجا نمایه ای از نحوه ذخیره یک فیلد در Aspose.Words با استفاده از مثال "*DocumentExplorer"* که در [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) یافت می شود را مشاهده می کنید.

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## فیلدها در Aspose.Words Document Object Model (DOM)

هنگامی که یک سند در Aspose.Words بارگذاری می شود، فیلدهای سند به عنوان مجموعه ای از مؤلفه های جداگانه (گره ها) در [Aspose.Words Document Object Model (DOM)](/words/fa/net/aspose-words-document-object-model/) بارگذاری می شوند. یک فیلد واحد به عنوان مجموعه ای از گره های **FieldStart**، **FieldSeparator** و **FieldEnd** همراه با محتوای بین این گره ها بارگذاری می شود. اگر فیلدی نتیجه فیلد نداشته باشد، گره **FieldSeparator** وجود نخواهد داشت. همه این گره ها همیشه به صورت درون خطی یافت می شوند (به عنوان فرزندان [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) یا [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/).

در Aspose.Words هر یک از گره های **FieldXXX** از [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/) مشتق شده اند. این کلاس یک ویژگی برای بررسی نوع فیلد ارائه شده توسط گره مشخص شده از طریق ویژگی [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) فراهم می کند. به عنوان مثال **FieldType.FieldMergeField** نشان دهنده یک فیلد ادغام در سند است.

{{% alert color="primary" %}}

فیلدهای خاصی در سند Word وجود دارند که به عنوان مجموعه ای از گره های **FieldXXX** به Aspose.Words وارد نمی شوند. به عنوان مثال، فیلد `LINK` و فیلد `INCLUDEPICTURE` به عنوان یک شی [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) به Aspose.Words وارد می شوند. این شیء ویژگی هایی را برای کار با داده های تصویری که معمولاً در این فیلدها ذخیره می شوند ارائه می دهد. برای وارد کردن فیلد `INCLUDEPICTURE` به عنوان گره های **FieldXXX**، گزینه [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) باید به عنوان **true** مشخص شود.

فیلدهای فرم نیز به عنوان کلاس خاص خود به Aspose.Words وارد می شوند. کلاس [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) یک فیلد فرم را در یک سند Word نشان می‌دهد و روش‌های دیگری را ارائه می‌کند که مخصوص یک فیلد فرم هستند.

{{% /alert %}}

## زمینه های پشتیبانی شده

محاسبه فیلدهای زیر در نسخه فعلی Aspose.Words پشتیبانی می شود:

- = (فرمول)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## تجزیه میدانی پیچیده

Aspose.Words از روشی پیروی می کند که Microsoft Word فیلدها را پردازش می کند و در نتیجه به درستی مدیریت می کند:

- فیلدهای تو در تو:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- آرگومان فیلد می تواند نتیجه یک فیلد تو در تو باشد
- فیلدها را می توان در یک کد فیلد و همچنین در نتیجه فیلد تودرتو کرد
- فاصله / بدون فاصله، نقل قول / بدون نقل قول، کاراکترهای فرار در فیلدها و غیره:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- فیلدهایی که در چندین پاراگراف قرار دارند

### زمینه های فرمول

Aspose.Words یک پیاده سازی بسیار جدی از موتور فرمول ارائه می دهد و موارد زیر را پشتیبانی می کند:

- عملگرهای حسابی و منطقی:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- کارکرد:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- ارجاع به نشانک ها:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- سوئیچ های قالب بندی اعداد:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

توابع زیر در عبارات پشتیبانی می شوند: `ABS`، `AND`، `AVERAGE`، `COUNT`، `DEFINED`، `FALSE`، `IF`، `INT`، `MAX`، `MIN`، `MOD`، `NOT`، `OR`، `PRODUCT`، `ROUND`، `SIGN`، `SUM`، TRUE.

### فیلدهای `IF` و `COMPARE`

فقط برخی از عبارات `IF` که Aspose.Words می تواند به راحتی محاسبه کند باید به شما ایده ای از قدرت این ویژگی بدهد:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### فیلدهای `DATE` و `TIME`

Aspose.Words از تمام سوئیچ‌های قالب‌بندی تاریخ و زمان موجود در Microsoft Word پشتیبانی می‌کند، برخی از نمونه‌ها عبارتند از:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### فیلدهای Mail Merge

Aspose.Words هیچ محدودیتی برای پیچیدگی فیلدهای mail merge در اسناد شما اعمال نمی کند و از فیلدهای `IF` و فرمول تودرتو پشتیبانی می کند و حتی می تواند نام فیلد ادغام را با استفاده از یک فرمول محاسبه کند.

چند نمونه از فیلدهای mail merge که Aspose.Words پشتیبانی می کند:

- سوئیچ های میدان Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- فیلدهای ادغام تودرتو در یک فرمول:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- نام فیلد ادغام را در زمان اجرا محاسبه کنید:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- انتقال مشروط به رکورد بعدی در منبع داده:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### سوئیچ های فرمت

یک فیلد در یک سند می‌تواند دارای سوئیچ‌های قالب‌بندی باشد که نحوه قالب‌بندی مقدار حاصل را مشخص می‌کند. Aspose.Words از سوئیچ های فرمت زیر پشتیبانی می کند:

- \\\@ - قالب بندی تاریخ و زمان
- \\\# - قالب بندی اعداد
- \\\* کلاه
- \\\* FirstCap
- \\\* پایین تر
- \\\* بالا
- \\\* CHARFORMAT - نتیجه را مطابق با اولین کاراکتر کد فیلد قالب بندی کنید
- \\\* MERGEFORMAT - نتیجه را با توجه به نحوه قالب بندی نتیجه قدیمی قالب بندی کنید

### Date و قالب‌بندی اعداد در فیلدها

هنگامی که Aspose.Words یک نتیجه فیلد را محاسبه می‌کند، اغلب باید یک رشته را به یک عدد یا مقدار تاریخ تجزیه کند و همچنین آن را به یک رشته قالب‌بندی کند. Aspose.Words به‌طور پیش‌فرض از فرهنگ رشته فعلی برای انجام تجزیه و قالب‌بندی هنگام محاسبه مقادیر فیلد در طول به‌روزرسانی فیلد استفاده می‌کند. و mail merge. همچنین گزینه هایی در قالب کلاس [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/) ارائه شده است که امکان کنترل بیشتر بر روی اینکه کدام فرهنگ در طول به روز رسانی میدانی استفاده می شود را فراهم می کند.

- به طور پیش فرض ویژگی [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) روی [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) تنظیم شده است که فیلدها را با استفاده از فرهنگ رشته فعلی قالب بندی می کند
- این ویژگی را می توان روی [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) تنظیم کرد تا به جای آن از زبان مجموعه کد فیلد برای قالب بندی استفاده شود

### قالب بندی با استفاده از فرهنگ موضوع فعلی

برای کنترل فرهنگ استفاده شده در حین محاسبه فیلد، فقط قبل از فراخوانی محاسبه فیلد، ویژگی **Thread.CurrentThread.CurrentCulture** را روی فرهنگ مورد نظر خود تنظیم کنید.

مثال کد زیر نحوه تغییر فرهنگ مورد استفاده در قالب بندی فیلدها را در حین به روز رسانی نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

استفاده از فرهنگ فعلی برای قالب‌بندی فیلدها به یک سیستم اجازه می‌دهد تا به راحتی و به طور مداوم نحوه قالب‌بندی تمام فیلدهای سند را در طول به‌روزرسانی میدانی کنترل کند.

### قالب بندی با استفاده از فرهنگ در سند

از سوی دیگر، Microsoft Word هر فیلد جداگانه را بر اساس زبان متن موجود در فیلد (به طور خاص اجرا شده از کد فیلد) قالب بندی می کند. گاهی اوقات در حین به روز رسانی فیلد ممکن است این رفتار مطلوب باشد، به عنوان مثال اگر اسناد جهانی شده ای دارید که حاوی محتوایی است که از زبان های مختلف تشکیل شده است و می خواهید هر فیلد به محلی مورد استفاده در متن احترام بگذارد. Aspose.Words نیز از این قابلیت پشتیبانی می کند.

کلاس [Document](https://reference.aspose.com/words/net/aspose.words/document/) یک ویژگی [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) را ارائه می دهد که حاوی اعضایی است که می توانند برای کنترل نحوه به روز رسانی فیلدها در سند استفاده شوند.

مثال کد زیر نشان می دهد که چگونه می توان فرهنگ مورد استفاده برای قالب بندی تاریخ در طول به روز رسانی فیلد و mail merge را از کجا انتخاب کرد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
