---
title: العمل مع الهيفين Java
second_title: Aspose.Words for Java
articleTitle: العمل مع الهيفينة
linktitle: العمل مع الهيفينة
description: "استخدام التسخين من أجل ترتيب نص أكثر اتفاقا. It provides advanced algorithms to work with hyphenation dictionaries, uses OpenOffice dictionaries using Java."
type: docs
weight: 220
url: /ar/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

وفي بعض الأحيان، من الضروري استخدام التسخين من أجل ترتيب نص أكثر اتفاقا في وثيقة ما. وفي الوقت نفسه، من المهم أن نفهم أن مواصفات استئصال الكلمات قد تختلف عن كل لغة.

At the present time, hyphenation is not used as often as it used to be, especially in English texts. ومع ذلك، فإن استخدام هذه السمة يمكن أن يكون له أثر خطير على وثائق المستعملين - فالهيفينة تؤثر على التصميم، ونتيجة لذلك، ظهر ملفات النواتج، على سبيل المثال، في شكل PDF.

وللتقسيم الصحيح للكلمات، تُستخدم قواميس هيفينة خاصة بكل لغة. Aspose.Words تستخدم خوارزميات متطورة للعمل مع مثل هذه القاموس وتسمح لك للحصول على نفس الهيفينة كما في Microsoft Word.

## الدراسات الاستقصائية

وبما أن اللغات المختلفة تستخدم قواعد وقواعد مختلفة لتسخين الكلمات، فإن الحل الأمثل للهواء الصحيح هو استخدام القاموس الخاصة. Aspose.Words يستعمل قواميس المكاتب المفتوحة

لفحص التعويذة، يستعمل المكتب المفتوح [Hunspell المكتبة](https://hunspell.github.io/), وهو تعميم خوارزمية التنس. ويسمح هذا الخوارزمي بالهواء التلقائي غير المعياري باستخدام أنماط منافسة من التهوية المعيارية والعرفية. Hunspell الاستخدامات [Hyphen](https://github.com/hunspell/hyphen) للهواء

{{% alert color="primary" %}}

يمكن أخذ القاموس من [LibreOffice القاموس GitHub](https://github.com/LibreOffice/dictionaries). على سبيل المثال، [في الولايات المتحدة](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

As Microsoft Word (ب) استخدامات للقاموس غير القائمين بالمكتب المفتوح من أجل أداء التهوية، وقد تختلف هيف بعض الكلمات التي يحددها القاموس المفتوح عن Microsoft Word التهوية ولهذا السبب، يتعين علينا أحيانا أن نبلغ العملاء بإضافة الأنماط اللازمة لقاموسهم من أجل إصلاح التصفح لبعض الكلمات.

{{% /alert %}}

## Hyphenation Algorithm

Aspose.Words التنفيذ [خوارزمية تكس](https://github.com/hunspell/hyphen/blob/master/README.hyphen) ويمكنها إعادة استخدام قواميس التهوية المفتوحة

السمات التالية: Aspose.Words وينبغي مراعاة الخوارزميات:

*? Hyphenation distance parameters (LEFTHYPHENMIN, rightHYPHENMIN, COMPOUNDLEFTHYPHENMIN، COMتُتجاهل POUNDRIGHTHYPHENMIN) المحددة في القاموس الهجيني. Aspose.Words ويستخدم مجموعته الخاصة من بارامترات المسافات حسب طريقة توافق الوثائق.
* ♪ خوارزمية التهوية في Aspose.Words الدعم [الهيدروجين المركب](https://github.com/hunspell/hyphen/blob/master/README.compound). ومع ذلك، Aspose.Words يقسم تسلسلات الشخصية التي تحتوي على شخصيات أبجدية مختلطة وغير أبجدية إلى أجزاء أبجدية فقط (كلمات) ويصفها كل على حدة.
  ملاحظة Microsoft Word ويتوقف منطق تهوية الكلمات المركبة على طريقة توافق الوثائق.
* ♪ خوارزمية التهوية في Aspose.Words لا تنفذ [هجينة غير عادية](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). ويجري تجاهل الأنماط غير القياسية.

## مواصفات الترددات

لاستعمال سمة الهيفينات، أول تسجيل لقاموس هيفينات. The following code example shows how to load hyphenation dictionaries for the specified languages from a file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

The following code example shows how to load hyphenation dictionaries for the specified language from a stream:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

يمكنك تحميل ملف النموذج من هذا المثال [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

وكبديل عن القاموس التي سبق تسجيلها، لا يمكن تسجيل سوى قواميس الهيفينات المطلوبة " بطلب ". لتحقيق ذلك، تنفيذ [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) الواجهة البينية وإستعمال التردد الثابت [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

ويبين المثال الرمزي التالي كيفية تنفيذ **IHyphenationCallback** واجهة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## أثر الهيفينة على العيون

عند اقتحام النص للخطوط Aspose.Words يفحص كل كلمة ما إذا كانت تناسب تماماً الخط الحالي إذا كانت كلمة أخرى طويلة جدا لتناسب في نهاية الخط، عن طريق التقصير Aspose.Words ينتقل إلى بداية السطر التالي بدلاً من التهوية

ومع ذلك، يمكن استخدام سمة الهيفينة في Aspose.Words إدراج hyphens في الكلمات لإزالة الثغرات في النص المبرّر أو للحفاظ على طول خطي حتى في الأعمدة الضيقة. ومن الواضح أن ذلك يمكن أن يؤثر على عدد الصفحات وبالتالي على عدد الصفحات. وبعبارة أخرى، فإن استخدام وظيفة التهوية يؤثر على تصميم الوثيقة.

## Hyphenation and Justification (HJ)

Microsoft Word وله منطق معقد لاختيار نقطة انفصال إذا كان النص مبررا وممكنا من التهوية. باختصار Microsoft Word قد يفضّل أن يتقلص أو يمتدّ المساحات لتجنّب التهوية على الأرجح أن هذا المنطق يقوم على [مقال نوث](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words ينفذ خوارزمياته الخاصة التي تعطي نفس النتيجة Microsoft Word ويقدم خطا مماثلا في وثيقة الناتج.

## انظر أيضا

* [Hyphen - hyphenation library](https://github.com/hunspell/hyphen/blob/master/README)
* [هجينة غير عادية](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [hyphenation of Automatic non-standard in Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
