---
title: تبدیل یک سند برای Markdown در Java
second_title: Aspose.Words برای Java
articleTitle: تبدیل یک سند برای Markdown
linktitle: تبدیل یک سند برای Markdown
type: docs
description: "تبدیل یک سند در هر فرمت بار پشتیبانی شده برای Markdown و برعکس استفاده Java..."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /fa/java/convert-a-document-to-markdown/
---

Markdown یک فرمت محبوب است که به متن نشانه گذاری استفاده می شود و بیشتر به HTML، PDF، DOCX یا دیگر فرمت ها تبدیل می شود. بسیاری از توسعه دهندگان این فرمت را برای نوشتن مستندات، تهیه مقالات برای انتشار در وبلاگ ها، توصیف پروژه ها و غیره انتخاب می کنند.

Markdown بسیار محبوب است زیرا کار با این فرمت آسان است و همچنین می تواند به سادگی به فرمت های دیگر تبدیل شود. به همین دلیل، Aspose.Words توانایی تبدیل یک سند در [هر فرمت بار پشتیبانی شده](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) برای Markdown و برعکس - Aspose.Words همچنین از محبوب ترین [صرفه جویی در فرمت ها](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)...

حالا عملکرد برای کار با Markdown فرمت به طور فعال توسعه یافته است تا فرصت های بیشتری برای کار راحت و راحت با اسناد فراهم کند.

## تبدیل یک سند برای Markdown

تبدیل یک سند برای <span notrans="<span notrans=" Markdown"=""></span>"> شما فقط باید یک سند را در هر فرمت پشتیبانی شده بارگذاری کنید یا یک برنامه جدید ایجاد کنید. سپس باید سند را ذخیره کنید تا Markdown فرمت

مثال زیر نشان می دهد که چگونه DOCX را به DOCX تبدیل کنیم Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## گزینه های Save را هنگام تبدیل به Markdown

Aspose.Words توانایی استفاده از [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) کلاس برای کار با گزینه های پیشرفته در هنگام صرفه جویی در یک سند Markdown فرمت علاوه بر سایر خواص ارثی یا اضافه بار، تعدادی از خواص خاص برای Markdown همچنین فرمت اضافه شده است. برای مثال، [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) مالکیت برای کنترل تراز محتوا در جداول یا [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) و [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) کنترل اینکه چگونه تصاویر پس از تبدیل یک سند ذخیره می شوند Markdown فرمت

## پشتیبانی Markdown ویژگی های

Aspose.Words در حال حاضر از موارد زیر پشتیبانی می کند Markdown ویژگی هایی که اغلب از آن پیروی می کنند `CommonMark` مشخصات در Aspose.Words API و به عنوان سبک های مناسب یا قالب بندی مستقیم نشان داده می شوند:

* Headings پاراگراف هایی با Heading 1 هستند – Heading 6
* Blockquotes پاراگراف هایی با نام "Quote" در سبک است
* indented code پاراگراف هایی با "Indented code" در نام سبک است
* حصار کد پاراگراف هایی با "Fenced code" در نام سبک است
* · InlineCode با "Inline code" در داخل اجرا می شود `Font` نام سبک
* قوانین افقی پاراگراف هایی با `HorizontalRule` شکل
* تاکید بر
* تاکید
* اعتصاب در قالب بندی
* فهرست ها شماره یا پاراگراف های گلوله هستند
* جداول با جدول نمایش داده می شوند `Table` کلاس
* لینک ها به عنوان `FieldHyperlink` کلاس

مثال زیر نشان می دهد که چگونه یک سند را با برخی از سبک ها ایجاد کنید و آن را ذخیره کنید. Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

نتیجه این مثال کد در زیر نشان داده شده است.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## نکات مفید

چند نکته و موارد جالب وجود دارد، داشتن آموخته اید که می توانید با چه چیزی کار کنید. Markdown فایل ها انعطاف پذیر تر و راحت تر هستند. به عنوان مثال، توانایی استفاده وجود دارد:

* SetextHeading که به شما اجازه می دهد تا سرفصل های چند خطی را در چند خط ایجاد کنید <span notrans="<span notrans=" Markdown"=""></span>"> در حالی که به طور منظم در Markdown فقط می تواند یک خط باشد. SetextHeading مبتنی بر سبک "Heading N" است و سطح آن تنها می تواند 1 یا 2 باشد. اگر N در "Heading N" بزرگتر یا برابر با 2 باشد، SetextHeading مطابق با "Heading 2" است، در غیر این صورت "Heading 1" است.
* نشانگرهای مختلف برای سطح اول لیست های گلوله ("-"، "+" یا "*، نشانگر پیش فرض "-" و انواع مختلف شماره گذاری برای لیست های سفارش شده ("" یا "")، نشانگر پیش فرض " است.
