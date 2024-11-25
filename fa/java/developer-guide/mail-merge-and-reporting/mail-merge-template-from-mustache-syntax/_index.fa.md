---
title: Mail Merge قالب از Mustache نحو
second_title: Aspose.Words برای Java
articleTitle: Mail Merge قالب از Mustache نحو
linktitle: Mail Merge قالب از Mustache نحو
type: docs
description: "قالب هایی با نحو Mustache ایجاد کنید. Mustache نحو تنها گزینه ای است که با قالب هایی که شامل فیلد نیستند (HTML یا TXT) استفاده می شود. با قالب های Word، شما دو گزینه دارید: فیلدها یا نحو Mustache با استفاده از Java."
keywords: "mail merge template mustache syntax java, Mail Merge java, mustache syntax java"
weight: 40
url: /fa/java/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words به شما اجازه می دهد تا علاوه بر قالب های آشنا، قالب هایی با نحو mustache ایجاد کنید. Mustache یک نوع جایگزین از نحو قالب است که شامل نام برچسب های محصور شده و توسط یک شی مدل که حاوی داده های قالب است، پشتیبانی می شود.

نحو Mustache تنها گزینه برای استفاده با قالب هایی است که شامل زمینه هایی مانند HTML و TXT قالب نیستند. با قالب های Word، شما دو گزینه برای استفاده از فیلد ها یا نحو Mustache دارید.

نحو Mustache از برچسب *foreach* پشتیبانی می کند که جایگزین استفاده از Mail Merge با مناطق است. بنابراین مزیت این است که شما می توانید از نحو mustache استفاده کنید اگر به دلایلی قادر نیستید یا به سادگی نمی خواهید از زمینه های ادغام و مناطق ادغام استفاده کنید.

همچنین می توانید فیلد های Mail Merge را با برخی از فیلد های اضافی با استفاده از برچسب *foreach* که در تصویر زیر نشان داده شده است، ترکیب کنید.

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax.png" alt="mustache_syntax_aspose_words_java" style="width:800px"/>

## یک قالب Mustache ایجاد کنید

اولین نکته مهم برای روشن شدن این است که Mustache یک موتور قالب بندی نیست. Mustache یک نوع نحوی دیگر است که برای هر قالب در یک [فرمت بار](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) پشتیبانی شده توسط Aspose.Words در دسترس است. بنابراین، شما می توانید چنین الگویی را هم از نظر برنامه نویسی و هم از طریق رابط کاربری ایجاد کنید، فقط باید نحو خاصی را در نظر بگیرید و با مشخصات Mustache مطابقت داشته باشید.

فرض کنید که شما باید همان ایمیل را به 50 دریافت کننده ارسال کنید تا سلام را با نام های اول مربوطه شخصی سازی کنید. شما می توانید نام اول گیرنده را با یک جای نگهدارنده به صورت زیر جایگزین کنید:

> Dear {{FirstName}}
>
> I hereby...

سوال اینجا: چگونه می توانید 50 ایمیل از یک قالب Mustache ایجاد کنید ؟ برای پاسخ به این سوال، شما باید یک Mail Merge با مناطق برای پر کردن بریس های طنزی برای نگهدارنده های جای در قالب با داده های واقعی و تولید یک سند خروجی انجام دهید.

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-template.png" alt="mustache_template_aspose_words_java" style="width:650px"/>

{{% alert color="primary" %}}

همانطور که از مثال بالا متوجه شدید، در Mustache شما باید از بریس های طنزی برای نگهدارنده هایی که شبیه mustache هستند استفاده کنید وقتی بریس های طنزی را 90 درجه در جهت عقربه های ساعت می چرخانید.

{{% /alert %}}

## با نحو Mustache کار کنید

Mustache به عنوان یک ترتیب بدون منطق نشان داده می شود زیرا فاقد هر گونه دستورات جریان کنترل خاص مانند *for* حلقه ها و *if* و *else* شرایط است. اما شما می توانید از برچسب های بخش پردازش لیست ها و لامبداها برای دستیابی به ارزیابی مشروط و حلقه استفاده کنید. بنابراین برای قرار دادن نحو Mustache در عملیات Mail Merge، باید از ویژگی [UseNonMergeFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getUseNonMergeFields) استفاده کنید و مقدار آن را به *True* تنظیم کنید.

مثال کد زیر نشان می دهد که چگونه برچسب های Mustache را با داده های خاص جایگزین کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-MustacheSyntaxUsingDataTable.java" >}}

شما می توانید تفاوت بین سند را قبل از اجرای Mail Merge با مناطق همراه با استفاده از ویژگی **UseNonMergeFields** مشاهده کنید:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax-1.png" alt="mustache_syntax_aspose_words_java" style="width:400px"/>

{{% alert color="primary" %}}

یک بخش با یک پوند شروع می شود و با یک برش به پایان می رسد. یعنی، `{{#foreach list}}` یک بخش "foreach" را شروع می کند در حالی که `{{/foreach list}}` آن را به پایان می رساند.

{{% /alert %}}

و پس از اعمال Mail Merge با مناطق:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax-2.png" alt="mustache_syntax_result_aspose_words_java" style="width:300px"/>

## از فیلد های `IF` برای هوشمند کردن Mail Merge استفاده کنید

Aspose.Words به شما اجازه می دهد از Mail Merge فیلدها و Mustache برچسب ها با دستور `IF` استفاده کنید. فیلد های `IF` می توانند در هر سند Mail Merge برای سرکوب فضاهای ناخواسته و کاما در صورت خالی بودن یک فیلد استفاده شوند.

فرمول فیلد `IF` در زیر نشان داده شده است:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

در اینجا، این شرط می تواند یک فیلد ادغام یا یک برچسب Mustache باشد.

برای مثال، شما می توانید از `IF` فیلد استفاده کنید اگر شما نیاز به وارد کردن "او"، "او"، "او" یا "او" بسته به جنسیت به عنوان زیر:

**{ IF { MERGEFIELD Gender } = "MALE" "متن واقعی " " متن کاذب"}**

**{ IF "{{ GENDER }}" = "MALE" "متن واقعی " " متن کاذب"}**

مثال کد زیر نشان می دهد که چگونه یک عملیات Mail Merge را با Mustache برچسب ها و `IF` فیلد ها انجام دهیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-UseOfIfElseMustacheSyntax.java" >}}

شما می توانید تفاوت بین سند را قبل از استفاده از ویژگی **UseNonMergeFields** مشاهده کنید:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-if-field-1.png" alt="mustache_if_field_aspose_words_java" style="width:800px"/>

و پس از اعمال خاصیت **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-if-field-2.png" alt="mustache_if_field_2_aspose_words_java" style="width:800px"/>
