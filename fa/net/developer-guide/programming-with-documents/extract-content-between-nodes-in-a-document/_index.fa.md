---
title: نحوه استخراج محتوا بین گره های سند
second_title: Aspose.Words برای .NET
articleTitle: استخراج محتوا بین گره ها در یک سند
linktitle: استخراج محتوا بین گره ها
description: "استخراج محتوای سند در موارد مختلف با استفاده از C#."
type: docs
weight: 140
url: /fa/net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

هنگام کار با اسناد، مهم است که بتوانید به راحتی محتوا را از یک محدوده خاص در یک سند استخراج کنید. با این حال، محتوا ممکن است از عناصر پیچیده ای مانند پاراگراف ها، جداول، تصاویر و غیره تشکیل شده باشد.

صرف نظر از اینکه چه محتوایی باید استخراج شود، روش استخراج آن محتوا همیشه مشخص می شود که کدام گره ها برای استخراج محتوا انتخاب می شوند. اینها می توانند کل متن یا اجرای متن ساده باشند.

موقعیت‌های احتمالی زیادی وجود دارد و بنابراین انواع گره‌های متفاوتی وجود دارد که باید هنگام استخراج محتوا در نظر گرفت. برای مثال، ممکن است بخواهید محتوا را بین موارد زیر استخراج کنید:

- دو پاراگراف خاص
- اجراهای خاص متن
- انواع فیلدها مانند فیلدهای ادغام
- محدوده شروع و پایان یک نشانک یا نظر
- متن های مختلف موجود در بخش های جداگانه

در برخی شرایط، ممکن است حتی نیاز به ترکیب انواع مختلف گره داشته باشید، مانند استخراج محتوا بین یک پاراگراف و یک فیلد، یا بین اجرا و یک نشانک.

این مقاله پیاده سازی کد برای استخراج متن بین گره های مختلف و همچنین نمونه هایی از سناریوهای رایج را ارائه می دهد.

{{% alert color="primary" %}}

این مثال‌ها تنها چند نمونه از احتمالات زیاد هستند. ما برنامه ریزی می کنیم که عملکرد استخراج متن در آینده بخشی از API عمومی باشد و نیازی به کد اضافی نخواهد بود. در عین حال، با خیال راحت درخواست های خود را در مورد این قابلیت در [انجمن Aspose.Words](https://forum.aspose.com/c/words/8) ارسال کنید.

{{% /alert %}}

## چرا مطالب را استخراج کنیم

اغلب هدف از استخراج محتوا، کپی کردن یا ذخیره آن به طور جداگانه در یک سند جدید است. به عنوان مثال، می توانید محتوا را استخراج کنید و:

- آن را در یک سند جداگانه کپی کنید
- تبدیل بخشی خاص از یک سند به PDF یا تصویر
- مطالب موجود در سند را چندین بار کپی کنید
- با محتوای استخراج شده جدا از بقیه سند کار کنید

این را می توان به راحتی با استفاده از Aspose.Words و اجرای کد زیر به دست آورد.

## الگوریتم استخراج محتوا

کد موجود در این بخش به تمام موقعیت های ممکن که در بالا توضیح داده شد با یک روش کلی و قابل استفاده مجدد می پردازد. طرح کلی این تکنیک شامل موارد زیر است:

1. جمع آوری گره هایی که محدوده محتوایی را که از سند شما استخراج می شود را دیکته کنید. بازیابی این گره ها توسط کاربر در کد آنها بر اساس آنچه که می خواهد استخراج شود انجام می شود.
1. ارسال این گره ها به روش **ExtractContent** ارائه شده در زیر. شما همچنین باید یک پارامتر بولی ارسال کنید که بیان می کند آیا این گره ها، که به عنوان نشانگر عمل می کنند، باید در استخراج گنجانده شوند یا خیر.
1. بازیابی لیستی از محتوای کلون شده (گره های کپی شده) مشخص شده برای استخراج. شما می توانید از این لیست گره ها به هر روشی قابل اجرا استفاده کنید، به عنوان مثال، ایجاد یک سند جدید که فقط حاوی محتوای انتخاب شده باشد.

## نحوه استخراج محتوا

برای استخراج محتوا از سند خود باید روش **ExtractContent** زیر را فراخوانی کرده و پارامترهای مناسب را پاس کنید. اساس اساسی این روش شامل یافتن گره های سطح بلوک (پاراگراف ها و جداول) و شبیه سازی آنها برای ایجاد کپی های یکسان است. اگر گره‌های نشانگر ارسال شده در سطح بلوک باشند، روش می‌تواند به سادگی محتوای آن سطح را کپی کرده و به آرایه اضافه کند.

با این حال، اگر گره‌های نشانگر به صورت خطی باشند (فرزند یک پاراگراف)، وضعیت پیچیده‌تر می‌شود، زیرا لازم است پاراگراف را در گره درون خطی تقسیم کرد، خواه اجرا، فیلدهای نشانک و غیره باشد. محتوای موجود در گره‌های والد شبیه‌سازی‌شده موجود بین نشانگرها حذف می شود. این فرآیند برای اطمینان از اینکه گره های درون خطی همچنان قالب بندی پاراگراف والد را حفظ می کنند استفاده می شود. این روش همچنین بر روی گره‌هایی که به عنوان پارامتر ارسال می‌شوند، بررسی می‌کند و اگر هر یک از گره‌ها نامعتبر باشد، یک استثنا ایجاد می‌کند. پارامترهایی که باید به این متد ارسال شوند عبارتند از:

1. **StartNode** و **EndNode**. دو پارامتر اول گره هایی هستند که به ترتیب تعیین می کنند که استخراج محتوا از کجا شروع شود و کجا به پایان برسد. این گره ها می توانند هر دو سطح بلوک ([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/)، [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)) یا سطح درونی (به عنوان مثال [Run](https://reference.aspose.com/words/net/aspose.words/run/)، [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/)، [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/) و غیره) باشند:
   1. برای ارسال یک فیلد باید شی **FieldStart** مربوطه را ارسال کنید
   1. برای ارسال نشانک ها، گره های **BookmarkStart** و [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/) باید ارسال شوند
   1. برای ارسال نظرات باید از گره های [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) و [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) استفاده شود
1. **IsInclusive**. مشخص می کند که آیا نشانگرها در استخراج گنجانده شده اند یا خیر. اگر این گزینه روی false تنظیم شود و همان گره یا گره های متوالی ارسال شود، یک لیست خالی برگردانده می شود:
   1. اگر یک گره **FieldStart** ارسال شود، این گزینه تعیین می کند که آیا کل فیلد باید گنجانده شود یا حذف شود
   1. اگر یک گره **BookmarkStart** یا **BookmarkEnd** ارسال شود، این گزینه مشخص می کند که نشانک شامل یا فقط محتوای بین محدوده نشانک باشد.
   1. اگر یک گره **CommentRangeStart** یا **CommentRangeEnd** ارسال شود، این گزینه تعیین می کند که آیا خود نظر قرار است شامل شود یا فقط محتوا در محدوده نظر.

پیاده سازی روش **ExtractContent** می توانید [در Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs) را پیدا کنید. به این روش در سناریوهای این مقاله اشاره خواهد شد.

ما همچنین یک روش سفارشی برای تولید آسان یک سند از گره های استخراج شده تعریف خواهیم کرد. این روش در بسیاری از سناریوهای زیر استفاده می شود و به سادگی یک سند جدید ایجاد می کند و محتوای استخراج شده را وارد آن می کند.

مثال کد زیر نحوه گرفتن لیستی از گره ها و درج آنها را در یک سند جدید نشان می دهد:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## استخراج محتوا بین پاراگراف ها

این نشان می دهد که چگونه می توان از روش بالا برای استخراج محتوا بین پاراگراف های خاص استفاده کرد. در این صورت می خواهیم متن نامه ای که در نیمه اول سند یافت شده را استخراج کنیم. می توان گفت که این بین پاراگراف 7 و 11 است.

کد زیر این کار را انجام می دهد. پاراگراف های مناسب با استفاده از روش [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) بر روی سند و عبور شاخص های مشخص شده استخراج می شوند. سپس این گره ها را به متد **ExtractContent** منتقل می کنیم و بیان می کنیم که این گره ها باید در استخراج گنجانده شوند. این روش محتوای کپی شده بین این گره ها را برمی گرداند که سپس در یک سند جدید درج می شوند.

مثال کد زیر نحوه استخراج محتوا بین پاراگراف های خاص را با استفاده از روش `ExtractContent` در بالا نشان می دهد:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) دانلود کنید.

{{% /alert %}}

## استخراج محتوا بین انواع مختلف گره ها

ما می توانیم محتوا را بین هر ترکیبی از سطح بلوک یا گره های درون خطی استخراج کنیم. در این سناریوی زیر، محتوای بین پاراگراف اول و جدول در بخش دوم را به طور فراگیر استخراج می کنیم. گره های نشانگر را با فراخوانی روش های [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) و [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) در بخش دوم سند برای بازیابی گره های **Paragraph** و **Table** مناسب دریافت می کنیم. برای تغییر جزئی، اجازه دهید به جای آن محتوا را کپی کرده و آن را در زیر نسخه اصلی قرار دهیم.

مثال کد زیر نحوه استخراج محتوا بین پاراگراف و جدول را با استفاده از روش **ExtractContent** نشان می دهد:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) دانلود کنید.

{{% /alert %}}

## استخراج محتوا بین پاراگراف ها بر اساس سبک

ممکن است لازم باشد محتوا را بین پاراگراف هایی با سبک مشابه یا متفاوت استخراج کنید، مانند بین پاراگراف هایی که با سبک های عنوان مشخص شده اند. کد زیر نحوه رسیدن به این هدف را نشان می دهد. این یک مثال ساده است که بدون استخراج سرفصل ها، محتوا را بین اولین نمونه از سبک های "Heading 1" و "Header 3" استخراج می کند. برای انجام این کار، آخرین پارامتر را روی false قرار می دهیم، که مشخص می کند گره های نشانگر نباید شامل شوند.

در یک پیاده سازی مناسب، این باید در یک حلقه اجرا شود تا محتوا بین تمام پاراگراف های این سبک ها از سند استخراج شود. محتوای استخراج شده در یک سند جدید کپی می شود.

مثال کد زیر نحوه استخراج محتوا بین پاراگراف ها با سبک های خاص را با استفاده از روش **ExtractContent** نشان می دهد:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) دانلود کنید.

{{% /alert %}}

## استخراج محتوا بین اجراهای خاص

شما می توانید محتوا را بین گره های درون خطی مانند [Run](https://reference.aspose.com/words/net/aspose.words/run/) نیز استخراج کنید. **Runs** از پاراگراف های مختلف می تواند به عنوان نشانگر ارسال شود. کد زیر نحوه استخراج متن خاص را در بین همان گره **Paragraph** نشان می دهد.

مثال کد زیر نحوه استخراج محتوا بین اجراهای خاص همان پاراگراف را با استفاده از روش **ExtractContent** نشان می دهد:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) دانلود کنید.

{{% /alert %}}

## استخراج محتوا با استفاده از یک فیلد

برای استفاده از یک فیلد به عنوان نشانگر، گره `FieldStart` باید ارسال شود. آخرین پارامتر متد `ExtractContent` تعیین می کند که آیا کل فیلد قرار است گنجانده شود یا خیر. بیایید محتوای بین قسمت ادغام "FullName" و یک پاراگراف در سند را استخراج کنیم. ما از متد [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/) کلاس [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) استفاده می کنیم. این گره **FieldStart** را از نام فیلد ادغام ارسال شده به آن برمی گرداند.

در مورد ما، اجازه دهید آخرین پارامتر ارسال شده به روش **ExtractContent** را روی false تنظیم کنیم تا فیلد از استخراج حذف شود. ما محتوای استخراج شده را به PDF ارائه می کنیم.

مثال کد زیر نحوه استخراج محتوا بین یک فیلد و پاراگراف خاص در سند را با استفاده از روش **ExtractContent** نشان می دهد:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) دانلود کنید.

{{% /alert %}}

## استخراج محتوا از یک نشانک

در یک سند، محتوایی که در یک نشانک تعریف شده است توسط گره های `BookmarkStart` و BookmarkEnd کپسوله می شود. محتوای یافت شده بین این دو گره نشانک را تشکیل می دهد. می‌توانید هر یک از این گره‌ها را به‌عنوان هر نشانگر، حتی گره‌هایی از نشانک‌های مختلف، ارسال کنید، تا زمانی که نشانگر شروع قبل از نشانگر پایانی در سند ظاهر شود. ما این محتوا را با استفاده از کد زیر در یک سند جدید استخراج می کنیم. گزینه پارامتر **IsInclusive** نحوه حفظ یا حذف نشانک را نشان می دهد.

مثال کد زیر نحوه استخراج محتوای ارجاع شده به نشانک را با استفاده از روش **ExtractContent** نشان می دهد:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) دانلود کنید.

{{% /alert %}}

## مطالب را از یک نظر استخراج کنید

یک نظر از گره های CommentRangeStart، CommentRangeEnd و Comment تشکیل شده است. همه این گره ها به صورت خطی هستند. همانطور که در تصویر زیر مشاهده می شود، دو گره اول محتوای سند را که توسط نظر به آن ارجاع داده می شود، محصور می کنند.

گره **Comment** خود یک [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/) است که می تواند شامل پاراگراف ها و اجراها باشد. این نشان دهنده پیام نظر است که به عنوان یک حباب نظر در صفحه بررسی دیده می شود. از آنجایی که این گره درون خطی است و از یک بدنه است، می توانید محتوا را از داخل این پیام نیز استخراج کنید.

نظر عنوان، پاراگراف اول و جدول در بخش دوم را در بر می گیرد. بیایید این نظر را در یک سند جدید استخراج کنیم. گزینه **IsInclusive** تعیین می کند که خود نظر حفظ شود یا کنار گذاشته شود.

مثال کد زیر نحوه انجام این کار را نشان می دهد:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) دانلود کنید.

{{% /alert %}}

## نحوه استخراج محتوا با استفاده از DocumentVisitor

از کلاس [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) برای اجرای این سناریوی استفاده استفاده کنید. این کلاس با الگوی شناخته شده طراحی Visitor مطابقت دارد. با **DocumentVisitor** **,** می توانید عملیات سفارشی را که نیاز به شمارش روی درخت سند دارند تعریف و اجرا کنید.

**DocumentVisitor** مجموعه‌ای از روش‌های **VisitXXX** را ارائه می‌کند که هنگام مواجهه با یک عنصر سند خاص (گره) فراخوانی می‌شوند. به عنوان مثال، [VisitParagraphStart](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphstart/) زمانی فراخوانی می شود که ابتدای یک پاراگراف متنی پیدا شود و [VisitParagraphEnd](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphend/) زمانی فراخوانی می شود که انتهای یک پاراگراف متنی پیدا شود. هر متد **DocumentVisitor.VisitXXX** شی مربوطه را می پذیرد که با آن مواجه می شود، بنابراین می توانید در صورت نیاز از آن استفاده کنید (مثلاً **DocumentVisitor.VisitParagraphStart** و **DocumentVisitor.VisitParagraphEnd** یک شی [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) را می پذیرند.

هر روش **DocumentVisitor.VisitXXX** یک مقدار [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) را برمی‌گرداند که شمارش گره‌ها را کنترل می‌کند. می توانید درخواست کنید که شمارش را ادامه دهید، از گره فعلی رد شوید (اما شمارش را ادامه دهید)، یا شمارش گره ها را متوقف کنید.

این مراحلی است که باید برای تعیین و استخراج بخش‌های مختلف یک سند به صورت برنامه‌نویسی دنبال کنید:

- یک کلاس برگرفته از **DocumentVisitor** ایجاد کنید
- نادیده گرفتن و ارائه پیاده سازی برای برخی یا همه روش های **DocumentVisitor.VisitXXX** برای انجام برخی از عملیات سفارشی
- [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/) را روی گره از جایی که می‌خواهید شمارش را شروع کنید، فراخوانی کنید، برای مثال، اگر می‌خواهید کل سند را شمارش کنید، از [Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/) استفاده کنید

**DocumentVisitor** پیاده سازی های پیش فرض را برای همه روش های **DocumentVisitor.VisitXXX** فراهم می کند. این کار ایجاد بازدیدکنندگان سند جدید را آسان‌تر می‌کند، زیرا فقط روش‌های مورد نیاز برای بازدیدکننده خاص باید نادیده گرفته شوند. لزومی ندارد که همه روش‌های بازدیدکننده را لغو کنید.

مثال زیر نحوه استفاده از الگوی Visitor برای افزودن عملیات جدید به مدل شیء Aspose.Words را نشان می دهد. در این مورد، ما یک مبدل سند ساده به قالب متن ایجاد می کنیم:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

فایل نمونه این نمونه را می توانید از [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) دانلود کنید.

{{% /alert %}}

## چگونه فقط متن را استخراج کنیم

راه های بازیابی متن از سند عبارتند از:

- از [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) با [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/) برای ذخیره به عنوان متن ساده در یک فایل یا جریان استفاده کنید
- از [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) استفاده کنید و پارامتر **SaveFormat.Text** را پاس کنید. در داخل، این ذخیره را به عنوان متن در یک جریان حافظه فراخوانی می کند و رشته حاصل را برمی گرداند
- از [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/) برای بازیابی متن با تمام کاراکترهای کنترل Microsoft Word از جمله کدهای فیلد استفاده کنید
- اجرای یک [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) سفارشی برای انجام استخراج سفارشی

### با استفاده از `Node.GetText` و `Node.ToString`

یک سند Word می‌تواند شامل کاراکترهای کنترلی باشد که عناصر خاصی مانند فیلد، انتهای سلول، انتهای بخش و غیره را مشخص می‌کنند. فهرست کامل نویسه‌های کنترل ممکن Word در کلاس **ControlChar** تعریف شده است. روش **Node.GetText** متنی را با تمام کاراکترهای کنترل موجود در گره برمی گرداند.

فراخوانی **ToString** نمایش متن ساده سند را فقط بدون کاراکترهای کنترلی برمی گرداند. برای اطلاعات بیشتر در مورد صادرات به صورت متن ساده به بخش **"استفاده از SaveFormat.Text"** زیر مراجعه کنید.

مثال کد زیر تفاوت بین فراخوانی متدهای **GetText** و **ToString** در یک گره را نشان می دهد:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### با استفاده از `SaveFormat.Text`

این مثال سند را به صورت زیر ذخیره می کند:

- کاراکترهای فیلد و کدهای فیلد، شکل، پاورقی، یادداشت پایانی و مراجع نظر را فیلتر می کند
- کاراکترهای پایان پاراگراف **ControlChar.Cr** را با ترکیبات **ControlChar.CrLf** جایگزین می کند
- از رمزگذاری UTF8 استفاده می کند

مثال کد زیر نحوه ذخیره یک سند در قالب TXT را نشان می دهد:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## استخراج تصاویر از Shapes

ممکن است برای انجام برخی کارها نیاز به استخراج تصاویر سند داشته باشید. Aspose.Words به شما امکان انجام این کار را نیز می دهد.

مثال کد زیر نحوه استخراج تصاویر از یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}
