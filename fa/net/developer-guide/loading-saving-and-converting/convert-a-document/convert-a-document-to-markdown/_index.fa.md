---
title: تبدیل یک سند به Markdown در C#
second_title: Aspose.Words برای .NET
articleTitle: یک سند را به Markdown تبدیل کنید
linktitle: یک سند را به Markdown تبدیل کنید
type: docs
description: "با استفاده از C# یک سند را با هر فرمت بارگیری پشتیبانی شده به Markdown و بالعکس تبدیل کنید."
keywords: how to convert a document to markdown c#
weight: 40
url: /fa/net/convert-a-document-to-markdown/
timestamp: 2024-07-10-08-10-45
---

Markdown فرمت محبوبی است که برای نشانه گذاری متن و تبدیل بیشتر آن به HTML، PDF، DOCX یا فرمت های دیگر استفاده می شود. بسیاری از توسعه دهندگان این قالب را برای نوشتن مستندات، تهیه مقالات برای انتشار در وبلاگ ها، توصیف پروژه ها و غیره انتخاب می کنند.

Markdown بسیار محبوب است زیرا کار با این فرمت آسان است و همچنین می توان آن را به سادگی به فرمت های دیگر تبدیل کرد. به همین دلیل، Aspose.Words توانایی تبدیل یک سند در [هر فرمت بار پشتیبانی شده](https://reference.aspose.com/words/net/aspose.words/loadformat/) به Markdown و بالعکس را فراهم می کند - Aspose.Words همچنین از محبوب ترین [ذخیره فرمت ها](https://reference.aspose.com/words/net/aspose.words/saveformat/) پشتیبانی می کند.

اکنون عملکرد کار با فرمت Markdown به طور فعال در حال توسعه است تا فرصت های بیشتری برای کار راحت و راحت با اسناد در اختیار شما قرار دهد.

## تبدیل یک سند

برای تبدیل یک سند به Markdown، فقط باید یک سند را با هر فرمت پشتیبانی شده بارگیری کنید یا یک سند جدید را به صورت برنامه ریزی شده ایجاد کنید. سپس باید سند را با فرمت Markdown ذخیره کنید.

مثال کد زیر نحوه تبدیل DOCX به Markdown را نشان می دهد:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

همچنین می‌توانید پوشه فیزیکی را که می‌خواهید تصاویر را در هنگام صادر کردن یک سند به فرمت Markdown ذخیره کنید، مشخص کنید. به‌طور پیش‌فرض، Aspose.Words تصاویر را در همان پوشه‌ای ذخیره می‌کند که فایل سند در آن ذخیره می‌شود، اما می‌توانید با استفاده از ویژگی [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) این رفتار را لغو کنید.

تعیین یک پوشه از طریق **ImagesFolder** نیز مفید است اگر سندی را در یک جریان ذخیره کنید و Aspose.Words پوشه ای برای ذخیره تصاویر نداشته باشد.

اگر **ImagesFolder** مشخص شده وجود نداشته باشد، به طور خودکار ایجاد می شود.

مثال کد زیر نحوه تعیین یک پوشه برای تصاویر هنگام ذخیره یک سند در یک جریان را نشان می دهد:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## هنگام تبدیل به Markdown گزینه های ذخیره را مشخص کنید

Aspose.Words امکان استفاده از کلاس [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) را برای کار با گزینه های پیشرفته هنگام ذخیره یک سند در قالب Markdown فراهم می کند. بیشتر ویژگی‌ها ویژگی‌هایی را به ارث می‌برند یا بارگذاری می‌کنند که قبلاً در سایر کلاس‌های فضای نام [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/) وجود دارد. علاوه بر آنها، تعدادی ویژگی که مخصوص فرمت Markdown هستند نیز اضافه شده است. به عنوان مثال، ویژگی [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) برای کنترل تراز محتوا در جداول، یا [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) و [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) برای کنترل نحوه ذخیره تصاویر پس از تبدیل یک سند به فرمت Markdown.

## پشتیبانی از ویژگی های Markdown

Aspose.Words در حال حاضر از ویژگی‌های Markdown زیر پشتیبانی می‌کند که عمدتاً از مشخصات `CommonMark` در Aspose.Words API پیروی می‌کنند و به عنوان سبک‌های مناسب یا قالب‌بندی مستقیم نشان داده می‌شوند:

* سرفصل ها پاراگراف هایی با سبک سرفصل 1 – سرفصل 6 هستند
* نقل قول ها پاراگراف هایی هستند که در نام سبک آنها "نقل قول" وجود دارد
* IndentedCode پاراگراف هایی با "IndentedCode" در نام سبک هستند
* FencedCode پاراگراف هایی با "FencedCode" در نام سبک هستند
* InlineCode با "InlineCode" در نام سبک `Font` اجرا می شود
* قوانین افقی پاراگراف هایی با شکل `HorizontalRule` هستند
* تاکید جسورانه
* تاکید کج
* قالب بندی StrikeThrough
* فهرست ها پاراگراف های شماره دار یا گلوله ای هستند
* جداول با کلاس `Table` نمایش داده می شوند
* پیوندها به عنوان کلاس `FieldHyperlink` نشان داده می شوند

مثال زیر نحوه ایجاد یک سند با چند سبک و ذخیره آن در Markdown را نشان می دهد:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

نتیجه این مثال کد در زیر نشان داده شده است.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## نکات مفید

چندین تفاوت ظریف و موارد جالب وجود دارد که با آموختن آنها می توانید انعطاف پذیرتر و راحت تر با فایل های Markdown کار کنید. به عنوان مثال، قابلیت استفاده از:

* SetextHeading که به شما امکان می دهد عناوین چند خطی در Markdown ایجاد کنید، در حالی که عنوان های معمولی در Markdown فقط می توانند تک خطی باشند. SetextHeading بر اساس سبک "Heading N" است و سطح آن فقط می تواند 1 یا 2 باشد. اگر N در "Heading N" بزرگتر یا مساوی 2 باشد، SetextHeading مربوطه بر اساس "Heading 2" است، در غیر این صورت در "سرفصل 1".
* نشانگرهای مختلف برای سطح اول لیست های گلوله ای ("-"، "+" یا "*"، نشانگر پیش فرض "-".) و انواع مختلف شماره گذاری برای لیست های مرتب شده ("." یا ")"، نشانگر پیش فرض ".") است.
