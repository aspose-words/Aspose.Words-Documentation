---
title: نمای کلی فیلدها در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: نمای کلی فیلدها
linktitle: نمای کلی فیلدها
description: "می توانید با استفاده از Python به اصلاح فیلد دسترسی داشته باشید. فیلدهای سند در Aspose.Words Document Object Model (DOM) بارگذاری می شوند."
type: docs
weight: 10
url: /fa/python-net/fields-overview/
---


معمولاً یک فیلد، وقتی در Microsoft Word درج می‌شود، از قبل حاوی یک مقدار به‌روز است. به عنوان مثال، اگر فیلد یک فرمول یا یک شماره صفحه باشد، حاوی یک مقدار محاسبه شده صحیح برای نسخه داده شده سند خواهد بود. اما اگر برنامه‌ای دارید که سندی را با فیلدها تولید یا تغییر می‌دهد (مثلاً دو سند را ترکیب می‌کند یا با داده‌ها پر می‌کند) برای اینکه سند مفید باشد، همه فیلدها باید به‌روزرسانی شوند.

یک فیلد شامل موارد زیر است:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- گره‌های شروع فیلد و جداکننده برای در بر گرفتن محتوایی که کد فیلد را می‌سازد (معمولاً به صورت متن ساده) استفاده می‌شود
- جداکننده میدان و انتهای فیلد نتیجه میدان را در بر می گیرد. این می تواند از انواع مختلفی از محتوا اعم از اجراهای متن گرفته تا پاراگراف ها و جداول تشکیل شود.
- برخی از فیلدها ممکن است جداکننده نداشته باشند که به این معنی است که کل محتوا کد فیلد را تشکیل می دهد.
- کد فیلد رفتار فیلد را تعریف می کند و از شناسه فیلد و اغلب پارامترهای دیگر مانند نام فیلد و سوئیچ ها تشکیل شده است.
- نتیجه فیلد حاوی آخرین ارزیابی رشته است. این مقدار در نتیجه فیلد ذخیره می شود و همان چیزی است که به کاربر نمایش داده می شود. برخی از فیلدها ممکن است هیچ نتیجه فیلدی نداشته باشند، بنابراین چیزی در سند نمایش داده نمی شود. به همین ترتیب، برخی از فیلدها ممکن است هنوز به روز نشده باشند، بنابراین نتیجه فیلدی نیز نخواهند داشت.

در اینجا نمایه ای از نحوه ذخیره یک فیلد در Aspose.Words با استفاده از مثال "*DocumentExplorer"* که در [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) یافت می شود را مشاهده می کنید.

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words یک کتابخانه کلاسی است که برای پردازش اسناد Microsoft Word در سمت سرور طراحی شده است و فیلدها را به روش های زیر پشتیبانی می کند:

- تمام فیلدهای یک سند در هنگام باز کردن/ذخیره و تبدیل ها حفظ می شوند.
- امکان به روز رسانی نتایج برخی از محبوب ترین فیلدها وجود دارد.

## فیلدها در Microsoft Word

فیلدها در اسناد Microsoft Word پیچیده هستند. بیش از 50 نوع فیلد (هر کدام به روش محاسبه نتایج خاص خود نیاز دارند)، فرمول ها و عبارات، نشانک ها و مراجع، توابع و سوئیچ های مختلف وجود دارد. فیلدها نیز می توانند تو در تو باشند. معمولاً وقتی یک سند باز می شود، نتیجه فیلد (مقدار فیلد) برای همه فیلدهای سند نشان داده می شود. با فشار دادن **ALT+F9** می توانید نمایش نتیجه فیلد یا کدهای فیلد را در Microsoft Word برای همه فیلدها تغییر دهید.

| کد فیلد | نتیجه میدانی |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### درج فیلدها در Microsoft Word

برای درج فیلد در Microsoft Word:

1. روی منوی **Insert** کلیک کنید.
1. روی منوی کشویی **Quick Parts** کلیک کنید
1. **Field** را انتخاب کنید
1. با صفحه ای روبرو می شوید که به شما امکان می دهد جزئیات فیلد را وارد کنید. در سمت چپ لیستی از فیلدهای ممکن و در سمت راست صفحه ای برای ویرایش بصری خصوصیات فیلد به شما داده می شود.<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. علاوه بر این، می توانید دکمه **Field Codes** را فشار دهید که به شما امکان می دهد مستقیماً کد فیلد را بنویسید.<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. سوئیچ ها را می توان با استفاده از دکمه **Options** نیز وارد کرد<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. با استفاده از هر روش، فیلدهای مورد نظر را با اطلاعات مناسب پر کنید سپس **Ok** را فشار دهید.
1. فیلد در موقعیت مکان نما فعلی در سند درج می شود.<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### به روز رسانی فیلدها در Microsoft Word

برای به روز رسانی یک فیلد واحد در Microsoft Word:

1. Caret را به فیلدی که می خواهید به روز کنید منتقل کنید.
1. برای به روز رسانی فیلد، **F9** را فشار دهید.

برای به روز رسانی تمام فیلدها در Microsoft Word:

1. برای انتخاب تمام محتوای سند، **Ctrl+A** را فشار دهید.
1. برای به روز رسانی تمام فیلدهای موجود در انتخاب، **F9** را فشار دهید.

### جابجایی بین نمایش کد فیلد و نتیجه فیلد

برای جابجایی کدهای فیلد یک فیلد در Microsoft Word:

1. کارت را به قسمت مورد نظر منتقل کنید.
1. برای تغییر کد فیلد فقط برای این فیلد، **SHIFT+F9** را فشار دهید.

برای جابجایی کدهای فیلد همه فیلدها در Microsoft Word:

1. **ALT+F9** را فشار دهید

### تبدیل فیلدها به متن ثابت در Microsoft Word

برای تبدیل یک فیلد پویا به متن ایستا در Microsoft Word:

1. Caret را به فیلدی که می خواهید تبدیل کنید منتقل کنید.
1. برای تبدیل فیلدها به متن ثابت، **Ctrl+Shift+F9** را فشار دهید.

### حذف یک فیلد در Microsoft Word

برای حذف یک فیلد در Microsoft Word:

1. کل محتوای تشکیل دهنده فیلد را انتخاب کنید. اگر کدهای فیلد نمایش داده می شوند، باید مهاربندهای باز و انتهایی نیز انتخاب شوند.
1. **Delete** را فشار دهید تا کل فیلد حذف شود.

## فیلدها در Aspose.Words

هنگامی که یک سند در Aspose.Words بارگیری می شود، فیلدهای سند به عنوان مجموعه ای از مؤلفه های جداگانه (گره) در Aspose.Words Document Object Model بارگذاری می شوند. یک فیلد واحد به عنوان مجموعه ای از گره های [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)، [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) و [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) همراه با محتوای بین این گره ها بارگذاری می شود. اگر یک فیلد نتیجه فیلد نداشته باشد، هیچ گره [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) وجود نخواهد داشت. همه این گره ها همیشه به صورت درون خطی یافت می شوند (به عنوان فرزندان [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) یا [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

محتوایی که کد فیلد را تشکیل می دهد به عنوان گره های [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) بین [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) و [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) ذخیره می شود. نتیجه میدان بین گره های [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) و [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) ذخیره می شود و می تواند از انواع مختلف محتوا تشکیل شود. معمولاً نتیجه فیلد فقط حاوی متنی است که از گره‌های [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) تشکیل شده است، با این حال ممکن است گره [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) در یک پاراگراف کاملاً متفاوت قرار گیرد و بنابراین نتیجه میدان از گره‌های سطح بلوک مانند گره‌های [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) و [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) نیز تشکیل شود.

در Aspose.Words هر یک از گره های **FieldXXX** از [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/) مشتق شده اند. این کلاس یک ویژگی برای بررسی نوع فیلد ارائه شده توسط گره مشخص شده از طریق ویژگی [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/) فراهم می کند. به عنوان مثال [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) نشان دهنده یک فیلد ادغام در سند است.

{{% alert color="primary" %}}

فیلدهای خاصی در سند Word وجود دارند که به عنوان مجموعه ای از گره های **FieldXXX** به Aspose.Words وارد نمی شوند. به عنوان مثال، فیلد `LINK` و فیلد `INCLUDEPICTURE` به عنوان یک شی [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) به Aspose.Words وارد می شوند. این شیء خواصی را برای کار با داده های تصویری که معمولاً در این فیلدها ذخیره می شوند ارائه می دهد.

فیلدهای فرم نیز به عنوان کلاس خاص خود به Aspose.Words وارد می شوند. کلاس [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) یک فیلد فرم را در یک سند Word نشان می‌دهد و روش‌های دیگری را ارائه می‌کند که مخصوص یک فیلد فرم هستند.

{{% /alert %}}

### فیلدهای پشتیبانی شده در طول به روز رسانی

محاسبه فیلدهای زیر در نسخه فعلی Aspose.Words پشتیبانی می شود:

- = (فیلد فرمول)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (شامل TOT و TOF)
- تی سی

### تجزیه پیچیده

Aspose.Words از روشی پیروی می کند که Microsoft Word فیلدها را پردازش می کند و در نتیجه به درستی مدیریت می کند:

- زمینه های تو در تو
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- آرگومان فیلد می تواند نتیجه یک فیلد تو در تو باشد.
- فیلدها را می توان در یک کد فیلد و همچنین در نتیجه فیلد تودرتو کرد.
- فاصله / بدون فاصله، نقل قول / بدون نقل قول، کاراکترهای فرار در فیلدها و غیره:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- فیلدهایی که در چندین پاراگراف قرار دارند.

#### زمینه های فرمول

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

#### فیلدهای `IF` و `COMPARE`

فقط برخی از عبارات `IF` که Aspose.Words می تواند به راحتی محاسبه کند باید به شما ایده ای از قدرت این ویژگی بدهد:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### فیلدهای `DATE` و `TIME`

Aspose.Words از تمام سوئیچ‌های قالب‌بندی تاریخ و زمان موجود در Microsoft Word پشتیبانی می‌کند، چند نمونه عبارتند از:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### فیلدهای Mail Merge

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

#### سوئیچ های فرمت

یک فیلد در یک سند می‌تواند دارای سوئیچ‌های قالب‌بندی باشد که نحوه قالب‌بندی مقدار حاصل را مشخص می‌کند. Aspose.Words از سوئیچ های فرمت زیر پشتیبانی می کند:

- @ - قالب بندی تاریخ و زمان
- \\\# - قالب بندی اعداد
- \\\\\\\\* کلاه
- \\\\\\\\* FirstCap
- \\\\\\\\* پایین تر
- \\\\\\\\* بالا
- \\\\\\\\* CHARFORMAT - نتیجه را مطابق اولین کاراکتر کد فیلد قالب بندی کنید.
- \\\\\\\\* MERGEFORMAT - نتیجه را با توجه به نحوه قالب بندی نتیجه قدیمی قالب بندی کنید.

#### Date و قالب‌بندی اعداد در فیلدها

هنگامی که Aspose.Words یک نتیجه فیلد را محاسبه می‌کند، اغلب باید یک رشته را به یک عدد یا مقدار تاریخ تجزیه کند و همچنین آن را به یک رشته قالب‌بندی کند. Aspose.Words به‌طور پیش‌فرض از فرهنگ رشته فعلی برای انجام تجزیه و قالب‌بندی هنگام محاسبه مقادیر فیلد در طول به‌روزرسانی فیلد استفاده می‌کند. و mail merge. همچنین گزینه هایی در قالب کلاس [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) ارائه شده است که امکان کنترل بیشتر بر روی اینکه کدام فرهنگ در طول به روز رسانی میدانی استفاده می شود را فراهم می کند.

- به طور پیش فرض ویژگی [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) روی [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) تنظیم شده است که فیلدها را با استفاده از فرهنگ رشته فعلی قالب بندی می کند.
- این ویژگی را می توان روی [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) تنظیم کرد تا به جای آن از زبان مجموعه کد فیلد برای قالب بندی استفاده شود.

#### قالب بندی با استفاده از فرهنگ موضوع فعلی

برای کنترل فرهنگ مورد استفاده در حین محاسبه میدانی، فقط از روش **locale.setlocale** برای تنظیم فرهنگ انتخابی خود قبل از فراخوانی محاسبه میدان استفاده کنید.
مثال زیر نحوه تغییر فرهنگ مورد استفاده در قالب بندی فیلدها را در حین به روز رسانی نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

استفاده از فرهنگ فعلی برای قالب‌بندی فیلدها به یک سیستم اجازه می‌دهد تا به راحتی و به طور مداوم نحوه قالب‌بندی تمام فیلدهای سند را در طول به‌روزرسانی میدانی کنترل کند.

#### قالب بندی با استفاده از فرهنگ در سند

از سوی دیگر، Microsoft Word هر فیلد جداگانه را بر اساس زبان متن موجود در فیلد (به طور خاص اجرا شده از کد فیلد) قالب بندی می کند. گاهی اوقات در حین به روز رسانی فیلد ممکن است این رفتار مطلوب باشد، به عنوان مثال اگر اسناد جهانی شده ای دارید که حاوی محتوایی است که از زبان های مختلف تشکیل شده است و می خواهید هر فیلد به محلی مورد استفاده در متن احترام بگذارد. Aspose.Words نیز از این قابلیت پشتیبانی می کند.

کلاس [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) یک ویژگی [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) را ارائه می دهد که حاوی اعضایی است که می توانند برای کنترل نحوه به روز رسانی فیلدها در سند استفاده شوند. مثال زیر نشان می دهد که چگونه می توان فرهنگ مورد استفاده برای قالب بندی تاریخ در طول به روز رسانی فیلد و mail merge از کجا انتخاب شود.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## پیدا کردن کد فیلد و نتیجه فیلد

فیلدی که با استفاده از [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) درج می شود یک شی [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) را برمی گرداند. این یک کلاس نما است که روش های مفیدی را برای یافتن سریع چنین ویژگی هایی از یک میدان ارائه می دهد. توجه داشته باشید اگر فقط به دنبال نام فیلدهای ادغام در سند هستید، در عوض می توانید از روش داخلی [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) استفاده کنید. مثال زیر نحوه دریافت نام تمام فیلدهای ادغام در یک سند را نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## نحوه تغییر نام فیلدهای ادغام

مثال زیر نحوه تغییر نام فیلدهای ادغام در یک سند Word را نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
