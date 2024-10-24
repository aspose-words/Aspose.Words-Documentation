---
title: مقدمه ای بر زمینه ها در Java
second_title: Aspose.Words برای Java
articleTitle: مقدمه ای بر Fields
linktitle: مقدمه ای بر Fields
description: "ویژگی فیلد ها در جزئیات، کدهای زمینه و نتایج زمینه توضیح داده شده در Aspose.Words برای Java..."
type: docs
weight: 10
url: /fa/java/introduction-to-fields/
---

Aspose.Words یک کتابخانه کلاس برای پردازش سمت سرور طراحی شده است Microsoft Word اسناد و پشتیبانی از زمینه ها به روش های زیر:

- تمام زمینه های موجود در یک سند در طول باز/save و تبدیل حفظ می شوند
- امکان به روز رسانی نتایج بیشتر زمینه ها

در این مقاله، ما بیشتر در مورد ساختار زمینه، زمینه های پشتیبانی شده در Aspose.Words, جزئیات کار با این زمینه ها

## ساختار Field Structure

یک زمینه شامل:

- از شروع زمینه و گره های جداکننده برای پوشش محتوایی که کد فیلد را تشکیل می دهد (معمولا به عنوان متن ساده) استفاده می شود.
- جداکننده میدان و پایان زمینه شامل نتیجه زمینه است. این می تواند از انواع مختلف محتوا اعم از اجرای متن به پاراگراف ها تا جداول ساخته شده است.
- برخی از زمینه ها ممکن است جداکننده ای نداشته باشند که به این معنی است که کل محتوا کد زمینه را تشکیل می دهد.
- کد زمینه رفتار این زمینه را تعریف می کند و از شناسه فیلد و اغلب پارامترهای دیگر مانند نام و سوئیچ های فیلد تشکیل شده است.
- نتیجه زمینه شامل آخرین ارزیابی این زمینه است. این ارزش در نتیجه زمینه ذخیره می شود و چیزی است که به کاربر نشان داده می شود. برخی از زمینه ها ممکن است هیچ نتیجه زمینه ای نداشته باشند بنابراین هیچ چیز را در سند نشان نمی دهند. به همین ترتیب، برخی از زمینه ها ممکن است به روز نشوند، بنابراین هیچ نتیجه زمینه ای نیز نخواهد داشت.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

محتوایی که کد فیلد را تشکیل می دهد به عنوان ذخیره می شود [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) گره های بین [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) و [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/)... نتیجه میدان بین **FieldSeparator** و [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) گره ها و می توانند از انواع مختلف محتوا تشکیل شوند. به طور معمول نتیجه زمینه شامل فقط متن ساخته شده از گره های Run است، با این حال ممکن است برای گره Field End در یک پاراگراف کاملا متفاوت قرار گیرد و در نتیجه نتیجه زمینه شامل می شود. [سطح منطقی گره ها در یک سند](/words/fa/java/logical-levels-of-nodes-in-a-document/) مانند **Table** و **Paragraph** همچنین گره ها

در اینجا یک دیدگاه از اینکه چگونه یک زمینه در Aspose.Words با استفاده از "DocumentExplorer" مثالی که می تواند در آن یافت شود [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer)...

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## فیلد ها در Aspose.Words Document Object Model ()DOM))

هنگامی که یک سند وارد می شود <span notrans="<span notrans=" Aspose.Words"=""></span>"> رشته های سند به داخل بارگذاری می شوند Aspose.Words Document Object Model به عنوان مجموعه ای از اجزای جداگانه (nodes) یک فیلد واحد به عنوان یک مجموعه از **FieldStart**, **FieldSeparator** و **FieldEnd** گره ها همراه با محتوای بین این گره ها اگر یک فیلد نتیجه ی زمینه ای نداشته باشد، هیچ چیز وجود نخواهد داشت. **FieldSeparator** گره همه این گره ها همیشه در خط (به عنوان کودکان) یافت می شوند. [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) یا [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)...

In In In Aspose.Words هر یک از **FieldXXX** گره ها از [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/)... این کلاس فراهم می کند یک ملک برای بررسی نوع زمینه نمایندگی شده توسط گره مشخص شده از طریق گره مشخص از طریق گره مشخص از طریق [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) مالکیت برای مثال `FieldType.FieldMergeField` نشان دهنده یک زمینه ادغام در سند است.

{{% alert color="primary" %}}

برخی از زمینه های خاص وجود دارد که در یک سند Word وجود دارد که به آن وارد نمی شوند. Aspose.Words به عنوان یک مجموعه **FieldXXX** گره ها برای مثال، `LINK` زمینه و `INCLUDEPICTURE` فیلد وارد می شود Aspose.Words به عنوان یک [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) جسم این شی ویژگی هایی را برای کار با داده های تصویری که به طور معمول در این زمینه ها ذخیره می شوند، فراهم می کند. واردات `INCLUDEPICTURE` میدان **FieldXXX** گره ها [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) گزینه باید مشخص شود **true**...

فیلدهای فرم نیز وارد می شوند Aspose.Words به عنوان کلاس خاص خود. The The The The The The [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) کلاس نشان دهنده یک فیلد فرم در یک سند Word است و روش های اضافی را فراهم می کند که به یک فیلد فرم خاص هستند.

{{% /alert %}}

## زمینه های پشتیبانی

محاسبه زمینه های زیر در نسخه فعلی پشتیبانی می شود Aspose.Words:

- = (فرم)
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
- `TOC` (از جمله TOT و TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## دانلود بازی Sophisticed Field

Aspose.Words پس از راه Microsoft Word زمینه ها را پردازش می کند و در نتیجه به درستی مدیریت می شود:

- زمینه های کاشته شده:
  `IF { =OR({ `COMپاریس` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- استدلال زمینه می تواند نتیجه یک زمینه لانه دار باشد
- زمینه ها را می توان در یک کد زمینه و همچنین در نتیجه زمینه قرار داد
- فضاهای / نه فضا، نقل قول و نقل قول، شخصیت های فرار در زمینه ها و غیره:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- زمینه هایی که در چندین پاراگراف قرار دارند

### فرمول زمین

Aspose.Words پیاده سازی بسیار جدی از موتور فرمول را فراهم می کند و از موارد زیر پشتیبانی می کند:

- اپراتورهای منطقی و ریاضی:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- توابع:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- ارجاع به نشانه ها:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- سوئیچ های قالب بندی عددی:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

توابع زیر در عبارات پشتیبانی می شوند: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE...

### `IF` و `COMPARE` فیلد های Field

برخی از `IF` عباراتی که Aspose.Words به راحتی می توانید محاسبه کنید باید ایده ای از اینکه این ویژگی چقدر قدرتمند است به شما بدهد:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` و `TIME` فیلد های Field

Aspose.Words پشتیبانی از تمام تاریخ و سوئیچ های قالب بندی زمان موجود در Microsoft Word, برخی مثال ها عبارتند از:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge فیلد های Field

Aspose.Words هیچ محدودیتی در پیچیدگی mail merge زمینه ها در اسناد شما و پشتیبانی از لانه دار `IF` و زمینه های فرمول و حتی می تواند نام میدان ادغام را با استفاده از یک فرمول محاسبه کند.

برخی از نمونه ها mail merge زمینه هایی که Aspose.Words پشتیبانی:

- Mail merge سوئیچ های فیلد:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- فیلدهای ادغام شده در فرمول:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- محاسبه نام میدان ادغام در زمان اجرا:
  `MERGEFIELD { `اگر` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- حرکت مشروط به رکورد بعدی در منبع داده:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### سوئیچ های Format Switches

یک زمینه در یک سند می تواند دارای سوئیچ های قالب بندی باشد که مشخص می کند که چگونه ارزش حاصل باید فرمت شود. Aspose.Words پشتیبانی از سوئیچ های فرمت زیر:

- @ - تاریخ و قالب بندی زمان
- ## - قالب بندی عددی
- \\\\\\\\* Caps
- * FirstCap
- \\\\\\\\* پایین تر
- \\\\\\\\* بالا
- * CHARFORMAT - نتیجه فرمت با توجه به شخصیت اول کد زمینه
- * MERGEFORMAT - نتیجه فرمت با توجه به اینکه چگونه نتیجه قدیمی فرمت شده است

### Date تعداد فرمت در زمینه ها

وقتی Aspose.Words نتیجه زمینه را محاسبه می کند، اغلب باید یک رشته را به یک عدد یا مقدار تاریخ تقسیم کند و همچنین آن را به یک رشته تبدیل کند. به طور پیش فرض Aspose.Words استفاده از فرهنگ فعلی رشته برای انجام تجزیه و تحلیل و قالب بندی در هنگام محاسبه ارزش های زمینه در طول به روز رسانی زمینه و mail merge... همچنین گزینه های ارائه شده در قالب [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) کلاس که اجازه می دهد تا کنترل بیشتری بر اینکه کدام فرهنگ در طول به روز رسانی زمینه استفاده می شود

* به طور پیش فرض [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) اموال برای [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) کدام قالب ها با استفاده از فرهنگ موضوعی فعلی
* این ملک را می توان تنظیم کرد [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) بنابراین زبان تنظیم شده از کد زمینه این زمینه برای قالب بندی به جای آن استفاده می شود

### قالب بندی با استفاده از فرهنگ فعلی Thread

برای کنترل فرهنگ مورد استفاده در محاسبات میدانی، فقط تنظیم کنید **CurrentCulture** مالکیت به یک فرهنگ از انتخاب خود را قبل از انجام محاسبات میدانی.

مثال کد زیر نشان می دهد که چگونه فرهنگ مورد استفاده در زمینه های قالب بندی در طول به روز رسانی را تغییر دهید:

(استفاده از بسته بندی عمومی فعلی تنظیمات.getLocale() و setLocale() به جای خصوصی `Thread.CurrentThread` | CurrentCulture

استفاده از فرهنگ فعلی به زمینه های فرمت اجازه می دهد تا یک سیستم به راحتی و به طور مداوم کنترل چگونه تمام زمینه های موجود در سند در طول به روز رسانی زمینه فرمت شده است.

### استفاده از فرهنگ در سند

از سوی دیگر، Microsoft Word هر زمینه فردی را بر اساس زبان متن موجود در این زمینه (به طور خاص، اجرا از کد زمینه). گاهی اوقات در طول به روز رسانی این ممکن است رفتار مورد نظر باشد، به عنوان مثال اگر شما اسناد جهانی شده حاوی محتوا از بسیاری از زبان های مختلف ساخته شده و مایل به احترام به محلی که از متن استفاده می شود. Aspose.Words همچنین از این قابلیت ها پشتیبانی می کند.

The The The The The The [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) کلاس یک [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) اموالی که شامل اعضایی است که می توانند برای کنترل چگونگی به روز رسانی میدان ها در داخل سند استفاده شوند.

مثال کد زیر نشان می دهد که چگونه فرهنگ مورد استفاده برای قالب بندی تاریخ در طول به روز رسانی زمینه و mail merge انتخاب شده از:

*
