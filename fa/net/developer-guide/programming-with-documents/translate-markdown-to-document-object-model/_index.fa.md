---
title: Markdown را به DOM ترجمه کنید
second_title: Aspose.Words برای .NET
articleTitle: ترجمه Markdown به Document Object Model (DOM)
linktitle: ترجمه Markdown به Document Object Model (DOM)
type: docs
description: "یک سند Markdown را با استفاده از C# به Document Object Model ترجمه کنید و برگردانید. بنابراین می توانید با Markdown موجود پیچیده کار کنید و به صورت برنامه ریزی شده یک سند Markdown را از ابتدا ایجاد کنید."
weight: 20
url: /fa/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

برای خواندن، دستکاری و اصلاح محتوا و قالب بندی یک سند، باید آن را به Aspose.Words Document Object Model (DOM) ترجمه کنید.

برخلاف اسناد Word، Markdown با DOM توضیح داده شده در مقاله [Aspose.Words Document Object Model (DOM)](/words/fa/net/aspose-words-document-object-model/) مطابقت ندارد. با این حال، Aspose.Words مکانیزم خاص خود را برای ترجمه اسناد Markdown به DOM و برگشت ارائه می‌کند تا بتوانیم با موفقیت با عناصر آنها مانند قالب‌بندی متن، جداول، سرصفحه‌ها و موارد دیگر کار کنیم.

این مقاله توضیح می دهد که چگونه می توان ویژگی های مختلف markdown را به Aspose.Words DOM ترجمه کرد و به فرمت Markdown بازگرداند.

## پیچیدگی ترجمه Markdown – DOM – Markdown

مشکل اصلی این مکانیسم نه تنها ترجمه Markdown به DOM، بلکه انجام تبدیل معکوس است - برای ذخیره سند به فرمت Markdown با حداقل ضرر. عناصری مانند نقل قول های چندسطحی وجود دارد که تغییر معکوس برای آنها بی اهمیت نیست.

موتور ترجمه ما به کاربران این امکان را می دهد که نه تنها با عناصر پیچیده در یک سند Markdown موجود کار کنند، بلکه می توانند سند خود را در قالب Markdown با ساختار اصلی از ابتدا ایجاد کنند. برای ایجاد عناصر مختلف، باید از سبک هایی با نام های خاص مطابق با قوانین خاصی که در ادامه این مقاله توضیح داده شده است استفاده کنید. چنین سبک هایی را می توان به صورت برنامه نویسی ایجاد کرد.

## اصول رایج ترجمه

ما از قالب بندی [Font](https://reference.aspose.com/words/net/aspose.words/font/) برای بلوک های درون خطی استفاده می کنیم. هنگامی که هیچ ارتباط مستقیمی برای ویژگی Markdown در Aspose.Words DOM وجود ندارد، از یک سبک کاراکتر با نامی استفاده می‌کنیم که از برخی کلمات خاص شروع می‌شود.

برای بلوک‌های کانتینری، از وراثت سبک برای نشان دادن ویژگی‌های Markdown تودرتو استفاده می‌کنیم. در این مورد، حتی زمانی که هیچ ویژگی تو در تو وجود ندارد، ما نیز از سبک های پاراگراف با نامی استفاده می کنیم که از برخی کلمات خاص شروع می شود.

لیست های گلوله شده و مرتب شده نیز بلوک های کانتینری در Markdown هستند. تودرتوی آنها در DOM مانند سایر بلوک های کانتینری با استفاده از وراثت سبک نمایش داده می شود. با این حال، علاوه بر این، فهرست‌ها در DOM دارای قالب‌بندی اعداد در سبک فهرست یا قالب‌بندی پاراگراف هستند.

## بلوک های درون خطی

ما از قالب‌بندی [Font](https://reference.aspose.com/words/net/aspose.words/font/) هنگام ترجمه ویژگی‌های **Bold**، *Italic* یا ~~Strikethrough~~ markdown درون خطی استفاده می‌کنیم.

|  ویژگی Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  |  |
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

ما از یک سبک کاراکتر با نامی استفاده می کنیم که از کلمه `InlineCode` شروع می شود و به دنبال آن یک نقطه اختیاری `(.)` و تعدادی بکتیک ```(`)``` برای ویژگی `InlineCode` وجود دارد. اگر تعدادی بکتیک از قلم افتاده باشد، به طور پیش فرض از یک بکتیک استفاده می شود.

|  ویژگی Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  کلاس [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  کلاس [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  کلاس [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## بلوک های کانتینری

یک سند دنباله ای از بلوک های کانتینری مانند سرفصل ها، پاراگراف ها، فهرست ها، نقل قول ها و موارد دیگر است. بلوک های کانتینری را می توان به 2 کلاس تقسیم کرد: بلوک های برگ و ظروف پیچیده. بلوک های برگ فقط می توانند حاوی محتوای درون خطی باشند. ظروف پیچیده به نوبه خود می توانند حاوی بلوک های ظروف دیگری از جمله بلوک های برگ باشند.

### بلوک های برگ

جدول زیر نمونه هایی از استفاده از بلوک های برگ Markdown در Aspose.Words را نشان می دهد:

|  ویژگی Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  این یک پاراگراف ساده با شکل HorizontalRule مربوطه است:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`، جایی که (1&lt;= N &lt;= 9).<br /> این به یک سبک داخلی ترجمه شده است و باید دقیقاً از الگوی مشخص شده باشد (هیچ پسوند یا پیشوند مجاز نیست).<br /> در غیر این صورت، فقط یک پاراگراف معمولی با سبک مربوطه خواهد بود |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (اگر عنوان سطح 1)،<br /> `---` (اگر عنوان سطح 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`، بر اساس سبک `“Heading N”`.<br /> اگر (N &gt;= 2)، از `“Heading 2”` استفاده می شود، در غیر این صورت `“Heading 1”`.<br /> هر پسوندی مجاز است، اما واردکننده Aspose.Words به ترتیب از اعداد "1" و "2" استفاده می کند |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading1");
builder.ParagraphFormat.Style = setexHeading1;
builder.Document.Styles["SetextHeading1"].BaseStyleName = "Heading 1";
builder.Writeln("Setext Heading level 1");

builder.ParagraphFormat.Style = builder.Document.Styles["Heading 3"];
builder.Writeln("This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading2 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading2");
builder.ParagraphFormat.Style = setexHeading2;
builder.Document.Styles["SetextHeading2"].BaseStyleName = "Heading 3";

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.Writeln("Setext Heading level 2");{{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}}  |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> `[.]` و `[info string]` اختیاری هستند |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### کانتینرهای پیچیده

جدول زیر نمونه هایی از استفاده از ظروف مجتمع Markdown در Aspose.Words را نشان می دهد:

|  ویژگی Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> پسوند در نام سبک اختیاری است، اما واردکننده Aspose.Words از اعداد مرتب شده 1، 2، 3، ... استفاده می کند. در صورت نقل قول های تو در تو<br /> تودرتو از طریق سبک های ارثی تعریف می شود |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  لیست های گلوله شده با استفاده از شماره گذاری پاراگراف نشان داده می شوند:<br /> `ListFormat.ApplyBulletDefault()`<br /> می تواند 3 نوع لیست گلوله ای وجود داشته باشد. آنها فقط در قالب شماره گذاری سطح اول متفاوت هستند. اینها به ترتیب عبارتند از: `‘-’`، `‘+’` یا `‘*’` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  لیست های مرتب شده با استفاده از شماره گذاری پاراگراف نشان داده می شوند:<br /> `ListFormat.ApplyNumberDefault()`<br /> می تواند 2 نشانگر قالب عددی وجود داشته باشد: '.' و ')'. نشانگر پیش فرض '.' است |
|  {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                                |

### جداول

Aspose.Words همچنین اجازه می دهد تا جداول را به DOM ترجمه کنید، همانطور که در زیر نشان داده شده است:

|  ویژگی Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> "الف | b`<br />`-|-`<br />`c|d` |  کلاس های [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)، [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) و [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Add the first row.
builder.InsertCell();
builder.Writeln("a");
builder.InsertCell();
builder.Writeln("b");

// Add the second row.
builder.InsertCell();
builder.Writeln("c");
builder.InsertCell();
builder.Writeln("d");{{< /highlight >}} |                                                                |

## همچنین ببینید

* [کار با ویژگی های Markdown](/words/fa/net/working-with-markdown-features/)

