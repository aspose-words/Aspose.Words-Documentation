---
title: کار با Styles و Themes
second_title: Aspose.Words برای Java
articleTitle: کار با Styles و Themes
linktitle: کار با Styles و Themes
description: "افزایش Microsoft Word ویژگی های قالب بندی، کار با سبک ها و تم ها با استفاده از Java..."
type: docs
weight: 110
url: /fa/java/working-with-styles-and-themes/
---

The The The The The The [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) کلاس برای مدیریت داخلی و اعمال تنظیمات تعریف شده کاربر به سبک استفاده می شود.

## چگونه محتوا را بر اساس سبک ها استخراج کنیم

در یک سطح ساده، محتوا بر اساس سبک های یک سند Word می تواند برای شناسایی، لیست و شمارش پاراگراف ها و اجرای متن قالب بندی شده با سبک خاص مفید باشد. به عنوان مثال، شما ممکن است نیاز به شناسایی انواع خاصی از محتوا در سند، مانند مثال ها، عناوین، ارجاعات، کلمات کلیدی، نام چهره و مطالعات موردی داشته باشید.

برای انجام این چند مرحله دیگر، می توان از آن برای استفاده از ساختار سند، تعریف شده توسط سبک هایی که استفاده می کند، استفاده کرد تا سند را برای خروجی دیگری مانند HTML مجدداً هدف قرار دهد. در واقع این است که چگونه اسناد Aspose ساخته شده است، قرار دادن Aspose.Words به آزمون یک ابزار ساخته شده با استفاده Aspose.Words اسناد منبع کلمه را می گیرد و آنها را به موضوعات در سطوح خاصی تقسیم می کند. یک فایل XML با استفاده از Aspose.Words که برای ساخت درخت ناوبری که می توانید در سمت چپ ببینید استفاده می شود. و سپس Aspose.Words هر موضوع را به HTML تبدیل کنید. راه حل برای فرمت متن retrieving با سبک های خاص در یک سند Word به طور معمول اقتصادی و ساده است. Aspose.Words...

برای نشان دادن اینکه چگونه به راحتی Aspose.Words محتوای retrieving را بر اساس سبک ها مدیریت کنید، بیایید به یک مثال نگاه کنیم. در این مثال، ما قصد داریم متن قالب بندی شده با یک سبک پاراگراف خاص و سبک شخصیتی را از یک سند کلمه نمونه بازیابی کنیم.

در سطح بالا، این شامل:

1. باز کردن یک سند Word با استفاده از [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) کلاس
1. گرفتن مجموعه از تمام پاراگراف ها و همه اجرا در سند.
1. فقط پاراگراف های مورد نیاز را انتخاب کنید و اجرا کنید.

به طور خاص، ما متن قالب بندی شده با سبک پاراگراف اول و سبک شخصیت "Intense Focus" را از این سند کلمه نمونه بازیابی می کنیم

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

در این سند نمونه، متن قالب بندی شده با سبک پاراگراف اول "Insert Tab"، " Quick Styles" و "Theme" و متن قالب بندی شده با سبک شخصیت "Intense تاکید" چند مورد از آبی، آنالکتیک، متن جسورانه مانند "galleries" و "All" است.

پیاده سازی یک جستجوی مبتنی بر سبک در واقع بسیار ساده است. Aspose.Words مدل شی سند، به عنوان آن را به سادگی استفاده از ابزار که در حال حاضر در محل. دو روش کلاس برای این راه حل اجرا می شوند:

1. **ParagraphsByStyleName** - این روش مجموعه ای از این پاراگراف ها را در سند که دارای یک نام سبک خاص است، بازیابی می کند.
1. **RunsByStyleName** - این روش یک آرایه از کسانی که در سند اجرا می شوند را بازیابی می کند که نام سبک خاصی دارند.

هر دو روش بسیار مشابه هستند، تنها تفاوت در نوع گره و نمایندگی از اطلاعات سبک در داخل پاراگراف و گره های اجرا. در اینجا پیاده سازی ParagraphsByStyleName نشان داده شده در مثال کد زیر برای پیدا کردن تمام پاراگراف های فرمت شده با سبک مشخص شده است.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

این پیاده سازی همچنین از [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) روش روش `Document` کلاس، که مجموعه ای از تمام گره های کودک فوری را برمی گرداند.

همچنین شایان ذکر است که جمع آوری پاراگراف ها یک سربار فوری ایجاد نمی کند، زیرا پاراگراف ها فقط در هنگام دسترسی به اقلام در این مجموعه بارگذاری می شوند. سپس، تمام کاری که باید انجام دهید این است که از طریق مجموعه، با استفاده از استاندارد برای هر اپراتور و اضافه کردن پاراگراف هایی که سبک مشخص به پاراگراف ها دارند، عبور کنید. با آرایه Style The The The The The The `Paragraph` نام سبک را می توان در [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) مالکیت [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) جسم

پیاده سازی RunsByStyleName تقریبا یکسان است، اگرچه ما به وضوح از آن استفاده می کنیم. `NodeType.Run` برای بازیابی گره های اجرا The The The The The The [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) مالکیت یک [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) شی برای دسترسی به اطلاعات سبک در **Run** گره ها

مثال کد زیر همه اجراها را با سبک مشخص می کند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

هنگامی که هر دو پرس و جو اجرا می شوند، تنها کاری که باید انجام دهید این است که یک شیء سند را تصویب کنید و نام سبک محتوایی که می خواهید بازیابی کنید را مشخص کنید:

{{% /alert %}}

مثال کد زیر نمایش و نمایش نتایج است.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

هنگامی که همه چیز انجام می شود، اجرای نمونه خروجی زیر را نشان می دهد:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

همانطور که می بینید، این یک مثال بسیار ساده است، نشان دادن شماره و متن پاراگراف های جمع آوری شده و در سند کلمه نمونه اجرا می شود.

## گزینه Insert Style را برای قرار دادن سبک های مختلف Paragraph

جداکننده سبک را می توان به انتهای یک پاراگراف با استفاده از Ctrl + Alt + Enter keyboard Shortcut به MS Word اضافه کرد. این ویژگی اجازه می دهد تا برای دو سبک مختلف پاراگراف استفاده شده در یک پاراگراف چاپی منطقی. اگر می خواهید متن از ابتدای یک عنوان خاص در یک جدول از محتوا ظاهر شود، اما نمی خواهید کل عنوان در جدول محتوا، شما می توانید از این ویژگی استفاده کنید

مثال کد زیر نشان می دهد که چگونه یک جداکننده سبک را برای قرار دادن سبک های مختلف پاراگراف وارد کنید

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## کپی کردن All Styles از Template

مواردی وجود دارد که شما می خواهید تمام سبک ها را از یک سند به یک دیگر کپی کنید. می توانید از آن استفاده کنید `Document.CopyStylesFromTemplate` روش کپی کردن سبک ها از قالب مشخص تا یک سند هنگامی که سبک ها از یک قالب به یک سند کپی می شوند، سبک های نام گذاری شده در سند دوباره تعریف می شوند تا توصیف های سبک را در قالب مطابقت دهند. سبک های منحصر به فرد از قالب به سند کپی شده اند. سبک های منحصر به فرد در این سند دست نخورده باقی مانده است

مثال کد زیر نشان می دهد که چگونه سبک ها را از یک سند به یک دیگر کپی کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## چگونه به Manipulate ویژگی های Theme Properties

ما پایه را اضافه کرده ایم API در Aspose.Words دسترسی به ویژگی های موضوعی سند در حال حاضر این API شامل اشیاء عمومی زیر:

- Theme Theme
- ThemeFonts
- رنگ های Theme

در اینجا این است که چگونه می توانید خواص تم را دریافت کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

این است که چگونه می توانید خواص تم را تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
