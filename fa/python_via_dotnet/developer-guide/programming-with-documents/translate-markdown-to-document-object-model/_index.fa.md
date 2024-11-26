---
title: Markdown را به DOM ترجمه کنید
second_title: Aspose.Words برای Python via .NET
articleTitle: ترجمه Markdown به Document Object Model (DOM)
linktitle: ترجمه Markdown به Document Object Model (DOM)
type: docs
description: "یک سند Markdown را به Document Object Model تبدیل کنید و با استفاده از Python برگردانید. بنابراین می توانید با Markdown موجود پیچیده کار کنید و به صورت برنامه ریزی شده یک سند Markdown را از ابتدا ایجاد کنید."
weight: 20
url: /fa/python-net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

برای خواندن، دستکاری و اصلاح محتوا و قالب بندی یک سند، باید آن را به Aspose.Words Document Object Model (DOM) ترجمه کنید.

برخلاف اسناد Word، Markdown با DOM توضیح داده شده در مقاله [Aspose.Words Document Object Model (DOM)](/words/fa/python-net/aspose-words-document-object-model/) مطابقت ندارد. با این حال، Aspose.Words مکانیزم خاص خود را برای ترجمه اسناد Markdown به DOM و برگشت ارائه می‌کند تا بتوانیم با موفقیت با عناصر آنها مانند قالب‌بندی متن، جداول، سرصفحه‌ها و موارد دیگر کار کنیم.

این مقاله توضیح می دهد که چگونه می توان ویژگی های مختلف markdown را به Aspose.Words DOM ترجمه کرد و به فرمت Markdown بازگرداند.

## پیچیدگی ترجمه Markdown – DOM – Markdown

مشکل اصلی این مکانیسم نه تنها ترجمه Markdown به DOM، بلکه انجام تبدیل معکوس است - برای ذخیره سند به فرمت Markdown با حداقل ضرر. عناصری مانند نقل قول‌های چندسطحی وجود دارند که تغییر معکوس برای آنها بی‌اهمیت نیست.

موتور ترجمه ما به کاربران این امکان را می دهد که نه تنها با عناصر پیچیده در یک سند Markdown موجود کار کنند، بلکه می توانند سند خود را در قالب Markdown با ساختار اصلی از ابتدا ایجاد کنند. برای ایجاد عناصر مختلف، باید از سبک هایی با نام های خاص مطابق با قوانین خاصی که در ادامه این مقاله توضیح داده شده است استفاده کنید. چنین سبک هایی را می توان به صورت برنامه نویسی ایجاد کرد.

## اصول رایج ترجمه

ما از قالب بندی [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) برای بلوک های درون خطی استفاده می کنیم. هنگامی که هیچ ارتباط مستقیمی برای ویژگی Markdown در Aspose.Words DOM وجود ندارد، از یک سبک کاراکتر با نامی استفاده می‌کنیم که از برخی کلمات خاص شروع می‌شود.

برای بلوک‌های کانتینری، از وراثت سبک برای نشان دادن ویژگی‌های تودرتوی Markdown استفاده می‌کنیم. در این حالت، حتی زمانی که هیچ ویژگی تو در تو وجود ندارد، از سبک های پاراگراف با نامی که از برخی کلمات خاص شروع می شود نیز استفاده می کنیم.

لیست های گلوله شده و مرتب شده نیز بلوک های کانتینری در Markdown هستند. تودرتوی آنها در DOM مانند سایر بلوک های کانتینری با استفاده از وراثت سبک نمایش داده می شود. با این حال، علاوه بر این، فهرست‌ها در DOM دارای قالب‌بندی اعداد در سبک فهرست یا قالب‌بندی پاراگراف هستند.

## بلوک های درون خطی

ما از قالب‌بندی [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) هنگام ترجمه ویژگی‌های **Bold**، *Italic* یا ~~Strikethrough~~ markdown درون خطی استفاده می‌کنیم.

|  ویژگی Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.bold = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} |  |
|  **Italic**<br /> `*italic text*` |  `Font.italic = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.strike_through = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} |  |

ما از یک سبک کاراکتر با نامی استفاده می کنیم که از کلمه `InlineCode` شروع می شود و به دنبال آن یک نقطه اختیاری `(.)` و تعدادی بکتیک ```(`)``` برای ویژگی `InlineCode` قرار می گیرد. اگر تعدادی بکتیک از قلم افتاده باشد، به طور پیش فرض از یک بکتیک استفاده می شود.

|  ویژگی Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.style_name = "InlineCode[.][N]"`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Number of backticks is missed, one backtick will be used by default.
inlineCode1BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode")
builder.font.style = inlineCode1BackTicks
builder.writeln("Text with InlineCode style with 1 backtick")

# There will be 3 backticks.
inlineCode3BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode.3")
builder.font.style = inlineCode3BackTicks
builder.writeln("Text with InlineCode style with 3 backtick")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.inline_code_example.md"){{< /highlight >}} |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  کلاس [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  کلاس [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## بلوک های کانتینری

یک سند دنباله ای از بلوک های کانتینری مانند سرفصل ها، پاراگراف ها، فهرست ها، نقل قول ها و موارد دیگر است. بلوک های کانتینری را می توان به 2 کلاس تقسیم کرد: بلوک های برگ و ظروف پیچیده. بلوک های برگ فقط می توانند حاوی محتوای درون خطی باشند. ظروف پیچیده به نوبه خود می توانند حاوی بلوک های ظروف دیگری از جمله بلوک های برگ باشند.

### بلوک های برگ

جدول زیر نمونه هایی از استفاده از بلوک های برگ Markdown در Aspose.Words را نشان می دهد:

|  ویژگی Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  این یک پاراگراف ساده با شکل HorizontalRule مربوطه است:<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`، جایی که (1&le; N &le; 9).<br /> این به یک سبک داخلی ترجمه شده است و باید دقیقاً از الگوی مشخص شده باشد (هیچ پسوند یا پیشوند مجاز نیست).<br /> در غیر این صورت، فقط یک پاراگراف معمولی با سبک مربوطه خواهد بود |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (اگر عنوان سطح 1)،<br /> `---` (اگر عنوان سطح 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`، بر اساس سبک `"Heading N"`.<br /> اگر (N &ge; 2)، از `"Heading 2"` استفاده می شود، در غیر این صورت `"Heading 1"`.<br /> هر پسوندی مجاز است، اما واردکننده Aspose.Words به ترتیب از اعداد "1" و "2" استفاده می کند |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.paragraph_format.style_name = "Heading 1"
builder.writeln("This is an H1 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading1 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading1")
builder.paragraph_format.style = setexHeading1
doc.styles.get_by_name("SetexHeading1").base_style_name = "Heading 1"
builder.writeln("Setex Heading level 1")

builder.paragraph_format.style = doc.styles.get_by_name("Heading 3")
builder.writeln("This is an H3 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading2 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading2")
builder.paragraph_format.style = setexHeading2
doc.styles.get_by_name("SetexHeading2").base_style_name = "Heading 3"

# Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.writeln("Setex Heading level 2")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.setext_heading_example.md"){{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.style_name = "IndentedCode[some suffix]"`     |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

indentedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "IndentedCode")
builder.paragraph_format.style = indentedCode
builder.writeln("This is an indented code")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.indented_code_example.md"){{< /highlight >}} |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> `[.]` و `[info string]` اختیاری هستند |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### کانتینرهای پیچیده

جدول زیر نمونه هایی از استفاده از ظروف مجتمع Markdown در Aspose.Words را نشان می دهد:

|  ویژگی Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> پسوند در نام سبک اختیاری است، اما واردکننده Aspose.Words از اعداد مرتب شده 1، 2، 3، ... استفاده می کند. در صورت نقل قول های تو در تو<br /> تودرتو از طریق سبک های ارثی تعریف می شود |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# By default a document stores blockquote style for the first level.
builder.paragraph_format.style_name = "Quote"
builder.writeln("Blockquote")

# Create styles for nested levels through style inheritance.
quoteLevel2 = doc.styles.add(aw.StyleType.PARAGRAPH, "Quote1")
builder.paragraph_format.style = quoteLevel2
doc.styles.get_by_name("Quote1").base_style_name = "Quote"
builder.writeln("1. Nested blockquote")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.quote_example.md"){{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  لیست های گلوله شده با استفاده از شماره گذاری پاراگراف نشان داده می شوند:<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> می تواند 3 نوع لیست گلوله ای وجود داشته باشد. آنها فقط در قالب شماره گذاری سطح اول متفاوت هستند. اینها به ترتیب عبارتند از: `'-'`، `'+'` یا `'*'` |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

builder.list_format.apply_bullet_default()
builder.list_format.list.list_levels[0].number_format = "-"

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.writeln("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bulleted_list_example.md"){{< /highlight >}} |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  لیست های مرتب شده با استفاده از شماره گذاری پاراگراف نشان داده می شوند:<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> می تواند 2 نشانگر قالب شماره وجود داشته باشد: `'.'` و `')'`. نشانگر پیش فرض `'.'` است |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### جداول

Aspose.Words همچنین اجازه می دهد تا جداول را به DOM ترجمه کنید، همانطور که در زیر نشان داده شده است:

|  ویژگی Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `a\ | b`<br />`-\ | -`<br />`c\ | d` |  کلاس های [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)، [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) و [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Add the first row.
builder.insert_cell()
builder.writeln("a")
builder.insert_cell()
builder.writeln("b")
builder.end_row()

# Add the second row.
builder.insert_cell()
builder.writeln("c")
builder.insert_cell()
builder.writeln("d")
builder.end_table()

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_table.md"){{< /highlight >}} |                                                                |

## همچنین ببینید

* [کار با ویژگی های Markdown](/words/fa/python-net/working-with-markdown-features/)

