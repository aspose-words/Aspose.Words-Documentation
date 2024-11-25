---
title: التحويل إلى تنسيق الصفحة الثابتة في C++
second_title: Aspose.Words ل C++
articleTitle: التحويل إلى تنسيق الصفحة الثابتة
linktitle: التحويل إلى تنسيق الصفحة الثابتة
description: "حفظ المستندات إلى PDF, XPS, HTML, XAML, PostScript, و PCL التنسيقات."
type: docs
weight: 10
url: /ar/cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words تنفذ محرك تخطيط الصفحة الخاصة بها. قبل الخوض في مواصفاتها، من المفيد أولا مناقشة الوثيقة على مستوى عال.

## ما هي الوثيقة?

عند التفكير في مستند، يتخيل المستخدمون عادة عددا من الأوراق الورقية التي تحتوي على كلمات وصور وجداول ومخططات. يمكن أن تكون المستندات من أنواع مختلفة، مثل النصوص وجداول البيانات والشرائح والرسومات CAD والمخططات الانسيابية، وبالتالي يمكن أن يكون لها تخطيطات مختلفة بشكل أساسي. تسمح معظم التطبيقات بإرسال المستندات إلى الطابعة ؛ هذا هو الوقت الذي يمكن فيه للمستخدم عرض المظهر النهائي المقصود للمستند.

## عرض مستند في تطبيقات مختلفة

تسمح تطبيقات عرض المستندات أو النشر المختلفة للمستخدمين بفتح (Adobe Acrobat، XPS عارض) وأحيانا تحرير (أدوبي InDesign) مستندات بتنسيقات محددة. تنتج هذه التطبيقات عادة ما يسمى بمستندات تنسيق "الصفحة الثابتة". يصف تنسيق المستند هذا بدقة مكان وضع محتوى المستند في كل صفحة. داخليا، يحتوي تنسيق PDF أو XPS على وصف لكل صفحة، بالإضافة إلى تعليمات الرسم، مع تحديد تخطيط المحتوى على الصفحة. هذا مشابه لتنسيقات الصور، حيث يصف مكان عرض المحتوى إما في شكل نقطي أو متجه.

في المقابل، لا تدعم بعض تطبيقات تحرير النص عرض صفحات المستند. على سبيل المثال، Microsoft المفكرة يدعم وظائف قليلة جدا بخلاف مجرد عرض وتحرير وطباعة النص. الملاحظة المهمة هنا هي أن مثل هذه التطبيقات لا يمكنها عرض صفحات المستند ولا إخبار المستخدم بعدد الصفحات التي ستتم طباعتها، مما يسمح فقط بعرض محتوى المستند. يمكن حفظ المستند بتنسيق نص عادي ويمكن فتحه بواسطة العديد من التطبيقات الأخرى. باستخدام تطبيق يسمح بعرض المحتوى الثنائي لملف تعسفي، يمكن للمرء أن يرى ما يتم تخزينه في ملف المستند – إنه مجرد نص عادي، ولا يوجد شيء آخر فيه.

قليلا أكثر تطورا تطبيقات تحرير النص، مثل Microsoft Wordالوسادة، حفظ المستند بتنسيق نص منسق (RTF)، والذي يدعم المزيد من وظائف التنسيق، مثل إدراج الصور وتنسيق الأحرف وهوامش الفقرة والتباعد. ومع ذلك، يحتوي تنسيق RTF أيضا على محتوى المستند فقط، ولا يحتوي على معلومات حول الصفحات.

Microsoft Word هو تطبيق تحرير النص الأكثر تقدما في Windows اليوم. يقوم بتنسيق الملفات بتنسيق DOCX، والذي يصف محتوى المستند بمرونة وعلى نطاق واسع، مما يسمح للمستخدمين بتحديد حجم الصفحة واتجاهها لقسم المستند، وكونه تطبيقا WYSIWYG حتى يعرض صفحات المستند على الشاشة. ومع ذلك، لا توجد حتى الآن معلومات حول كيفية عرض محتوى المستند على الصفحات المتوفرة في ملف المستند. يصف ملف المستند المحتوى نفسه فقط، وعلاقة كائنات المستند ببعضها البعض، إلى جانب بعض القيود الهندسية. نتيجة لذلك، قبل عرض مستند ،Microsoft Word يحسب تلك المعلومات نفسها. هذا هو المكان الذي يأتي تخطيط الصفحة في اللعب.

## أنظر أيضا

* [ما هو تخطيط الصفحة](/words/cpp/what-is-a-page-layout/)
* [إنشاء تخطيط الصفحة](/words/cpp/creating-a-page-layout/)
* [حفظ مستند بتنسيق صفحة ثابتة](/words/cpp/saving-a-document-to-fixed-page-format/)
* [تحديد خيارات التخطيط](/words/cpp/specify-layout-options/)