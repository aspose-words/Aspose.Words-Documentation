---
title: ترجمة Markdown إلى DOM
second_title: Aspose.Words لـ Python via .NET
articleTitle: ترجمة Markdown إلى Document Object Model (DOM)
linktitle: ترجمة Markdown إلى Document Object Model (DOM)
type: docs
description: "قم بنقل مستند Markdown إلى Document Object Model وإعادته باستخدام Python. حتى تتمكن من العمل مع Markdown المعقد الموجود وإنشاء مستند Markdown برمجيًا من البداية."
weight: 20
url: /ar/python-net/translate-markdown-to-document-object-model/
---

لقراءة محتوى المستند وتنسيقه ومعالجته وتعديله برمجيًا، تحتاج إلى ترجمته إلى Aspose.Words Document Object Model (DOM).

وعلى النقيض من مستندات Word، لا يتوافق Markdown مع DOM الموضح في مقالة [Aspose.Words Document Object Model (DOM)](/words/ar/python-net/aspose-words-document-object-model/). ومع ذلك، يوفر Aspose.Words آليته الخاصة لترجمة مستندات Markdown إلى DOM والعودة، حتى نتمكن من العمل بنجاح مع عناصرها مثل تنسيق النص والجداول والعناوين وغيرها.

تشرح هذه المقالة كيف يمكن ترجمة ميزات markdown المتنوعة إلى Aspose.Words DOM وإعادتها إلى تنسيق Markdown.

## تعقيد الترجمة Markdown – DOM – Markdown

لا تكمن الصعوبة الرئيسية لهذه الآلية في ترجمة Markdown إلى DOM فحسب، بل أيضًا في إجراء التحويل العكسي - لحفظ المستند مرة أخرى بتنسيق Markdown بأقل قدر من الخسارة. هناك عناصر، مثل علامات الاقتباس متعددة المستويات، والتي لا يكون التحويل العكسي لها أمرًا تافهًا.

يتيح محرك الترجمة الخاص بنا للمستخدمين ليس فقط العمل مع العناصر المعقدة في مستند Markdown موجود، ولكن أيضًا إنشاء المستند الخاص بهم بتنسيق Markdown بالبنية الأصلية من البداية. لإنشاء عناصر متنوعة، تحتاج إلى استخدام أنماط بأسماء محددة وفقًا لقواعد معينة سيتم توضيحها لاحقًا في هذه المقالة. يمكن إنشاء مثل هذه الأنماط برمجياً.

## مبادئ الترجمة المشتركة

نحن نستخدم تنسيق [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) للكتل المضمنة. عندما لا يكون هناك توافق مباشر لميزة Markdown في Aspose.Words DOM، نستخدم نمط أحرف مع اسم يبدأ من بعض الكلمات الخاصة.

بالنسبة لكتل الحاويات، نستخدم وراثة النمط للإشارة إلى ميزات Markdown المتداخلة. في هذه الحالة، حتى في حالة عدم وجود ميزات متداخلة، نستخدم أيضًا أنماط الفقرة مع اسم يبدأ من بعض الكلمات الخاصة.

القوائم ذات التعداد النقطي والمرتبة هي كتل حاويات في Markdown أيضًا. يتم تمثيل تداخلها في DOM بنفس الطريقة كما هو الحال مع جميع كتل الحاويات الأخرى التي تستخدم وراثة النمط. ومع ذلك، بالإضافة إلى ذلك، تحتوي القوائم في DOM على تنسيق أرقام مطابق سواء في نمط القائمة أو تنسيق الفقرة.

## كتل مضمنة

نحن نستخدم تنسيق [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) عند ترجمة ميزات markdown المضمّنة بتنسيق **Bold** أو *Italic* أو ~~ يتوسطه خط ~~.

|  ميزة Markdown |   Aspose.Words        |
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

نحن نستخدم نمط أحرف باسم يبدأ من كلمة `InlineCode`، متبوعًا بنقطة اختيارية `(.)` وعدد من علامات التحديد الخلفية ```(`)``` لميزة `InlineCode`. إذا تم تفويت عدد من العلامات الخلفية، فسيتم استخدام علامة خلفية واحدة بشكل افتراضي.

|  ميزة Markdown |   Aspose.Words        |
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
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  فئة [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
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
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  فئة [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## كتل الحاويات

المستند عبارة عن سلسلة من كتل الحاوية مثل العناوين والفقرات والقوائم وعلامات الاقتباس وغيرها. يمكن تقسيم كتل الحاويات إلى فئتين: الكتل الورقية والحاويات المعقدة. يمكن أن تحتوي الكتل الورقية على محتوى مضمن فقط. يمكن للحاويات المعقدة بدورها أن تحتوي على كتل حاويات أخرى، بما في ذلك الكتل الورقية.

### كتل أوراق

يوضح الجدول أدناه أمثلة لاستخدام كتل Markdown Leaf في Aspose.Words:

|  ميزة Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  هذه فقرة بسيطة ذات شكل HorizontalRule المطابق:<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`، حيث (1&lt;= N &lt;= 9).<br /> تتم ترجمة هذا إلى نمط مدمج ويجب أن يكون بالضبط من النمط المحدد (لا يُسمح باللاحقات أو البادئات).<br /> وإلا فستكون مجرد فقرة عادية ذات نمط مناسب |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (إذا كان مستوى العنوان 1)،<br /> `---` (إذا كان مستوى العنوان 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`، استنادًا إلى أسلوب `"Heading N"`.<br /> إذا كان (N &gt;= 2)، فسيتم استخدام `"Heading 2"`، وإلا `"Heading 1"`.<br /> يُسمح بأي لاحقة، لكن مستورد Aspose.Words يستخدم الأرقام "1" و"2" على التوالي |
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
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> يعتبر `[.]` و`[info string]` اختياريين |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### حاويات معقدة

يوضح الجدول أدناه أمثلة لاستخدام حاويات Markdown المعقدة في Aspose.Words:

|  ميزة Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> اللاحقة في اسم النمط اختيارية، لكن المستورد Aspose.Words يستخدم الأرقام المرتبة 1، 2، 3، ..... في حالة الاقتباسات المتداخلة.<br /> يتم تعريف التداخل عبر الأنماط الموروثة |
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
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  يتم تمثيل القوائم ذات التعداد النقطي باستخدام ترقيم الفقرات:<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> يمكن أن يكون هناك 3 أنواع من القوائم ذات التعداد النقطي. وهي تختلف فقط في تنسيق الترقيم من المستوى الأول. وهي: `'-'` أو `'+'` أو `'*'` على التوالي |
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
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  يتم تمثيل القوائم المرتبة باستخدام ترقيم الفقرات:<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> يمكن أن تكون هناك علامتان لتنسيق الأرقام: `'.'` و`')'`. العلامة الافتراضية هي `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### الجداول

يسمح Aspose.Words أيضًا بترجمة الجداول إلى DOM، كما هو موضح أدناه:

|  ميزة Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `أ\ | ب`<br />`-\ | -`<br />`c\ | د` |  فئات [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) و[Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) و[Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) |
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

## أنظر أيضا

* [العمل مع ميزات Markdown](/words/ar/python-net/working-with-markdown-features/)

