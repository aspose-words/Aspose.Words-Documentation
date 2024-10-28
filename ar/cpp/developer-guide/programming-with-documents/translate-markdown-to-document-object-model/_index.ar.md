---
title: ترجمة Markdown لتوثيق نموذج الكائن (DOM)
second_title: Aspose.Words ل C++
articleTitle: ترجمة Markdown لتوثيق نموذج الكائن (DOM)
linktitle: ترجمة Markdown لتوثيق نموذج الكائن (DOM)
type: docs
description: "تارنسلات Markdown وثيقة لتوثيق نموذج الكائن والعودة باستخدام C++. حتى تتمكن من العمل مع مجمع موجود Markdown وإنشاء مستند Markdown برمجيا من البداية."
weight: 20
url: /ar/cpp/translate-markdown-to-document-object-model/
---

لقراءة محتوى المستند وتنسيقه ومعالجتها وتعديله برمجيا، تحتاج إلى ترجمته إلى نموذج كائن المستند Aspose.Words (DOM).

على عكس مستندات ورد، Markdown لا يتوافق مع DOM الموضح في [Aspose.Words نموذج كائن المستند (DOM)](/words/cpp/aspose-words-document-object-model/) المادة. ومع ذلك، توفر Aspose.Words آليتها الخاصة لترجمة Markdown المستندات إلى DOM والعودة، حتى نتمكن من العمل بنجاح مع عناصرها مثل تنسيق النص والجداول والرؤوس وغيرها.

تشرح هذه المقالة كيف يمكن ترجمة ميزات markdown المختلفة إلى Aspose.Words DOM والعودة إلى تنسيق Markdown.

## تعقيد الترجمة Markdown – DOM – Markdown

الصعوبة الرئيسية لهذه الآلية ليست فقط ترجمة Markdown إلى DOM، ولكن أيضا لإجراء التحويل العكسي – لحفظ المستند مرة أخرى إلى تنسيق Markdown بأقل خسارة. هناك عناصر، مثل الاقتباسات متعددة المستويات، والتي لا يكون التحويل العكسي لها تافها.

يسمح محرك الترجمة الخاص بنا للمستخدمين ليس فقط بالعمل مع العناصر المعقدة في مستند Markdown موجود، ولكن أيضا لإنشاء مستند خاص بهم بتنسيق Markdown مع الهيكل الأصلي من البداية. لإنشاء عناصر مختلفة، تحتاج إلى استخدام أنماط بأسماء محددة وفقا لقواعد معينة موضحة لاحقا في هذه المقالة. يمكن إنشاء هذه الأنماط برمجيا.

## مبادئ الترجمة المشتركة

نستخدم [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) التنسيق للكتل المضمنة. عندما لا تكون هناك مراسلات مباشرة لميزة Markdown في Aspose.Words DOM، نستخدم نمط حرف باسم يبدأ من بعض الكلمات الخاصة.

بالنسبة إلى كتل الحاويات، نستخدم وراثة النمط للإشارة إلى ميزات Markdown المتداخلة. في هذه الحالة، حتى في حالة عدم وجود ميزات متداخلة، نستخدم أيضا أنماط الفقرات باسم يبدأ من بعض الكلمات الخاصة.

القوائم النقطية والمرتبة هي كتل الحاويات في Markdown كذلك. يتم تمثيل تعشيشها في DOM بنفس الطريقة بالنسبة لجميع كتل الحاويات الأخرى باستخدام وراثة النمط. ومع ذلك، بالإضافة إلى ذلك، فإن القوائم في DOM تتوافق مع تنسيق الأرقام إما في نمط القائمة أو تنسيق الفقرة.

## كتل مضمنة

نستخدم [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) التنسيق عند ترجمة **Bold**، *Italic* أو ~~Strikethrough~~ مضمنة markdown الميزات.

| Markdown ميزة | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

نستخدم نمط حرف باسم يبدأ من الكلمة `InlineCode`، متبوعا بنقطة اختيارية `(.)` وعدد من العلامات الخلفية ```(`)``` لميزة `InlineCode`. إذا فات عدد من العلامات الخلفية، فسيتم استخدام علامة خلفية واحدة افتراضيا.

| Markdown ميزة | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | فئة [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | فئة [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | فئة [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## كتل الحاويات

المستند عبارة عن سلسلة من كتل الحاويات مثل العناوين والفقرات والقوائم وعلامات الاقتباس وغيرها. يمكن تقسيم كتل الحاويات إلى فئات 2: كتل الأوراق والحاويات المعقدة. يمكن أن تحتوي كتل الأوراق على محتوى مضمن فقط. يمكن أن تحتوي الحاويات المعقدة بدورها على كتل حاويات أخرى، بما في ذلك كتل الأوراق.

### كتل الأوراق

يوضح الجدول أدناه أمثلة على استخدام Markdown كتل الأوراق في Aspose.Words:

| Markdown ميزة | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | هذه فقرة بسيطة ذات شكل HorizontalRule مطابق:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`، حيث (1<= ن <= 9).<br />يتم ترجمة هذا إلى نمط مدمج ويجب أن يكون بالضبط من النمط المحدد (لا يسمح باللواحق أو البادئات).<br />خلاف ذلك، سيكون مجرد فقرة عادية مع نمط المقابلة. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`، على أساس `"Heading N"` نمط.<br />إذا (ن > = 2)، فسيتم استخدام `"Heading 2"`، وإلا `"Heading 1"`.<br />يسمح بأي لاحقة، لكن المستورد Aspose.Words يستخدم الأرقام "1" و" 2 " على التوالي. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />`[.]` و `[info string]` اختيارية. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### حاويات معقدة

يوضح الجدول أدناه أمثلة على استخدام Markdown حاويات معقدة في Aspose.Words:

| Markdown ميزة | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />اللاحقة في اسم النمط اختيارية، ولكن Aspose.Words المستورد يستخدم الأرقام المطلوبة1, 2, 3, .... في حالة الاقتباسات المتداخلة.<br />يتم تعريف التعشيش عبر الأنماط الموروثة. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | يتم تمثيل القوائم النقطية باستخدام ترقيم الفقرات:<br />`get_ListFormat()->ApplyBulletDefault()`<br />يمكن أن يكون هناك 3 أنواع القوائم النقطية. هم فقط فرق في تنسيق ترقيم من المستوى الأول. هذه هي: `‘-’`، `‘+’` أو `‘*’` على التوالي. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | يتم تمثيل القوائم المرتبة باستخدام ترقيم الفقرات:<br />`get_ListFormat()->ApplyNumberDefault()`<br />يمكن أن يكون هناك 2 علامات تنسيق الأرقام: ‘.’ و ‘)’. العلامة الافتراضية هي ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### الجداول

Aspose.Words يسمح أيضا بترجمة الجداول إلى DOM، كما هو موضح أدناه:

| Markdown ميزة | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)، [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) و [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) الطبقات. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## أنظر أيضا

* [العمل مع Markdown الميزات](/words/cpp/working-with-markdown-features/)

