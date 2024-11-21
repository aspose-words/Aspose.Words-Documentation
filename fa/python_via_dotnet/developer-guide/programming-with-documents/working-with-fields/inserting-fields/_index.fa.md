---
title: درج فیلدها در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: درج فیلدها
linktitle: درج فیلدها
description: "فیلدها را به روش های مختلف در یک سند در Python قرار دهید: با استفاده از `DocumentBuilder` یا DOM (Document Object Model)."
type: docs
weight: 20
url: /fa/python-net/inserting-fields/
timestamp: 2024-09-25-11-08-55
---

چندین روش مختلف برای درج فیلدها در یک سند وجود دارد:

- با استفاده از [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)
- با استفاده از [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)
- با استفاده از [Aspose.Words Document Object Model (DOM)](/words/fa/python-net/aspose-words-document-object-model/)

در این مقاله، ما به هر یک از روش‌ها با جزئیات بیشتری نگاه می‌کنیم و نحوه درج فیلدهای خاص با استفاده از این گزینه‌ها را تحلیل می‌کنیم.

## درج فیلدها در یک سند با استفاده از DocumentBuilder

در Aspose.Words از روش [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) برای درج فیلدهای جدید در یک سند استفاده می شود. پارامتر اول، کد فیلد کامل فیلدی را که قرار است درج شود، می پذیرد. پارامتر دوم اختیاری است و اجازه می دهد تا نتیجه فیلد فیلد به صورت دستی تنظیم شود. اگر این ارائه نشده باشد، فیلد به طور خودکار به روز می شود. برای درج فیلدی با مقدار فیلد خالی، می توانید null یا خالی را به این پارامتر ارسال کنید. اگر در مورد نحو کد فیلد خاص مطمئن نیستید، ابتدا فیلد را در Microsoft Word ایجاد کنید و برای دیدن کد فیلد آن جابجا شوید.

{{% alert color="primary" %}}

اگر کد فیلد شما دارای پارامتری حاوی فاصله است، باید آن را در علامت گفتار محصور کنید. در غیر این صورت، فیلد در هر دو Microsoft Word و Aspose.Words ممکن است آنطور که انتظار می‌رود کار نکند، زیرا هر دو پارامتر را به‌عنوان کوتاه‌شده در نظر می‌گیرند.

{{% /alert %}}

مثال کد زیر نحوه درج یک فیلد ادغام در یک سند را با استفاده از **DocumentBuilder** نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

مثال کد زیر نحوه درج یک فیلد ادغام با زبان آلمانی را در یک سند با استفاده از **DocumentBuilder** نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

از همین تکنیک برای درج فیلدهای تو در تو در فیلدهای دیگر استفاده می شود.

مثال کد زیر نحوه درج فیلدهای تو در تو در فیلد دیگر را با استفاده از **DocumentBuilder** نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### Locale را در سطح فیلد مشخص کنید

شناسه زبان یک مخفف عددی استاندارد بین المللی برای زبان یک کشور یا منطقه جغرافیایی است. با Aspose.Words، می توانید Locale را در سطح فیلد مشخص کنید. ویژگی [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) شناسه محلی فیلد را دریافت یا تنظیم می کند.

مثال کد زیر نحوه استفاده از این گزینه را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### فیلد Untyped/Empty را درج کنید

اگر می خواهید فیلدهای بدون تایپ/خالی ({}) را درست همانطور که Microsoft Word اجازه می دهد وارد کنید، می توانید از روش [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) با پارامتر [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none) استفاده کنید. برای درج یک فیلد در یک سند Word، می توانید ترکیب کلیدهای "Ctrl + F9" را فشار دهید.

مثال کد زیر نحوه درج یک فیلد خالی را در سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## درج فیلدها در یک سند با استفاده از FieldBuilder

راه جایگزین برای درج فیلدها در Aspose.Words کلاس [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/) است. این رابط روان برای تعیین سوئیچ های فیلد و مقادیر آرگومان به عنوان متن، گره یا حتی فیلدهای تودرتو فراهم می کند.

مثال کد زیر نحوه درج یک فیلد را با استفاده از **FieldBuilder** در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## درج فیلدها با استفاده از DOM

همچنین می توانید انواع مختلفی از فیلدها را با استفاده از [Aspose.Words Document Object Model (DOM)](/words/fa/python-net/aspose-words-document-object-model/) وارد کنید. در این بخش به چند نمونه نگاه می کنیم.

### درج فیلد Merge در یک سند با استفاده از DOM

فیلد `MERGEFIELD` در سند Word را می توان با کلاس [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) نشان داد. می توانید از کلاس [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) برای انجام عملیات زیر استفاده کنید:

- نام فیلد ادغام را مشخص کنید
- قالب بندی فیلد ادغام را مشخص کنید
- متنی را که بین جداکننده فیلد و انتهای فیلد ادغام است مشخص کنید
- در صورت خالی نبودن فیلد، متنی را که باید بعد از فیلد ادغام درج شود، مشخص کنید
- اگر فیلد خالی نباشد، متنی را که باید قبل از فیلد ادغام درج شود، مشخص کنید

مثال کد زیر نحوه اضافه کردن یک فیلد `Merge` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### درج فیلد Mail Merge `ADDRESSBLOCK` در یک سند با استفاده از DOM

فیلد `ADDRESSBLOCK` برای درج بلوک آدرس mail merge در سند Word استفاده می شود. فیلد `ADDRESSBLOCK` در سند Word را می توان با کلاس [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) نشان داد. می توانید از کلاس [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) برای انجام عملیات زیر استفاده کنید:

- مشخص کنید که آیا نام کشور/منطقه در فیلد لحاظ شود یا خیر
- مشخص کنید که آیا آدرس را بر اساس کشور/منطقه گیرنده که توسط POST*CODE تعریف شده است (اتحادیه پست جهانی 2006) قالب بندی شود یا خیر
- نام کشور/منطقه حذف شده را مشخص کنید
- نام و فرمت آدرس را مشخص کنید
- شناسه زبان مورد استفاده برای قالب بندی آدرس را مشخص کنید

مثال کد زیر نحوه اضافه کردن فیلد Mail Merge `ADDRESSBLOCK` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### درج فیلد `ADVANCE` در یک سند بدون استفاده از DocumentBuilder

فیلد `ADVANCE` برای جابجایی متن بعدی در یک خط به سمت چپ، راست، بالا یا پایین استفاده می‌شود. فیلد `ADVANCE` در سند Word را می توان با کلاس [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) نشان داد. می توانید از کلاس [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) برای انجام عملیات زیر استفاده کنید:

- تعداد نقاطی را مشخص کنید که متن زیر فیلد باید به صورت عمودی از لبه بالای صفحه منتقل شود
- تعداد نقاطی را مشخص کنید که متن زیر فیلد باید به صورت افقی از لبه سمت چپ ستون، کادر یا کادر متنی جابجا شود
- تعداد نقاطی را مشخص کنید که متن زیر فیلد باید به چپ، راست، بالا یا پایین منتقل شود

مثال کد زیر نحوه افزودن فیلد `ADVANCE` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### درج فیلد `ASK` در یک سند بدون استفاده از DocumentBuilder

فیلد `ASK` برای درخواست متن از کاربر برای اختصاص دادن متن به نشانک در سند Word استفاده می شود. فیلد `ASK` در سند Word را می توان با کلاس [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/) نشان داد. می توانید از کلاس **FieldAsk** برای انجام عملیات زیر استفاده کنید:

- نام نشانک را مشخص کنید
- پاسخ پیش فرض کاربر را مشخص کنید (مقدار اولیه موجود در پنجره درخواست)
- مشخص کنید که آیا پاسخ کاربر باید یک بار در هر عملیات mail merge دریافت شود یا خیر
- متن درخواست را مشخص کنید (عنوان پنجره درخواست)

مثال کد زیر نحوه اضافه کردن فیلد `ASK` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### درج فیلد `AUTHOR` در یک سند بدون استفاده از DocumentBuilder

فیلد `AUTHOR` برای تعیین نام نویسنده سند از ویژگی های `Document` استفاده می شود. فیلد `AUTHOR` در سند Word را می توان با کلاس [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/) نشان داد. می توانید از کلاس **FieldAuthor** برای انجام عملیات زیر استفاده کنید:

- نام نویسنده سند را مشخص کنید

مثال کد زیر نحوه اضافه کردن فیلد `AUTHOR` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### درج فیلد `INCLUDETEXT` در یک سند بدون استفاده از DocumentBuilder

فیلد `INCLUDETEXT` متن و گرافیک موجود در سند نامگذاری شده در کد فیلد را درج می کند. می توانید کل سند یا بخشی از سند را که توسط یک نشانک به آن ارجاع شده است وارد کنید. این فیلد در سند Word با INCLUDETEXT نشان داده می شود. می توانید از کلاس [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) برای انجام عملیات زیر استفاده کنید:

- نام نشانک سند ارائه شده را مشخص کنید
- محل سند را مشخص کنید

مثال کد زیر نحوه اضافه کردن فیلد `INCLUDETEXT` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### درج فیلد `TOA` در یک سند بدون استفاده از DocumentBuilder

فیلد `TOA` (*Table of Authorities*) جدولی از مقامات را می سازد و درج می کند. فیلد `TOA` ورودی‌هایی را جمع‌آوری می‌کند که با فیلدهای `TA` (*Table of Authorities Entry*) علامت‌گذاری شده‌اند. Microsoft Office Word وقتی روی *Insert Table of Authorities* در گروه **جدول مقامات** در برگه **References** کلیک می کنید، فیلد `TOA` را وارد می کند. هنگامی که فیلد `TOA` را در سند خود مشاهده می کنید، نحو به صورت زیر است:

{ `TOA` [Switches ] }

می توانید از کلاس [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) برای انجام عملیات با فیلد `TOA` استفاده کنید.

مثال کد زیر نحوه اضافه کردن فیلد `TOA` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}
