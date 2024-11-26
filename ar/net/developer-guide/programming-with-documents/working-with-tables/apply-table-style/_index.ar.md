---
title: تغيير نمط الجدول في مستندات Word
second_title: Aspose.Words لـ .NET
articleTitle: تطبيق نمط الجدول
linktitle: تطبيق نمط الجدول
description: "تنسيق الجدول المتقدم C#. قم بإنشاء نمط جدول باستخدام C#. تطبيق نمط الجدول C#."
type: docs
weight: 80
url: /ar/net/working-with-tablestyle/
timestamp: 2024-02-02-12-07-36
---

يحدد نمط الجدول مجموعة من التنسيقات التي يمكن تطبيقها بسهولة على الجدول. يمكن تعيين التنسيقات مثل الحدود والتظليل والمحاذاة والخط في نمط جدول وتطبيقها على العديد من الجداول للحصول على مظهر متناسق.

يدعم Aspose.Words تطبيق نمط الجدول على الجدول وكذلك قراءة خصائص أي نمط جدول. يتم الاحتفاظ بأنماط الجدول أثناء التحميل والحفظ بالطرق التالية:

- يتم الاحتفاظ بأنماط الجدول بتنسيقات DOCX وWordML عند التحميل والحفظ بهذه التنسيقات
- يتم الاحتفاظ بأنماط الجدول عند التحميل والحفظ بتنسيق DOC (ولكن ليس بأي تنسيق آخر)
- عند التصدير إلى تنسيقات أخرى، أو العرض أو الطباعة، يتم توسيع أنماط الجدول لتشمل التنسيق المباشر في الجدول، بحيث يتم الاحتفاظ بجميع التنسيقات

## إنشاء نمط الجدول

يمكن للمستخدم إنشاء نمط جديد وإضافته إلى مجموعة الأنماط. يتم استخدام طريقة [Add](https://reference.aspose.com/words/ar/net/aspose.words/stylecollection/add/) لإنشاء نمط جدول جديد.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء نمط جدول جديد محدد من قبل المستخدم:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## انسخ نمط جدول موجود

إذا لزم الأمر، يمكنك نسخ نمط جدول موجود بالفعل في مستند معين إلى مجموعة الأنماط الخاصة بك باستخدام طريقة `AddCopy`.

من المهم معرفة أنه مع هذا النسخ، يتم أيضًا نسخ الأنماط المرتبطة.

يوضح مثال التعليمات البرمجية التالي كيفية استيراد نمط من مستند إلى مستند آخر:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## تطبيق نمط الجدول الموجود

يوفر Aspose.Words ملف [TableStyle](https://reference.aspose.com/words/ar/net/aspose.words/tablestyle/) موروث من فئة [Style](https://reference.aspose.com/words/ar/net/aspose.words/style/). يسهل **TableStyle** للمستخدم تطبيق خيارات أنماط مختلفة مثل التظليل والحشو والمسافات البادئة و[CellSpacing](https://reference.aspose.com/words/ar/net/aspose.words/tablestyle/cellspacing/) و[Font](https://reference.aspose.com/words/ar/net/aspose.words/style/font/) وما إلى ذلك.

بالإضافة إلى ذلك، يوفر Aspose.Words فئة [StyleCollection](https://reference.aspose.com/words/ar/net/aspose.words/stylecollection/) وبعض خصائص فئة `Table` لتحديد نمط الجدول الذي سنعمل معه: [Style](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/style/)، و[StyleIdentifier](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/styleidentifier/)، و[StyleName](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/stylename/)، و[StyleOptions](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/styleoptions/).

يوفر Aspose.Words أيضًا فئة [ConditionalStyle](https://reference.aspose.com/words/ar/net/aspose.words/conditionalstyle/) التي تمثل التنسيق الخاص المطبق على بعض مناطق الجدول بنمط جدول معين، و[ConditionalStyleCollection](https://reference.aspose.com/words/ar/net/aspose.words/conditionalstylecollection/) الذي يمثل مجموعة من كائنات **ConditionalStyle**. تحتوي هذه المجموعة على مجموعة دائمة من العناصر تمثل عنصرًا واحدًا لكل قيمة من نوع تعداد [ConditionalStyleType](https://reference.aspose.com/words/ar/net/aspose.words/conditionalstyletype/). يحدد تعداد **ConditionalStyleType** جميع مناطق الجدول الممكنة التي يمكن تعريف التنسيق الشرطي لها في نمط الجدول.

في هذه الحالة، يمكن تعريف التنسيق الشرطي لجميع مناطق الجدول المحتملة المحددة ضمن نوع التعداد ConditionalStyleType.

يوضح مثال التعليمات البرمجية التالي كيفية تحديد التنسيق الشرطي لصف رأس الجدول:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

يمكنك أيضًا اختيار أجزاء الجدول التي سيتم تطبيق الأنماط عليها، مثل العمود الأول والعمود الأخير والصفوف ذات النطاقات. وهي مدرجة في تعداد [TableStyleOptions](https://reference.aspose.com/words/ar/net/aspose.words.tables/tablestyleoptions/) ويتم تطبيقها من خلال خاصية [StyleOptions](https://reference.aspose.com/words/ar/net/aspose.words.tables/table/styleoptions/). يسمح تعداد **TableStyleOptions** بدمج هذه الميزات على مستوى البت.

يوضح مثال التعليمات البرمجية التالي كيفية إنشاء جدول جديد باستخدام نمط الجدول المطبق:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

تُظهر الصور أدناه تمثيلاً لـ **Table Styles** في Microsoft Word وخصائصها المقابلة في Aspose.Words.

![formatting-table-style-aspose-words-net](/words/net/working-with-tablestyle/applying-formatting-10.png)

## خذ التنسيق من نمط الجدول وقم بتطبيقه كتنسيق مباشر

يوفر Aspose.Words أيضًا طريقة [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/ar/net/aspose.words/document/expandtablestylestodirectformatting/) لأخذ التنسيق الموجود في نمط الجدول وتوسيعه ليشمل صفوف وخلايا الجدول كتنسيق مباشر. حاول الجمع بين التنسيق ونمط الجدول ونمط الخلية.

{{% alert color="primary" %}}

لن تتجاوز هذه الطريقة أي تنسيق آخر تم تطبيقه بالفعل على الجدول من خلال تنسيق صف أو خلية.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالي كيفية توسيع التنسيق من الأنماط إلى صفوف وخلايا الجدول كتنسيق مباشر:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

يمكنك تنزيل الملف النموذجي لهذا المثال من [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}
