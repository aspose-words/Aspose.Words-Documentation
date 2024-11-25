---
title: ترجمة Markdown إلى DOM
second_title: Aspose.Words ل Java
articleTitle: ترجمة Markdown لتوثيق نموذج الكائن (DOM)
linktitle: ترجمة Markdown لتوثيق نموذج الكائن (DOM)
type: docs
description: "تارنسلات Markdown وثيقة لتوثيق نموذج الكائن والعودة. حتى تتمكن من العمل مع مجمع موجود Markdown وإنشاء مستند Markdown برمجيا من البداية باستخدام Java."
weight: 20
url: /ar/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

لقراءة محتوى المستند وتنسيقه ومعالجتها وتعديله برمجيا، تحتاج إلى ترجمته إلى نموذج كائن المستند Aspose.Words (DOM).

على عكس مستندات ورد، Markdown لا يتوافق مع DOM الموضح في [Aspose.Words نموذج كائن المستند (DOM)](/words/java/aspose-words-document-object-model/) المادة. ومع ذلك، توفر Aspose.Words آليتها الخاصة لترجمة Markdown المستندات إلى DOM والعودة، حتى نتمكن من العمل بنجاح مع عناصرها مثل تنسيق النص والجداول والرؤوس وغيرها.

تشرح هذه المقالة كيف يمكن ترجمة ميزات markdown المختلفة إلى Aspose.Words DOM والعودة إلى تنسيق Markdown.

## تعقيد الترجمة Markdown – DOM – Markdown

الصعوبة الرئيسية لهذه الآلية ليست فقط ترجمة Markdown إلى DOM، ولكن أيضا لإجراء التحويل العكسي – لحفظ المستند مرة أخرى إلى تنسيق Markdown بأقل خسارة. هناك عناصر، مثل الاقتباسات متعددة المستويات، والتي لا يكون التحويل العكسي لها تافها.

يسمح محرك الترجمة الخاص بنا للمستخدمين ليس فقط بالعمل مع العناصر المعقدة في مستند Markdown موجود، ولكن أيضا لإنشاء مستند خاص بهم بتنسيق Markdown مع الهيكل الأصلي من البداية. لإنشاء عناصر مختلفة، تحتاج إلى استخدام أنماط بأسماء محددة وفقا لقواعد معينة موضحة لاحقا في هذه المقالة. يمكن إنشاء هذه الأنماط برمجيا.

## مبادئ الترجمة المشتركة

نستخدم [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) التنسيق للكتل المضمنة. عندما لا تكون هناك مراسلات مباشرة لميزة Markdown في Aspose.Words DOM، نستخدم نمط حرف باسم يبدأ من بعض الكلمات الخاصة.

بالنسبة إلى كتل الحاويات، نستخدم وراثة النمط للإشارة إلى ميزات Markdown المتداخلة. في هذه الحالة، حتى في حالة عدم وجود ميزات متداخلة، نستخدم أيضا أنماط الفقرات باسم يبدأ من بعض الكلمات الخاصة.

القوائم النقطية والمرتبة هي كتل الحاويات في Markdown كذلك. يتم تمثيل تعشيشها في DOM بنفس الطريقة بالنسبة لجميع كتل الحاويات الأخرى باستخدام وراثة النمط. ومع ذلك، بالإضافة إلى ذلك، فإن القوائم في DOM تتوافق مع تنسيق الأرقام إما في نمط القائمة أو تنسيق الفقرة.

## كتل مضمنة

نستخدم [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) التنسيق عند ترجمة **Bold**، *Italic* أو ~~Strikethrough~~ مضمنة markdown الميزات.

| Markdown ميزة | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

نستخدم نمط حرف باسم يبدأ من الكلمة `InlineCode`، متبوعا بنقطة اختيارية `(.)` وعدد من العلامات الخلفية ```(`)``` لميزة `InlineCode`. إذا فات عدد من العلامات الخلفية، فسيتم استخدام علامة خلفية واحدة افتراضيا.

| Markdown ميزة | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | فئة [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[نص الرابط](url)`<br />`[نص الرابط](<url>"title")`<br />`[نص الرابط](url 'title')`<br />`[نص الرابط](url (title))` | فئة [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](/words/java/translate-markdown-to-document-object-model/url)`<br />`![نص بديل](/words/java/translate-markdown-to-document-object-model/<url>"title")`<br />`![نص بديل](/words/java/translate-markdown-to-document-object-model/url ‘title’)`<br />`![نص بديل](/words/java/translate-markdown-to-document-object-model/url (title))` | فئة [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## كتل الحاويات

المستند عبارة عن سلسلة من كتل الحاويات مثل العناوين والفقرات والقوائم وعلامات الاقتباس وغيرها. يمكن تقسيم كتل الحاويات إلى فئات 2: كتل الأوراق والحاويات المعقدة. يمكن أن تحتوي كتل الأوراق على محتوى مضمن فقط. يمكن أن تحتوي الحاويات المعقدة بدورها على كتل حاويات أخرى، بما في ذلك كتل الأوراق.

### كتل الأوراق

يوضح الجدول أدناه أمثلة على استخدام Markdown كتل الأوراق في Aspose.Words:

| Markdown ميزة | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | هذه فقرة بسيطة ذات شكل HorizontalRule مطابق:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`، حيث (1<= ن <= 9).<br />يتم ترجمة هذا إلى نمط مدمج ويجب أن يكون بالضبط من النمط المحدد (لا يسمح باللواحق أو البادئات).<br />خلاف ذلك، سيكون مجرد فقرة عادية مع نمط المقابلة. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`، استنادا إلى 'العنوان ن' نمط.<br />إذا (ن > = 2)، ثم 'Heading 2' سيتم استخدامها، وإلا 'Heading 1'.<br />يسمح بأي لاحقة، لكن المستورد Aspose.Words يستخدم الأرقام "1" و "2" على التوالي. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### حاويات معقدة

يوضح الجدول أدناه أمثلة على استخدام Markdown حاويات معقدة في Aspose.Words:

| Markdown ميزة | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br />اللاحقة في اسم النمط اختيارية، ولكن Aspose.Words المستورد يستخدم الأرقام المطلوبة 1, 2, 3, .... في حالة الاقتباسات المتداخلة.<br />يتم تعريف التعشيش عبر الأنماط الموروثة. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | يتم تمثيل القوائم النقطية باستخدام ترقيم الفقرات:<br />`ListFormat.ApplyBulletDefault()`<br />يمكن أن يكون هناك 3 أنواع من القوائم النقطية. هم فقط فرق في تنسيق ترقيم من المستوى الأول. هذه هي: `‘-’`، `‘+’` أو `‘*’` على التوالي. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | يتم تمثيل القوائم المرتبة باستخدام ترقيم الفقرات:<br />`ListFormat.ApplyNumberDefault()`<br />يمكن أن يكون هناك 2 علامات تنسيق الأرقام: ‘.’ و ‘)’. العلامة الافتراضية هي ‘.’. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### الجداول

Aspose.Words يسمح أيضا بترجمة الجداول إلى DOM، كما هو موضح أدناه:

| Markdown ميزة | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)، [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) و [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) الطبقات. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## أنظر أيضا

* [العمل مع Markdown الميزات](/words/java/working-with-markdown-features/)

