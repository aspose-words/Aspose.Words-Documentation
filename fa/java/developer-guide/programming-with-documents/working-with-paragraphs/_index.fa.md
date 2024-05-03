---
title: کار با پاراگراف ها در Java
second_title: Aspose.Words برای Java
articleTitle: کار با پاراگراف
linktitle: کار با پاراگراف
description: "روش های دستکاری گره Paragraph با استفاده از Java..."
type: docs
weight: 210
url: /fa/java/working-with-paragraphs/
---

یک پاراگراف مجموعه ای از شخصیت های ترکیب شده در یک بلوک منطقی و پایان دادن به یک شخصیت خاص است - یک شکستن پاراگراف *. In In In Aspose.Words, یک پاراگراف توسط [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) کلاس

## قرار دادن یک پاراگراف

برای قرار دادن یک پاراگراف جدید به سند، در واقع شما باید یک کاراکتر شکستن پاراگراف را وارد آن کنید. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) نه تنها یک رشته متن را به سند وارد می کند، بلکه یک پاراگراف را نیز اضافه می کند.

قالب بندی فونت فعلی نیز توسط [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) مالکیت و قالب بندی فعلی پاراگراف توسط [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) مالکیت در بخش بعدی، ما به جزئیات بیشتری در مورد قالب بندی پاراگراف خواهیم پرداخت.

مثال کد زیر نشان می دهد که چگونه یک پاراگراف را به یک سند وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## فرمت Paragraph

قالب بندی پاراگراف فعلی توسط [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) چیزی که توسط [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) مالکیت این شی شامل ویژگی های مختلف قالب بندی پاراگراف در دسترس است. Microsoft Word... شما به راحتی می توانید قالب بندی یک پاراگراف را به حالت پیش فرض خود تنظیم کنید - سبک عادی، چپ گرا، بدون بی تحرکی، هیچ فاصله، هیچ مرز، بدون سایه - با تماس با تماس با [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting)...

مثال کد زیر نشان می دهد که چگونه قالب بندی پاراگراف را تنظیم کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## گزینه Paragraph Style

برخی از اشیاء قالب بندی مانند فونت یا سبک های پشتیبانی Paragraph Format. یک سبک واحد ساخته شده در یا تعریف شده توسط یک کاربر نشان داده می شود [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) شی که شامل خواص سبک مربوطه مانند نام، سبک پایه، فونت و قالب بندی پاراگراف از سبک و غیره است.

علاوه بر این، **Style** جسم فراهم می کند [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) اموالی که یک شناسه سبک مستقل محلی را که توسط یک شناسه سبک مستقل نمایندگی می شود، بازگرداند. **StyleIdentifier** افزایش ارزش نکته این است که نام سبک های داخلی در Microsoft Word برای زبان های مختلف محلی هستند. با استفاده از یک شناسه سبک، شما می توانید سبک صحیح را بدون در نظر گرفتن زبان سند پیدا کنید. ارزش های enumeration مربوط به Microsoft Word سبک های داخلی مانند *Normal*, * ارتقاء 1 *، * هل دادن 2 *، و غیره تمام سبک های تعریف شده توسط کاربر اختصاص داده شده است **StyleIdentifier ارزش کاربر**...

مثال کد زیر نشان می دهد که چگونه یک سبک پاراگراف را اعمال کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## گزینه Insert Style را برای قرار دادن سبک های مختلف Paragraph

جداکننده سبک را می توان به انتهای یک پاراگراف با استفاده از Ctrl + Alt + Enter keyboard Shortcut به MS Word اضافه کرد. این ویژگی اجازه می دهد تا برای دو سبک مختلف پاراگراف استفاده شده در یک پاراگراف چاپی منطقی. اگر می خواهید از ابتدای یک عنوان خاص در یک جدول از محتواها ظاهر شود، اما نمی خواهید کل عنوان در جدول محتواها باشد، می توانید از این ویژگی استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک جداکننده سبک را به جای سبک های مختلف پاراگراف وارد کنید:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## درخواست مرز و سایه به یک پاراگراف

مرز در Aspose.Words نمایندگی توسط [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) کلاس - این مجموعه ای از [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) اشیایی که توسط شاخص یا نوع مرزی قابل دسترسی هستند. The The The The The The `Border` نوع نشان داده شده توسط [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) تکرار برخی از ارزش های آن برای چندین یا تنها یک عنصر سند قابل اجرا هستند. برای مثال، **BorderType.Bottom** قابل اجرا برای یک بند یا سلول جدول در حالی که **BorderType.DiagonalDown** مرز قطر را فقط در یک سلول جدول مشخص می کند.

هر دو مجموعه مرزی و هر مرز جداگانه دارای ویژگی های مشابه مانند رنگ، سبک خط، عرض خط، فاصله از متن و سایه اختیاری هستند. آنها توسط خواص همان نام نمایندگی می شوند. شما می توانید با ترکیب ارزش های ملک به انواع مختلف مرزی دست یابید. علاوه بر این، هر دو **BorderCollection** و **Border** اشیا به شما اجازه می دهد تا این ارزش ها را به طور پیش فرض با تماس با [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) روش

{{% alert color="primary" %}}

توجه داشته باشید که هنگامی که املاک مرزی برای مقادیر پیش فرض تنظیم می شوند، مرز نامرئی است.

{{% /alert %}}

Aspose.Words همچنین دارای [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) کلاس شامل ویژگی های سایه دار برای عناصر سند است. شما می توانید بافت سایه مورد نظر و رنگ هایی که در پس زمینه و پیش زمینه عنصر اعمال می شود را تنظیم کنید.

بافت سایه دار با بافت [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) افزایش ارزش که اجازه می دهد تا استفاده از الگوهای مختلف به **Shading** جسم به عنوان مثال، برای تنظیم یک رنگ پس زمینه برای یک عنصر سند، استفاده از آن `TextureIndex.TextureSolid` ارزش و تنظیم رنگ سایه به عنوان مناسب. مثال کد داده شده در زیر نشان می دهد که چگونه مرزها و سایه را به یک پاراگراف اعمال کنید.

مثال کد زیر نشان می دهد که چگونه مرزها و سایه را به یک پاراگراف اعمال کنیم:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
