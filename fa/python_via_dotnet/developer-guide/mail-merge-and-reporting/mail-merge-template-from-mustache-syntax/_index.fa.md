---
title: Mail Merge Mustache نحو
second_title: Aspose.Words برای Python via .NET
articleTitle: Mail Merge قالب از Mustache نحو
linktitle: Mail Merge قالب از Mustache نحو
type: docs
description: "با استفاده از Python قالب هایی با نحو Mustache ایجاد کنید. Mustache نحو تنها گزینه ای است که با قالب هایی که شامل فیلد (HTML یا TXT نیستند استفاده می شود. با قالب های Word، شما دو گزینه دارید: فیلدها یا نحو Mustache."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /fa/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words به شما اجازه می دهد تا علاوه بر قالب های آشنا، قالب هایی با نحو mustache ایجاد کنید. A Mustache یک نوع جایگزین از نحو قالب است که شامل نام برچسب های محصور شده توسط `{{ }}` است و توسط یک شی مدل که شامل داده های قالب است، پشتیبانی می شود.

نحو Mustache تنها گزینه برای استفاده با قالب هایی است که شامل زمینه هایی مانند HTML و TXT قالب نیستند. با قالب های Word، شما دو گزینه برای استفاده از فیلد ها یا نحو Mustache دارید.

نحو Mustache از برچسب *foreach* پشتیبانی می کند که جایگزین استفاده از Mail Merge با مناطق است. بنابراین مزیت این است که شما می توانید از نحو mustache استفاده کنید اگر به دلایلی قادر نیستید یا به سادگی نمی خواهید از زمینه های ادغام و مناطق ادغام استفاده کنید.

همچنین می توانید فیلد های Mail Merge را با برخی از فیلد های اضافی با استفاده از برچسب *foreach* که در تصویر زیر نشان داده شده است، ترکیب کنید.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## یک قالب Mustache ایجاد کنید

اولین نکته مهم برای روشن شدن این است که Mustache یک موتور قالب بندی نیست. Mustache یک نوع نحوی دیگر است که برای هر قالب در یک [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) پشتیبانی شده توسط Aspose.Words در دسترس است. بنابراین، شما می توانید چنین الگویی را هم از نظر برنامه نویسی و هم از طریق رابط کاربری ایجاد کنید، فقط باید نحو خاصی را در نظر بگیرید و با مشخصات Mustache مطابقت داشته باشید.

فرض کنید که شما باید همان ایمیل را به 50 دریافت کننده ارسال کنید تا سلام را با نام های اول مربوطه شخصی سازی کنید. شما می توانید نام اول گیرنده را با یک جای نگهدارنده به صورت زیر جایگزین کنید:

> Dear {{FirstName}}
>
> I hereby...

سوال اینجا: چگونه می توانید 50 ایمیل از یک قالب Mustache ایجاد کنید ؟ برای پاسخ به این سوال، شما باید یک Mail Merge با مناطق برای پر کردن بریس های طنزی برای نگهدارنده های جای در قالب با داده های واقعی و تولید یک سند خروجی انجام دهید.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

همانطور که از مثال بالا متوجه شدید، در Mustache شما باید از بریس های طنزی برای نگهدارنده هایی که شبیه mustache هستند استفاده کنید وقتی بریس های طنزی را 90 درجه در جهت عقربه های ساعت می چرخانید.

{{% /alert %}}

## با نحو Mustache کار کنید

Mustache به عنوان یک ترتیب بدون منطق نشان داده می شود زیرا فاقد هر گونه دستورات جریان کنترل خاص مانند *for* حلقه ها و *if* و *else* شرایط است. اما شما می توانید از برچسب های بخش پردازش لیست ها و لامبداها برای دستیابی به ارزیابی مشروط و حلقه استفاده کنید. بنابراین برای قرار دادن نحو Mustache در عملیات Mail Merge، باید از ویژگی [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) استفاده کنید و مقدار آن را به *True* تنظیم کنید.

## از فیلد های `IF` برای هوشمند کردن Mail Merge استفاده کنید

Aspose.Words به شما اجازه می دهد از Mail Merge فیلدها و Mustache برچسب ها با دستور `IF` استفاده کنید. فیلد های `IF` می توانند در هر سند Mail Merge برای سرکوب فضاهای ناخواسته و کاما در صورت خالی بودن یک فیلد استفاده شوند.

فرمول فیلد `IF` در زیر نشان داده شده است:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

در اینجا، این شرط می تواند یک فیلد ادغام یا یک برچسب Mustache باشد.

برای مثال، شما می توانید از `IF` فیلد استفاده کنید اگر شما نیاز به وارد کردن "او"، "او"، "او" یا "او" بسته به جنسیت به عنوان زیر:

**{ IF { MERGEFIELD Gender } = "MALE" "متن واقعی " " متن کاذب"}**

**{ IF "{{ GENDER }}" = "MALE" "متن واقعی " " متن کاذب"}**

مثال کد زیر نشان می دهد که چگونه یک عملیات Mail Merge را با Mustache برچسب ها و `IF` فیلد ها انجام دهیم:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

شما می توانید تفاوت بین سند را قبل از استفاده از ویژگی [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) مشاهده کنید:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

و پس از اعمال خاصیت [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
