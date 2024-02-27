---
title: کار با پاراگراف ها در C#
second_title: Aspose.Words برای .NET
articleTitle: کار با پاراگراف ها
linktitle: کار با پاراگراف ها
description: "درج یک پاراگراف در یک سند C#. سبک های پاراگراف را در C# تنظیم کنید. با جداکننده سبک پاراگراف C# کار کنید. گره پاراگراف را با استفاده از C# دستکاری کنید."
type: docs
weight: 210
url: /fa/net/working-with-paragraphs/
---

یک پاراگراف مجموعه ای از کاراکترها است که در یک بلوک منطقی ترکیب شده و با یک کاراکتر خاص پایان می یابد - یک *پاراگراف شکست*. در Aspose.Words، یک پاراگراف با کلاس [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) نمایش داده می شود.

## درج یک پاراگراف

برای درج یک پاراگراف جدید در سند، در واقع باید یک کاراکتر شکست پاراگراف را در آن درج کنید. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) نه تنها یک رشته متن را در سند وارد می کند، بلکه یک پاراگراف را نیز اضافه می کند.

قالب بندی فعلی فونت نیز توسط ویژگی [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) مشخص می شود و قالب بندی فعلی پاراگراف توسط ویژگی [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) تعیین می شود. در بخش بعدی به جزئیات بیشتر در مورد قالب بندی پاراگراف خواهیم پرداخت.

مثال کد زیر نحوه درج یک پاراگراف در یک سند را نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## قالب بندی پاراگراف

قالب بندی پاراگراف فعلی توسط شیء [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) که توسط ویژگی [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) برگردانده می شود نشان داده می شود. این شیء ویژگی های قالب بندی پاراگراف های مختلف موجود در Microsoft Word را محصور می کند. با فراخوانی [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/) به راحتی می توانید قالب بندی پاراگراف را به حالت پیش فرض خود بازگردانید - سبک معمولی، تراز چپ، بدون تورفتگی، بدون فاصله، بدون حاشیه، بدون سایه.

مثال کد زیر نحوه تنظیم قالب بندی پاراگراف را نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## اعمال سبک پاراگراف

برخی از اشیاء قالب بندی، مانند **Font** یا **ParagraphFormat**، از سبک ها پشتیبانی می کنند. یک سبک داخلی یا تعریف شده توسط کاربر توسط یک شی [Style](https://reference.aspose.com/words/net/aspose.words/style/) نشان داده می شود که حاوی ویژگی های سبک مناسب مانند نام، سبک پایه، فونت، قالب بندی پاراگراف سبک و غیره است.

علاوه بر این، شی **Style** ویژگی [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) را نشان می دهد، که شناسه سبک مستقل از محلی را که با مقدار شمارش [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) نشان داده شده است، برمی گرداند. واقعیت این است که نام سبک های داخلی در Microsoft Word برای زبان های مختلف محلی سازی شده است. با استفاده از شناسه سبک، می توانید بدون توجه به زبان سند، سبک صحیح را پیدا کنید. مقادیر شمارش مطابق با سبک های Microsoft Word داخلی مانند *Normal*، *Heading 1*، *Heading 2* و غیره است. همه سبک های تعریف شده توسط کاربر روی مقدار شمارش **StyleIdentifier.User** تنظیم می شوند.

مثال کد زیر نحوه اعمال سبک پاراگراف را نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### برای قرار دادن سبک‌های پاراگراف مختلف، جداکننده سبک را وارد کنید

با استفاده از میانبر صفحه کلید Ctrl+Alt+Enter در Microsoft Word می توان یک جداکننده سبک به انتهای پاراگراف اضافه کرد. این ویژگی به شما امکان می دهد از دو سبک پاراگراف مختلف در یک پاراگراف چاپ شده منطقی استفاده کنید. اگر می خواهید متنی از ابتدای یک عنوان خاص در فهرست مطالب ظاهر شود، اما نمی خواهید کل عنوان در فهرست مطالب نشان داده شود، می توانید از این تابع استفاده کنید.

مثال کد زیر نحوه درج جداکننده سبک را برای تطبیق سبک‌های پاراگراف مختلف نشان می‌دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### جداکننده سبک پاراگراف را شناسایی کنید

Aspose.Words ویژگی عمومی [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) را در کلاس `Paragraph` برای شناسایی یک پاراگراف با جداکننده سبک، همانطور که در مثال زیر نشان داده شده است، نشان می دهد:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## اعمال مرزها و سایه زدن به یک پاراگراف

مرزها در Aspose.Words با کلاس [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) نشان داده می شوند - این مجموعه ای از اشیاء [Border](https://reference.aspose.com/words/net/aspose.words/border/) است که با شاخص یا نوع حاشیه قابل دسترسی هستند. نوع حاشیه به نوبه خود با شمارش [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) نشان داده می شود. برخی از مقادیر شمارش برای چندین یا فقط یک عنصر سند اعمال می شود. به عنوان مثال، **BorderType.Bottom** برای یک پاراگراف یا سلول جدول اعمال می شود، در حالی که **BorderType.DiagonalDown** یک مرز مورب را فقط در سلول جدول مشخص می کند.

هر دو مجموعه حاشیه و هر حاشیه جداگانه دارای ویژگی های مشابهی مانند رنگ، سبک خط، عرض خط، فاصله از متن و سایه اختیاری هستند. آنها با خواصی به همین نام نشان داده می شوند. شما می توانید انواع حاشیه های مختلف را با ترکیب مقادیر ویژگی بدست آورید. علاوه بر این، اشیاء **BorderCollection** و **Border** به شما این امکان را می دهند که با فراخوانی روش [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/)، این مقادیر را به مقادیر پیش فرض خود بازنشانی کنید.

{{% alert color="primary" %}}

توجه داشته باشید که وقتی ویژگی های حاشیه به مقادیر پیش فرض خود بازنشانی می شوند، حاشیه نامرئی می شود.

{{% /alert %}}

Aspose.Words همچنین دارای کلاس [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) است که شامل ویژگی های سایه برای عناصر سند است. با استفاده از مقدار شمارش [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) می‌توانید بافت سایه‌زنی و رنگ‌هایی را که روی پس‌زمینه و پیش‌زمینه یک عنصر اعمال می‌شوند، تنظیم کنید. **TextureIndex** همچنین به شما اجازه می دهد تا الگوهای مختلف را روی شی **Shading** اعمال کنید. به عنوان مثال، برای تنظیم رنگ پس‌زمینه برای یک عنصر سند، از مقدار **TextureIndex.TextureSolid** استفاده کنید و رنگ سایه‌زنی پیش‌زمینه را متناسب با آن تنظیم کنید.

مثال کد زیر نحوه اعمال مرزها و سایه زدن به یک پاراگراف را نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## شمارش خطوط پاراگراف

اگر می‌خواهید تعداد خطوط یک پاراگراف را برای هر سند Word بشمارید، می‌توانید از نمونه کد زیر استفاده کنید:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}