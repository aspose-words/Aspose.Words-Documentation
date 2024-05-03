---
title: گزینه ها و ظاهر اسناد Word
second_title: Aspose.Words برای Java
articleTitle: کار با گزینه ها و ظاهر اسناد Word
linktitle: کار با گزینه ها و ظاهر اسناد Word
description: "کنترل ظاهر اسناد Word با در نظر گرفتن تفاوت بین انواع مختلف Microsoft Word استفاده از نسخه ها Java..."
type: docs
weight: 40
url: /fa/java/work-with-word-document-options-and-appearance/
---

گاهی اوقات شما ممکن است نیاز به تغییر ظاهر یک سند، به عنوان مثال، تنظیم ترجیحات زبان و یا تعداد خطوط در هر صفحه.Aspose.Words توانایی کنترل نحوه نمایش سند و همچنین برخی از گزینه های اضافی را فراهم می کند. این مقاله چنین احتمالاتی را توصیف می کند.

## گزینه های Display Options

شما می توانید کنترل کنید که چگونه یک سند در Microsoft Word استفاده از [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) کلاس به عنوان مثال، می توانید یک مقدار زوم سند را با استفاده از آن تنظیم کنید. [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) ویژگی، یا حالت دید با استفاده از [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) مالکیت

مثال کد زیر نشان می دهد که چگونه اطمینان حاصل شود که یک سند در 50٪ هنگامی که در باز شده است، نمایش داده می شود. Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

شما می توانید فایل قالب را برای این مثال دانلود کنید. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc)...

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 هیچ عامل زوم را به یک سند نمی نویسد و دیگر زوم پیش فرض را از مقدار نوشته شده به سند تنظیم نمی کند، به نظر می رسد از عامل زوم آخرین سند باز استفاده می کند.

{{% /alert %}}

## گزینه های Page Display Options

اگر می خواهید تعداد کاراکترها را در هر خط تنظیم کنید، از آن استفاده کنید. [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) مالکیت همچنین می توانید تعداد خطوط را در هر صفحه برای یک سند Word تنظیم کنید – از آن استفاده کنید. [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) مالکیت برای دریافت یا تنظیم تعداد خطوط در هر صفحه در شبکه سند.

{{% alert color="primary" %}}

In In In Microsoft Word, شما می توانید همان پارامترهای را با استفاده از برگه "Document Grid" در جعبه گفتگو "Page Setup" تنظیم کنید، تنها زمانی که پشتیبانی از زبان آسیایی نصب می شود.

{{% /alert %}}

مثال کد زیر نشان می دهد که چگونه تعداد کاراکترها را در هر خط و تعداد خطوط در هر صفحه برای یک صفحه تنظیم کنیم. Microsoft Word سند:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## گزینه Language Preferences

نمایش یک سند در Microsoft Word بستگی به این دارد که کدام زبان به عنوان پیش فرض برای این سند تعیین می شود. اگر هیچ زبان به طور پیش فرض تنظیم نشود، Microsoft Word اطلاعات را از جعبه گفتگو "Set Office Language Preferences" می گیرد که به عنوان مثال می تواند تحت "File → Options → Language" در "file" پیدا شود. Microsoft Word 2019

با Aspose.Words, شما همچنین می توانید تنظیمات زبان را با استفاده از [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) کلاس همچنین توجه داشته باشید که برای نمایش صحیح سند شما لازم است که آن را تنظیم کنید. Microsoft Word نسخه ای که فرآیند بارگیری سند باید مطابقت داشته باشد – این می تواند با استفاده از [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) مالکیت

{{% alert color="primary" %}}

اگر شما Aspose.Words اسناد تولید شده به نظر نمی رسد، بررسی کنید **LanguagePreferences** و **MswVersion** ارزش ها و تنظیم آنها در صورت لزوم برای مطابقت با تنظیمات برای شما Microsoft Word نسخه

{{% /alert %}}

مثال زیر نشان می دهد که چگونه ژاپنی ها را به زبان های ویرایش اضافه کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

مثال کد زیر نشان می دهد که چگونه روسیه را به عنوان زبان ویرایش پیش فرض تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## بهینه سازی یک سند برای یک قسمت Word Version

The The The The The The [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) روش اجازه می دهد تا بهینه سازی محتوای سند، و همچنین به طور پیش فرض Aspose.Words رفتار یک نسخه خاص Microsoft Word... می توانید از این روش برای جلوگیری از Microsoft Word از نمایش نوار "Compatibility Mode" بر روی بارگذاری سند. توجه داشته باشید که شما همچنین ممکن است نیاز به تنظیم `Compliance` مالکیت Iso29500_2008_Transitional یا بالاتر.

مثال کد زیر نشان می دهد که چگونه محتوای سند را بهینه سازی کنیم Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
