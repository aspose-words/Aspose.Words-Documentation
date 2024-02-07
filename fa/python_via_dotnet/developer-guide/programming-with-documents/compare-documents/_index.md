---
title: مقایسه اسناد در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: مقایسه اسناد
linktitle: مقایسه اسناد
description: "دو سند را با هر فرمت پشتیبانی شده مقایسه کنید و تغییرات محتوا را با استفاده از Python نشان دهید. هنگام مقایسه می توانید گزینه های پیشرفته را اعمال کنید."
type: docs
weight: 60
url: /fa/python-net/compare-documents/
---

مقایسه اسناد فرآیندی است که تغییرات بین دو سند را شناسایی می‌کند و تغییرات را به‌عنوان تجدیدنظر در بر می‌گیرد. این فرآیند هر دو سند را با هم مقایسه می‌کند، از جمله نسخه‌های یک سند خاص، سپس تغییرات بین هر دو سند به عنوان تجدید نظر در سند اول نشان داده می‌شود.

روش مقایسه با مقایسه کلمات در سطح کاراکتر یا در سطح کلمه به دست می آید. اگر یک کلمه شامل تغییر حداقل یک کاراکتر باشد، در نتیجه، تفاوت به عنوان تغییر کل کلمه نمایش داده می شود، نه یک کاراکتر. این فرآیند مقایسه یک کار معمول در صنایع حقوقی و مالی است.

به جای جستجوی دستی تفاوت بین اسناد یا بین نسخه‌های مختلف آنها، می‌توانید از Aspose.Words برای مقایسه اسناد و دریافت تغییرات محتوا در قالب‌بندی، سرصفحه/پانویس، جداول و موارد دیگر استفاده کنید.

این مقاله نحوه مقایسه اسناد و نحوه تعیین ویژگی های مقایسه پیشرفته را توضیح می دهد.

{{% alert color="primary" %}}

**آنلاین امتحان کنید**

با استفاده از ابزار [مقایسه اسناد آنلاین](https://products.aspose.app/words/comparison) می توانید دو سند را به صورت آنلاین مقایسه کنید.

توجه داشته باشید که روش مقایسه که در زیر توضیح داده شده است، در این ابزار برای اطمینان از بدست آوردن نتایج یکسان استفاده می شود. بنابراین حتی با استفاده از ابزار مقایسه آنلاین یا با استفاده از روش مقایسه در Aspose.Words به نتایج یکسانی خواهید رسید.

{{% /alert %}}

## محدودیت ها و فرمت های فایل پشتیبانی شده {#limitations-and-supported-file-formats}

مقایسه اسناد یک ویژگی بسیار پیچیده است. بخش های مختلفی از ترکیب محتوا وجود دارد که برای تشخیص همه تفاوت ها باید تجزیه و تحلیل شوند. دلیل این پیچیدگی به این دلیل است که هدف Aspose.Words بدست آوردن نتایج مقایسه مشابه با الگوریتم مقایسه Microsoft Word است.

محدودیت کلی برای دو سند در حال مقایسه این است که آنها نباید قبل از فراخوانی روش مقایسه تجدید نظر داشته باشند زیرا این محدودیت در Microsoft Word وجود دارد.

{{% alert color="primary" %}}

توجه داشته باشید که می توانید هر دو سند را در [فرمت های سند پشتیبانی شده](/words/fa/python-net/supported-document-formats/) مقایسه کنید. اساساً می توانید اشیاء سند را با هم مقایسه کنید و حتی می توانید آن اشیاء را از ابتدا بدون داشتن قالب خاصی ایجاد کنید.

{{% /alert %}}

## مقایسه دو سند {#compare-two-documents}

وقتی اسناد را با هم مقایسه می کنید، تفاوت های سند دوم از اولی به عنوان تجدید نظر در مورد اول نشان داده می شود. هنگامی که یک سند را تغییر می دهید، هر ویرایش پس از اجرای روش مقایسه، بازبینی خاص خود را خواهد داشت.

Aspose.Words به شما امکان می‌دهد تفاوت‌های اسناد را با استفاده از روش [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) شناسایی کنید - این شبیه به ویژگی مقایسه اسناد Microsoft Word است. این به شما امکان می دهد اسناد یا نسخه های سند را بررسی کنید تا تفاوت ها و تغییرات را پیدا کنید، از جمله اصلاحات قالب بندی مانند تغییر فونت، تغییر فاصله، افزودن کلمات و پاراگراف ها.

در نتیجه مقایسه می توان اسناد را برابر یا غیر مساوی تشخیص داد. اصطلاح اسناد "برابر" به این معنی است که روش مقایسه قادر به نمایش تغییرات به عنوان تجدید نظر نیست. این بدان معنی است که هر دو متن سند و قالب بندی متن یکسان هستند. اما می تواند تفاوت های دیگری بین اسناد وجود داشته باشد. به عنوان مثال، Microsoft Word فقط از ویرایش قالب برای سبک ها پشتیبانی می کند و شما نمی توانید درج/حذف سبک را نشان دهید. بنابراین اسناد می‌توانند مجموعه‌ای از سبک‌های متفاوت داشته باشند و روش [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) هنوز هیچ تجدیدنظری ایجاد نمی‌کند.

مثال کد زیر نشان می دهد که چگونه می توان بررسی کرد که آیا دو سند برابر هستند یا نه:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

مثال کد زیر نحوه اعمال روش `Compare` را به دو سند نشان می دهد:

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## ویژگی های مقایسه پیشرفته {#specify-advanced-comparing-properties} را مشخص کنید

بسیاری از ویژگی های مختلف کلاس [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) وجود دارد که می توانید هنگام مقایسه اسناد از آنها استفاده کنید.

به عنوان مثال، Aspose.Words به شما امکان می دهد تغییرات ایجاد شده در طول عملیات مقایسه برای انواع خاصی از اشیاء در سند اصلی را نادیده بگیرید. شما می‌توانید ویژگی مناسب برای نوع شی مانند [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/)، [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/)، [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/) و موارد دیگر را با تنظیم آنها بر روی `True` انتخاب کنید.

علاوه بر این، Aspose.Words ویژگی [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) را ارائه می دهد که با آن می توانید تعیین کنید که آیا تغییرات را بر اساس کاراکتر یا کلمه ردیابی کنید.

یکی دیگر از ویژگی های رایج، انتخاب سندی است که تغییرات مقایسه را نشان دهد. به عنوان مثال، "جعبه گفتگوی مقایسه اسناد" در Microsoft Word دارای گزینه "نمایش تغییرات در" است - این همچنین بر نتایج مقایسه تأثیر می گذارد. Aspose.Words ویژگی [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) را فراهم می کند که به این منظور خدمت می کند.

مثال کد زیر نحوه تنظیم ویژگی های مقایسه پیشرفته را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
