---
title: مقایسه اسناد در Java
second_title: Aspose.Words برای Java
articleTitle: اسناد را مقایسه کنید
linktitle: اسناد را مقایسه کنید
type: docs
description: "دو سند را در هر فرمت پشتیبانی شده مقایسه کنید و تغییرات محتوا را نشان دهید. شما می توانید گزینه های پیشرفته را هنگام مقایسه با استفاده از Java اعمال کنید."
weight: 60
url: /fa/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

مقایسه اسناد فرایندی است که تغییرات بین دو سند را شناسایی می کند و شامل تغییرات به عنوان بازنگری است. این فرآیند هر دو سند را مقایسه می کند، از جمله نسخه های یک سند خاص، سپس تغییرات بین هر دو سند به عنوان بازنگری در سند اول نشان داده می شود.

روش مقایسه با مقایسه کلمات در سطح کاراکتر یا در سطح کلمه حاصل می شود. اگر یک کلمه شامل تغییر حداقل یک کاراکتر باشد، در نتیجه، تفاوت به عنوان تغییر کل کلمه نمایش داده می شود، نه یک کاراکتر. این روند مقایسه یک کار معمول در صنایع حقوقی و مالی است.

به جای جستجوی دستی برای تفاوت بین اسناد یا بین نسخه های مختلف آنها، می توانید از Aspose.Words برای مقایسه اسناد و دریافت تغییرات محتوا در قالب بندی، سر و پای صفحه، جداول و موارد دیگر استفاده کنید.

این مقاله توضیح می دهد که چگونه اسناد را مقایسه کنیم و چگونه ویژگی های مقایسه پیشرفته را مشخص کنیم.

{{% alert color="primary" %}}

**سعی کنید آنلاین**

شما می توانید دو سند را با استفاده از [مقایسه اسناد آنلاین](https://products.aspose.app/words/comparison) ابزار.

توجه داشته باشید که روش مقایسه، که در زیر شرح داده شده است، در این ابزار برای اطمینان از دستیابی به نتایج برابر استفاده می شود. بنابراین شما حتی با استفاده از ابزار مقایسه آنلاین یا با استفاده از روش مقایسه در Aspose.Words همان نتایج را خواهید داشت.

{{% /alert %}}

## محدودیت ها و فرمت های فایل پشتیبانی شده {#limitations-and-supported-file-formats}

مقایسه اسناد یک ویژگی بسیار پیچیده است. بخش های مختلفی از ترکیب محتوا وجود دارد که باید برای تشخیص همه تفاوت ها تجزیه و تحلیل شوند. دلیل این پیچیدگی این است که Aspose.Words هدف آن به دست آوردن همان نتایج مقایسه با الگوریتم مقایسه Microsoft Word است.

محدودیت کلی برای دو سند در حال مقایسه این است که آنها نباید قبل از فراخوانی روش مقایسه تجدید نظر داشته باشند زیرا این محدودیت در Microsoft Word وجود دارد.

{{% alert color="primary" %}}

توجه داشته باشید که شما می توانید هر دو سند را در [فرمت های فایل پشتیبانی شده](/words/java/supported-document-formats/). اساسا، شما می توانید اشیاء سند را مقایسه کنید و حتی شما می توانید آن اشیاء را از ابتدا بدون داشتن هر فرمت خاص ایجاد کنید.

{{% /alert %}}

## مقایسه دو سند {#compare-two-documents}

وقتی اسناد را با هم مقایسه می کنید، تفاوت های سند دوم با سند قبلی به عنوان اصلاحات به سند قبلی ظاهر می شود. وقتی یک سند را تغییر می دهید، هر ویرایش پس از اجرای روش مقایسه، بازبینی خاص خود را خواهد داشت.

Aspose.Words به شما اجازه می دهد تا تفاوت اسناد را با استفاده از روش [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) شناسایی کنید – این شبیه به ویژگی Microsoft Word document compare است. این امکان را به شما می دهد تا اسناد یا نسخه های سند را بررسی کنید تا تفاوت ها و تغییرات را پیدا کنید، از جمله اصلاحات قالب بندی مانند تغییرات فونت، تغییرات فاصله، اضافه کردن کلمات و پاراگراف ها.

در نتیجه مقایسه، اسناد را می توان برابر یا غیر برابر تعیین کرد. اصطلاح "اسناد برابر" به این معنی است که روش مقایسه قادر به نشان دادن تغییرات به عنوان بازنگری نیست. این بدان معنی است که هر دو متن سند و قالب بندی متن یکسان هستند. اما می تواند تفاوت های دیگری بین اسناد وجود داشته باشد. به عنوان مثال، Microsoft Word فقط از اصلاحات فرمت برای سبک ها پشتیبانی می کند و شما نمی توانید درج/حذف سبک را نشان دهید. بنابراین اسناد می توانند مجموعه ای متفاوت از سبک ها داشته باشند، و روش **Compare** هنوز هیچ بازبینی تولید نمی کند.

مثال کد زیر نشان می دهد که چگونه دو سند برابر هستند یا نه:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

مثال کد زیر نشان می دهد که چگونه به سادگی روش `Compare` را به دو سند اعمال کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## گزینه های مقایسه پیشرفته را مشخص کنید {#specify-advanced-comparing-properties}

ویژگی های مختلفی از کلاس [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) وجود دارد که می توانید هنگام مقایسه اسناد اعمال کنید.

به عنوان مثال، Aspose.Words به شما اجازه می دهد تا تغییرات ایجاد شده در طول یک عملیات مقایسه برای انواع خاصی از اشیاء در سند اصلی را نادیده بگیرید. شما می توانید ویژگی مناسب برای نوع شی را انتخاب کنید، مانند [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), و دیگران با قرار دادن آنها به "واقعی".

علاوه بر این، Aspose.Words ویژگی [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) را فراهم می کند که می توانید با آن مشخص کنید که آیا تغییرات را با کاراکتر یا کلمه ردیابی کنید.

یکی دیگر از ویژگی های مشترک انتخاب این است که در کدام سند تغییرات مقایسه ای را نشان دهد. به عنوان مثال، جعبه گفتگوی "مقایسه اسناد" در Microsoft Word گزینه "نمایش تغییرات در" را دارد – این نیز بر نتایج مقایسه تأثیر می گذارد. Aspose.Words ویژگی [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) را فراهم می کند که به این هدف خدمت می کند.

مثال کد زیر نشان می دهد که چگونه ویژگی های مقایسه پیشرفته را تنظیم کنید:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
