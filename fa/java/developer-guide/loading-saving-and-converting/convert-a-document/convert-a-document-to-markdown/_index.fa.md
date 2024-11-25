---
title: تبدیل یک سند به Markdown در Java
second_title: Aspose.Words برای Java
articleTitle: تبدیل یک سند به Markdown
linktitle: تبدیل یک سند به Markdown
type: docs
description: "تبدیل یک سند در هر فرمت بار پشتیبانی شده به Markdown و برعکس با استفاده از Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /fa/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown یک فرمت محبوب است که برای علامت گذاری متن استفاده می شود و بیشتر به HTML, PDF, DOCX, یا فرمت های دیگر. بسیاری از توسعه دهندگان این فرمت را برای نوشتن اسناد، آماده سازی مقالات برای انتشار در وبلاگ ها، توصیف پروژه ها و غیره انتخاب می کنند.

Markdown بسیار محبوب است زیرا کار با این فرمت آسان است و همچنین می تواند به سادگی به فرمت های دیگر تبدیل شود. به همین دلیل، Aspose.Words توانایی تبدیل یک سند در [هر فرمت بار پشتیبانی شده](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) به Markdown را فراهم می کند و برعکس – Aspose.Words همچنین از محبوب ترین [ذخیره فرمت ها](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) پشتیبانی می کند.

اکنون قابلیت کار با فرمت Markdown به طور فعال در حال توسعه است تا فرصت های بیشتری برای کار راحت و راحت با اسناد به شما ارائه دهد.

## تبدیل یک سند به Markdown

برای تبدیل یک سند به Markdown، شما فقط باید یک سند را در هر فرمت پشتیبانی شده بارگذاری کنید یا یک سند جدید را به صورت برنامه ریزی ایجاد کنید. سپس باید سند را به فرمت Markdown ذخیره کنید.

مثال کد زیر نشان می دهد که چگونه DOCX را به Markdownتبدیل کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## گزینه های ذخیره را هنگام تبدیل به Markdownمشخص کنید

Aspose.Words امکان استفاده از کلاس [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) را برای کار با گزینه های پیشرفته هنگام ذخیره یک سند به فرمت Markdown فراهم می کند. علاوه بر سایر ویژگی های ارثی یا بارگذاری بیش از حد، تعدادی از ویژگی هایی که برای فرمت Markdown خاص هستند نیز اضافه شده اند. به عنوان مثال، ویژگی [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) برای کنترل تراز محتوا در جداول، یا [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) و [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) برای کنترل چگونگی ذخیره تصاویر پس از تبدیل یک سند به Markdown فرمت.

## قابلیت های پشتیبانی شده Markdown

Aspose.Words در حال حاضر از ویژگی های Markdown زیر پشتیبانی می کند که بیشتر از مشخصات `CommonMark` در Aspose.Words API پیروی می کنند و به عنوان سبک های مناسب یا قالب بندی مستقیم نشان داده می شوند:

* عنوان ها پاراگراف هایی با سبک های Heading 1 - Heading 6 هستند
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

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

نتیجه این مثال کد در زیر نشان داده شده است.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## نکات مفید

چندین تفاوت ظریف و موارد جالب وجود دارد که با یادگیری آنها می توانید با فایل های Markdown انعطاف پذیرتر و راحت تر کار کنید. به عنوان مثال، توانایی استفاده از:

* SetextHeading که به شما اجازه می دهد تا عناوین چند خطی را در Markdown ایجاد کنید، در حالی که عناوین منظم در Markdown فقط می تواند یک خطی باشد. SetextHeading بر اساس سبک "Heading N" است و سطح آن فقط می تواند 1 یا 2 باشد. اگر N در "عنوان N" بزرگتر از یا برابر با 2 باشد، پس SetextHeading مربوطه بر اساس "Heading 2" است، در غیر این صورت بر اساس "Heading 1".
* نشانگرهای مختلف برای سطح اول لیست های با گلوله ("-"، "+" یا "*"، نشانگر پیش فرض "-" است.) و انواع مختلف شماره گذاری برای لیست های مرتب شده ("." یا ")"، نشانگر پیش فرض "." است).
