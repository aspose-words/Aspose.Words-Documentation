---
title: ترجمة Markdown إلى DOM
second_title: Aspose.Words لـ .NET
articleTitle: ترجمة Markdown إلى Document Object Model (DOM)
linktitle: ترجمة Markdown إلى Document Object Model (DOM)
type: docs
description: "ترجمة مستند Markdown إلى Document Object Model وإعادته باستخدام C#. حتى تتمكن من العمل مع Markdown المعقد الموجود وإنشاء مستند Markdown برمجيًا من البداية."
weight: 20
url: /ar/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

لقراءة محتوى المستند وتنسيقه ومعالجته وتعديله برمجيًا، تحتاج إلى ترجمته إلى Aspose.Words Document Object Model (DOM).

وعلى النقيض من مستندات Word، لا يتوافق Markdown مع DOM الموضح في مقالة [Aspose.Words Document Object Model (DOM)](/words/ar/net/aspose-words-document-object-model/). ومع ذلك، يوفر Aspose.Words آليته الخاصة لترجمة مستندات Markdown إلى DOM والعودة، حتى نتمكن من العمل بنجاح مع عناصرها مثل تنسيق النص والجداول والعناوين وغيرها.

تشرح هذه المقالة كيف يمكن ترجمة ميزات markdown المتنوعة إلى Aspose.Words DOM وإعادتها إلى تنسيق Markdown.

## تعقيد الترجمة Markdown – DOM – Markdown

لا تكمن الصعوبة الرئيسية لهذه الآلية في ترجمة Markdown إلى DOM فحسب، بل أيضًا في إجراء التحويل العكسي - لحفظ المستند مرة أخرى بتنسيق Markdown بأقل قدر من الخسارة. هناك عناصر، مثل علامات الاقتباس متعددة المستويات، والتي لا يكون التحويل العكسي لها أمرًا تافهًا.

يتيح محرك الترجمة الخاص بنا للمستخدمين ليس فقط العمل مع العناصر المعقدة في مستند Markdown موجود، ولكن أيضًا إنشاء المستند الخاص بهم بتنسيق Markdown بالبنية الأصلية من البداية. لإنشاء عناصر متنوعة، تحتاج إلى استخدام أنماط بأسماء محددة وفقًا لقواعد معينة سيتم توضيحها لاحقًا في هذه المقالة. يمكن إنشاء مثل هذه الأنماط برمجياً.

## مبادئ الترجمة المشتركة

نحن نستخدم تنسيق [Font](https://reference.aspose.com/words/ar/net/aspose.words/font/) للكتل المضمنة. عندما لا يكون هناك توافق مباشر لميزة Markdown في Aspose.Words DOM، نستخدم نمط أحرف مع اسم يبدأ من بعض الكلمات الخاصة.

بالنسبة لكتل الحاويات، نستخدم وراثة النمط للإشارة إلى ميزات Markdown المتداخلة. في هذه الحالة، حتى في حالة عدم وجود ميزات متداخلة، نستخدم أيضًا أنماط الفقرة مع اسم يبدأ من بعض الكلمات الخاصة.

القوائم ذات التعداد النقطي والمرتبة هي كتل حاويات في Markdown أيضًا. يتم تمثيل تداخلها في DOM بنفس الطريقة كما هو الحال مع جميع كتل الحاويات الأخرى التي تستخدم وراثة النمط. ومع ذلك، بالإضافة إلى ذلك، تحتوي القوائم في DOM على تنسيق أرقام مطابق سواء في نمط القائمة أو تنسيق الفقرة.

## كتل مضمنة

نحن نستخدم تنسيق [Font](https://reference.aspose.com/words/ar/net/aspose.words/font/) عند ترجمة ميزات markdown المضمّنة بتنسيق **Bold** أو *Italic* أو ~~ يتوسطه خط ~~.

|  ميزة Markdown |   Aspose.Words        |
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

نحن نستخدم نمط أحرف باسم يبدأ من كلمة `InlineCode`، متبوعًا بنقطة اختيارية `(.)` وعدد من علامات التحديد الخلفية ```(`)``` لميزة `InlineCode`. إذا تم تفويت عدد من العلامات الخلفية، فسيتم استخدام علامة خلفية واحدة بشكل افتراضي.

|  ميزة Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  فئة [FieldHyperlink](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  فئة [FieldHyperlink](https://reference.aspose.com/words/ar/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  فئة [Shape](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## كتل الحاويات

المستند عبارة عن سلسلة من كتل الحاوية مثل العناوين والفقرات والقوائم وعلامات الاقتباس وغيرها. يمكن تقسيم كتل الحاويات إلى فئتين: الكتل الورقية والحاويات المعقدة. يمكن أن تحتوي الكتل الورقية على محتوى مضمن فقط. يمكن للحاويات المعقدة بدورها أن تحتوي على كتل حاويات أخرى، بما في ذلك الكتل الورقية.

### كتل أوراق

يوضح الجدول أدناه أمثلة لاستخدام كتل Markdown Leaf في Aspose.Words:

|  ميزة Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  هذه فقرة بسيطة ذات شكل HorizontalRule المطابق:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`، حيث (1&lt;= N &lt;= 9).<br /> تتم ترجمة هذا إلى نمط مدمج ويجب أن يكون بالضبط من النمط المحدد (لا يُسمح باللاحقات أو البادئات).<br /> وإلا فستكون مجرد فقرة عادية ذات نمط مناسب |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (إذا كان مستوى العنوان 1)،<br /> `---` (إذا كان مستوى العنوان 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`، استنادًا إلى أسلوب `“Heading N”`.<br /> إذا كان (N &gt;= 2)، فسيتم استخدام `“Heading 2”`، وإلا `“Heading 1”`.<br /> يُسمح بأي لاحقة، لكن مستورد Aspose.Words يستخدم الأرقام "1" و"2" على التوالي |
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
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> يعتبر `[.]` و`[info string]` اختياريين |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### حاويات معقدة

يوضح الجدول أدناه أمثلة لاستخدام حاويات Markdown المعقدة في Aspose.Words:

|  ميزة Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> اللاحقة في اسم النمط اختيارية، لكن المستورد Aspose.Words يستخدم الأرقام المرتبة 1، 2، 3، ..... في حالة الاقتباسات المتداخلة.<br /> يتم تعريف التداخل عبر الأنماط الموروثة |
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
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  يتم تمثيل القوائم ذات التعداد النقطي باستخدام ترقيم الفقرات:<br /> `ListFormat.ApplyBulletDefault()`<br /> يمكن أن يكون هناك 3 أنواع من القوائم ذات التعداد النقطي. وهي تختلف فقط في تنسيق الترقيم من المستوى الأول. وهي: `‘-’` أو `‘+’` أو `‘*’` على التوالي |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  يتم تمثيل القوائم المرتبة باستخدام ترقيم الفقرات:<br /> `ListFormat.ApplyNumberDefault()`<br /> يمكن أن تكون هناك علامتان لتنسيق الأرقام: '.' و ')'. العلامة الافتراضية هي "." |
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

### الجداول

يسمح Aspose.Words أيضًا بترجمة الجداول إلى DOM، كما هو موضح أدناه:

|  ميزة Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `أ | ب`<br />`-|-`<br />`c | د` |  فئات [Table](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/) و[Row](https://reference.aspose.com/words/ar/net/aspose.words.tables/row/) و[Cell](https://reference.aspose.com/words/ar/net/aspose.words.tables/cell/) |
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

## أنظر أيضا

* [العمل مع ميزات Markdown](/words/ar/net/working-with-markdown-features/)

