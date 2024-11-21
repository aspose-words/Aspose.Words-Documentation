---
title: Insert Fields در Java
second_title: Aspose.Words برای Java
articleTitle: Insert Fields
linktitle: Insert Fields
description: "راه های مختلف برای قرار دادن زمینه ها به سند شما با استفاده از Java..."
type: docs
weight: 20
url: /fa/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

روش های مختلفی برای وارد کردن زمینه ها به یک سند وجود دارد:

- استفاده از [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- استفاده از [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- استفاده از [Aspose.Words Document Object Model (DOM)](/words/fa/java/aspose-words-document-object-model/)

در این مقاله، ما به هر طریق با جزئیات بیشتری نگاه می کنیم و تجزیه و تحلیل می کنیم که چگونه با استفاده از این گزینه ها زمینه های خاصی را وارد کنیم.

## قرار دادن فیلد ها به یک سند با استفاده از DocumentBuilder

In In In Aspose.Words The the the [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)روش برای قرار دادن زمینه های جدید به یک سند استفاده می شود. پارامتر اول کد کامل زمینه را می پذیرد که باید وارد شود. پارامتر دوم اختیاری است و اجازه می دهد نتیجه میدان به صورت دستی تنظیم شود. اگر این عرضه نشود، میدان به طور خودکار به روز می شود. شما می توانید null یا خالی را به این پارامتر منتقل کنید تا یک فیلد را با یک ارزش فیلد خالی قرار دهید. اگر شما در مورد ترکیب کد زمینه خاص مطمئن نیستید، زمینه را در زمینه ایجاد کنید Microsoft Word ابتدا و تغییر دهید تا کد فیلد آن را ببینید.

{{% alert color="primary" %}}

اگر کد زمینه شما دارای یک پارامتر حاوی یک فضا باشد، باید در علامت های گفتاری محصور شود. در غیر این صورت میدان در هر دو Microsoft Word و Aspose.Words ممکن است آنطور که انتظار می رود کار نکند، زیرا پارامتر توسط هر دو به عنوان کوتاه مدت درمان می شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک فیلد ادغام را به یک سند وارد کنید. **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

همان تکنیک برای قرار دادن زمینه های کاشته شده در سایر زمینه ها استفاده می شود.

مثال کد زیر نشان می دهد که چگونه زمینه های موجود در یک زمینه دیگر را با استفاده از **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### محلی در سطح Field

یک شناسه زبان یک مخفف عددی بین المللی استاندارد برای زبان در یک کشور یا منطقه جغرافیایی است. با Aspose.Words, شما می توانید محلی را در سطح زمینه با استفاده از [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) اموال، که دریافت و یا تنظیم شناسه محلی میدان.

مثال کد زیر نشان می دهد که چگونه از این گزینه استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### فیلد Untyped/Empty Field

اگر می خواهید رشته های غیر تایپ شده / خالی را وارد کنید ({}درست مثل Microsoft Word اجازه دهید، می توانید از آن استفاده کنید [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) روش با [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) پارامتر برای وارد کردن یک فیلد به یک سند Word، می توانید ترکیب کلیدی Ctrl + F9 را فشار دهید.

مثال کد زیر نشان می دهد که چگونه یک فیلد خالی را به سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Insert `COMPARE` Field Field

The The The The The The `COMPARE` زمینه دو ارزش را مقایسه می کند و مقدار عددی 1 را اگر مقایسه باشد، باز می گرداند. true 0 اگر مقایسه باشد false...

مثال کد زیر نشان می دهد که چگونه اضافه کنیم `COMPARE` زمینه های استفاده از DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Insert `IF` Field Field

The The The The The The `IF` زمینه می تواند برای ارزیابی استدلال های مشروط استفاده شود.

مثال کد زیر نشان می دهد که چگونه اضافه کنیم `IF` زمینه های استفاده از DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## قرار دادن فیلد ها به یک سند با استفاده از FieldBuilder

راه جایگزین برای قرار دادن زمینه ها در Aspose.Words این است که [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) کلاس این رابط روان را برای مشخص کردن سوئیچ های زمینه و ارزش های استدلال به عنوان متن، گره ها یا حتی زمینه های کاشته شده فراهم می کند.

مثال کد زیر نشان می دهد که چگونه یک فیلد را به یک سند وارد کنید. **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## قرار دادن فیلد ها با استفاده از DOM

شما همچنین می توانید انواع مختلف زمینه ها را با استفاده از [Aspose.Words Document Object Model (DOM)](/words/fa/java/aspose-words-document-object-model/)... در این بخش، به چند مثال نگاه خواهیم کرد.

### اضافه کردن Merge فیلد به یک سند با استفاده از DOM

`MERGEFIELD` فیلد در سند Word می تواند توسط [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) کلاس می توانید استفاده کنید **FieldMergeField** کلاس برای انجام عملیات زیر:

- نام فیلد ادغام را مشخص کنید
- قالب بندی میدان ادغام را مشخص کنید
- متن را مشخص کنید که بین جداکننده میدان و پایان زمینه ادغام شده است
- مشخص کردن متن پس از میدان ادغام اگر زمینه خالی نیست
- متن را قبل از میدان ادغام قرار دهید اگر زمینه خالی نباشد

{{% alert color="primary" %}}

برای جزئیات بیشتر، ببینید [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) کلاس API...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه به اضافه کردن `MERGE` استفاده از Field DOM به یک پاراگراف در یک سند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Inserting Mail Merge `ADDRESSBLOCK` زمینه در یک سند با استفاده از DOM

The The The The The The `ADDRESSBLOCK` استفاده می شود برای قرار دادن یک mail merge بلوک آدرس در یک سند Word `ADDRESSBLOCK` فیلد در سند Word می تواند توسط [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) کلاس می توانید استفاده کنید **FieldAddressBlock** کلاس برای انجام عملیات زیر:

- مشخص کنید که آیا نام کشور / منطقه را در این زمینه قرار دهید
- مشخص کنید که آیا آدرس را با توجه به کشور / منطقه دریافت کننده به عنوان تعریف شده توسط *CODE (Universal post Union 2006)
- نام کشور / منطقه ای را مشخص کنید
- – نام و فرمت آدرس را مشخص کنید
- – مشخص کردن شناسه زبان مورد استفاده برای فرمت آدرس

{{% alert color="primary" %}}

برای جزئیات بیشتر، ببینید [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) کلاس API...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه به اضافه کردن Mail Merge `ADDRESSBLOCK` استفاده از Field DOM به یک پاراگراف در یک سند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Inserting `ADVANCE` زمینه در یک سند بدون استفاده از DocumentBuilder

The The The The The The `ADVANCE` زمینه برای جبران متن بعدی در یک خط به سمت چپ، راست، بالا یا پایین استفاده می شود. `ADVANCE` فیلد در سند Word می تواند توسط [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) کلاس می توانید از آن استفاده کنید **FieldAdvance** کلاس برای انجام عملیات زیر:

- تعداد نکاتی را که متن به دنبال آن باید به صورت عمودی از لبه بالای صفحه منتقل شود مشخص کنید
- تعداد نکاتی را که متن به دنبال آن باید به صورت افقی از لبه چپ ستون، فریم یا جعبه متن حرکت کند مشخص کنید
- تعداد نکاتی را که متن زیر باید به سمت چپ، راست، بالا یا پایین حرکت کند مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، ببینید [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) کلاس API...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه به اضافه کردن `ADVANCE` استفاده از Field DOM به یک پاراگراف در یک سند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Inserting `ASK` زمینه در یک سند بدون استفاده از DocumentBuilder

The The The The The The `ASK` زمینه برای بارگذاری کاربر برای متن برای اختصاص به یک علامت در سند Word استفاده می شود. `ASK` فیلد در سند Word می تواند توسط [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) کلاس می توانید استفاده کنید **FieldAsk** کلاس برای انجام عملیات زیر:

- نام نشانه را مشخص کنید
- تعیین پاسخ کاربر پیش فرض (ارزش ذاتی موجود در پنجره فوری)
- مشخص کنید که آیا پاسخ کاربر باید یک بار در هر یک دریافت شود mail merge عملیات
- – متن سریع (عنوان پنجره سریع) را مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، ببینید [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) کلاس API...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه به اضافه کردن `ASK` استفاده از Field DOM به یک پاراگراف در یک سند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Inserting `AUTHOR` زمینه در یک سند بدون استفاده از DocumentBuilder

The The The The The The `AUTHOR` این زمینه برای مشخص کردن نام نویسنده سند از `Document` خواص `AUTHOR` فیلد در سند Word می تواند توسط [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) کلاس می توانید استفاده کنید **FieldAuthor** کلاس برای انجام عملیات زیر:

- نام نویسنده سند را مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، ببینید [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) کلاس API...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه به اضافه کردن `AUTHOR` استفاده از Field DOM به یک پاراگراف در یک سند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Inserting `INCLUDETEXT` زمینه در یک سند بدون استفاده از DocumentBuilder

The The The The The The `INCLUDETEXT` زمینه شامل متن و گرافیک موجود در سند به نام در کد زمینه است. شما می توانید کل سند یا بخشی از سند ذکر شده توسط یک نشانه را وارد کنید. این زمینه در سند Word توسط INCLUDETEXT نشان داده شده است. می توانید استفاده کنید [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) کلاس برای انجام عملیات زیر:

- • نام بوک مارک را از سند موجود مشخص کنید
- مکان سند را مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، ببینید [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) کلاس API...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه به اضافه کردن `INCLUDETEXT` استفاده از Field DOM به یک پاراگراف در یک سند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Inserting `TOA` زمینه در یک سند بدون استفاده از DocumentBuilder

The The The The The The `TOA` (جدایی از مقامات) زمینه ایجاد و وارد کردن یک میز از مقامات. The The The The The The `TOA` فیلد جمع آوری ورودی های مشخص شده توسط `TA` (Table of Authority Entry) Microsoft Office Word وارد می شود `TOA` فیلد زمانی که شما کلیک می کنید * جدول کارشناسی از مقامات * در **جدول مقامات** گروه در **References** تب هنگامی که مشاهده می کنید `TOA` زمینه در سند شما، نحو به نظر می رسد این:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

برای جزئیات بیشتر، ببینید [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) کلاس API...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه به اضافه کردن `TOA` استفاده از Field DOM به یک پاراگراف در یک سند

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
