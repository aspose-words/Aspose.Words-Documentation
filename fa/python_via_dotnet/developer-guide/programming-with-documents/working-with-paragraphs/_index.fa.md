---
title: کار با پاراگراف ها در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با پاراگراف ها
linktitle: کار با پاراگراف ها
description: "پاراگراف را وارد کنید و قالب بندی آن را با استفاده از Python در یک سند مشخص کنید."
type: docs
weight: 210
url: /fa/python-net/working-with-paragraphs/
---

یک پاراگراف مجموعه ای از کاراکترها است که در یک بلوک منطقی ترکیب شده و با یک کاراکتر خاص پایان می یابد - یک *پاراگراف شکست*. در Aspose.Words، یک پاراگراف با کلاس [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) نمایش داده می شود.

## درج یک پاراگراف

برای درج یک پاراگراف جدید در سند، در واقع باید یک کاراکتر شکست پاراگراف را در آن درج کنید. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) رشته ای از متن را نیز در سند وارد می کند، اما علاوه بر این، یک پاراگراف را نیز اضافه می کند.

قالب بندی فعلی فونت نیز توسط ویژگی [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) مشخص می شود و قالب بندی فعلی پاراگراف توسط ویژگی [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) تعیین می شود.

مثال کد زیر نحوه درج یک پاراگراف در یک سند را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## قالب بندی پاراگراف

قالب بندی پاراگراف فعلی توسط یک شیء [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) نشان داده می شود که توسط ویژگی [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) برگردانده می شود. این شیء ویژگی های قالب بندی پاراگراف های مختلف موجود در Microsoft Word را محصور می کند. با فراخوانی [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/) می‌توانید قالب‌بندی پاراگراف را به راحتی به حالت پیش‌فرض به سبک عادی، تراز چپ، بدون تورفتگی، بدون فاصله، بدون حاشیه و بدون سایه‌زنی بازنشانی کنید.

مثال کد زیر نحوه تنظیم قالب بندی پاراگراف را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## یک سبک پاراگراف را اعمال کنید

برخی از اشیاء قالب‌بندی مانند [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) یا [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) از سبک‌های پشتیبانی می‌کنند. یک سبک داخلی یا تعریف شده توسط کاربر توسط یک شی [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) نشان داده می شود که حاوی ویژگی های سبک مربوطه مانند نام، سبک پایه، قالب بندی فونت و پاراگراف سبک و غیره است.

علاوه بر این، یک شی [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) ویژگی [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) را ارائه می‌کند که یک شناسه سبک مستقل از محلی را که با یک مقدار شمارش [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) نشان داده شده است، برمی‌گرداند. نکته این است که نام سبک های داخلی در Microsoft Word برای زبان های مختلف بومی سازی شده است. با استفاده از یک شناسه سبک، می توانید بدون در نظر گرفتن زبان سند، سبک صحیح را پیدا کنید. مقادیر شمارش مطابق با سبک‌های داخلی Microsoft Word مانند Normal، Heading 1، Heading 2 و غیره است. به همه سبک‌های تعریف‌شده توسط کاربر، مقدار [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) اختصاص داده می‌شود

مثال کد زیر نحوه اعمال سبک پاراگراف را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## برای قرار دادن سبک‌های پاراگراف مختلف، جداکننده سبک را وارد کنید

با استفاده از کلیدهای میانبر صفحه کلید Ctrl + Alt + Enter در MS Word می توان یک جداکننده سبک به انتهای یک پاراگراف اضافه کرد. این ویژگی امکان استفاده از دو سبک پاراگراف مختلف را در یک پاراگراف چاپ شده منطقی می دهد. اگر می خواهید متنی از ابتدای یک عنوان خاص در فهرست مطالب ظاهر شود اما نمی خواهید کل عنوان در فهرست مطالب باشد، می توانید از این ویژگی استفاده کنید

مثال کد زیر نشان می دهد که چگونه می توان یک جداکننده سبک را برای تطبیق سبک های مختلف پاراگراف درج کرد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## جداکننده سبک پاراگراف را شناسایی کنید

Aspose.Words یک ویژگی عمومی [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) را در یک کلاس [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) فراهم می کند که اجازه می دهد پاراگراف جداکننده سبک را همانطور که در مثال زیر نشان داده شده است شناسایی کنید:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## اعمال مرزها و سایه زدن به یک پاراگراف

مرزها توسط [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) نشان داده می شوند. این مجموعه ای از اشیاء [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) است که با شاخص یا نوع حاشیه قابل دسترسی هستند. نوع حاشیه با شمارش [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) نشان داده می شود. برخی از مقادیر شمارش برای چندین یا تنها یک عنصر سند قابل اعمال هستند. به عنوان مثال، [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) برای یک پاراگراف یا سلول جدول قابل استفاده است در حالی که [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) مرز مورب را فقط در سلول جدول مشخص می کند.

هر دو مجموعه حاشیه و هر حاشیه جداگانه دارای ویژگی های مشابهی مانند رنگ، سبک خط، عرض خط، فاصله از متن و سایه اختیاری هستند. آنها با خواصی به همین نام نشان داده می شوند. شما می توانید با ترکیب مقادیر ویژگی به انواع مرزهای مختلف دست پیدا کنید. علاوه بر این، هر دو شیء [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) و [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) به شما امکان می دهند با فراخوانی روش [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/)، این مقادیر را به حالت پیش فرض بازنشانی کنید.

{{% alert color="primary" %}}

توجه داشته باشید که وقتی ویژگی های حاشیه به مقادیر پیش فرض خود بازنشانی می شوند، حاشیه نامرئی می شود.

{{% /alert %}}

Aspose.Words همچنین دارای کلاس [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) حاوی ویژگی های سایه برای عناصر سند است. می توانید بافت سایه دلخواه و رنگ هایی را که روی پس زمینه و پیش زمینه عنصر اعمال می شود تنظیم کنید.

بافت سایه با یک مقدار شمارش [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) تنظیم شده است که امکان استفاده از الگوهای مختلف را برای شی [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) فراهم می کند. به عنوان مثال، برای تنظیم رنگ پس‌زمینه برای یک عنصر سند، از مقدار [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) استفاده کنید و رنگ سایه‌زنی پیش‌زمینه را متناسب با آن تنظیم کنید. مثال زیر نحوه اعمال مرزها و سایه زدن به یک پاراگراف را نشان می دهد.

مثال کد زیر نحوه اعمال مرزها و سایه زدن به یک پاراگراف را نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
