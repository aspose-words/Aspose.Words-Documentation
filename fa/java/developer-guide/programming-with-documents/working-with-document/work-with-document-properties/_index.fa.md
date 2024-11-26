---
title: کار با ویژگی های سند در Java
second_title: Aspose.Words برای Java
articleTitle: کار با ویژگی های سند
linktitle: کار با ویژگی های سند
description: "Aspose.Words برای Java اجازه می دهد تا برخی از اطلاعات مفید در مورد سند شما، مانند API و شماره نسخه یا تاریخ مجاز، در ویژگی های سند داخلی یا سفارشی ذخیره شود."
type: docs
weight: 10
url: /fa/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

ویژگی های سند اجازه ذخیره اطلاعات مفید در مورد سند شما را می دهد. این خواص را می توان به دو گروه تقسیم کرد:

* سیستم یا داخلی که شامل مقادیر مانند عنوان سند، نام نویسنده، آمار سند و دیگران است.
* تعریف شده توسط کاربر یا سفارشی، به عنوان جفت نام و ارزش ارائه شده است که در آن کاربر می تواند نام و ارزش را تعریف کند.

مفید است بدانید که اطلاعات مربوط به API و شماره نسخه به طور مستقیم به اسناد خروجی نوشته شده است. به عنوان مثال، پس از تبدیل یک سند به PDF، Aspose.Words فیلد "Application" را با "Aspose.Words" و فیلد "PDF Producer" را با "Aspose.Words برای Java YY پر می کند.M. N "، که در آن *YY.M.N* نسخه Aspose.Words برای تبدیل استفاده می شود. برای جزئیات بیشتر، به [نام ژنراتور یا تولید کننده در اسناد خروجی گنجانده شده است](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

توجه داشته باشید که شما **cannot direct** Aspose.Words برای تغییر یا حذف این اطلاعات از اسناد خروجی.

{{% /alert %}}

## ویژگی های سند دسترسی

برای دسترسی به ویژگی های سند در Aspose.Words استفاده کنید:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) برای بدست آوردن املاک داخلی.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) برای بدست آوردن ویژگی های سفارشی.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

کلاس [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) به شما اجازه می دهد تا نام، ارزش و نوع یک ویژگی سند را بدست آورید. [ارزش]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) یک شی را باز می گرداند، اما مجموعه ای از روش ها وجود دارد که به شما اجازه می دهد ارزش خاصیت را به یک نوع خاص تبدیل کنید. پس از اینکه با نوع خاصیت آشنا شدید، می توانید از یکی از روش های **DocumentProperty.ToXXX** مانند **DocumentProperty.**[ToStringاستفاده کنید](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) و **DocumentProperty.** [ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt)، برای به دست آوردن ارزش نوع مناسب.

مثال کد زیر نشان می دهد که چگونه تمام ویژگی های داخلی و سفارشی را در یک سند فهرست کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

در Microsoft Word، می توانید با استفاده از منوی "File → Properties" به ویژگی های سند دسترسی پیدا کنید.

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## اضافه کردن یا حذف ویژگی های سند

شما نمی توانید ویژگی های سند داخلی را با استفاده از Aspose.Words اضافه یا حذف کنید. شما فقط می توانید ارزش های خود را تغییر دهید یا به روز کنید.

برای اضافه کردن ویژگی های سند سفارشی با Aspose.Words، از روش [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) استفاده کنید، نام خاصیت جدید و ارزش نوع مناسب را منتقل کنید. روش شیء **DocumentProperty** تازه ایجاد شده را باز می گرداند.

برای حذف ویژگی های سفارشی، از روش [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) استفاده کنید، نام ویژگی را برای حذف به آن منتقل کنید، یا روش [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) برای حذف ویژگی با شاخص. شما همچنین می توانید تمام ویژگی ها را با استفاده از روش [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) حذف کنید.

مثال کد زیر بررسی می کند که آیا یک ویژگی سفارشی با نام داده شده در یک سند وجود دارد و چند ویژگی سند سفارشی دیگر را اضافه می کند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه یک ویژگی سند سفارشی را حذف کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## ویژگی های سند داخلی را به روز کنید

Aspose.Words به طور خودکار ویژگی های سند را به روز نمی کند، همانطور که Microsoft Word با برخی از ویژگی ها انجام می دهد، اما روشی را برای به روز رسانی برخی از ویژگی های سند داخلی آماری فراهم می کند. برای محاسبه مجدد و به روز رسانی ویژگی های زیر، روش [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) را فراخوانی کنید:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## ایجاد یک ویژگی سفارشی جدید مرتبط با محتوا

Aspose.Words روش [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) را برای ایجاد یک ویژگی سند سفارشی جدید مرتبط با محتوا فراهم می کند. این خاصیت اگر [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) نامعتبر باشد، شیء خاصیت جدید ایجاد شده یا null را باز می گرداند.

مثال کد زیر نشان می دهد که چگونه یک لینک به یک ویژگی سفارشی را پیکربندی کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## متغیرهای سند را دریافت کنید

شما می توانید مجموعه ای از متغیرهای سند را با استفاده از ویژگی [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) دریافت کنید. نام ها و مقادیر متغیر رشته ها هستند.

مثال کد زیر نشان می دهد که چگونه متغیرهای سند را شمارش کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب این مثال را از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## حذف اطلاعات شخصی از سند

اگر می خواهید یک سند Word را با افراد دیگر به اشتراک بگذارید، ممکن است بخواهید اطلاعات شخصی مانند نام نویسنده و شرکت را حذف کنید. برای انجام این کار از ویژگی [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) برای تنظیم پرچم استفاده کنید که نشان می دهد Microsoft Word تمام اطلاعات کاربر را از نظرات، بازبینی ها و ویژگی های سند پس از ذخیره سند حذف می کند.

{{% alert color="primary" %}}

تنظیم این گزینه در واقع اطلاعات شخصی را هنگام پردازش یک سند در Aspose.Words حذف نمی کند و فقط بر رفتار Microsoft Word تأثیر می گذارد.

{{% /alert %}}
