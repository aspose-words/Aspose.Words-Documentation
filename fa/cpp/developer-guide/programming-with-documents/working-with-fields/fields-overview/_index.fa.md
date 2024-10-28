---
title: نمای کلی فیلدها در C++
second_title: Aspose.Words برای C++
articleTitle: نمای کلی زمینه ها
linktitle: نمای کلی زمینه ها
description: "فیلد ها در جزئیات، کدهای فیلد و نتایج فیلد توضیح داده شده در Aspose.Words برای C++."
type: docs
weight: 10
url: /fa/cpp/fields-overview/
---

Aspose.Words یک کتابخانه کلاس است که برای پردازش سمت سرور اسناد Microsoft Word طراحی شده است و از زمینه ها به روش های زیر پشتیبانی می کند:

- تمام فیلد های یک سند در طول باز/ذخیره و تبدیل حفظ می شوند
- امکان به روز رسانی نتایج بیشتر زمینه ها وجود دارد

در این مقاله، ما در مورد ساختار میدان، زمینه های پشتیبانی شده در Aspose.Words و جزئیات کار با چنین زمینه هایی بیشتر خواهیم آموخت.

## ساختار فیلدها

یک میدان شامل:

- گره های شروع و جدا کننده میدان برای شامل محتوای تشکیل دهنده کد میدان (معمولا به عنوان متن ساده) استفاده می شود.
- جدا کننده میدان و پایان میدان شامل نتیجه میدان است. این می تواند از انواع مختلف محتوا از متن گرفته تا پاراگراف ها و جداول تشکیل شود.
- بعضی از فیلد ها ممکن است جداکننده نداشته باشند که به این معنی است که کل محتوا کد فیلد را تشکیل می دهد.
- کد فیلد رفتار فیلد را تعریف می کند و شامل شناسه فیلد و اغلب پارامترهای دیگر مانند نام فیلد و سوئیچ ها است.
- نتیجه میدان شامل آخرین ارزیابی میدان است. این مقدار در نتیجه فیلد ذخیره می شود و همان چیزی است که به کاربر نمایش داده می شود. برخی از فیلد ها ممکن است هیچ نتیجه ای از فیلد نداشته باشند بنابراین هیچ چیز را در سند نمایش نمی دهند. به همین ترتیب، برخی از زمینه ها ممکن است هنوز به روز نشده باشند، بنابراین هیچ نتیجه ای در زمینه نخواهند داشت.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

محتوایی که کد فیلد را تشکیل می دهد به عنوان گره های [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) بین [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) و [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/) ذخیره می شود. نتیجه فیلد بین گره های **FieldSeparator** و [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) ذخیره می شود و می تواند از انواع مختلف محتوا تشکیل شود. به طور معمول نتیجه فیلد فقط شامل متن تشکیل شده از گره های **Run** است، با این حال ممکن است گره **FieldEnd** در یک پاراگراف کاملا متفاوت قرار گیرد و بنابراین نتیجه فیلد شامل [گره های سطح بلوک](/words/cpp/logical-levels-of-nodes-in-a-document/) مانند گره های **Table** و **Paragraph** نیز.

در اینجا یک نمای از چگونگی ذخیره یک فیلد در Aspose.Words با استفاده از مثال "*DocumentExplorer"* است.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## فیلد های موجود در مدل Aspose.Words Document Object (DOM)

هنگامی که یک سند به Aspose.Words بارگذاری می شود، فیلد های سند به Aspose.Words بارگذاری می شوند. [Aspose.Words مدل شی سند](/words/cpp/aspose-words-document-object-model/) به عنوان مجموعه ای از اجزای جداگانه (گره ها). یک فیلد واحد به عنوان مجموعه ای از گره های **FieldStart**، **FieldSeparator** و **FieldEnd** همراه با محتوای بین این گره ها بارگذاری می شود. اگر یک فیلد نتیجه فیلد نداشته باشد، هیچ گره **FieldSeparator** وجود نخواهد داشت. همه این گره ها همیشه در خط (به عنوان کودکان [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) یا [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)) یافت می شوند.

در Aspose.Words هر یک از گره های **FieldXXX** از [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/) مشتق شده است. این کلاس یک ویژگی برای بررسی نوع فیلد نشان داده شده توسط گره مشخص شده از طریق ویژگی [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/) فراهم می کند. به عنوان مثال **FieldType.FieldMergeField** نشان دهنده یک فیلد ادغام در سند است.

{{% alert color="primary" %}}

برخی از زمینه های خاص وجود دارد که در یک سند ورد وجود دارد که به عنوان مجموعه ای از گره های **FieldXXX** وارد Aspose.Words نمی شوند. به عنوان مثال، فیلد `LINK` و فیلد `INCLUDEPICTURE` به عنوان یک شی `Shape` وارد Aspose.Words می شوند. این شی ویژگی هایی را برای کار با داده های تصویر که به طور معمول در این زمینه ها ذخیره می شوند، فراهم می کند. برای وارد کردن `INCLUDEPICTURE` فیلد به عنوان **FieldXXX** گره ها گزینه [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) باید به عنوان **true** مشخص شود.

فیلد های فرم نیز به عنوان کلاس ویژه خود به Aspose.Words وارد می شوند. کلاس [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) یک فیلد فرم را در یک سند ورد نشان می دهد و روش های اضافی را که به یک فیلد فرم خاص است، ارائه می دهد.

{{% /alert %}}

## زمینه های پشتیبانی شده

محاسبه فیلد های زیر در نسخه فعلی Aspose.Wordsپشتیبانی می شود:

- = (فرمول)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## تجزیه و تحلیل میدان پیچیده

Aspose.Words از روش Microsoft Word پردازش فیلد ها پیروی می کند و در نتیجه به درستی مدیریت می کند:

- زمین های آشیانه ای:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- استدلال میدان می تواند نتیجه یک میدان آشیانه ای باشد
- فیلد ها می توانند در یک کد فیلد و همچنین در نتیجه فیلد قرار بگیرند
- فضاها / بدون فضاها، نقل قول ها / بدون نقل قول ها، شخصیت های فرار در زمینه ها و غیره:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- زمینه هایی که در پاراگراف های مختلف قرار دارند

### زمینه های فرمول

Aspose.Words یک پیاده سازی بسیار جدی از موتور فرمول را فراهم می کند و از موارد زیر پشتیبانی می کند:

- عملگرهای ریاضی و منطقی:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- توابع:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- مرجع به نشانه ها:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- سوئیچ های قالب بندی شماره:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

توابع زیر در عبارات پشتیبانی می شوند: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

فقط برخی از عبارات `IF` که Aspose.Words به راحتی می تواند محاسبه کند باید به شما ایده ای از قدرت این ویژگی را بدهد:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words از تمام سوئیچ های قالب بندی تاریخ و زمان موجود در Microsoft Word پشتیبانی می کند، برخی از نمونه ها عبارتند از:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge فیلدها

Aspose.Words هیچ محدودیتی برای پیچیدگی فیلد های mail merge در اسناد شما اعمال نمی کند و از فیلد های `IF` و فرمول های آشیانه ای پشتیبانی می کند و حتی می تواند نام فیلد ادغام را با استفاده از فرمول محاسبه کند.

چند نمونه از فیلد های mail merge که Aspose.Words پشتیبانی می کنند:

- Mail merge سوئیچ های میدان:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- زمینه های ادغام آشیانه ای در یک فرمول:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- نام فیلد ادغام را در زمان اجرا محاسبه کنید:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- حرکت مشروط به رکورد بعدی در منبع داده:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### سوئیچ های فرمت

یک فیلد در یک سند می تواند دارای سوئیچ های قالب بندی باشد که مشخص می کند که چگونه مقدار حاصل باید قالب بندی شود. Aspose.Words از سوئیچ های فرمت زیر پشتیبانی می کند:

- @ - قالب بندی تاریخ و زمان
- \\\# - قالب بندی اعداد
- \\\\\\\\* کلاه
- \\\\\\\\* FirstCap
- \\\\\\\\* پایین تر
- \\\\\\\\* بالا
- \\\\\\\\* CHARFORMAT – نتیجه را با توجه به اولین کاراکتر کد فیلد فرمت کنید
- \\\\\\\\* MERGEFORMAT – نتیجه را با توجه به نحوه قالب بندی نتیجه قدیمی فرمت کنید

### قالب بندی تاریخ و شماره در فیلد ها

وقتی Aspose.Words یک نتیجه فیلد را محاسبه می کند، اغلب باید یک رشته را به یک عدد یا مقدار تاریخ تجزیه کند و همچنین آن را به یک فرمت کند string.By پیش فرض Aspose.Words از فرهنگ موضوع فعلی برای انجام تجزیه و قالب بندی هنگام محاسبه مقادیر فیلد در هنگام به روز رسانی فیلد و mail merge استفاده می کند. همچنین گزینه هایی در قالب کلاس [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/) وجود دارد که اجازه می دهد کنترل بیشتری بر روی فرهنگ مورد استفاده در هنگام به روز رسانی میدان داشته باشد.

- به طور پیش فرض، ویژگی [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) به [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) تنظیم شده است که فیلد ها را با استفاده از فرهنگ موضوع فعلی فرمت می کند
- این ویژگی را می توان به [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) تنظیم کرد بنابراین مجموعه زبان از کد فیلد فیلد برای قالب بندی استفاده می شود

### قالب بندی با استفاده از فرهنگ موضوع فعلی

برای کنترل فرهنگ مورد استفاده در هنگام محاسبه فیلد، فقط قبل از فراخوانی محاسبه فیلد، ویژگی **CurrentCulture** را به فرهنگ مورد نظر خود تنظیم کنید.

مثال کد زیر نشان می دهد که چگونه فرهنگ مورد استفاده در زمینه های قالب بندی را در هنگام به روز رسانی تغییر دهید:

EXAMPLE

استفاده از فرهنگ فعلی برای فرمت کردن فیلد ها به یک سیستم اجازه می دهد تا به راحتی و به طور مداوم کنترل کند که چگونه تمام فیلد های سند در طول به روز رسانی فیلد فرمت می شوند.

### قالب بندی با استفاده از فرهنگ در سند

از سوی دیگر، Microsoft Word هر فیلد جداگانه را بر اساس زبان متن موجود در فیلد فرمت می کند (به طور خاص، از کد فیلد اجرا می شود). گاهی اوقات در طول به روز رسانی فیلد این ممکن است رفتار مورد نظر باشد، به عنوان مثال اگر شما اسناد جهانی شده ای دارید که حاوی محتوای بسیاری از زبان های مختلف است و می خواهید هر فیلد به محلی که از متن استفاده می شود احترام بگذارد. Aspose.Words همچنین از این قابلیت پشتیبانی می کند.

کلاس [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) یک ویژگی [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) را فراهم می کند که شامل اعضای است که می تواند برای کنترل نحوه به روز رسانی فیلد ها در سند استفاده شود.

مثال کد زیر نشان می دهد که چگونه مشخص کنیم که فرهنگ مورد استفاده برای قالب بندی تاریخ در طول به روز رسانی فیلد و mail merge از کجا انتخاب شده است:

EXAMPLE