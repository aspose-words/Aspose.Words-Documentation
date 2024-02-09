---
title: کار با Document Properties
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با Document Properties
linktitle: کار با Document Properties
description: "Aspose.Words for Python اجازه می دهد تا برخی از اطلاعات مفید در مورد سند خود را ذخیره کنید، مانند API و شماره نسخه یا Date مجاز، در ویژگی های سند داخلی یا سفارشی."
type: docs
weight: 10
url: /fa/python-net/work-with-document-properties/
---

ویژگی های سند اجازه می دهد تا برخی از اطلاعات مفید در مورد سند شما ذخیره شود. این خواص را می توان به دو گروه تقسیم کرد:

* سیستم یا داخلی که حاوی مقادیری مانند عنوان سند، نام نویسنده، آمار سند و موارد دیگر است.
* تعریف شده توسط کاربر یا سفارشی، ارائه شده به عنوان جفت نام-مقدار که در آن کاربر می تواند نام و مقدار را تعریف کند.

دانستن این نکته مفید است که اطلاعات مربوط به API و شماره نسخه مستقیماً در اسناد خروجی نوشته می شود. به عنوان مثال، پس از تبدیل یک سند به PDF، Aspose.Words فیلد "برنامه" را با "Aspose.Words" و قسمت "PDF Producer" را با "Aspose.Words for .NET YY.MN" پر می کند، جایی که *YY.M.N* نسخه Aspose.Words است که برای تبدیل استفاده می شود.. برای جزئیات بیشتر، [نام تولید کننده یا تولید کننده در اسناد خروجی درج شده است](/words/fa/python-net/generator-or-producer-name-included-in-output-documents/) را ببینید.

{{% alert color="primary" %}}

توجه داشته باشید که **نمی تواند هدایت کند** Aspose.Words برای تغییر یا حذف این اطلاعات از اسناد خروجی.

{{% /alert %}}

## دسترسی به ویژگی های سند

برای دسترسی به ویژگی های سند در Aspose.Words از:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) برای به دست آوردن ویژگی های داخلی.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) برای به دست آوردن خواص سفارشی.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) و [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) مجموعه ای از اشیاء [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) هستند. این اشیاء را می توان از طریق ویژگی ایندکس کننده با نام یا با فهرست به دست آورد.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) علاوه بر این دسترسی به ویژگی های سند را از طریق مجموعه ای از ویژگی های وارد شده فراهم می کند که مقادیری از نوع مناسب را برمی گرداند. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) شما را قادر می سازد تا ویژگی های سند را از یک سند اضافه یا حذف کنید.

کلاس [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) به شما امکان می دهد نام، مقدار و نوع یک ویژگی سند را بدست آورید. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) یک شی را برمی گرداند، اما مجموعه ای از روش ها وجود دارد که به شما امکان می دهد مقدار ویژگی را به یک نوع خاص تبدیل کنید. بعد از اینکه متوجه شدید که نوع خاصیت چیست، می توانید از یکی از روش های **DocumentProperty.to_XXX** مانند **DocumentProperty.\_\_str\_\_** و [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/) برای بدست آوردن مقدار نوع مناسب استفاده کنید.

مثال کد زیر نحوه برشمردن تمام خصوصیات داخلی و سفارشی را در یک سند نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx) دانلود کنید.

{{% /alert %}}

در Microsoft Word، می توانید با استفاده از منوی "File → Properties" به ویژگی های سند دسترسی پیدا کنید.

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## افزودن یا حذف ویژگی های سند

شما نمی توانید ویژگی های سند داخلی را با استفاده از Aspose.Words اضافه یا حذف کنید. شما فقط می توانید مقادیر آنها را تغییر دهید یا به روز کنید.

برای افزودن ویژگی های سند سفارشی با Aspose.Words، از روش [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/) استفاده کنید، نام ویژگی جدید و مقدار نوع مناسب را ارسال کنید. متد شی [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) تازه ایجاد شده را برمی گرداند.

برای حذف ویژگی های سفارشی، از روش [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/) استفاده کنید، نام ویژگی را برای حذف به آن ارسال کنید، یا از روش [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) برای حذف ویژگی با فهرست استفاده کنید. شما همچنین می توانید با استفاده از روش [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/) تمام ویژگی ها را حذف کنید.

مثال کد زیر بررسی می کند که آیا یک ویژگی سفارشی با یک نام مشخص در یک سند وجود دارد یا خیر و چند ویژگی سند سفارشی دیگر اضافه می کند:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx) دانلود کنید.

{{% /alert %}}

مثال کد زیر نحوه حذف ویژگی سند سفارشی را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## ویژگی های سند داخلی را به روز کنید

Aspose.Words به‌طور خودکار ویژگی‌های سند را به‌روزرسانی نمی‌کند، همانطور که Microsoft Word با برخی از ویژگی‌ها انجام می‌دهد، اما روشی برای به‌روزرسانی برخی ویژگی‌های آماری داخلی ارائه می‌دهد. برای محاسبه مجدد و به روز رسانی ویژگی های زیر، متد [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) را فراخوانی کنید:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## یک ویژگی سفارشی جدید مرتبط با محتوا ایجاد کنید

Aspose.Words روش [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) را برای ایجاد یک ویژگی سند سفارشی جدید مرتبط با محتوا فراهم می کند. اگر **لینک_منبع** نامعتبر باشد، این ویژگی شیء ویژگی جدید ایجاد شده یا null را برمی گرداند.

مثال کد زیر نحوه پیکربندی پیوند به یک ویژگی سفارشی را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## دریافت متغیرهای سند

شما می توانید مجموعه ای از متغیرهای سند را با استفاده از ویژگی [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/) دریافت کنید. نام و مقادیر متغیرها رشته هستند.

مثال کد زیر نحوه افزودن و دسترسی به متغیرهای سند را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

فایل قالب این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx) دانلود کنید.

{{% /alert %}}

## اطلاعات شخصی را از سند حذف کنید

اگر می خواهید یک سند Word را با افراد دیگر به اشتراک بگذارید، ممکن است بخواهید اطلاعات شخصی مانند نام نویسنده و شرکت را حذف کنید. برای انجام این کار از ویژگی [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) برای تنظیم پرچم استفاده کنید که نشان می دهد Microsoft Word پس از ذخیره سند، تمام اطلاعات کاربر را از نظرات، ویرایش ها و ویژگی های سند حذف می کند.

مثال کد زیر نحوه حذف اطلاعات شخصی را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

تنظیم این گزینه در واقع اطلاعات شخصی را هنگام پردازش یک سند در Aspose.Words حذف نمی کند و فقط بر رفتار Microsoft Word تأثیر می گذارد.

{{% /alert %}}