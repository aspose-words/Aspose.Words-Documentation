---
title: فیلدها را در C# درج کنید
second_title: Aspose.Words برای .NET
articleTitle: درج فیلدها
linktitle: درج فیلدها
description: "نحوه درج فیلدها در یک سند با استفاده از C# - روش های مختلف را با مثال های کد یاد بگیرید."
type: docs
weight: 20
url: /fa/net/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

چندین روش مختلف برای درج فیلدها در یک سند وجود دارد:

* با استفاده از [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)
* با استفاده از [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
* با استفاده از [Aspose.Words Document Object Model (DOM)](/words/fa/net/aspose-words-document-object-model/)

در این مقاله، ما به هر یک از روش‌ها با جزئیات بیشتری نگاه می‌کنیم و نحوه درج فیلدهای خاص با استفاده از این گزینه‌ها را تحلیل می‌کنیم.

## درج فیلدها در یک سند با استفاده از DocumentBuilder

در Aspose.Words از روش [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) برای درج فیلدهای جدید در یک سند استفاده می شود. پارامتر اول، کد فیلد کامل فیلدی را که قرار است درج شود، می پذیرد. پارامتر دوم اختیاری است و اجازه می دهد تا نتیجه فیلد فیلد به صورت دستی تنظیم شود. اگر این ارائه نشده باشد، فیلد به طور خودکار به روز می شود. برای درج فیلدی با مقدار فیلد خالی، می توانید null یا خالی را به این پارامتر ارسال کنید. اگر در مورد نحو کد فیلد خاص مطمئن نیستید، ابتدا فیلد را در Microsoft Word ایجاد کنید و برای دیدن کد فیلد آن جابجا شوید.

{{% alert color="primary" %}}

اگر کد فیلد شما دارای پارامتری حاوی فاصله است، باید آن را در علامت گفتار محصور کنید. در غیر این صورت، فیلد در هر دو Microsoft Word و Aspose.Words ممکن است آنطور که انتظار می‌رود کار نکند، زیرا هر دو پارامتر را به‌عنوان کوتاه‌شده در نظر می‌گیرند.

{{% /alert %}}

مثال کد زیر نحوه درج یک فیلد ادغام در یک سند را با استفاده از **DocumentBuilder** نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

از همین تکنیک برای درج فیلدهای تو در تو در فیلدهای دیگر استفاده می شود.

مثال کد زیر نحوه درج فیلدهای تو در تو در فیلد دیگر را با استفاده از **DocumentBuilder** نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Locale را در سطح فیلد مشخص کنید

شناسه زبان یک مخفف عددی استاندارد بین المللی برای زبان یک کشور یا منطقه جغرافیایی است. با Aspose.Words، می توانید Locale را در سطح فیلد با استفاده از ویژگی [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/) که شناسه محلی فیلد را دریافت یا تنظیم می کند، تعیین کنید.

مثال کد زیر نحوه استفاده از این گزینه را نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### فیلد Untyped/Empty را درج کنید

اگر می خواهید فیلدهای بدون تایپ/خالی ({}) را درست همانطور که Microsoft Word اجازه می دهد وارد کنید، می توانید از روش [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) با پارامتر [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) استفاده کنید. برای درج یک فیلد در یک سند Word، می توانید ترکیب کلیدهای "Ctrl + F9" را فشار دهید.

مثال کد زیر نحوه درج یک فیلد خالی را در سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## درج فیلدها در یک سند با استفاده از FieldBuilder
راه جایگزین برای درج فیلدها در Aspose.Words کلاس [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/) است. این رابط روان برای تعیین سوئیچ های فیلد و مقادیر آرگومان به عنوان متن، گره یا حتی فیلدهای تودرتو فراهم می کند.

مثال کد زیر نحوه درج فیلد را با استفاده از **FieldBuilder** در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## درج فیلدها با استفاده از DOM

همچنین می توانید انواع مختلفی از فیلدها را با استفاده از [Aspose.Words Document Object Model (DOM)](/words/fa/net/aspose-words-document-object-model/) وارد کنید. در این بخش به چند نمونه نگاه می کنیم.

### درج فیلد Merge در یک سند با استفاده از DOM

فیلد `MERGEFIELD` در سند Word را می توان با کلاس [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) نشان داد. می توانید از کلاس **FieldMergeField** برای انجام عملیات زیر استفاده کنید:

- نام فیلد ادغام را مشخص کنید
- قالب بندی فیلد ادغام را مشخص کنید
- متنی را که بین جداکننده فیلد و انتهای فیلد ادغام است مشخص کنید
- در صورت خالی نبودن فیلد، متنی را که باید بعد از فیلد ادغام درج شود، مشخص کنید
- اگر فیلد خالی نباشد، متنی را که باید قبل از فیلد ادغام درج شود، مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نحوه اضافه کردن فیلد `MERGE` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### درج فیلد Mail Merge `ADDRESSBLOCK` در یک سند با استفاده از DOM

فیلد `ADDRESSBLOCK` برای درج بلوک آدرس Mail Merge در سند Word استفاده می شود. فیلد `ADDRESSBLOCK` در سند Word را می توان با کلاس [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) نشان داد. می توانید از کلاس **FieldAddressBlock** برای انجام عملیات زیر استفاده کنید:

- مشخص کنید که آیا نام کشور/منطقه در فیلد لحاظ شود یا خیر
- مشخص کنید که آیا آدرس را بر اساس کشور/منطقه گیرنده که توسط POST*CODE تعریف شده است (اتحادیه پست جهانی 2006) قالب بندی شود یا خیر
- نام کشور/منطقه حذف شده را مشخص کنید
- نام و فرمت آدرس را مشخص کنید
- شناسه زبان مورد استفاده برای قالب بندی آدرس را مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نحوه اضافه کردن فیلد Mail Merge `ADDRESSBLOCK` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### درج فیلد `ADVANCE` در یک سند بدون استفاده از DocumentBuilder

فیلد `ADVANCE` برای جابجایی متن بعدی در یک خط به سمت چپ، راست، بالا یا پایین استفاده می‌شود. فیلد `ADVANCE` در سند Word را می توان با کلاس [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) نشان داد. می توانید از کلاس **FieldAdvance** برای انجام عملیات زیر استفاده کنید:

- تعداد نقاطی را مشخص کنید که متن زیر فیلد باید به صورت عمودی از لبه بالای صفحه منتقل شود
- تعداد نقاطی را مشخص کنید که متن زیر فیلد باید به صورت افقی از لبه سمت چپ ستون، کادر یا کادر متنی جابجا شود
- تعداد نقاطی را مشخص کنید که متن زیر فیلد باید به چپ، راست، بالا یا پایین منتقل شود

{{% alert color="primary" %}}

برای جزئیات بیشتر، API کلاس [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) را ببینید.

{{% /alert %}}

مثال کد زیر نحوه اضافه کردن فیلد `ADVANCE` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### درج فیلد `ASK` در یک سند بدون استفاده از DocumentBuilder

فیلد `ASK` برای درخواست متن از کاربر برای اختصاص دادن متن به نشانک در سند Word استفاده می شود. فیلد `ASK` در سند Word را می توان با کلاس [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) نشان داد. می توانید از کلاس **FieldAsk** برای انجام عملیات زیر استفاده کنید:

- نام نشانک را مشخص کنید
- پاسخ پیش فرض کاربر را مشخص کنید (مقدار اولیه موجود در پنجره درخواست)
- مشخص کنید که آیا پاسخ کاربر باید یک بار در هر عملیات Mail Merge دریافت شود یا خیر
- متن درخواست را مشخص کنید (عنوان پنجره درخواست)

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نحوه افزودن فیلد `ASK` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### درج فیلد `AUTHOR` در یک سند بدون استفاده از DocumentBuilder

فیلد `AUTHOR` برای تعیین نام نویسنده سند از ویژگی های `Document` استفاده می شود. فیلد `AUTHOR` در سند Word را می توان با کلاس [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) نشان داد. می توانید از کلاس **FieldAuthor** برای انجام عملیات زیر استفاده کنید:

- نام نویسنده سند را مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نحوه اضافه کردن فیلد `AUTHOR` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### درج فیلد `INCLUDETEXT` در یک سند بدون استفاده از DocumentBuilder

فیلد `INCLUDETEXT` متن و گرافیک موجود در سند نامگذاری شده در کد فیلد را درج می کند. می توانید کل سند یا بخشی از سند را که توسط یک نشانک به آن ارجاع شده است وارد کنید. این فیلد در سند Word با INCLUDETEXT نشان داده می شود. می توانید از کلاس [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) برای انجام عملیات زیر استفاده کنید:

- نام نشانک سند ارائه شده را مشخص کنید
- محل سند را مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نحوه اضافه کردن فیلد `INCLUDETEXT` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### درج فیلد `TOA` در یک سند بدون استفاده از DocumentBuilder

فیلد `TOA` (*Table of Authorities*) جدولی از مقامات را ایجاد و درج می کند. فیلد `TOA` ورودی هایی را که با فیلدهای `TA` (*Table of Authorities Entry*) مشخص شده اند جمع آوری می کند. Microsoft Office Word وقتی روی *Insert Table of Authorities* در گروه **جدول مقامات** در برگه **References** کلیک می کنید، فیلد `TOA` را وارد می کند. هنگامی که فیلد `TOA` را در سند خود مشاهده می کنید، نحو به صورت زیر است:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نحوه اضافه کردن فیلد `TOA` با استفاده از DOM را به یک پاراگراف در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
