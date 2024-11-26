---
title: کار با Document Properties در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با Document Properties
linktitle: کار با Document Properties
description: "Aspose.Words for .NET اجازه می دهد تا برخی از اطلاعات مفید در مورد سند خود را ذخیره کنید، مانند API و شماره نسخه یا Date مجاز، در ویژگی های سند داخلی یا سفارشی با استفاده از C#."
type: docs
weight: 10
url: /fa/net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

ویژگی های سند اجازه می دهد تا برخی از اطلاعات مفید در مورد سند شما ذخیره شود. این خواص را می توان به دو گروه تقسیم کرد:

* سیستم یا داخلی که حاوی مقادیری مانند عنوان سند، نام نویسنده، آمار سند و موارد دیگر است.
* تعریف شده توسط کاربر یا سفارشی، ارائه شده به عنوان جفت نام-مقدار که در آن کاربر می تواند نام و مقدار را تعریف کند.

دانستن این نکته مفید است که اطلاعات مربوط به API و شماره نسخه مستقیماً در اسناد خروجی نوشته می شود. به عنوان مثال، پس از تبدیل یک سند به PDF، Aspose.Words فیلد "برنامه" را با "Aspose.Words" و قسمت "PDF Producer" را با "Aspose.Words for .NET YY.MN" پر می کند، جایی که *YY.M.N* نسخه Aspose.Words است که برای تبدیل استفاده می شود.. برای جزئیات بیشتر، [نام تولید کننده یا تولید کننده در اسناد خروجی درج شده است](/words/fa/net/generator-or-producer-name-included-in-output-documents/) را ببینید.

{{% alert color="primary" %}}

توجه داشته باشید که **نمی تواند هدایت کند** Aspose.Words برای تغییر یا حذف این اطلاعات از اسناد خروجی.

{{% /alert %}}

## دسترسی به ویژگی های سند

برای دسترسی به ویژگی های سند در Aspose.Words از:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) برای به دست آوردن ویژگی های داخلی.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) برای به دست آوردن خواص سفارشی.

**BuiltInDocumentProperties** و **CustomDocumentProperties** مجموعه ای از اشیاء [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) هستند. این اشیاء را می توان از طریق ویژگی ایندکس کننده با نام یا با فهرست به دست آورد.

**BuiltInDocumentProperties** علاوه بر این دسترسی به ویژگی های سند را از طریق مجموعه ای از ویژگی های وارد شده فراهم می کند که مقادیری از نوع مناسب را برمی گرداند. **CustomDocumentProperties** شما را قادر می سازد تا ویژگی های سند را از یک سند اضافه یا حذف کنید.

کلاس [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) به شما امکان می دهد نام، مقدار و نوع یک ویژگی سند را بدست آورید. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) یک شی را برمی‌گرداند، اما مجموعه‌ای از روش‌ها وجود دارد که به شما امکان می‌دهد مقدار ویژگی را به یک نوع خاص تبدیل کنید. پس از اینکه نوع خاصیت را شناختید، می توانید از یکی از روش های **DocumentProperty.ToXXX** مانند **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) و **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/) برای بدست آوردن مقدار نوع مناسب استفاده کنید.

مثال کد زیر نحوه برشمردن تمام خصوصیات داخلی و سفارشی را در یک سند نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx) دانلود کنید.

{{% /alert %}}

در Microsoft Word، می توانید با استفاده از منوی "File → Properties" به ویژگی های سند دسترسی پیدا کنید.

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## افزودن یا حذف ویژگی های سند

شما نمی توانید ویژگی های سند داخلی را با استفاده از Aspose.Words اضافه یا حذف کنید. شما فقط می توانید مقادیر آنها را تغییر دهید یا به روز کنید.

برای افزودن ویژگی های سند سفارشی با Aspose.Words، از روش [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/) استفاده کنید، نام ویژگی جدید و مقدار نوع مناسب را ارسال کنید. متد شی **DocumentProperty** جدید ایجاد شده را برمی گرداند.

برای حذف ویژگی های سفارشی، از روش [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/) استفاده کنید، نام ویژگی را برای حذف به آن ارسال کنید، یا از روش [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) برای حذف ویژگی با فهرست استفاده کنید. شما همچنین می توانید با استفاده از روش [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/) تمام ویژگی ها را حذف کنید.

مثال کد زیر بررسی می کند که آیا یک ویژگی سفارشی با یک نام مشخص در یک سند وجود دارد یا خیر و چند ویژگی سند سفارشی دیگر اضافه می کند:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx) دانلود کنید.

{{% /alert %}}

مثال کد زیر نحوه حذف یک ویژگی سند سفارشی را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## ویژگی های سند داخلی را به روز کنید

Aspose.Words به‌طور خودکار ویژگی‌های سند را به‌روزرسانی نمی‌کند، همانطور که Microsoft Word با برخی از ویژگی‌ها انجام می‌دهد، اما روشی برای به‌روزرسانی برخی ویژگی‌های آماری داخلی ارائه می‌دهد. برای محاسبه مجدد و به روز رسانی ویژگی های زیر، متد [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) را فراخوانی کنید:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## یک ویژگی سفارشی جدید مرتبط با محتوا ایجاد کنید

Aspose.Words روش [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) را برای ایجاد یک ویژگی سند سفارشی جدید مرتبط با محتوا فراهم می کند. اگر [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) نامعتبر باشد، این ویژگی شیء ویژگی جدید ایجاد شده یا null را برمی گرداند.

مثال کد زیر نحوه پیکربندی پیوند به یک ویژگی سفارشی را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## دریافت متغیرهای سند

شما می توانید مجموعه ای از متغیرهای سند را با استفاده از ویژگی [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/) دریافت کنید. نام و مقادیر متغیرها رشته هستند.

مثال کد زیر نحوه شمارش متغیرهای سند را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx) دانلود کنید.

{{% /alert %}}

## اطلاعات شخصی را از سند حذف کنید

اگر می خواهید یک سند Word را با افراد دیگر به اشتراک بگذارید، ممکن است بخواهید اطلاعات شخصی مانند نام نویسنده و شرکت را حذف کنید. برای انجام این کار از ویژگی [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) برای تنظیم پرچم استفاده کنید که نشان می دهد Microsoft Word پس از ذخیره سند، تمام اطلاعات کاربر را از نظرات، ویرایش ها و ویژگی های سند حذف می کند.

مثال کد زیر نحوه حذف اطلاعات شخصی را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

تنظیم این گزینه در واقع اطلاعات شخصی را هنگام پردازش یک سند در Aspose.Words حذف نمی کند و فقط بر رفتار Microsoft Word تأثیر می گذارد.

{{% /alert %}}
