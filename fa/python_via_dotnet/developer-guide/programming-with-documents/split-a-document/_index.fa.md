---
title: یک سند را در Python تقسیم کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: تقسیم یک سند
linktitle: تقسیم یک سند
description: "با استفاده از Python یک سند را به چندین فایل تقسیم کنید. از ویژگی تقسیم برای تقسیم مؤثر یک سند بر اساس سرفصل ها یا بخش ها و همچنین بر اساس صفحات یا محدوده صفحات استفاده کنید."
type: docs
weight: 90
url: /fa/python-net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* یا *تقسیم یک سند* فرآیند شکستن یک سند بزرگ به تعداد بیشتری فایل کوچکتر است. دلایل مختلفی برای تقسیم یک فایل وجود دارد. به عنوان مثال، شما فقط به برخی از صفحات از یک سند خاص نیاز دارید و نه کل آن. یا به دلایل حفظ حریم خصوصی، می‌خواهید فقط برخی از بخش‌های یک سند را با دیگران به اشتراک بگذارید. با قابلیت تقسیم، می‌توانید فقط بخش‌های مورد نیاز سند را دریافت کنید و با آن‌ها اقدامات لازم را انجام دهید، مثلاً علامت‌گذاری، ذخیره یا ارسال کنید.

Aspose.Words روشی کارآمد برای تقسیم یک سند به چندین سند بر اساس سرفصل ها یا بخش ها در اختیار شما قرار می دهد. شما همچنین می توانید یک سند را بر اساس صفحات یا محدوده صفحات تقسیم کنید. هر دو گزینه تقسیم در این مقاله توضیح داده خواهند شد.

برای تقسیم یک سند به فایل های کوچکتر با استفاده از Aspose.Words، باید این مراحل را دنبال کنید:

1. سند را در هر قالب پشتیبانی شده بارگیری کنید.
1. سند را تقسیم کنید.
1. اسناد خروجی را ذخیره کنید.

پس از تقسیم یک سند، می توانید تمام اسناد خروجی را که با صفحات، متن و غیره مورد نیاز شروع می شوند، باز کنید.

{{% alert color="primary" %}}

**آنلاین امتحان کنید**

می توانید این عملکرد را با [تقسیم کننده اسناد آنلاین رایگان](https://products.aspose.app/words/splitter) ما امتحان کنید.

{{% /alert %}}

## یک سند را با استفاده از معیارهای مختلف {#split-a-document-using-different-criteria} تقسیم کنید

Aspose.Words به شما امکان می دهد اسناد EPUB یا HTML را بر اساس معیارهای مختلف به فصل تقسیم کنید. در این فرآیند، سبک و طرح سند منبع برای اسناد خروجی حفظ می شود.

با استفاده از شمارش [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) می توانید معیارهایی را مشخص کنید. بنابراین می توانید یک سند را با استفاده از یکی از معیارهای زیر به فصل تقسیم کنید یا بیش از یک معیار را با هم ترکیب کنید:

- پاراگراف عنوان،
- شکستن بخش،
- شکست ستون،
- شکستن صفحه

هنگام ذخیره خروجی در HTML، Aspose.Words هر فصل جداگانه را به عنوان یک فایل HTML جداگانه ذخیره می کند. در نتیجه، سند به چندین فایل HTML تقسیم می شود. هنگام ذخیره خروجی در EPUB، Aspose.Words بدون توجه به مقدار [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) که استفاده می‌کنید، نتیجه را در یک فایل EPUB ذخیره می‌کند. بنابراین، استفاده از [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) برای اسناد EPUB تنها بر ظاهر محتوای آنها در برنامه های خواننده تأثیر می گذارد: محتوا به فصل ها تقسیم می شود و سند دیگر پیوسته ظاهر نمی شود.

{{% alert color="primary" %}}

هنگام ذخیره در فرمت MHTML نمی توانید یک سند را با استفاده از ویژگی [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) تقسیم کنید.

{{% /alert %}}

در این بخش، تنها برخی از معیارهای تقسیم ممکن را در نظر می گیریم.

### یک سند را بر اساس سرفصل های {#split-a-document-by-headings} تقسیم کنید

برای تقسیم یک سند به فصل ها بر اساس سرفصل، از مقدار [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) ویژگی [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) استفاده کنید.

اگر می‌خواهید یک سند را بر اساس سطح خاصی از پاراگراف‌های عنوان، مانند سرفصل‌های 1، 2، و 3 تقسیم کنید، از ویژگی [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/) نیز استفاده کنید. خروجی توسط پاراگراف هایی که با سطح عنوان مشخص شده فرمت شده اند تقسیم می شود.

مثال کد زیر نشان می دهد که چگونه می توان یک سند را با عنوان به بخش های کوچکتر تقسیم کرد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

لطفاً توجه داشته باشید که برای این معیار، Aspose.Words فقط از ذخیره در قالب HTML هنگام تقسیم پشتیبانی می کند.

هنگام ذخیره در EPUB، سند به چندین فایل تقسیم نمی شود و تنها یک فایل خروجی وجود خواهد داشت.

### یک سند را بر اساس بخش‌های {#split-a-document-by-sections} تقسیم کنید

Aspose.Words همچنین به شما این امکان را می‌دهد که از بخش‌هایی برای تقسیم اسناد و ذخیره آنها در HTML استفاده کنید. برای این منظور از [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break) به عنوان [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) استفاده کنید:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

روش دیگری برای تقسیم سند منبع به چندین سند خروجی وجود دارد و می‌توانید هر فرمت خروجی مورد پشتیبانی Aspose.Words را انتخاب کنید.

مثال کد زیر نشان می دهد که چگونه می توان یک سند را با تقسیم بندی به بخش های کوچکتر تقسیم کرد (بدون استفاده از ویژگی [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/)):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## تقسیم بر اساس صفحات {#splitting-by-pages}

همچنین می توانید یک سند را صفحه به صفحه، بر اساس محدوده صفحه یا با شماره صفحه مشخص شده شروع کنید. در چنین مواردی روش [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) می تواند کار را انجام دهد.

این بخش چندین مورد استفاده از تقسیم اسناد به صفحه بندی شده را با استفاده از کلاس [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) و روش [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) شرح می دهد.

{{% alert color="primary" %}}

می توانید از هر [فرمت های سند پشتیبانی شده](/words/fa/python-net/supported-document-formats/) استفاده کنید.

{{% /alert %}}

{{% alert color="primary" %}}

با توجه به تفاوت های ظریف زیادی که هنگام کاهش تعداد صفحات ظاهر می شود، تطابق کامل با طرح بندی Microsoft Word کار بسیار پیچیده ای است. بنابراین، بسته به پیچیدگی سند، ممکن است تفاوت های جزئی در طرح سند حاصل از سند اصلی وجود داشته باشد.

{{% /alert %}}

### یک صفحه سند را بر اساس صفحه {#split-a-document-page-by-page} تقسیم کنید

Aspose.Words به شما امکان می دهد یک سند چند صفحه ای را صفحه به صفحه تقسیم کنید.

مثال کد زیر نحوه تقسیم یک سند و ذخیره هر صفحه به عنوان یک سند جداگانه را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### تقسیم یک سند بر اساس محدوده صفحه {#split-a-document-by-page-ranges}

Aspose.Words اجازه می دهد تا یک سند چند صفحه ای را بر اساس محدوده صفحه تقسیم کنید. می توانید یک فایل را به چندین فایل با محدوده های مختلف صفحه تقسیم کنید یا فقط یک محدوده را انتخاب کنید و فقط این قسمت از سند منبع را ذخیره کنید. توجه داشته باشید که می توانید محدوده صفحه را با توجه به حداکثر و حداقل تعداد صفحات یک سند انتخاب کنید.

مثال کد زیر نشان می دهد که چگونه می توان یک سند را به قسمت های کوچکتر بر اساس محدوده صفحه با شاخص های شروع و پایان خاص تقسیم کرد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## سند تقسیم شده را با یک فایل دیگر {#merge-the-split-document-with-another-file} ادغام کنید

Aspose.Words شما را قادر می سازد تا سند تقسیم خروجی را با یک سند دیگر ادغام کنید تا یک سند جدید ایجاد کنید. این را می توان ادغام اسناد نامید.

مثال کد زیر نحوه ادغام یک سند تقسیم شده با سند دیگر را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
