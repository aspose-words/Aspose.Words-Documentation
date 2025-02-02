---
title: تقسیم یک سند در C++
second_title: Aspose.Words برای C++
articleTitle: تقسیم یک سند
linktitle: تقسیم یک سند
description: "یک سند را با استفاده از C++ به چندین فایل تقسیم کنید. از ویژگی split برای تقسیم موثر یک سند بر اساس عناوین یا بخش ها و همچنین بر اساس صفحات یا محدوده صفحات استفاده کنید."
type: docs
weight: 90
url: /fa/cpp/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* یا *split a document* فرآیند شکستن یک سند بزرگ به تعداد بیشتری از فایل های کوچکتر است. دلایل مختلفی برای تقسیم یک فایل وجود دارد. به عنوان مثال، شما فقط به چند صفحه از یک سند خاص نیاز دارید و نه کل آن. یا به دلایل حریم خصوصی، شما می خواهید فقط برخی از بخش های یک سند را با دیگران به اشتراک بگذارید. با ویژگی تقسیم، شما می توانید تنها بخش های مورد نیاز سند را دریافت کنید و اقدامات لازم را با آنها انجام دهید، به عنوان مثال، برای علامت گذاری، ذخیره یا ارسال.

Aspose.Words به شما یک راه کارآمد برای تقسیم یک سند به چندین سند توسط عناوین یا بخش ها را می دهد. همچنین می توانید یک سند را بر اساس صفحات یا محدوده صفحات تقسیم کنید. هر دو گزینه تقسیم در این مقاله شرح داده خواهد شد.

برای تقسیم یک سند به فایل های کوچکتر با استفاده از Aspose.Words، باید این مراحل را دنبال کنید:

1. سند را در هر فرمت پشتیبانی شده بارگیری کنید.
1. سند را تقسیم کنید.
1. اسناد خروجی را ذخیره کنید.

پس از تقسیم یک سند، شما قادر خواهید بود تمام اسناد خروجی را که با صفحات مورد نیاز، متن و غیره شروع می شود، باز کنید.

{{% alert color="primary" %}}

**سعی کنید آنلاین**

شما می توانید این قابلیت را با ما امتحان کنید [تقسیم کننده اسناد آنلاین رایگان](https://products.aspose.app/words/splitter).

{{% /alert %}}

## تقسیم یک سند با استفاده از معیارهای مختلف {#split-a-document-using-different-criteria}

Aspose.Words به شما اجازه می دهد تا اسناد EPUB یا HTML را با توجه به معیارهای مختلف به فصل ها تقسیم کنید. در این فرآیند، سبک و طرح سند منبع برای اسناد خروجی حفظ می شود.

شما می توانید معیارهای را با استفاده از شمارش [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) مشخص کنید. بنابراین شما می توانید یک سند را با استفاده از یکی از معیارهای زیر به فصل ها تقسیم کنید یا بیش از یک معیار را با هم ترکیب کنید:

- عنوان پاراگراف,
- شکستن بخش,
- شکستن ستون,
- شکستن صفحه.

هنگام ذخیره خروجی به HTML، Aspose.Words هر فصل جداگانه را به عنوان یک فایل HTML جداگانه ذخیره کنید. در نتیجه، سند به چندین فایل HTML تقسیم می شود. هنگام ذخیره خروجی به EPUB، Aspose.Words نتیجه را در یک فایل EPUB ذخیره کنید صرف نظر از مقدار `DocumentSplitCriteria` که استفاده کرده اید. بنابراین، استفاده از DocumentSplitCriteria برای EPUB اسناد فقط بر ظاهر محتوای آنها در برنامه های خواننده تأثیر می گذارد: محتوا به فصل ها تقسیم می شود و سند دیگر پیوسته ظاهر نمی شود.

{{% alert color="primary" %}}

شما نمی توانید یک سند را با استفاده از ویژگی [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) هنگام ذخیره به فرمت MHTML تقسیم کنید.

{{% /alert %}}

در این بخش، ما فقط برخی از معیارهای تقسیم احتمالی را در نظر می گیریم.

### تقسیم یک سند بر اساس بخش ها {#split-a-document-by-sections}

Aspose.Words همچنین شما را قادر می سازد تا از شکاف های بخش برای تقسیم اسناد استفاده کنید و آنها را به HTML ذخیره کنید. برای این منظور از **SectionBreak** به عنوان **DocumentSplitCriteria**استفاده کنید:

مثال کد زیر نشان می دهد که چگونه یک سند را به بخش های کوچکتر تقسیم کنیم (بدون استفاده از ویژگی `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## تقسیم بندی بر اساس صفحات {#splitting-by-pages}

همچنین می توانید یک صفحه سند را بر اساس صفحه، بر اساس محدوده صفحه یا با شماره های مشخص شده صفحه تقسیم کنید. در چنین مواردی روش [ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/) می تواند کار را انجام دهد.

این بخش چندین مورد استفاده از تقسیم اسناد را بر اساس صفحه با استفاده از کلاس [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) و روش **ExtractPages** توصیف می کند.

{{% alert color="primary" %}}

شما می توانید از هر [فرمت خروجی پشتیبانی شده توسط Aspose.Words](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

به دلیل تفاوت های ظریف بسیاری که در حالی که تعداد صفحات را کاهش می دهد، ظاهر می شود، یک مطابقت کامل با طرح Microsoft Word یک کار بسیار پیچیده است. بنابراین، بسته به پیچیدگی سند، ممکن است تفاوت های جزئی در طرح سند حاصل از سند اصلی وجود داشته باشد.

{{% /alert %}}

### تقسیم یک سند صفحه به صفحه {#split-a-document-page-by-page}

Aspose.Words شما را قادر می سازد تا یک صفحه سند چند صفحه ای را بر اساس صفحه تقسیم کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را تقسیم کنید و هر صفحه را به عنوان یک سند جداگانه ذخیره کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### تقسیم یک سند بر اساس محدوده صفحه {#split-a-document-by-page-ranges}

Aspose.Words اجازه می دهد تا یک سند چند صفحه ای را بر اساس محدوده صفحه تقسیم کند. شما می توانید یک فایل را به چندین فایل با محدوده های مختلف صفحه تقسیم کنید یا فقط یک محدوده را انتخاب کنید و فقط این قسمت از سند منبع را ذخیره کنید. توجه داشته باشید که شما می توانید محدوده صفحه را با توجه به حداکثر و حداقل تعداد صفحه یک سند انتخاب کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را به بخش های کوچکتر با محدوده صفحه با شاخص های شروع و پایان خاص تقسیم کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## سند تقسیم شده را با سند دیگری ادغام کنید {#merge-the-split-document-with-another-file}

Aspose.Words شما را قادر می سازد تا سند تقسیم خروجی را با یک سند دیگر ادغام کنید تا یک سند جدید تشکیل دهید. این را می توان ادغام سند نامید.

مثال کد زیر نشان می دهد که چگونه یک سند تقسیم شده را با یک سند دیگر ادغام کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
