---
title: التحويل Markdown إلى DOM
second_title: Aspose.Words for Java
articleTitle: التحويل Markdown إلى Document Object Model )أ(DOM)
linktitle: التحويل Markdown إلى Document Object Model )أ(DOM)
type: docs
description: "تارنسلا Markdown إلى الأمين العام Document Object Model و أعود حتى تتمكن من العمل مع المعقد الموجود Markdown وخلق البرامج Markdown المستند من الصفر Java."
weight: 20
url: /ar/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

للقراءة والتلاعب وتعديل محتوى وشكل الوثيقة، عليك أن تترجمها إلى Aspose.Words Document Object Model )أ(DOM)

على عكس الوثائق الوردية Markdown لا يتفق مع DOM الوارد وصفه في [Aspose.Words Document Object Model (DOM)](/words/ar/java/aspose-words-document-object-model/) مقال ومع ذلك، Aspose.Words يوفر آلية خاصة به لترجمة Markdown الوثائق DOM وعودتنا، حتى نتمكن من العمل بنجاح مع عناصرها، مثل صياغة النصوص، والجداول، والرؤس، وغيرها.

وتوضح هذه المادة كيف يمكن لمختلف markdown يمكن ترجمة السمات إلى Aspose.Words DOM والعودة إلى Markdown شكل

## تعقيد الترجمة التحريرية Markdown - DOM - Markdown

والصعوبة الرئيسية لهذه الآلية ليست مجرد ترجمة Markdown إلى DOM, ولكن أيضا للقيام بالتحول العكسي - لإنقاذ الوثيقة مرة أخرى إلى Markdown الشكل مع الحد الأدنى من الخسارة وهناك عناصر، من قبيل الاقتباسات المتعددة المستويات، لا يكون التحول العكسي فيها تافها.

محرك ترجمتنا لا يسمح للمستعملين فقط بالعمل مع العناصر المعقدة في القائمة Markdown الوثيقة، ولكن أيضاً لوضع وثيقتها الخاصة في Markdown الشكل مع الهيكل الأصلي من الصفر ولخلق عناصر مختلفة، تحتاج إلى استخدام أساليب مع أسماء محددة وفقا لبعض القواعد الموصوفة لاحقا في هذه المادة. ويمكن إيجاد هذه الأساليب من الناحية البرنامجية.

## الترجمة العامة المبادئ

نحن نستخدم [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) التشكل للقطع الداخلية عندما لا يكون هناك مراسلات مباشرة Markdown السمة Aspose.Words DOM, نستخدم أسلوب الشخصية مع اسم يبدأ من بعض الكلمات الخاصة

بالنسبة لقطع الحاويات، نستخدم ميراث النمط للملاحظة Markdown سمات وفي هذه الحالة، حتى عندما لا تكون هناك ملامح محجوبة، نستخدم أيضا أساليب الفقرات مع اسم يبدأ من بعض الكلمات الخاصة.

القوائم المنشورة والمطلوبة هي حاويات في Markdown كذلك مثولهم في DOM بنفس الطريقة التي تستخدم بها جميع الحاويات الأخرى ميراث الموضة غير أنه بالإضافة إلى ذلك، توجد قوائم في القائمة DOM وقد تطابقت صيغة الرقم في أي من أسلوب القائمة أو صيغة الفقرة.

## Inline Blocks

نحن نستخدم [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) الشكل عند الترجمة **Bold**, *Italic* ♪ inline markdown سمات

|  Markdown خاصية |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

نستخدم أسلوب الشخصية مع اسم يبدأ من الكلمة <span notrans="<span notrans=" `InlineCode`"=""></span>" يليها نقطة اختيارية `(.)` وعدد من العصي ```(`)``` من أجل `InlineCode` سمة إذا تغيب عدد من العصي، ثمّ واحد ظهري سيُستخدم من قِبل التقصير.

|  Markdown خاصية |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  The [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) الصف |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) الصف |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) الصف |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## حواجز الحاويات

A document is a sequence of container blocks such as headings, paragraphs, lists, quotes, and others. يمكن تقسيم قطع الحاويات إلى صفين: كتل ليف وحاويات معقدة كتل الليف يمكن أن تحتوي فقط على المحتوى الداخلي. ويمكن أن تحتوي الحاويات المعقدة بدورها على حاويات أخرى، بما في ذلك حاويات ليف.

### Leaf Blocks

ويبين الجدول أدناه أمثلة على استخدام Markdown كتل الصف في Aspose.Words:

|  Markdown خاصية |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  هذه فقرة بسيطة مع شكل هوريزونتال رول المناظر:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, )١( المرجع نفسه.<br/>ويترجم ذلك إلى أسلوب مبني وينبغي أن يكون بالضبط من النمط المحدد (لا يسمح باختلاط أو فريسات).<br/>وإلا، ستكون مجرد فقرة عادية ذات نمط مقابل |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (إذا كان مستوى العنوان 1)،<br/>`---` (إذا كان مستوى العنوان 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, على أساس `“Heading N”` أسلوب.<br/>إذا (ن = 2)، ثم `“Heading 2”` سوف تستخدم، خلاف ذلك `“Heading 1”`.<br/>أي خنق مسموح به، لكن Aspose.Words ويستخدم المستورد رقمي " ١ " و " ٢ " على التوالي |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>The `[.]` و `[info string]` اختيارية |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### الحاويات المعقدة

ويبين الجدول أدناه أمثلة على استخدام Markdown الحاويات المعقدة Aspose.Words:

|  Markdown خاصية |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>الاختناق في اسم الموضة هو اختياري، ولكن Aspose.Words المستورد يستعمل الأرقام المطلوبة 1، 2، 3... في حالة اقتباسات معوية.<br/>العبث معرّف عن طريق الموراثة |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  وتُمثَّل القوائم المنشورة باستخدام ترقيم الفقرة:<br/>`ListFormat.ApplyBulletDefault()`<br/>يمكن أن يكون هناك 3 أنواع من القوائم وهي تنتشر فقط في شكل رقمي من المستوى الأول. وهي: `‘-’`, `‘+’` أو `‘*’` على التوالي |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  وتُمثَّل القوائم النظامية باستخدام ترقيم الفقرة:<br/>`ListFormat.ApplyNumberDefault()`<br/>There can be 2 number format markers: ‘.’ and ‘’’’’’. The default marker is ‘.’ |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### الجداول

Aspose.Words ويسمح أيضا بترجمة الجداول إلى DOM, على النحو المبين أدناه:

|  Markdown خاصية |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>(أ) | (ب)`<br />`-|-`<br />`ج | d " |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) و [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) الصفوف |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## انظر أيضا

* [العمل مع Markdown المعالم](/words/ar/java/working-with-markdown-features/)

