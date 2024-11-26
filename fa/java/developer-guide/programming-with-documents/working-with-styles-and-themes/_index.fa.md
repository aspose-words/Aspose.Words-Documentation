---
title: کار با سبک ها و تم ها
second_title: Aspose.Words برای Java
articleTitle: کار با سبک ها و تم ها
linktitle: کار با سبک ها و تم ها
description: "ویژگی های قالب بندی پیشرفته Microsoft Word، کار با سبک ها و تم ها با استفاده از Java."
type: docs
weight: 110
url: /fa/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

کلاس [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) برای مدیریت تنظیمات داخلی و اعمال تنظیمات تعریف شده توسط کاربر به سبک ها استفاده می شود.

## نحوه استخراج محتوا بر اساس سبک ها

در یک سطح ساده، بازیابی محتوا بر اساس سبک ها از یک سند ورد می تواند برای شناسایی، لیست و شمارش پاراگراف ها و اجراهای متن فرمت شده با یک سبک خاص مفید باشد. به عنوان مثال، ممکن است لازم باشد انواع خاصی از محتوا را در سند شناسایی کنید، مانند مثال ها، عناوین، مرجع ها، کلمات کلیدی، نام شکل ها و مطالعات موردی.

برای اینکه این کار را چند قدم جلوتر ببریم، می توان از این برای استفاده از ساختار سند، که توسط سبک هایی که استفاده می کند تعریف شده است، برای استفاده مجدد از سند برای خروجی دیگر، مانند HTML استفاده کرد. در واقع این است که چگونه مستندات Aspose ساخته شده است، قرار دادن Aspose.Words به آزمون. ابزاری که با استفاده از Aspose.Words ساخته شده است، اسناد کلمه منبع را می گیرد و آنها را به موضوعات در سطوح خاصی تقسیم می کند. یک فایل XML با استفاده از Aspose.Words تولید می شود که برای ساخت درخت ناوبری که می توانید در سمت چپ ببینید استفاده می شود. و سپس Aspose.Words هر موضوع را به HTML تبدیل می کند. راه حل برای بازیابی متن فرمت شده با سبک های خاص در یک سند ورد به طور معمول اقتصادی و ساده با استفاده از Aspose.Words است.

برای نشان دادن اینکه چگونه به راحتی Aspose.Words بازیابی محتوا را بر اساس سبک ها انجام می دهد، بیایید به یک مثال نگاه کنیم. در این مثال، ما می خواهیم متن فرمت شده با یک سبک پاراگراف خاص و یک سبک کاراکتر را از یک سند Word نمونه بازیابی کنیم.

در سطح بالا، این شامل:

1. باز کردن یک سند ورد با استفاده از کلاس [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. گرفتن مجموعه ای از تمام پاراگراف ها و تمام اجرا می شود در سند.
1. انتخاب تنها پاراگراف های مورد نیاز و اجرا می شود.

به طور خاص، ما متن فرمت شده با سبک پاراگراف "Heading 1 "و سبک کاراکتر" تأکید شدید " را از این نمونه سند Word بازیابی خواهیم کرد.

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

در این نمونه سند، متن با سبک پاراگراف "Heading 1 ""Insert Tab"، "Quick Styles" و "Theme" فرمت شده است و متن با سبک کاراکتر "تأکید شدید" چندین نمونه از متن آبی، کج و جسورانه مانند "گالری ها" و "نگاه کلی" است.

پیاده سازی یک پرس و جو مبتنی بر سبک در مدل Aspose.Words document object بسیار ساده است، زیرا به سادگی از ابزارهایی استفاده می کند که در حال حاضر در محل هستند. دو روش کلاس برای این راه حل اجرا می شود:

1. **ParagraphsByStyleName** – این روش یک آرایه از آن پاراگراف ها را در سند که نام سبک خاصی دارند، بازیابی می کند.
1. **RunsByStyleName** - این روش یک آرایه از آن اجراها را در سند که نام سبک خاصی دارند، بازیابی می کند.

هر دو این روش ها بسیار مشابه هستند، تنها تفاوت ها انواع گره و نمایش اطلاعات سبک در پاراگراف و گره های اجرا است. در اینجا یک پیاده سازی از ParagraphsByStyleName نشان داده شده در مثال کد داده شده در زیر برای پیدا کردن تمام پاراگراف های فرمت شده با سبک مشخص شده است.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

این پیاده سازی همچنین از روش [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) کلاس `Document` استفاده می کند که مجموعه ای از تمام گره های کودک فوری را باز می گرداند.

همچنین لازم به ذکر است که مجموعه پاراگراف ها هزینه ای فوری ایجاد نمی کند زیرا پاراگراف ها فقط زمانی در این مجموعه بارگذاری می شوند که به موارد موجود در آنها دسترسی داشته باشید.سپس، تنها کاری که باید انجام دهید این است که از طریق مجموعه، با استفاده از عملگر foreach استاندارد و اضافه کردن پاراگراف هایی که سبک مشخص شده را به آرایه paragraphsWithStyle دارند، بروید. نام سبک `Paragraph` را می توان در ویژگی [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) شی [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) یافت.

پیاده سازی RunsByStyleName تقریبا یکسان است، اگرچه ما به وضوح از `NodeType.Run` برای بازیابی گره های اجرا استفاده می کنیم. ویژگی [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) یک شی [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) برای دسترسی به اطلاعات سبک در گره های **Run** استفاده می شود.

مثال کد زیر تمام اجراها را با سبک مشخص شده فرمت می کند.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

وقتی هر دو پرس و جو اجرا می شوند، تنها کاری که باید انجام دهید این است که یک شیء سند را منتقل کنید و نام سبک محتوایی را که می خواهید بازیابی کنید مشخص کنید:

{{% /alert %}}

مثال کد زیر پرس و جوها را اجرا کرده و نتایج را نمایش می دهد.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

وقتی همه چیز انجام شد، اجرای نمونه خروجی زیر را نمایش می دهد:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

همانطور که می بینید، این یک مثال بسیار ساده است، که تعداد و متن پاراگراف های جمع آوری شده را نشان می دهد و در نمونه سند Word اجرا می شود.

## برای قرار دادن سبک های مختلف پاراگراف، جداکننده سبک را وارد کنید

جداکننده سبک را می توان با استفاده از میانبر صفحه کلید Ctrl + Alt + Enter به MS Word به پایان یک پاراگراف اضافه کرد. این ویژگی اجازه می دهد تا دو سبک پاراگراف مختلف در یک پاراگراف چاپی منطقی استفاده شود. اگر می خواهید متنی از ابتدای یک عنوان خاص در جدول محتویات ظاهر شود اما نمی خواهید کل عنوان در جدول محتویات باشد، می توانید از این ویژگی استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک جدا کننده سبک را برای قرار دادن سبک های پاراگراف مختلف وارد کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## کپی کردن تمام سبک ها از قالب

مواردی وجود دارد که می خواهید همه سبک ها را از یک سند به سند دیگر کپی کنید. شما می توانید از روش `Document.CopyStylesFromTemplate` برای کپی کردن سبک ها از قالب مشخص شده به یک سند استفاده کنید. هنگامی که سبک ها از یک قالب به یک سند کپی می شوند، سبک های مشابه در سند دوباره تعریف می شوند تا با توصیفات سبک در قالب مطابقت داشته باشند. سبک های منحصر به فرد از قالب به سند کپی شده است. سبک های منحصر به فرد در سند دست نخورده باقی می مانند.

مثال کد زیر نشان می دهد که چگونه سبک ها را از یک سند به سند دیگر کپی کنید.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## چگونه ویژگی های تم را دستکاری کنیم

ما basic API را در Aspose.Words برای دسترسی به ویژگی های تم سند اضافه کرده ایم. در حال حاضر، این API شامل اشیاء عمومی زیر است:

- موضوع
- ThemeFonts
- ThemeColors

اینجوری میتونی ویژگی های تم رو بدست بیاری:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

و اینطوری می تونید ویژگی های تم رو تنظیم کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
