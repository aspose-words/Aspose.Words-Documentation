---
title: محتوای انتخاب شده بین گره ها Java
second_title: Aspose.Words برای Java
articleTitle: استخراج محتوا بین گره ها در یک سند
linktitle: استخراج محتوا بین گره ها
type: docs
description: "استخراج محتوای سند در موارد مختلف Java..."
weight: 140
url: /fa/java/extract-selected-content-between-nodes/
---

هنگام کار با اسناد، مهم است که به راحتی بتوانید محتوا را از محدوده خاصی در یک سند استخراج کنید. با این حال، محتوا ممکن است شامل عناصر پیچیده مانند پاراگراف ها، جداول، تصاویر و غیره باشد.

صرف نظر از آنچه محتوا باید استخراج شود، روش استخراج این محتوا همیشه مشخص خواهد شد که کدام گره ها برای استخراج محتوا انتخاب می شوند. این ها می توانند تمام بدنه های متن یا اجرای متن ساده باشند.

بسیاری از موقعیت های احتمالی وجود دارد و بنابراین بسیاری از انواع مختلف گره هنگام استخراج محتوا در نظر گرفته می شوند. به عنوان مثال، ممکن است بخواهید محتوا را بین موارد زیر استخراج کنید:

- دو پاراگراف خاص
- اجرای خاص متن
- زمینه های انواع مختلف، مانند فیلدهای ادغام
- شروع و پایان محدوده یک نشانه یا نظر
- بدنه های مختلف متن در بخش های جداگانه

در برخی شرایط، شما حتی ممکن است نیاز به ترکیب انواع مختلف گره مانند استخراج محتوا بین یک پاراگراف و یک زمینه، و یا بین یک اجرا و یک نشانه.

این مقاله پیاده سازی کد را برای استخراج متن بین گره های مختلف و همچنین نمونه هایی از سناریوهای مشترک فراهم می کند.

{{% alert color="primary" %}}

این نمونه ها فقط چند تظاهرات از احتمالات مختلف هستند. ما قصد داریم تا قابلیت های استخراج متن بخشی از عموم باشد. API در آینده نیازی به کد اضافی نیست. در عین حال، احساس رایگان برای ارسال درخواست های خود را در مورد این عملکرد در [Aspose.Words انجمن](https://forum.aspose.com/c/words/8)...

{{% /alert %}}

## چرا محتوا

اغلب هدف استخراج محتوا تکرار یا ذخیره آن به طور جداگانه در یک سند جدید است. به عنوان مثال، می توانید محتوا را استخراج کنید و:

- آن را به یک سند جداگانه کپی کنید
- تبدیل یک بخش خاص از یک سند به PDF یا تصویر
- محتوای موجود در سند را بارها تکرار کنید
- کار با محتوای استخراج شده جدا از بقیه سند

این می تواند به راحتی با استفاده از Aspose.Words و اجرای کد زیر

## استخراج الگوریتم Content Algorithm

کد موجود در این بخش به تمام موقعیت های ممکن شرح داده شده در بالا با یک روش تعمیم یافته و قابل استفاده مجدد می پردازد. طرح کلی این تکنیک شامل:

1. جمع آوری گره ها که منطقه محتوایی را که از سند شما استخراج می شود، دیکته می کند. بازگرداندن این گره ها توسط کاربر در کد خود، بر اساس آنچه که می خواهند استخراج شوند، انجام می شود.
1. انتقال این گره ها به گره ها **ExtractContent** روش ارائه شده در زیر شما همچنین باید یک پارامتر بولین را که بیان می کند که آیا این گره ها، که به عنوان نشانگر عمل می کنند، باید در استخراج گنجانده شوند یا نه.
1. بازگرداندن یک لیست از محتوای کپی شده ( گره های مسدود شده) مشخص شده برای استخراج. شما می توانید از این لیست از گره ها به هر طریق قابل اجرا استفاده کنید، به عنوان مثال، ایجاد یک سند جدید که تنها محتوی محتوای انتخاب شده است.

## چگونه محتوا را استخراج کنیم

ما با سند زیر در این مقاله کار خواهیم کرد. همانطور که می بینید، حاوی محتوای متنوعی است. همچنین توجه داشته باشید که این سند شامل بخش دوم در وسط صفحه اول است. نشانه و نظر نیز در سند وجود دارد اما در تصویر زیر قابل مشاهده نیست.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

برای استخراج محتوا از سند شما باید تماس بگیرید `ExtractContent` روش زیر و عبور از پارامترهای مناسب

پایه این روش شامل پیدا کردن گره های سطح بلوک (پاریس و جداول) و جمع آوری آنها برای ایجاد نسخه های یکسان است. اگر گره های نشانگر از سطح بلوک عبور کنند، روش می تواند به سادگی محتوا را در آن سطح کپی کند و آن را به آرایه اضافه کند.

با این حال، اگر گره های نشانگر در خط (یک کودک از یک پاراگراف) باشند، وضعیت پیچیده تر می شود، زیرا لازم است که پاراگراف را در گره خط تقسیم کنید، آن را به صورت اجرا، فیلدهای مارک و غیره. محتوا در گره های والدین کلون شده بین نشانگرها وجود ندارد. این فرآیند برای اطمینان از اینکه گره های خط هنوز هم قالب بندی پاراگراف والدین را حفظ می کنند، استفاده می شود.

این روش همچنین چک ها را بر روی گره های تصویب شده به عنوان پارامترهای اجرا می کند و اگر هر دو گره بی اعتبار باشد، یک استثنا را پرتاب می کند. پارامترهایی که باید به این روش منتقل شوند عبارتند از:

1. **StartNode** و **EndNode**... دو پارامتر اول گره هایی هستند که مشخص می کنند استخراج محتوا از کجا شروع می شود و به ترتیب پایان می یابد. این گره ها می توانند هر دو سطح بلوک باشند ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) یا در سطح خط (به عنوان مثال) [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) و غیره:
   1 برای عبور از یک زمینه شما باید از مربوطه عبور کنید **FieldStart** جسم
   1- برای عبور از نشانه ها، **BookmarkStart** و [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) گره ها باید منتقل شوند.
   1- برای رد نظرات، [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) گره ها باید استفاده شوند.
1. **IsInclusive**... تعریف کنید که آیا نشانگرها در استخراج گنجانده شده اند یا نه. اگر این گزینه برای false و همان گره یا گره های متوالی تصویب می شود، سپس لیست خالی بازگردانده می شود:

      1.اگر **FieldStart** سپس این گزینه تعریف می کند اگر کل زمینه شامل یا حذف شود.
      1.اگر **BookmarkStart** یا **BookmarkEnd** گره منتقل می شود، این گزینه مشخص می کند که آیا نشانه شامل یا فقط محتوای بین دامنه نشانه گذاری است.
      1.اگر **CommentRangeStart** یا **CommentRangeEnd** گره منتقل می شود، این گزینه تعریف می کند اگر خود نظر شامل یا فقط محتوا در محدوده نظر باشد.

اجرای **ExtractContent** روش هایی که می توانید پیدا کنید [اینجا اینجا](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java)... این روش در سناریوها در این مقاله ذکر خواهد شد.

ما همچنین یک روش سفارشی برای ایجاد یک سند از گره های استخراج شده تعریف خواهیم کرد. این روش در بسیاری از سناریوهای زیر استفاده می شود و به سادگی یک سند جدید ایجاد می کند و محتوای استخراج شده را وارد آن می کند.

مثال کد زیر نشان می دهد که چگونه یک لیست از گره ها را انتخاب کنید و آنها را به یک سند جدید وارد کنید:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## استخراج محتوا بین پاراگراف ها

این نشان می دهد که چگونه از روش بالا برای استخراج محتوا بین پاراگراف های خاص استفاده کنید. در این مورد، ما می خواهیم بدن نامه ای که در نیمه اول سند پیدا شده است را استخراج کنیم. ما می توانیم بگوییم که این بین پاراگراف های 7 و 11 است.

کد زیر این کار را انجام می دهد. پاراگراف های مناسب با استفاده از [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) روش در سند و انتقال شاخص های مشخص سپس این گره ها را به سمت **ExtractContent** روش و بیان اینکه این ها باید در استخراج گنجانده شوند. این روش محتوای کپی شده بین این گره ها را که سپس به یک سند جدید وارد می شوند، بازگرداند.

مثال کد زیر نشان می دهد که چگونه محتوا را بین پاراگراف های خاص استخراج کنیم. `ExtractContent` روش بالا:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)...

{{% /alert %}}

سند خروجی شامل دو پاراگراف است که استخراج شده اند.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## استخراج محتوا بین انواع مختلف گره ها

ما می توانیم محتوا را بین هر ترکیب از سطح بلوک یا گره های خط استخراج کنیم. در این سناریو زیر ما محتوا را بین پاراگراف اول و جدول در بخش دوم به طور فراگیر استخراج می کنیم. ما گره های نشانگر را با فراخوان دریافت می کنیم [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) و [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) روش در بخش دوم سند برای بازیابی مناسب **Paragraph** و **Table** گره ها برای یک تغییر جزئی، اجازه دهید محتوا را تکرار کنیم و آن را در زیر اصل قرار دهیم.

مثال کد زیر نشان می دهد که چگونه محتوای بین یک پاراگراف و جدول را با استفاده از پاراگراف استخراج کنیم. **ExtractContent** روش:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)...

{{% /alert %}}

محتوای بین پاراگراف و جدول در زیر تکرار شده است نتیجه.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## استخراج محتوا بین پاراگراف ها بر اساس Style

شما ممکن است نیاز به استخراج محتوا بین پاراگراف های همان یا سبک های مختلف، مانند بین پاراگراف های مشخص شده با سبک های عنوان.

کد زیر نشان می دهد که چگونه به این هدف برسیم. این یک مثال ساده است که محتوا را بین نمونه اول "Heading 1" و "Header 3" بدون استخراج عنوان ها نیز استخراج می کند. برای انجام این کار، پارامتر آخر را تنظیم کردیم. false, مشخص می کند که گره های نشانگر نباید شامل شوند.

در یک پیاده سازی مناسب، این باید در یک حلقه اجرا شود تا محتوای بین تمام پاراگراف های این سبک ها را از سند استخراج کند. محتوای استخراج شده به یک سند جدید کپی شده است.

مثال کد زیر نشان می دهد که چگونه محتوا را بین پاراگراف ها با سبک های خاص استخراج کنیم. **ExtractContent** روش:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)...

{{% /alert %}}

در زیر نتیجه عملیات قبلی است.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## استخراج محتوا بین دویدن های خاص

شما می توانید محتوای بین گره های خط مانند **Run** همچنین. **Runs** از پاراگراف های مختلف می توان به عنوان نشانگر تصویب شد. کد زیر نشان می دهد که چگونه متن خاصی را در بین یکسان استخراج کنیم **Paragraph** گره

مثال کد زیر نشان می دهد که چگونه محتوا را بین اجراهای خاص از همان پاراگراف استخراج کنیم. **ExtractContent** روش:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)...

{{% /alert %}}

متن استخراج شده بر روی کنسول نمایش داده می شود

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## استخراج محتوا با استفاده از یک فیلد

برای استفاده از یک زمینه به عنوان یک نشانگر، `FieldStart` گره باید منتقل شود. آخرین پارامتر به `ExtractContent` روش مشخص خواهد کرد که آیا کل زمینه شامل یا نه است. اجازه دهید محتوا را بین فیلد "کلنام" ادغام و یک پاراگراف در سند استخراج کنیم. استفاده از [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)روش [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) کلاس این امر بازگشت **FieldStart** از نام فیلد ادغام شده به آن.

در مورد ما اجازه دهید آخرین پارامتر را که به پارامتر منتقل شده است تنظیم کنیم. **ExtractContent** روش برای false برای حذف میدان از استخراج ما محتوای استخراج شده را به PDF ارائه خواهیم داد.

مثال کد زیر نشان می دهد که چگونه محتوا را بین یک زمینه خاص و پاراگراف در سند با استفاده از سند استخراج کنیم. **ExtractContent** روش:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)...

{{% /alert %}}

محتوای استخراج شده بین زمینه و پاراگراف، بدون گره های نشانگر زمینه و پاراگراف که به PDF ارائه شده است.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## استخراج محتوا از یک Bookmark

در یک سند، محتوایی که در داخل یک نشانه تعریف می شود، توسط فهرست شده است. `BookmarkStart` گره های Bookmark End محتوایی که بین این دو گره پیدا می شود، نشانه را ایجاد می کند. شما می توانید هر یک از این گره ها را به عنوان هر نشانگر، حتی آنهایی که از نشانه های مختلف عبور می کنند، تا زمانی که نشانگر شروع قبل از علامت گذاری نهایی در سند ظاهر می شود.

در سند نمونه ما، ما یک نشانه داریم که به نام "Bookmark1" نام دارد. محتوای این نشانه در سند ما برجسته شده است:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

ما این محتوا را به یک سند جدید با استفاده از کد زیر استخراج می کنیم. The The The The The The **IsInclusive** گزینه پارامتر نشان می دهد که چگونه برای حفظ یا دور زدن نشانه.

مثال کد زیر نشان می دهد که چگونه محتوای اشاره شده با استفاده از نشانه را استخراج کنیم **ExtractContent** روش:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)...

{{% /alert %}}

خروجی استخراج شده با `IsInclusive` پارامتر تنظیم شده برای true... این نسخه همچنین نشانه را حفظ خواهد کرد.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

خروجی استخراج شده با **IsInclusive** پارامتر تنظیم شده برای false... این کپی شامل محتوا اما بدون علامت است.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## استخراج محتوا از یک نظر

یک نظر از ریدایرکت , {\displaystyle } {\displaystyle } {\displaystyle } } و {\displaystyle } ساخته شده است. همه این گره ها در خط هستند. دو گره اول محتوا را در سند که توسط نظر اشاره شده است، همانطور که در تصویر زیر دیده می شود، قرار می دهد.

The The The The The The **Comment** خود گره یک خود [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) این می تواند شامل پاراگراف ها و اجراها باشد. این نشان دهنده پیام این نظر است که به عنوان یک حباب نظر در فلات بررسی دیده می شود. همانطور که این گره در خط است و یک نسل از بدن شما همچنین می توانید محتوای داخل این پیام را استخراج کنید.

در سند ما یک نظر داریم. بیایید آن را با نشان دادن نشانه گذاری در برگه بررسی نمایش دهیم:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

این نظر شامل عنوان، پاراگراف اول و جدول در بخش دوم است. بیایید این نظر را در یک سند جدید استخراج کنیم. The The The The The The **IsInclusive** گزینه دیکته می کند که آیا نظر خود نگه داشته شده یا دور انداخته شده است.

مثال کد زیر نشان می دهد که چگونه این کار را انجام دهیم زیر است:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل نمونه را از این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)...

{{% /alert %}}

اولین خروجی استخراج شده با `IsInclusive` پارامتر تنظیم شده برای true... این کپی همچنین شامل کامنت نیز خواهد بود.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

دوم: خروجی استخراج شده با **Inclusive** تنظیم برای false... کپی حاوی محتوا است اما بدون نظر.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## محتوا با استفاده از DocumentVisitor

Aspose.Words می تواند نه تنها برای ایجاد استفاده شود Microsoft Word اسناد با ساخت آنها به صورت پویا یا ادغام قالب ها با داده ها، اما همچنین برای تجزیه اسناد به منظور استخراج عناصر سند جداگانه مانند هدر، پا، پاراگراف ها، جداول، تصاویر و دیگران. یکی دیگر از کارهای ممکن این است که تمام متن قالب بندی یا سبک خاص را پیدا کنید.

استفاده از [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) کلاس برای اجرای این سناریو استفاده این کلاس با الگوی طراحی بازدید کننده شناخته شده مطابقت دارد. با [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)شما می توانید عملیات سفارشی را تعریف و اجرا کنید که نیاز به تزریق بیش از درخت سند دارد.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) مجموعه ای از **VisitXXX** روش هایی که در هنگام مواجه شدن با یک عنصر سند خاص (node) مورد استفاده قرار می گیرند. برای مثال، [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) زمانی که شروع یک پاراگراف متن پیدا می شود و [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) زمانی که پایان یک پاراگراف متن پیدا می شود، نام دارد. هر یک **DocumentVisitor.VisitXXX** روش، شیء مربوطه را می پذیرد که با آن مواجه می شود، بنابراین می توانید از آن به عنوان مورد نیاز استفاده کنید (مثلا قالب بندی را بازیابی کنید)، به عنوان مثال هر دو. [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) و [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) پذیرش [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) جسم

هر یک **DocumentVisitor.VisitXXX** روش بازگشت **VisitorAction** ارزش هایی که افزایش گره ها را کنترل می کند. شما می توانید درخواست کنید که یا به تکرار ادامه دهید، گره فعلی را (اما به تکرار ادامه دهید)، یا تکرار گره ها را متوقف کنید.

این ها مراحلی هستند که باید به صورت برنامه ریزی شده و بخش های مختلف یک سند را استخراج کنید:

- ایجاد یک کلاس مشتق شده از [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)...
- Override و ارائه پیاده سازی برای برخی یا همه **DocumentVisitor.VisitXXX** روش هایی برای انجام برخی عملیات سفارشی
- Call [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) در گره از جایی که می خواهید آن را شروع کنید. به عنوان مثال، اگر می خواهید کل سند را ثبت کنید، از آن استفاده کنید. [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor)...

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) اجرای پیش فرض برای همه **DocumentVisitor.VisitXXX** روش ها این کار باعث می شود بازدیدکنندگان سند جدید آسان تر شوند زیرا تنها روش های لازم برای بازدید کننده خاص باید بیش از حد مورد استفاده قرار گیرد. لازم نیست تمام روش های بازدید کننده را نادیده بگیرید.

مثال زیر نشان می دهد که چگونه از الگوی بازدید کننده برای اضافه کردن عملیات جدید به آن استفاده کنیم. Aspose.Words مدل شی در این مورد، ما یک مبدل سند ساده را به فرمت متن ایجاد می کنیم:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## متن متن متن فقط

راه های بازیابی متن از سند عبارتند از:

- استفاده [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) همراه با [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) ذخیره به عنوان متن ساده به یک فایل یا جریان
- استفاده [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) و عبور `SaveFormat.Text` پارامتر به صورت داخلی، این به عنوان متن به یک جریان حافظه ذخیره می شود و رشته نتیجه را برمی گرداند
- استفاده [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) برای بازیابی متن با همه Microsoft Word کنترل شخصیت ها از جمله کدهای میدانی
- – پیاده سازی یک سفارشی [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) برای انجام استخراج سفارشی

### استفاده از `Node.GetText` و `Node.ToString`

A A A A A سند Word می تواند شامل شخصیت های کنترلی باشد که عناصر خاصی مانند فیلد، انتهای سلول، انتهای بخش و غیره را طراحی می کنند. لیست کامل شخصیت های کنترل کلمه ممکن است در تعریف شده است **ControlChar** کلاس The The The The The The [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) روش متن را با تمام شخصیت های شخصیت کنترل موجود در گره باز می گرداند.

Calling ToString نماینده متن ساده این سند را تنها بدون کنترل شخصیت ها باز می گرداند. برای اطلاعات بیشتر در مورد صادرات به عنوان متن ساده **Using SaveFormat.Text**...

مثال کد زیر تفاوت بین فراخوانی را نشان می دهد **GetText** و [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) روش ها در یک گره:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### استفاده از `SaveFormat.Text`

این مثال سند را به صورت زیر ذخیره می کند:

- فیلتر کردن شخصیت های زمینه و کدهای زمینه، شکل، پائی، پایان نامه و نظرات
- – جایگزین پایان پاراگراف [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) شخصیت ها با [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) ترکیبات ترکیبی
- استفاده از رمزگذاری UTF8

مثال کد زیر نشان می دهد که چگونه یک سند را در فرمت TXT ذخیره کنید:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## تصاویری از Shapes

شما ممکن است نیاز به استخراج تصاویر سند برای انجام برخی از وظایف. Aspose.Words به شما اجازه می دهد این کار را نیز انجام دهید.

مثال کد زیر نشان می دهد که چگونه تصاویر را از یک سند استخراج کنیم:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}