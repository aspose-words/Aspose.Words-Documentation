---
title: کار با پاراگراف ها در C++
second_title: Aspose.Words برای C++
articleTitle: کار با پاراگراف ها
linktitle: کار با پاراگراف ها
description: "شیوه های دستکاری گره پاراگراف با استفاده از C++."
type: docs
weight: 210
url: /fa/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

یک پاراگراف مجموعه ای از کاراکترها است که در یک بلوک منطقی ترکیب شده و با یک کاراکتر خاص به پایان می رسد – a *paragraph break*. در Aspose.Words، یک پاراگراف توسط کلاس [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) نشان داده می شود.

## یک پاراگراف وارد کنید

برای قرار دادن یک پاراگراف جدید در سند، در واقع، شما باید یک کاراکتر شکستن پاراگراف را در آن قرار دهید. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) نه تنها یک رشته متن را در سند قرار می دهد، بلکه یک پاراگراف را نیز اضافه می کند.

قالب بندی فونت فعلی نیز توسط ویژگی [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) مشخص شده است و قالب بندی پاراگراف فعلی توسط ویژگی [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/) تعیین می شود. در بخش بعدی، ما به جزئیات بیشتری در مورد قالب بندی پاراگراف خواهیم پرداخت.

مثال کد زیر نشان می دهد که چگونه یک پاراگراف را در یک سند وارد کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## پاراگراف فرمت

قالب بندی پاراگراف فعلی با یک شی **ParagraphFormat** نشان داده می شود که توسط ویژگی **ParagraphFormat** بازگردانده می شود. این شی ویژگی های مختلف قالب بندی پاراگراف موجود در Microsoft Word را در بر می گیرد. شما به راحتی می توانید قالب بندی پاراگراف را به حالت پیش فرض به سبک عادی، چپ تراز بدون تورفتگی، بدون فاصله، بدون مرز و بدون سایه با تماس با [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/) تنظیم کنید.

مثال کد زیر نشان می دهد که چگونه قالب بندی پاراگراف را تنظیم کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## سبک پاراگراف را اعمال کنید

برخی از اشیاء قالب بندی مانند فونت یا سبک های پشتیبانی ParagraphFormat. یک سبک داخلی یا تعریف شده توسط کاربر توسط یک شیء `Style` نشان داده می شود که شامل ویژگی های سبک مربوطه مانند نام، سبک پایه، فونت و قالب بندی پاراگراف سبک و غیره است.

علاوه بر این، یک شی **Style** ویژگی [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) را فراهم می کند که یک شناسه سبک مستقل از محلی را که توسط مقدار **StyleIdentifier** شمارش نشان داده شده است، باز می گرداند. نکته این است که نام سبک های داخلی در Microsoft Word برای زبان های مختلف محلی شده است. با استفاده از یک شناسه سبک، می توانید سبک صحیح را صرف نظر از زبان سند پیدا کنید. مقادیر شمارش با سبک های داخلی Microsoft Word مانند *Normal*, *Heading 1*, *Heading 2* و غیره تمام سبک های تعریف شده توسط کاربر به ارزش **StyleIdentifier.User** اختصاص داده شده است.

مثال کد زیر نشان می دهد که چگونه یک سبک پاراگراف را اعمال کنیم:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## برای قرار دادن سبک های مختلف پاراگراف، جداکننده سبک را وارد کنید

جداکننده سبک را می توان با استفاده از میانبر صفحه کلید Ctrl + Alt + Enter به MS Word به پایان یک پاراگراف اضافه کرد. این ویژگی اجازه می دهد تا دو سبک پاراگراف مختلف در یک پاراگراف چاپی منطقی استفاده شود. اگر می خواهید متنی از ابتدای یک عنوان خاص در یک جدول محتویات ظاهر شود اما نمی خواهید کل عنوان در جدول محتویات باشد، می توانید از این ویژگی استفاده کنید.

مثال کد زیر نشان می دهد که چگونه یک جدا کننده سبک را برای جای دادن سبک های مختلف پاراگراف قرار دهید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## جدا کننده سبک پاراگراف را شناسایی کنید

` `Aspose.Words یک ویژگی عمومی [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) را در یک کلاس `Paragraph` فراهم می کند که اجازه می دهد پاراگراف جدا کننده سبک را شناسایی کند، همانطور که در مثال زیر نشان داده شده است:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## مرزها و سایه ها را روی یک پاراگراف اعمال کنید

مرزها در Aspose.Words توسط کلاس [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) نشان داده می شوند – این مجموعه ای از اشیاء [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) است که توسط شاخص یا نوع مرز قابل دسترسی است. نوع مرز با شمارش `BorderType` نشان داده می شود. برخی از مقادیر شمارش برای چندین یا تنها یک عنصر سند قابل استفاده است. به عنوان مثال، **BorderType.Bottom** برای یک پاراگراف یا سلول جدول قابل استفاده است در حالی که **BorderType.DiagonalDown** مرز مورب را فقط در یک سلول جدول مشخص می کند.

هر دو مجموعه مرزی و هر مرز جداگانه دارای ویژگی های مشابهی مانند رنگ، سبک خط، عرض خط، فاصله از متن و سایه اختیاری هستند. آنها با ویژگی های یک نام نشان داده می شوند. شما می توانید با ترکیب ارزش ملک به انواع مختلف مرز دست یابید. علاوه بر این، هر دو شی **BorderCollection** و **Border** به شما اجازه می دهند که این مقادیر را با فراخوانی روش [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/) به حالت پیش فرض تنظیم کنید.

{{% alert color="primary" %}}

توجه داشته باشید که وقتی ویژگی های مرزی به مقادیر پیش فرض خود تنظیم می شوند، مرز نامرئی می شود.

{{% /alert %}}

Aspose.Words همچنین دارای کلاس [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) است که شامل ویژگی های سایه گذاری برای عناصر سند است. شما می توانید بافت سایه مورد نظر و رنگ هایی که به پس زمینه و پیش زمینه عنصر اعمال می شود را تنظیم کنید.

بافت سایه با یک مقدار شمارش [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) تنظیم شده است که اجازه می دهد تا الگوهای مختلف را به شی **Shading** اعمال کند. به عنوان مثال، برای تنظیم رنگ پس زمینه برای یک عنصر سند، از مقدار [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) استفاده کنید و رنگ سایه پیش زمینه را به عنوان مناسب تنظیم کنید.

مثال کد زیر نشان می دهد که چگونه مرزها و سایه ها را به یک پاراگراف اعمال کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}