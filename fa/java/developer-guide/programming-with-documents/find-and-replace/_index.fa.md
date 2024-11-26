---
title: پیدا کردن و جایگزینی در Java
second_title: Aspose.Words برای Java
articleTitle: پیدا کردن و جایگزین کردن
linktitle: پیدا کردن و جایگزین کردن
type: docs
description: "یک رشته یا الگوی عبارت منظم را در سند خود پیدا کنید و آن را با متن مورد نظر خود با استفاده از Java جایگزین کنید."
weight: 100
url: /fa/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

شما به راحتی می توانید با استفاده از یک صفحه کلید و ماوس در سند خود حرکت کنید، اما اگر صفحات زیادی برای حرکت دارید، مدتی طول می کشد تا متن خاصی را در یک سند طولانی پیدا کنید. وقتی می خواهید کاراکترها یا کلمات خاصی را که در سند خود استفاده کرده اید جایگزین کنید، زمان بیشتری می برد. قابلیت "Find and replace" شما را قادر می سازد تا یک دنباله از کاراکترها را در یک سند پیدا کنید و آن را با دنباله دیگری از کاراکترها جایگزین کنید.

Aspose.Words به شما اجازه می دهد تا یک رشته خاص یا الگوی بیان منظم را در سند خود پیدا کنید و آن را با یک جایگزین بدون نصب و استفاده از برنامه های اضافی مانند Microsoft Word جایگزین کنید. این کار بسیاری از کارهای تایپ و قالب بندی را تسریع می کند و به طور بالقوه ساعت ها کار شما را صرفه جویی می کند.

این مقاله توضیح می دهد که چگونه جایگزین رشته و عبارات منظم را با پشتیبانی از متا کاراکترها اعمال کنیم.

## راه های پیدا کردن و جایگزین کردن {#ways-to-find-and-replace}

Aspose.Words دو راه برای استفاده از عملیات find and replace با استفاده از موارد زیر فراهم می کند:

1. *Simple string replacement* - برای پیدا کردن و جایگزینی یک رشته خاص با رشته دیگر، باید یک رشته جستجو (کاراکترهای حروف و اعداد) را مشخص کنید که با توجه به همه موارد با یک رشته جایگزین مشخص شده جایگزین می شود. هر دو رشته نباید حاوی نمادها باشند. توجه داشته باشید که مقایسه رشته می تواند حساس به حروف بزرگ و کوچک باشد، یا ممکن است از املا مطمئن نباشید یا چندین املای مشابه داشته باشید.
2. *Regular expressions* - برای مشخص کردن یک عبارت منظم برای پیدا کردن مطابقت دقیق رشته و جایگزینی آنها با توجه به عبارت منظم خود. توجه داشته باشید که یک کلمه فقط از حروف و اعداد تشکیل شده است. اگر یک جایگزین با فقط کلمات کامل مطابقت داشته باشد و رشته ورودی حاوی نمادها باشد، پس هیچ عبارتی پیدا نخواهد شد.

همچنین، می توانید از متاکاراکتورهای ویژه با جایگزینی رشته ساده و عبارات منظم برای مشخص کردن شکستگی در عملیات find and replace استفاده کنید.

Aspose.Words قابلیت find and replace را با [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) ارائه می دهد. شما می توانید با گزینه های بسیاری در طول فرآیند پیدا کردن و جایگزینی با استفاده از کلاس [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) کار کنید.

### پیدا کردن و جایگزینی متن با استفاده از جایگزینی رشته ساده {#find-and-replace-text-using-simple-string-replacement}

شما می توانید از یکی از روش های [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) برای پیدا کردن یا جایگزینی یک رشته خاص و بازگرداندن تعداد جایگزین هایی که ساخته شده اند استفاده کنید. در این حالت، می توانید رشته ای را که باید تعویض شود مشخص کنید، رشته ای که جایگزین همه موارد آن می شود، آیا جایگزینی حساس به حروف بزرگ و کوچک است و آیا فقط کلمات مستقل تحت تأثیر قرار می گیرند.

مثال کد زیر نشان می دهد که چگونه رشته "_CustomerName_ " را پیدا کنید و آن را با رشته *"James Bond"*جایگزین کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

قبل از استفاده از جایگزینی رشته ساده می توانید تفاوت بین سند را مشاهده کنید:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

و پس از استفاده از جایگزینی رشته ساده:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### پیدا کردن و جایگزینی متن با استفاده از عبارات منظم {#find-and-replace-text-using-regular-expressions}

یک عبارت منظم (regex) یک الگوی است که یک دنباله خاص از متن را توصیف می کند. فرض کنید می خواهید همه موارد دوگانه یک کلمه را با یک کلمه جایگزین کنید. سپس می توانید عبارت منظم زیر را برای مشخص کردن الگوی دو کلمه ای اعمال کنید: `([a-zA-Z]+) \1`.

از روش [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) دیگر برای جستجو و جایگزینی ترکیب کاراکترهای خاص با تنظیم پارامتر `Regex` به عنوان الگوی عبارت منظم برای پیدا کردن مطابقت استفاده کنید.

مثال کد زیر نشان می دهد که چگونه رشته هایی را که با یک الگوی بیان منظم مطابقت دارند با یک رشته جایگزین مشخص شده جایگزین کنیم:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


شما می توانید تفاوت بین سند را قبل از استفاده از جایگزینی رشته با عبارات منظم مشاهده کنید:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

و پس از استفاده از جایگزینی رشته با عبارات منظم:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### پیدا کردن و جایگزینی رشته با استفاده از Metacharacters {#find-and-replace-text-using-metacharacters}

شما می توانید از متا کاراکترها در رشته جستجو یا رشته جایگزین استفاده کنید اگر یک متن یا عبارت خاص از چندین پاراگراف، بخش یا صفحه تشکیل شده باشد. برخی از متاکارکترها شامل **&p** برای یک پاراگراف، **&b** برای یک بخش، **&m** برای یک صفحه، و **&l** برای یک خط شکستن است.

{{% alert color="primary" %}}

توجه داشته باشید که metacharacter **&&** برابر با **&** است. برای مثال، اگر شما نیاز به پیدا کردن متن برای **&p** که یک پاراگراف شکستن نیست، پس شما می توانید از **&&p** استفاده کنید.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه متن را با پاراگراف و صفحه break جایگزین کنیم:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## رشته را در هدر/پای یک سند پیدا و جایگزین کنید {#find-and-replace-string-in-header-or-footer-of-a-document}

شما می توانید متن را در بخش header/footer یک سند Word با استفاده از کلاس [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) پیدا و جایگزین کنید.

مثال کد زیر نشان می دهد که چگونه متن بخش سرصفحه را در سند خود جایگزین کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


قبل از استفاده از جایگزینی رشته هدر می توانید تفاوت بین سند را مشاهده کنید:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

و پس از استفاده از جایگزینی رشته هدر:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

مثال کد برای جایگزینی متن بخش پاورقی در سند شما بسیار شبیه به مثال کد هدر قبلی است. تنها کاری که باید بکنی اینه که دو خط زیر رو عوض کنی:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

با موارد زیر:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


قبل از استفاده از جایگزینی رشته فوتر می توانید تفاوت بین سند را مشاهده کنید:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

و پس از استفاده از جایگزینی رشته فوتر:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## متن را در هنگام یافتن و جایگزینی نادیده بگیرید {#ignore-text-during-find-and-replace}

در حین استفاده از عملیات find and replace، می توانید بخش های خاصی از متن را نادیده بگیرید. بنابراین، بخش های خاصی از متن را می توان از جستجو حذف کرد و پیدا کردن و جایگزینی را می توان تنها به بخش های باقی مانده اعمال کرد.

Aspose.Words بسیاری از ویژگی های پیدا کردن و جایگزینی را برای نادیده گرفتن متن فراهم می کند مانند [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), و [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

مثال کد زیر نشان می دهد که چگونه متن را در داخل حذف اصلاحات نادیده بگیریم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## سفارشی کردن عملیات یافتن و جایگزینی {#customize-find-and-replace-operation}

Aspose.Words بسیاری از [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) مختلف را برای پیدا کردن و جایگزینی متن مانند استفاده از فرمت خاص با [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) و [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) خواص، با استفاده از جایگزینی در الگوهای جایگزینی با [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) خواص، و دیگران فراهم می کند.

مثال کد زیر نشان می دهد که چگونه یک کلمه خاص را در سند خود برجسته کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words به شما اجازه می دهد تا از رابط [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) برای ایجاد و فراخوانی یک روش سفارشی در طول عملیات جایگزینی استفاده کنید. شما ممکن است برخی از موارد استفاده که در آن شما نیاز به سفارشی کردن پیدا کردن و جایگزین عملیات مانند جایگزینی متن مشخص شده با یک عبارت منظم با HTML برچسب، بنابراین اساسا شما با قرار دادن HTML جایگزین اعمال خواهد شد.

اگر شما نیاز به جایگزینی یک رشته با یک برچسب HTML دارید، رابط **IReplacingCallback** را برای سفارشی کردن عملیات find and replace اعمال کنید تا مطابقت در ابتدای یک اجرا با گره مطابقت سند شما شروع شود. اجازه دهید چند نمونه از استفاده از **IReplacingCallback** را ارائه دهیم.

مثال کد زیر نشان می دهد که چگونه متن مشخص شده را با HTMLجایگزین کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


مثال کد زیر نشان می دهد که چگونه اعداد مثبت را با رنگ سبز و اعداد منفی را با رنگ قرمز برجسته کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

مثال کد زیر نشان می دهد که چگونه یک شماره خط را به هر خط اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
