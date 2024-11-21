---
title: کار با Document Properties در Java
second_title: Aspose.Words برای Java
articleTitle: کار با Document Properties
linktitle: کار با Document Properties
description: "Aspose.Words برای Java اجازه می دهد تا برخی از اطلاعات مفید را در مورد سند خود ذخیره کنید، مانند API نسخه شماره یا مجاز Date, در خواص سند داخلی یا سفارشی"
type: docs
weight: 10
url: /fa/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

ویژگی های سند اجازه می دهد تا برخی از اطلاعات مفید را در مورد سند خود ذخیره کنید. این خواص را می توان به دو گروه تقسیم کرد:

* • سیستم یا داخلی که حاوی مقادیری مانند عنوان سند، نام نویسنده، آمار سند و دیگران است.
* تعریف کاربر یا سفارشی، به عنوان جفت ارزش نام ارائه شده است که کاربر می تواند هر دو نام و ارزش را تعریف کند.

مفید است بدانید که اطلاعات در مورد API نسخه شماره به طور مستقیم به اسناد خروجی نوشته شده است. به عنوان مثال، پس از تبدیل یک سند به PDF، Aspose.Words پر کردن در زمینه "درخواست" با "Aspose.Words" و زمینه "تولید کننده" با "Aspose.Words برای Java YY.M.N، جایی که *YY.M.N* نسخه ای از Aspose.Words برای تبدیل استفاده می شود. برای جزئیات بیشتر، ببینید [ژنراتور یا نام تولید کننده شامل اسناد خروجی](/words/fa/java/generator-or-producer-name-included-in-output-documents/)...

{{% alert color="primary" %}}

توجه داشته باشید که **نمی تواند مستقیم** Aspose.Words تغییر یا حذف این اطلاعات از اسناد خروجی

{{% /alert %}}

## Access Document Properties

برای دسترسی به خواص سند در Aspose.Words استفاده:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) برای به دست آوردن خواص داخلی

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) برای به دست آوردن خواص سفارشی.

**BuiltInDocumentProperties** و **CustomDocumentProperties** مجموعه هایی از [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) اشیاء این اشیاء را می توان از طریق مالکیت شاخص توسط نام یا با شاخص به دست آورد.

**BuiltInDocumentProperties** همچنین دسترسی به ویژگی های سند را از طریق مجموعه ای از املاک وارد شده که ارزش های بازگشت نوع مناسب را فراهم می کند. **CustomDocumentProperties** شما را قادر می سازد تا ویژگی های سند را از یک سند اضافه یا حذف کنید.

The The The The The The [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) کلاس به شما اجازه می دهد تا نام، ارزش و نوع یک ملک سند را دریافت کنید. [MPEG)https://reference.aspose.com/word/java/com.aspose.word/documentproperty# دانلود موسیقی متن فیلم Punch Punch Punch Punch Punch Punch Punch Punch Punch Punch Punch Punch Punch Punch Punch Punch Punch Punch Punch Punch Punch GTS Punch Punch Punch Punch، Ricoh Punch GTS {0} دانلود موسیقی متن بازی The Punch بازی Punch Punch {1}دانلود موسیقی متن فیلم Punch Punch Punch Punch Punch Punch Punch The Punch](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) و **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), برای به دست آوردن ارزش نوع مناسب.

مثال کد زیر نشان می دهد که چگونه تمام خواص ساخته شده و سفارشی را در یک سند خلاصه کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)...

{{% /alert %}}

In In In Microsoft Word, شما می توانید با استفاده از منوی "File → Properties" به خواص سند دسترسی پیدا کنید.

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Add or Remove Document Properties

شما نمی توانید خواص سند داخلی را با استفاده از آن اضافه یا حذف کنید. Aspose.Words... شما فقط می توانید ارزش های خود را تغییر دهید یا به روز کنید.

اضافه کردن ویژگی های سند سفارشی با Aspose.Words, استفاده از [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) روش، انتقال نام ملک جدید و ارزش نوع مناسب. این روش جدید را باز می گرداند **DocumentProperty** جسم

برای حذف خواص سفارشی، استفاده از [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) روش، عبور از آن نام ملک برای حذف یا [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) روش حذف ملک توسط index شما همچنین می توانید تمام خواص را با استفاده از [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) روش

مثال کد زیر بررسی می کند که آیا یک ملک سفارشی با یک نام خاص در یک سند وجود دارد و چند ویژگی سند سفارشی دیگر اضافه می کند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک ملک سند سفارشی را حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## به روز رسانی Built-In Document Properties

Aspose.Words به طور خودکار اسناد را به روز نمی کند، همانطور که Microsoft Word با برخی از خواص، اما یک روش برای به روز رسانی برخی از ویژگی های سند ساخت و ساز آماری فراهم می کند. Call The Call [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) روش محاسبه مجدد و به روز رسانی خواص زیر:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## ایجاد یک مالکیت سفارشی جدید متصل به محتوا

Aspose.Words فراهم می کند [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) روش ایجاد یک ویژگی سند سفارشی جدید مرتبط با محتوا این اموال به جسم تازه ایجاد شده و یا باطل بازمی گردد اگر [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) بی اعتبار است.

مثال کد زیر نشان می دهد که چگونه یک لینک را به یک ملک سفارشی پیکربندی کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## دانلود بازی Get Document Variables

شما می توانید مجموعه ای از متغیرهای سند را با استفاده از [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) مالکیت نام ها و ارزش های متغیر رشته هستند.

مثال کد زیر نشان می دهد که چگونه متغیرهای سند را تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx)...

{{% /alert %}}

## حذف اطلاعات شخصی از سند

اگر می خواهید یک سند Word را با دیگران به اشتراک بگذارید، ممکن است بخواهید اطلاعات شخصی مانند نام نویسنده و شرکت را حذف کنید. برای انجام این کار، [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) اموال برای تعیین پرچم نشان می دهد که Microsoft Word تمام اطلاعات کاربر را از نظرات، تجدید نظر و ویژگی های سند پس از صرفه جویی در سند حذف خواهد کرد.

{{% alert color="primary" %}}

تنظیم این گزینه در واقع اطلاعات شخصی را حذف نمی کند در حالی که پردازش یک سند در Aspose.Words و تنها بر Microsoft Word رفتار

{{% /alert %}}
