---
title: العمل مع الواصلة في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع الواصلة
linktitle: العمل مع الواصلة
description: "استخدم الواصلة لترتيب أكثر إحكاما للنص باستخدام C++. يوفر خوارزميات متقدمة للعمل مع قواميس الواصلة، ويستخدم قواميس OpenOffice."
type: docs
weight: 220
url: /ar/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

في بعض الأحيان يكون من الضروري استخدام الواصلة لترتيب أكثر إحكاما للنص في المستند. في الوقت نفسه، من المهم أن نفهم أن تفاصيل واصلة الكلمات قد تختلف لكل لغة.

في الوقت الحالي، لا يتم استخدام الواصلة كما كانت من قبل، خاصة في النصوص الإنجليزية. ومع ذلك، يمكن أن يكون لاستخدام هذه الميزة تأثير خطير على مستندات المستخدم – تؤثر الواصلة على التخطيط، ونتيجة لذلك، ظهور ملفات الإخراج، على سبيل المثال، بتنسيق PDF.

للتقسيم الصحيح للكلمات، يتم استخدام قواميس الواصلة الخاصة باللغة. Aspose.Words يستخدم خوارزميات متقدمة للعمل مع هذه القواميس ويسمح لك بالحصول على نفس الواصلة كما في Microsoft Word.

## قواميس الواصلة

نظرا لأن اللغات المختلفة تستخدم قواعد وقواعد مختلفة لواصلة الكلمات، فإن الحل الأمثل للواصلة الصحيحة هو استخدام قواميس خاصة. Aspose.Words يستخدم OpenOffice القواميس.

للتدقيق الإملائي ،OpenOffice يستخدم [Hunspell مكتبة](https://hunspell.github.io/)، وهو تعميم لخوارزمية الواصلة في تكس. تسمح هذه الخوارزمية بواصلة تلقائية غير قياسية باستخدام أنماط الواصلة القياسية والمخصصة المتنافسة. Hunspell يستخدم [واصلة](https://github.com/hunspell/hyphen) للواصلة.

{{% alert color="primary" %}}

يمكن أخذ قواميس الواصلة من [LibreOffice قواميس GitHub](https://github.com/LibreOffice/dictionaries). على سبيل المثال, [إن-US قاموس الواصلة](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

نظرا لأن Microsoft Word يستخدم قواميس أخرى غير OpenOffice قواميس لأداء الواصلة، فقد تختلف الواصلة لبعض الكلمات المحددة بواسطة OpenOffice قواميس عن Microsoft Word الواصلة. لهذا السبب، يتعين علينا أحيانا أن ننصح العملاء بإضافة الأنماط اللازمة إلى قواميسهم من أجل إصلاح الواصلة لكلمات معينة.

{{% /alert %}}

## خوارزمية الواصلة

Aspose.Words تنفذ [خوارزمية الواصلة تكس](https://github.com/hunspell/hyphen/blob/master/README.hyphen) ويمكن إعادة استخدام OpenOffice قواميس الواصلة.

يجب مراعاة الميزات التالية لخوارزميات Aspose.Words:

* معلمات مسافة الواصلة(LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) يتم تجاهل المحدد في قاموس الواصلة. Aspose.Words يستخدم مجموعته الخاصة من معلمات المسافة اعتمادا على وضع توافق المستند.
* خوارزمية الواصلة في Aspose.Words يدعم [الواصلة المركبة](https://github.com/hunspell/hyphen/blob/master/README.compound). ومع ذلك، Aspose.Words يقسم تسلسلات الأحرف التي تحتوي على أحرف أبجدية مختلطة وغير أبجدية إلى أجزاء أبجدية فقط (كلمات) ويحددها بشكل منفصل.
  لاحظ أن منطق Microsoft Word لواصلة الكلمات المركبة يعتمد على وضع توافق المستند.
* خوارزمية الواصلة في Aspose.Words لا تنفذ [الواصلة غير القياسية](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). يتم تجاهل الأنماط غير القياسية.

## تحميل قواميس الواصلة

لاستخدام ميزة الواصلة، قم أولا بتسجيل قاموس الواصلة.يوضح مثال الكود التالي كيفية تحميل قواميس الواصلة للغات المحددة من ملف:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

يوضح مثال الكود التالي كيفية تحميل قواميس الواصلة للغة المحددة من دفق:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

كبديل لقواميس الواصلة المسجلة مسبقا، من الممكن تسجيل قواميس الواصلة المطلوبة فقط "حسب الطلب". لتحقيق ذلك، قم بتنفيذ واجهة [IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/) واستخدم رد الاتصال الثابت [Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/).

يوضح مثال التعليمات البرمجية التالية كيفية تنفيذ واجهة **IHyphenationCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## تأثير الواصلة على التخطيط

عند تقسيم النص إلى أسطر، يتحقق Aspose.Words من كل كلمة ما إذا كانت تتناسب تماما مع السطر الحالي. إذا كانت كلمة أخرى طويلة جدا بحيث لا يمكن احتواؤها في نهاية السطر، بشكل افتراضي Aspose.Words ينقلها إلى بداية السطر التالي بدلا من توصيلها بالواصلة.

ومع ذلك، يمكن استخدام ميزة الواصلة في Aspose.Words لإدراج واصلات في الكلمات لإزالة الفجوات في النص المبرر أو للحفاظ على طول سطر متساو في أعمدة ضيقة. من الواضح أن هذا يمكن أن يؤثر على عدد الأسطر وبالتالي على عدد الصفحات. بمعنى آخر، يؤثر استخدام وظيفة الواصلة على تخطيط المستند.

## الواصلة والتبرير (ح & ي)

Microsoft Word له منطق معقد لاختيار نقطة توقف إذا كان النص مبررا وتم تمكين الواصلة. باختصار، قد يفضل Microsoft Word تقليص المسافات أو تمديدها لتجنب واصلة الخط. على الأرجح يعتمد هذا المنطق على [مقال كانوث](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words تنفذ خوارزمية ح & ي الخاصة التي تعطي نفس النتيجة Microsoft Word ويوفر كسر خط متطابقة في وثيقة الإخراج.

## أنظر أيضا

* [واصلة-مكتبة الواصلة](https://github.com/hunspell/hyphen/blob/master/README)
* [الواصلة غير القياسية](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [الواصلة التلقائية غير القياسية في المكتب المفتوح](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
