---
title: تبدیل یک سند به Markdown در C++
second_title: Aspose.Words برای C++
articleTitle: تبدیل یک سند به Markdown
linktitle: تبدیل یک سند به Markdown
type: docs
description: "تبدیل یک سند در هر فرمت بار پشتیبانی شده به Markdown و برعکس با استفاده از C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /fa/cpp/convert-a-document-to-markdown/
---

Markdown یک فرمت محبوب است که برای علامت گذاری متن و تبدیل بیشتر آن به HTML, PDF, DOCX, یا فرمت های دیگر. بسیاری از توسعه دهندگان این فرمت را برای نوشتن اسناد، آماده سازی مقالات برای انتشار در وبلاگ ها، توصیف پروژه ها و غیره انتخاب می کنند.

Markdown بسیار محبوب است زیرا کار با این فرمت آسان است و همچنین می تواند به سادگی به فرمت های دیگر تبدیل شود. به همین دلیل، Aspose.Words توانایی تبدیل یک سند در [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) به Markdown را فراهم می کند و برعکس – Aspose.Words همچنین از محبوب ترین [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) پشتیبانی می کند.

اکنون قابلیت کار با فرمت Markdown به طور فعال در حال توسعه است تا فرصت های بیشتری برای کار راحت و راحت با اسناد به شما ارائه دهد.

## تبدیل یک سند

برای تبدیل یک سند به Markdown، شما فقط باید یک سند را در هر فرمت پشتیبانی شده بارگذاری کنید یا یک سند جدید را به صورت برنامه ریزی ایجاد کنید. سپس باید سند را به فرمت Markdown ذخیره کنید.

مثال کد زیر نشان می دهد که چگونه DOCX را به Markdownتبدیل کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

همچنین می توانید پوشه فیزیکی را که می خواهید هنگام صادرات یک سند به فرمت Markdown تصاویر را در آن ذخیره کنید، مشخص کنید. به طور پیش فرض، Aspose.Words تصاویر را در همان پوشه ای که فایل سند ذخیره شده است ذخیره می کند، اما شما می توانید این رفتار را با استفاده از ویژگی [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) رد کنید.

مشخص کردن یک پوشه از طریق **ImagesFolder** نیز مفید است اگر شما یک سند را به یک جریان ذخیره کنید و Aspose.Words پوشه ای برای ذخیره تصاویر ندارد.

اگر **ImagesFolder** مشخص شده وجود نداشته باشد، به طور خودکار ایجاد خواهد شد.

مثال کد زیر نشان می دهد که چگونه یک پوشه برای تصاویر را هنگام ذخیره یک سند به یک جریان مشخص کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## گزینه های ذخیره را هنگام تبدیل به Markdownمشخص کنید

Aspose.Words امکان استفاده از کلاس [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) را برای کار با گزینه های پیشرفته هنگام ذخیره یک سند به فرمت Markdown فراهم می کند. بیشتر ویژگی ها ویژگی های ارثی یا بارگذاری بیش از حد هستند که در کلاس های دیگر [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/) Namespace وجود دارند. علاوه بر آنها، تعدادی از ویژگی های خاص برای فرمت Markdown نیز اضافه شده است. به عنوان مثال، ویژگی [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) برای کنترل تراز محتوا در جداول، یا [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) و [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) برای کنترل چگونگی ذخیره تصاویر پس از تبدیل یک سند به Markdown فرمت.

## قابلیت های پشتیبانی شده Markdown

Aspose.Words در حال حاضر از ویژگی های Markdown زیر پشتیبانی می کند که بیشتر از مشخصات `CommonMark` در Aspose.Words API پیروی می کنند و به عنوان سبک های مناسب یا قالب بندی مستقیم نشان داده می شوند:

* عنوان ها پاراگراف هایی با عنوان 1 – عنوان 6 سبک ها هستند
* نقل قول های بلوکی پاراگراف هایی با "نقل قول" در نام سبک هستند
* IndentedCode پاراگراف هایی با "IndentedCode" در نام سبک هستند
* FencedCode پاراگراف هایی با "FencedCode" در نام سبک هستند
* InlineCode با "InlineCode" در نام سبک `Font` اجرا می شود
* قوانین افقی پاراگراف هایی با شکل `HorizontalRule` هستند
* تاکید جسورانه
* تأکید کج
* StrikeThrough قالب بندی
* لیست ها پاراگراف های شماره گذاری شده یا با گلوله هستند
* جداول با کلاس `Table` نمایش داده می شوند
* لینک ها به عنوان کلاس `FieldHyperlink` نمایش داده می شوند

مثال زیر نشان می دهد که چگونه یک سند با برخی از سبک ها ایجاد کنید و آن را به Markdownذخیره کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

نتیجه این مثال کد در زیر نشان داده شده است.

![markdown-example-aspose-words-cpp](markdown-example.png)

## نکات مفید

چندین تفاوت ظریف و موارد جالب وجود دارد که با یادگیری آنها می توانید با فایل های Markdown انعطاف پذیرتر و راحت تر کار کنید. به عنوان مثال، توانایی استفاده از:

* SetextHeading که به شما اجازه می دهد تا عناوین چند خطی را در Markdown ایجاد کنید، در حالی که عناوین منظم در Markdown فقط می تواند یک خطی باشد. SetextHeading بر اساس سبک "عنوان N" است و سطح آن فقط می تواند 1 یا 2 باشد. اگر N در "Heading N" بزرگتر یا برابر با 2 باشد، پس SetextHeading مربوطه بر اساس "Heading 2" است، در غیر این صورت بر اساس "Heading 1".
* نشانگرهای مختلف برای سطح اول لیست های با گلوله ("-"، "+" یا "*"، نشانگر پیش فرض "-" است.) و انواع مختلف شماره گذاری برای لیست های مرتب شده ("." یا ")"، نشانگر پیش فرض "." است).
