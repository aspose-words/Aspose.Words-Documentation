---
title: مقایسه اسناد در Java
second_title: Aspose.Words برای Java
articleTitle: مقایسه اسناد
linktitle: مقایسه اسناد
type: docs
description: "مقایسه دو سند در هر فرمت پشتیبانی و نشان دادن تغییرات محتوا. شما می توانید گزینه های پیشرفته را در مقایسه با استفاده از Java..."
weight: 60
url: /fa/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

مقایسه اسناد یک فرایند است که تغییرات بین دو سند را مشخص می کند و شامل تغییرات به عنوان تجدید نظر است. این فرآیند هر دو سند، از جمله نسخه های یک سند خاص را مقایسه می کند، سپس تغییرات بین هر دو سند به عنوان تجدید نظر در سند اول نشان داده می شود.

روش مقایسه با مقایسه کلمات در سطح شخصیت یا در سطح کلمه به دست می آید. اگر یک کلمه شامل تغییر حداقل یک شخصیت باشد، در نتیجه، تفاوت به عنوان تغییر کل کلمه نمایش داده می شود نه یک شخصیت. این روند مقایسه یک کار معمول در صنایع حقوقی و مالی است.

به جای جستجوی دستی برای تفاوت بین اسناد و یا بین نسخه های مختلف، می توانید از آنها استفاده کنید. Aspose.Words برای مقایسه اسناد و به دست آوردن تغییرات محتوا در قالب بندی، هدر / پا، جداول و موارد دیگر.

این مقاله توضیح می دهد که چگونه اسناد را مقایسه کنیم و چگونه خواص مقایسه پیشرفته را مشخص کنیم.

{{% alert color="primary" %}}

**سعی کنید آنلاین**

شما می توانید دو سند آنلاین را با استفاده از [مقایسه آنلاین](https://products.aspose.app/words/comparison) ابزار

توجه داشته باشید که روش مقایسه، شرح داده شده در زیر، در این ابزار برای اطمینان از دریافت نتایج برابر استفاده می شود. بنابراین شما نتایج مشابهی را حتی با استفاده از ابزار مقایسه آنلاین یا با استفاده از روش مقایسه در روش مقایسه دریافت خواهید کرد. Aspose.Words...

{{% /alert %}}

## محدودیت ها و فرمت های فایل پشتیبانی {#limitations-and-supported-file-formats}

مقایسه اسناد یک ویژگی بسیار پیچیده است. بخش های مختلفی از ترکیب محتوا وجود دارد که باید تجزیه و تحلیل شوند تا همه تفاوت ها را تشخیص دهند. دلیل این پیچیدگی این است زیرا Aspose.Words هدف این است که همان نتایج مقایسه را به عنوان Microsoft Word الگوریتم مقایسه

محدودیت کلی دو سند در مقایسه با آن این است که آنها قبل از تماس با روش مقایسه نباید اصلاحاتی داشته باشند زیرا این محدودیت در آن وجود دارد. Microsoft Word...

{{% alert color="primary" %}}

توجه داشته باشید که می توانید هر دو سند را در داخل مقایسه کنید. [پشتیبانی از فرمت های سند](/words/fa/java/supported-document-formats/)... اساسا، شما می توانید اشیاء سند را مقایسه کنید و حتی می توانید آن اشیاء را بدون داشتن فرمت خاصی ایجاد کنید.

{{% /alert %}}

## مقایسه دو سند {#compare-two-documents}

هنگامی که شما اسناد را مقایسه می کنید، تفاوت های سند دوم از نمایش قبلی به عنوان تجدید نظر به سابق نشان داده شده است. هنگامی که شما یک سند را اصلاح می کنید، هر ویرایش پس از اجرای روش مقایسه، بازبینی خود را خواهد داشت.

Aspose.Words اجازه می دهد تا تفاوت های اسناد را با استفاده از [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) روش - این شبیه به روش است Microsoft Word ویژگی مقایسه سند این اجازه می دهد تا اسناد یا نسخه های سند را برای پیدا کردن تفاوت ها و تغییرات، از جمله تغییرات قالب بندی مانند تغییرات فونت، تغییرات فاصله، اضافه کردن کلمات و پاراگراف ها بررسی کنید.

در نتیجه مقایسه، اسناد را می توان به عنوان برابر یا مساوی تعیین کرد. اصطلاح اسناد برابر به این معنی است که روش مقایسه قادر به نشان دادن تغییرات به عنوان تجدید نظر نیست. این بدان معنی است که هر دو متن سند و قالب بندی متن یکسان هستند. اما تفاوت های دیگری بین اسناد وجود دارد. برای مثال، Microsoft Word پشتیبانی از تنها فرمت تجدید نظر برای سبک ها، و شما نمی توانید نشان دهنده قرار دادن سبک / ورودی. بنابراین اسناد می توانند مجموعه ای متفاوت از سبک ها و **Compare** این روش هنوز هیچ تجدید نظر ایجاد نمی کند.

مثال زیر نشان می دهد که چگونه بررسی کنیم که آیا دو سند برابر هستند یا نه:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

مثال کد زیر نشان می دهد که چگونه به سادگی اعمال کنید `Compare` روش دو سند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## گزینه های پیشرفته مقایسه {#specify-advanced-comparing-properties}

بسیاری از خواص مختلف [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) کلاسی که شما می توانید هنگام مقایسه اسناد درخواست دهید.

برای مثال، Aspose.Words اجازه می دهد تا تغییرات ایجاد شده در طول عملیات مقایسه برای انواع خاصی از اشیاء در سند اصلی را نادیده بگیرید. شما می توانید ملک مناسب را برای نوع شی انتخاب کنید، مانند [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), و دیگران را به سمت "true"

علاوه بر این، Aspose.Words فراهم می کند [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) ملک که با آن می توانید مشخص کنید که آیا می توانید تغییرات را با شخصیت یا با کلمه پیگیری کنید.

یکی دیگر از ویژگی های مشترک یک انتخاب است که در آن سند برای نشان دادن تغییرات مقایسه ای وجود دارد. به عنوان مثال، "جعبه گفتگوی اسنادCompare" در داخل Microsoft Word گزینه "Show Change in" – این همچنین بر نتایج مقایسه تاثیر می گذارد. Aspose.Words فراهم می کند [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) اموالی که به این هدف خدمت می کند.

مثال کد زیر نشان می دهد که چگونه خواص مقایسه پیشرفته را تنظیم کنیم:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
