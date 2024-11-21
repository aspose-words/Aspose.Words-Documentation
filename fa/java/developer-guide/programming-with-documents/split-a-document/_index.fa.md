---
title: تقسیم یک سند در Java
second_title: Aspose.Words برای Java
articleTitle: تقسیم یک سند
linktitle: تقسیم یک سند
description: "Aspose.Words برای Java شما را با یک راه کارآمد برای تقسیم یک سند به اسناد متعدد با سرفصل ها یا بخش ها، و همچنین صفحات یا محدوده صفحه."
type: docs
weight: 90
url: /fa/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* یا * انتشار یک سند * فرایند شکستن یک سند بزرگ به تعداد بیشتری از فایل های کوچکتر است. دلایل مختلفی برای تقسیم یک فایل وجود دارد. به عنوان مثال، شما فقط به برخی از صفحات از یک سند خاص و نه کل یک نیاز دارید. یا به دلایل حریم خصوصی، شما می خواهید فقط برخی از بخش های یک سند را با دیگران به اشتراک بگذارید. با ویژگی تقسیم، شما می توانید تنها بخش های مورد نیاز سند را دریافت کنید و اقدامات لازم را با آنها انجام دهید، مثلا برای ثبت نام، ذخیره یا ارسال.

Aspose.Words شما را با یک راه کارآمد برای تقسیم یک سند به اسناد متعدد با سرفصل ها یا بخش ها فراهم می کند. شما همچنین می توانید یک سند را با صفحات یا محدوده صفحه تقسیم کنید. هر دو گزینه تقسیم در این مقاله شرح داده خواهد شد.

برای تقسیم یک سند به فایل های کوچکتر Aspose.Words, شما باید این مراحل را دنبال کنید:

1. این سند را در هر فرمت پشتیبانی شده بارگذاری کنید.
1. سند را تقسیم کنید.
1. اسناد خروجی را ذخیره کنید.

پس از تقسیم یک سند، شما قادر خواهید بود تمام اسناد خروجی را که با صفحات مورد نیاز، متن و غیره شروع می شود، باز کنید.

{{% alert color="primary" %}}

**سعی کنید آنلاین**

شما می توانید این قابلیت را با ما امتحان کنید [Free online document](https://products.aspose.app/words/splitter)...

{{% /alert %}}

## تقسیم یک سند با استفاده از معیارهای مختلف {#split-a-document-using-different-criteria}

Aspose.Words به شما اجازه می دهد تا اسناد EPUB یا HTML را به فصول با توجه به معیارهای مختلف تقسیم کنید. در این فرآیند، سبک و طرح سند منبع برای اسناد خروجی حفظ می شود.

شما می توانید معیارهای استفاده از [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) تکرار بنابراین شما می توانید یک سند را به فصول با استفاده از یکی از معیارهای زیر تقسیم کنید یا بیش از یک معیار را با هم ترکیب کنید:

- عنوان پاراگراف،
- شکستن بخش،
- شکستن ستون،
- شکستن صفحه

هنگام صرفه جویی در خروجی به HTML، Aspose.Words هر فصل را به عنوان یک فایل HTML جداگانه ذخیره کنید. در نتیجه، این سند به چندین فایل HTML تقسیم خواهد شد. هنگام صرفه جویی در خروجی به EPUB، Aspose.Words صرفه جویی در نتیجه در یک فایل EPUB بدون در نظر گرفتن `DocumentSplitCriteria` ارزش مورد استفاده شما بنابراین، با استفاده از DocumentSplitCriteria برای اسناد EPUB تنها بر ظاهر محتوای آنها در برنامه های خواننده تاثیر می گذارد: محتوا به فصل تقسیم می شود و سند دیگر به طور مداوم ظاهر نمی شود.

{{% alert color="primary" %}}

شما نمی توانید یک سند را با استفاده از [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) املاک هنگام صرفه جویی در فرمت MHTML

{{% /alert %}}

در این بخش، ما فقط برخی از معیارهای تقسیم احتمالی را در نظر می گیریم.

### تقسیم یک سند توسط Headings {#split-a-document-by-headings}

برای تقسیم یک سند به فصل با عنوان، استفاده از **HeadingParagraph** ارزش **DocumentSplitCriteria** مالکیت

اگر شما نیاز به تقسیم یک سند توسط یک سطح خاص از پاراگراف عنوان، مانند عنوان 1، 2، و 3، همچنین استفاده کنید. [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) مالکیت خروجی توسط پاراگراف های قالب بندی شده با سطح عنوان مشخص تقسیم می شود.

مثال کد زیر نشان می دهد که چگونه یک سند را به قطعات کوچکتر تقسیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

لطفا توجه داشته باشید که برای این معیارها، Aspose.Words تنها در هنگام تقسیم بندی به فرمت HTML کمک می کند.

هنگام صرفه جویی در EPUB، سند به چندین فایل تقسیم نمی شود و تنها یک فایل خروجی وجود دارد.

### تقسیم یک سند توسط بخش ها {#split-a-document-by-sections}

Aspose.Words همچنین شما را قادر می سازد تا از قطعات برای تقسیم اسناد و ذخیره آنها به HTML استفاده کنید. برای این منظور، استفاده **SectionBreak** به عنوان **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

یک راه دیگر برای تقسیم سند منبع به چندین سند خروجی وجود دارد و شما می توانید هر فرمت خروجی پشتیبانی شده را انتخاب کنید. Aspose.Words...

مثال کد زیر نشان می دهد که چگونه یک سند را به قطعات کوچکتر تقسیم کنیم (بدون استفاده از قطعات) `DocumentSplitCriteria` مالکیت:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## تقسیم بندی صفحات {#splitting-by-pages}

شما همچنین می توانید یک صفحه سند را با صفحه، با محدوده صفحه یا شروع با شماره صفحه مشخص تقسیم کنید. در چنین شرایطی [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) روش می تواند کار را انجام دهد.

این بخش چندین مورد استفاده از اسناد تقسیم شده را با استفاده از صفحه توصیف می کند. [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) کلاس و **ExtractPages** روش

{{% alert color="primary" %}}

شما می توانید از هر [پشتیبانی از فرمت های سند](/words/fa/java/supported-document-formats/)...

{{% /alert %}}

{{% alert color="primary" %}}

با توجه به بسیاری از تفاوت های ظاهری در هنگام کاهش تعداد صفحات، یک بازی کامل با Microsoft Word طرح کاملا یک کار پیچیده است. بنابراین، بسته به پیچیدگی سند، ممکن است تفاوت های جزئی در طرح سند حاصل از سند اصلی وجود داشته باشد.

{{% /alert %}}

### تقسیم یک صفحه سند توسط صفحه {#split-a-document-page-by-page}

Aspose.Words شما را قادر می سازد تا یک صفحه سند چند صفحه ای را با صفحه تقسیم کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را تقسیم کرده و هر صفحه را به عنوان یک سند جداگانه ذخیره کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### تقسیم یک سند توسط Page Range {#split-a-document-by-page-ranges}

Aspose.Words اجازه می دهد یک سند چند صفحه ای را با محدوده صفحه تقسیم کنید. شما می توانید یک فایل را به چندین فایل با دامنه های مختلف صفحه تقسیم کنید یا فقط یک دامنه را انتخاب کنید و فقط این قسمت از سند منبع را ذخیره کنید. توجه داشته باشید که می توانید دامنه صفحه را با توجه به حداکثر و حداقل تعداد صفحه یک سند انتخاب کنید.

مثال کد زیر نشان می دهد که چگونه یک سند را به قطعات کوچکتر با دامنه صفحه با شاخص های شروع و پایان خاص تقسیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## گزینه Callback برای ذخیره یک سند {#callback-option-for-saving-a-document}

می توانید از آن استفاده کنید [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) مالکیت برای کنترل چگونگی Aspose.Words ذخیره قطعات سند زمانی که این سند به فرمت HTML صادر می شود. این ملک به شما اجازه می دهد فایل های خروجی را تغییر دهید یا حتی آنها را به جریان های سفارشی هدایت کنید.

لطفا توجه داشته باشید که این callback در هنگام صرفه جویی در EPUB مفید نیست زیرا تمام قطعات خروجی باید در یک ظرف ذخیره شوند - فایل .epub. بنابراین، هدایت جریان پشتیبانی نمی شود و اثر تغییر نام قابل مشاهده نیست زیرا فایل ها در داخل ظرف تغییر می کنند.

## دانلود بازی The Split Document with Another Document {#merge-the-split-document-with-another-file}

Aspose.Words شما را قادر می سازد تا سند تقسیم خروجی را با یک سند دیگر ادغام کنید تا یک سند جدید ایجاد کنید. این می تواند ادغام سند نامیده شود.

مثال کد زیر نشان می دهد که چگونه یک سند تقسیم شده را با یک سند دیگر ادغام کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
