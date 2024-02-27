---
title: العمل مع الواصلة في Python
second_title: Aspose.Words لـ Python via .NET
articleTitle: العمل مع الواصلة
linktitle: العمل مع الواصلة
description: "استخدم الواصلة لترتيب أكثر إحكاما للنص باستخدام Python. يوفر خوارزميات متقدمة للعمل مع قواميس الواصلة، ويستخدم قواميس OpenOffice."
type: docs
weight: 220
url: /ar/python-net/working-with-hyphenation/
---

في بعض الأحيان يكون من الضروري استخدام الواصلة لترتيب أكثر إحكاما للنص في المستند. في الوقت نفسه، من المهم أن نفهم أن تفاصيل وصلة الكلمات قد تختلف لكل لغة.

في الوقت الحاضر، لا يتم استخدام الواصلة كثيرًا كما كان من قبل، خاصة في النصوص الإنجليزية. ومع ذلك، فإن استخدام هذه الميزة يمكن أن يكون له تأثير خطير على مستندات المستخدم - حيث تؤثر الواصلة على التخطيط، ونتيجة لذلك، على مظهر ملفات الإخراج، على سبيل المثال، بتنسيق PDF.

لتقسيم الكلمات بشكل صحيح، يتم استخدام قواميس الواصلة الخاصة باللغة. يستخدم Aspose.Words خوارزميات متقدمة للعمل مع مثل هذه القواميس ويسمح لك بالحصول على نفس الواصلة كما في Microsoft Word.

## قواميس الواصلة

نظرًا لأن اللغات المختلفة تستخدم معايير وقواعد مختلفة لوصل الكلمات، فإن الحل الأمثل للواصلة الصحيحة هو استخدام قواميس خاصة. يستخدم Aspose.Words قواميس OpenOffice.

للتدقيق الإملائي، يستخدم OpenOffice [مكتبة Hunspell](https://hunspell.github.io/)، وهو تعميم لخوارزمية الواصلة الخاصة بـ TeX. تسمح هذه الخوارزمية بالواصلة التلقائية غير القياسية باستخدام أنماط الواصلة القياسية والمخصصة المتنافسة. يستخدم Hunspell ملف [واصلة](https://github.com/hunspell/hyphen) للواصلة.

{{% alert color="primary" %}}

يمكن أخذ قواميس الواصلة من [قواميس LibreOffice GitHub](https://github.com/LibreOffice/dictionaries). على سبيل المثال، [قاموس الواصلة في الولايات المتحدة](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

بما أن Microsoft Word يستخدم قواميس أخرى غير قواميس OpenOffice لإجراء الواصلة، فإن الواصلة لبعض الكلمات المحددة بواسطة قواميس OpenOffice قد تختلف عن الواصلة في Microsoft Word. لهذا السبب، يتعين علينا أحيانًا أن ننصح العملاء بإضافة الأنماط اللازمة إلى قواميسهم من أجل إصلاح الواصلة بين كلمات معينة.

{{% /alert %}}

## خوارزمية الواصلة

ينفذ Aspose.Words [خوارزمية الواصلة TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) ويمكنه إعادة استخدام قواميس الواصلة OpenOffice.

يجب أن تؤخذ الميزات التالية لخوارزميات Aspose.Words في الاعتبار:

* يتم تجاهل معلمات مسافة الواصلة (LEFTHYPHENMIN، RIGHTHYPHENMIN، COMPOUNDLEFTHYPHENMIN، COMPOUNDRIGHTHYPHENMIN) المحددة في قاموس الواصلة. يستخدم Aspose.Words مجموعته الخاصة من معلمات المسافة اعتمادًا على وضع توافق المستند.
* خوارزمية الواصلة في Aspose.Words تدعم [الواصلة المركبة](https://github.com/hunspell/hyphen/blob/master/README.compound). ومع ذلك، يقوم Aspose.Words بتقسيم تسلسلات الأحرف التي تحتوي على أحرف أبجدية وغير أبجدية مختلطة إلى أجزاء أبجدية فقط (كلمات) ووصلها بشكل منفصل.
  لاحظ أن منطق Microsoft Word الخاص بوصل الكلمات المركبة يعتمد على وضع توافق المستند.
* لا تقوم خوارزمية الواصلة في Aspose.Words بتنفيذ [الواصلة غير القياسية](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). يتم تجاهل الأنماط غير القياسية.

## تحميل قواميس الواصلة

لاستخدام ميزة الواصلة، قم أولاً بتسجيل قاموس الواصلة. يوضح مثال التعليمات البرمجية التالي كيفية تحميل قواميس الواصلة للغات المحددة من ملف:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية تحميل قواميس الواصلة للغة المحددة من الدفق:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

يمكنك تنزيل ملف القالب الخاص بهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## تأثير الواصلة على التخطيط

عند تقسيم النص إلى أسطر، يتحقق Aspose.Words من كل كلمة ما إذا كانت تتناسب تمامًا مع السطر الحالي. إذا كانت كلمة أخرى طويلة جدًا بحيث لا يمكن احتواؤها في نهاية السطر، فسيقوم Aspose.Words افتراضيًا بنقلها إلى بداية السطر التالي بدلاً من وصلها.

ومع ذلك، يمكن استخدام ميزة الواصلة في Aspose.Words لإدراج واصلات في الكلمات لإزالة الفجوات في النص المضبوط أو للحفاظ على طول سطر متساوي في الأعمدة الضيقة. من الواضح أن هذا يمكن أن يؤثر على عدد الأسطر وبالتالي عدد الصفحات. بمعنى آخر، يؤثر استخدام وظيفة الواصلة على تخطيط المستند.

## الواصلة والتبرير (H&amp;J)

يحتوي Microsoft Word على منطق معقد لاختيار نقطة توقف إذا كان النص مضبوطًا وتم تمكين الواصلة. باختصار، قد يفضل Microsoft Word تقليص المسافات أو تمديدها لتجنب وصل الأسطر. على الأرجح يعتمد هذا المنطق على [مقال كنوث](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

تطبق Aspose.Words خوارزمية H&amp;J الخاصة بها والتي تعطي نفس النتيجة مثل Microsoft Word وتوفر فواصل أسطر مماثلة في مستند الإخراج.

## أنظر أيضا

* [واصلة – مكتبة الواصلة](https://github.com/hunspell/hyphen/blob/master/README)
* [الواصلة غير القياسية](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [الواصلة التلقائية غير القياسية في Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
