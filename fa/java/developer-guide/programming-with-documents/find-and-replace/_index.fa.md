---
title: پیدا کردن و جایگزینی در Java
second_title: Aspose.Words برای Java
articleTitle: پیدا کردن و جایگزینی
linktitle: پیدا کردن و جایگزینی
type: docs
description: "پیدا کردن یک رشته یا الگوی بیان منظم در سند خود و جایگزینی آن با متن شما می خواهید با استفاده از Java..."
weight: 100
url: /fa/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

شما به راحتی می توانید در داخل سند خود با استفاده از یک صفحه کلید و ماوس حرکت کنید، اما اگر صفحات زیادی برای پیمایش دارید، مدت زیادی طول می کشد تا متن خاصی را در یک سند طولانی پیدا کنید. زمان بیشتری صرف خواهد کرد زمانی که می خواهید شخصیت ها یا کلمات خاصی را که در سند خود استفاده کرده اید جایگزین کنید. قابلیت "پیدا و جایگزین" شما را قادر می سازد تا یک توالی از شخصیت ها را در یک سند پیدا کنید و آن را با توالی دیگری از شخصیت ها جایگزین کنید.

Aspose.Words اجازه می دهد تا شما را به پیدا کردن یک رشته خاص یا الگوی بیان منظم در سند خود و جایگزینی آن با یک جایگزین بدون نصب و استفاده از برنامه های اضافی مانند نصب و استفاده از برنامه های اضافی مانند Microsoft Word... این باعث می شود تا بسیاری از وظایف تایپ و قالب بندی، به طور بالقوه صرفه جویی در ساعت کار.

این مقاله توضیح می دهد که چگونه جایگزین رشته ای و عبارات منظم را با حمایت از متا کاراکترها اعمال کنید.

## راه هایی برای پیدا کردن و جایگزینی {#ways-to-find-and-replace}

Aspose.Words دو راه برای استفاده از عملیات پیدا کردن و جایگزینی با استفاده از موارد زیر فراهم می کند:

1. * جایگزینی رشته - برای پیدا کردن و جایگزینی یک رشته خاص با دیگری، شما باید یک رشته جستجو (شخصیت های عددی آلفا) را مشخص کنید که با توجه به تمام وقایع با رشته جایگزین مشخص دیگر جایگزین خواهد شد. هر دو رشته نباید حاوی نمادها باشند. در نظر داشته باشید که مقایسه رشته می تواند حساس به موردی باشد یا ممکن است از املای مطمئن نیستید یا چندین املای مشابه داشته باشید.
۲ – بیانات منظم – برای مشخص کردن یک بیان منظم برای پیدا کردن مسابقات دقیق رشته و جایگزینی آنها با توجه به بیان منظم خود. توجه داشته باشید که یک کلمه به عنوان تنها از کاراکترهای عددی آلفا ساخته شده است. اگر یک جایگزین با تنها کلمات کامل مطابقت داشته باشد و رشته ورودی شامل نمادها باشد، هیچ عبارتی پیدا نخواهد شد.

همچنین، شما می توانید از متا کاراکتر های خاص با جایگزینی ریسمان ساده و عبارات منظم برای مشخص کردن استراحت در داخل پیدا و جایگزینی عملیات استفاده کنید.

Aspose.Words ارائه قابلیت های پیدا و جایگزین با [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/)... شما می توانید با بسیاری از گزینه ها در طول فرآیند پیدا کردن و جایگزینی کار کنید. [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) کلاس

### یافتن و جایگزین کردن متن با استفاده از Simple String Replacement {#find-and-replace-text-using-simple-string-replacement}

شما می توانید از یکی از [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) روش ها برای پیدا کردن یا جایگزینی یک رشته خاص و بازگرداندن تعداد جایگزینی که ساخته شده است. در این مورد، شما می توانید یک رشته را جایگزین کنید، رشته ای که جایگزین تمام وقایع آن می شود، چه جایگزین مورد حساس است و چه تنها کلمات مستقل تحت تاثیر قرار می گیرند.

مثال کد زیر نشان می دهد که چگونه رشته "_CustomerName_" را پیدا کنید و آن را با رشته * "جیمز باند" جایگزین کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

شما می توانید تفاوت بین سند را قبل از استفاده از جایگزین رشته ساده مشاهده کنید:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

و پس از استفاده از جایگزین رشته ساده:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### یافتن و جایگزین کردن متن با استفاده از بیانات منظم {#find-and-replace-text-using-regular-expressions}

یک بیان منظم (regex) یک الگو است که یک توالی خاص از متن را توصیف می کند. فرض کنید می خواهید همه ی اتفاقات دو برابر یک کلمه را با یک کلمه ی واحد جایگزین کنید. سپس می توانید عبارت منظم زیر را برای مشخص کردن الگوی دو کلمه ای اعمال کنید: `([a-zA-Z]+) \1`...

استفاده از دیگری [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) روش جستجو و جایگزینی ترکیب های شخصیتی خاص با تنظیم `Regex` پارامتر به عنوان الگوی بیان منظم برای پیدا کردن مسابقات.

مثال کد زیر نشان می دهد که چگونه رشته هایی را جایگزین کنیم که با یک الگوی بیان منظم با یک رشته جایگزین مشخص مطابقت دارند:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


شما می توانید تفاوت بین سند را قبل از استفاده از جایگزینی رشته با عبارات منظم مشاهده کنید:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

پس از استفاده از جایگزینی رشته با حالت های منظم:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### پیدا کردن و جایگزینی String با استفاده از Meta Characters {#find-and-replace-text-using-metacharacters}

شما می توانید از meta Characters در رشته جستجو یا رشته جایگزینی استفاده کنید اگر یک متن یا عبارت خاص از چندین پاراگراف، بخش یا صفحات تشکیل شده باشد. برخی از متاکت ها شامل **&p** برای شکستن پاراگراف، **&b** برای شکستن بخش، **&m** برای شکستن صفحه و **&l** برای شکستن خط

{{% alert color="primary" %}}

توجه داشته باشید که meta Character **&&** برابر با **&**... به عنوان مثال، اگر شما نیاز به پیدا کردن متن برای **&p** این یک پاراگراف نیست، پس می توانید از آن استفاده کنید. **&&p**...

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه متن را با پاراگراف و شکستن صفحه جایگزین کنیم:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## پیدا کردن و جایگزینی String در Header / Footer از یک سند {#find-and-replace-string-in-header-or-footer-of-a-document}

شما می توانید متن را در بخش هدر / فوتر یک سند Word با استفاده از سند Word پیدا و جایگزین کنید. [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) کلاس

مثال کد زیر نشان می دهد که چگونه متن بخش هدر را در سند خود جایگزین کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


شما می توانید تفاوت بین سند را قبل از استفاده از تعویض رشته هدر مشاهده کنید:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

پس از استفاده از تعویض رشته هدر:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

مثال کد برای جایگزینی متن بخش پادر در سند شما بسیار شبیه به نمونه کد هدر قبلی است. تنها کاری که باید انجام دهید این است که دو خط زیر را جایگزین کنید:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

با موارد زیر:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


شما می توانید تفاوت بین سند را قبل از استفاده از جایگزینی رشته پاکر مشاهده کنید:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

پس از استفاده از جایگزین رشته پا:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## نادیده گرفتن متن در زمان پیدا کردن و جایگزینی {#ignore-text-during-find-and-replace}

در حالی که استفاده از عملیات پیدا و جایگزین، شما می توانید بخش های خاصی از متن را نادیده بگیرید. بنابراین، بخش های خاصی از متن را می توان از جستجو حذف کرد و پیدا کردن و جایگزینی می تواند تنها به قسمت های باقی مانده اعمال شود.

Aspose.Words بسیاری از املاک را برای نادیده گرفتن متن مانند [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), و [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted)...

مثال کد زیر نشان می دهد که چگونه متن را در داخل اصلاح حذف کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## سفارشی سازی پیدا و جایگزین عملیات {#customize-find-and-replace-operation}

Aspose.Words بسیاری از انواع مختلف [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) برای پیدا کردن و جایگزینی متن مانند استفاده از فرمت خاص با [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) و [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) خواص، استفاده از جایگزینی در الگوهای جایگزین با [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) اموال و دیگران

مثال کد زیر نشان می دهد که چگونه یک کلمه خاص را در سند خود برجسته کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words اجازه می دهد تا از آن استفاده کنید [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) رابط کاربری برای ایجاد و تماس با یک روش سفارشی در طول یک عملیات جایگزین. شما ممکن است برخی از موارد استفاده که در آن شما نیاز به سفارشی سازی و جایگزینی عملیات مانند جایگزینی متن مشخص شده با یک عبارت منظم با تگ های HTML دارید، بنابراین اساسا شما با وارد کردن HTML جایگزین می شوید.

اگر شما نیاز به جایگزینی یک رشته با یک تگ HTML دارید، درخواست کنید **IReplacingCallback** رابط برای سفارشی کردن عملیات پیدا کردن و جایگزینی بنابراین بازی در ابتدای یک اجرا با گره بازی سند شما شروع می شود. اجازه دهید چند مثال از استفاده ارائه دهیم **IReplacingCallback**...

مثال کد زیر نشان می دهد که چگونه متن مشخص شده با HTML را جایگزین کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


مثال کد زیر نشان می دهد که چگونه اعداد مثبت را با رنگ سبز و اعداد منفی با رنگ قرمز برجسته کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

مثال کد زیر نشان می دهد که چگونه یک شماره خط را به هر خط اضافه کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
