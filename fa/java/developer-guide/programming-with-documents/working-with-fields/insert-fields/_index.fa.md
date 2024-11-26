---
title: فیلد ها را در Javaوارد کنید
second_title: Aspose.Words برای Java
articleTitle: فیلد ها را وارد کنید
linktitle: فیلد ها را وارد کنید
description: "روش های مختلف برای وارد کردن فیلد ها به سند خود با استفاده از Java."
type: docs
weight: 20
url: /fa/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

روش های مختلفی برای وارد کردن فیلد ها به یک سند وجود دارد:

- با استفاده از [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- با استفاده از [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- استفاده از [Aspose.Words مدل شیء سند (DOM)](/words/java/aspose-words-document-object-model/)

در این مقاله، ما به هر جهت با جزئیات بیشتری نگاه خواهیم کرد و نحوه وارد کردن زمینه های خاص با استفاده از این گزینه ها را تجزیه و تحلیل خواهیم کرد.

## وارد کردن فیلد ها به یک سند با استفاده از DocumentBuilder

در Aspose.Words روش [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) برای وارد کردن فیلد های جدید به یک سند استفاده می شود. پارامتر اول کد کامل فیلد فیلد را که باید وارد شود قبول می کند. پارامتر دوم اختیاری است و اجازه می دهد تا نتیجه فیلد فیلد به صورت دستی تنظیم شود. اگر این عرضه نشده باشد، این فیلد به طور خودکار به روز می شود. شما می توانید null یا empty را به این پارامتر منتقل کنید تا یک فیلد با یک مقدار فیلد خالی را وارد کنید. اگر در مورد نحو کد فیلد خاص مطمئن نیستید، ابتدا فیلد را در Microsoft Word ایجاد کنید و برای دیدن کد فیلد آن تغییر دهید.

{{% alert color="primary" %}}

اگر کد فیلد شما دارای پارامتر حاوی یک فضای است، باید در علامت های گفتاری قرار گیرد. در غیر این صورت فیلد در هر دو Microsoft Word و Aspose.Words ممکن است به عنوان انتظار کار نکند زیرا پارامتر توسط هر دو به عنوان قطع شده در نظر گرفته می شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک فیلد ادغام را با استفاده از **DocumentBuilder**در یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

همین تکنیک برای قرار دادن فیلد هایی که در داخل فیلد های دیگر قرار دارند استفاده می شود.

مثال کد زیر نشان می دهد که چگونه فیلد های آشیانه شده در یک فیلد دیگر را با استفاده از **DocumentBuilder**وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### محل را در سطح میدان مشخص کنید

شناسه زبان یک مخفف عددی استاندارد بین المللی برای زبان در یک کشور یا منطقه جغرافیایی است. با Aspose.Words می توانید محلی را در سطح فیلد با استفاده از ویژگی [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) مشخص کنید که محلی فیلد ID را بدست می آورد یا تنظیم می کند.

مثال کد زیر نشان می دهد که چگونه از این گزینه استفاده کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### فیلد غیر تایپ شده / خالی را وارد کنید

اگر می خواهید فیلد های غیر تایپ شده/خالی ({}) را درست مانند Microsoft Word allows وارد کنید، می توانید از روش [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) با پارامتر [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) استفاده کنید. برای قرار دادن یک فیلد در یک سند ورد، می توانید کلید ترکیبی "Ctrl + F9" را فشار دهید.

مثال کد زیر نشان می دهد که چگونه یک فیلد خالی را در سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### فیلد `COMPARE` را وارد کنید

فیلد `COMPARE` دو مقدار را مقایسه می کند و مقدار عددی 1 را اگر مقایسه درست باشد یا 0 را اگر مقایسه غلط باشد، باز می گرداند.

مثال کد زیر نشان می دهد که چگونه با استفاده از DocumentBuilder فیلد های `COMPARE`را اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### فیلد `IF` را وارد کنید

فیلد `IF` می تواند برای ارزیابی استدلال ها به صورت مشروط استفاده شود.

مثال کد زیر نشان می دهد که چگونه با استفاده از DocumentBuilder فیلد های `IF`را اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## وارد کردن فیلد ها به یک سند با استفاده از FieldBuilder

روش جایگزین برای وارد کردن فیلد ها در Aspose.Words کلاس [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) است. این رابط کاربری روان را برای مشخص کردن سوئیچ های میدان و مقادیر استدلال به عنوان متن، گره ها یا حتی زمینه های آشیانه ای فراهم می کند.

مثال کد زیر نشان می دهد که چگونه یک فیلد را با استفاده از **FieldBuilder**در یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## وارد کردن فیلد ها با استفاده از DOM

شما همچنین می توانید انواع مختلفی از زمینه ها را با استفاده از [Aspose.Words مدل شیء سند (DOM)](/words/java/aspose-words-document-object-model/). در این بخش به چند مثال می پردازیم.

### وارد کردن فیلد ادغام به یک سند با استفاده از DOM

`MERGEFIELD` field in Word document can be represented by the [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) class. You can use **FieldMergeField** class to perform the following operations:

- نام فیلد ادغام را مشخص کنید
- قالب بندی فیلد ادغام را مشخص کنید
- متن بین جدا کننده فیلد و انتهای فیلد فیلد ادغام را مشخص کنید
- متن وارد شده پس از فیلد ادغام را مشخص کنید اگر فیلد خالی نباشد
- متن وارد شده قبل از فیلد ادغام را مشخص کنید اگر فیلد خالی نباشد

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه فیلد `MERGE` را با استفاده از DOM به یک پاراگراف در یک سند اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### وارد کردن فیلد Mail Merge `ADDRESSBLOCK` به یک سند با استفاده از DOM

فیلد `ADDRESSBLOCK` برای وارد کردن یک بلوک آدرس Mail Merge در یک سند ورد استفاده می شود. `ADDRESSBLOCK` فیلد در سند ورد را می توان با کلاس [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) نشان داد. شما می توانید از کلاس **FieldAddressBlock** برای انجام عملیات زیر استفاده کنید:

- مشخص کنید که آیا نام کشور/منطقه را در این زمینه قرار دهید یا خیر
- مشخص کنید که آیا آدرس را با توجه به کشور/منطقه گیرنده به عنوان تعریف شده توسط POST*CODE قالب بندی کنید (اتحادیه جهانی پست 2006)
- نام کشور/منطقه حذف شده را مشخص کنید
- نام و قالب آدرس را مشخص کنید
- زبان ID مورد استفاده برای قالب بندی آدرس را مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه فیلد Mail Merge `ADDRESSBLOCK` را با استفاده از DOM به یک پاراگراف در یک سند اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### وارد کردن فیلد `ADVANCE` به یک سند بدون استفاده از DocumentBuilder

فیلد `ADVANCE` برای جبران متن بعدی در یک خط به سمت چپ، راست، بالا یا پایین استفاده می شود. `ADVANCE` فیلد در سند ورد را می توان با کلاس [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) نشان داد. شما می توانید از کلاس **FieldAdvance** برای انجام عملیات زیر استفاده کنید:

- تعداد نقاطی را که متن زیر از فیلد به صورت عمودی از لبه بالای صفحه منتقل می شود مشخص کنید
- تعداد نقاطی را که متن زیر از فیلد به صورت افقی از لبه چپ ستون، قاب یا جعبه متن منتقل می شود مشخص کنید
- تعداد نقاطی را که متن زیر از فیلد باید به چپ، راست، بالا یا پایین منتقل شود مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه فیلد `ADVANCE` را با استفاده از DOM به یک پاراگراف در یک سند اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### وارد کردن فیلد `ASK` به یک سند بدون استفاده از DocumentBuilder

فیلد `ASK` برای درخواست از کاربر برای متن برای اختصاص به یک نشانه در سند ورد استفاده می شود. `ASK` فیلد در سند ورد را می توان با کلاس [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) نشان داد. شما می توانید از کلاس **FieldAsk** برای انجام عملیات زیر استفاده کنید:

- نام نشانک را مشخص کنید
- مشخص کردن پاسخ پیش فرض کاربر (ارزش اولیه موجود در پنجره prompt)
- مشخص کنید که آیا پاسخ کاربر باید یک بار در هر عملیات Mail Merge دریافت شود
- متن prompt (عنوان پنجره prompt) را مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه فیلد `ASK` را با استفاده از DOM به یک پاراگراف در یک سند اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### وارد کردن فیلد `AUTHOR` به یک سند بدون استفاده از DocumentBuilder

فیلد `AUTHOR` برای مشخص کردن نام نویسنده سند از ویژگی های `Document` استفاده می شود. `AUTHOR` فیلد در سند ورد را می توان با کلاس [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) نشان داد. شما می توانید از کلاس **FieldAuthor** برای انجام عملیات زیر استفاده کنید:

- نام نویسنده سند را مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه فیلد `AUTHOR` را با استفاده از DOM به یک پاراگراف در یک سند اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### وارد کردن فیلد `INCLUDETEXT` به یک سند بدون استفاده از DocumentBuilder

فیلد `INCLUDETEXT` متن و گرافیک موجود در سند نامگذاری شده در کد فیلد را وارد می کند. شما می توانید کل سند یا بخشی از سند ذکر شده توسط یک نشانک را وارد کنید. این فیلد در سند ورد با INCLUDETEXT نشان داده شده است. شما می توانید از کلاس [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) برای انجام عملیات زیر استفاده کنید:

- نام علامت گذاری سند همراه را مشخص کنید
- محل سند را مشخص کنید

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه فیلد `INCLUDETEXT` را با استفاده از DOM به یک پاراگراف در یک سند اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### وارد کردن فیلد `TOA` به یک سند بدون استفاده از DocumentBuilder

میدان `TOA` (*Table of Authorities*) یک جدول از مقامات را می سازد و وارد می کند. فیلد `TOA` ورودی هایی را که با فیلد های `TA` (*Table of Authorities Entry*) مشخص شده اند جمع آوری می کند. Microsoft Office Word فیلد `TOA` را وارد می کند وقتی روی *Insert Table of Authorities* در گروه **Table of Authorities** در برگه **References** کلیک می کنید. وقتی فیلد `TOA` را در سند خود مشاهده می کنید، نحو به این شکل است:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

برای جزئیات بیشتر، به کلاس [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) API مراجعه کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه فیلد `TOA` را با استفاده از DOM به یک پاراگراف در یک سند اضافه کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
