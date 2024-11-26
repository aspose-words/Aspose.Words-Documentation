---
title: تغيير نمط الجدول في مستندات ورد
second_title: Aspose.Words ل C++
articleTitle: تطبيق نمط الجدول
linktitle: تطبيق نمط الجدول
description: "تنسيق الجدول المتقدم C++. قم بإنشاء نمط جدول باستخدام C++. تطبيق نمط الجدول C++."
type: docs
weight: 80
url: /ar/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

يحدد نمط الجدول مجموعة من التنسيقات التي يمكن تطبيقها بسهولة على الجدول. يمكن تعيين التنسيق مثل الحدود والتظليل والمحاذاة والخط بأسلوب جدول وتطبيقه على العديد من الجداول للحصول على مظهر ثابت.

Aspose.Words يدعم تطبيق نمط الجدول إلى جدول وأيضا قراءة خصائص أي نمط الجدول. يتم الحفاظ على أنماط الجدول أثناء التحميل والحفظ بالطرق التالية:

- يتم الاحتفاظ بأنماط الجدول بتنسيقات DOCX ووردمل عند التحميل والحفظ لهذه التنسيقات
- يتم الحفاظ على أنماط الجدول عند التحميل والحفظ بتنسيق DOC (ولكن ليس بأي تنسيق آخر)
- عند التصدير إلى تنسيقات أو عرض أو طباعة أخرى، يتم توسيع أنماط الجدول لتوجيه التنسيق في الجدول، بحيث يتم الاحتفاظ بجميع التنسيقات

## إنشاء نمط الجدول

يمكن للمستخدم إنشاء نمط جديد وإضافته إلى مجموعة الأنماط. يتم استخدام طريقة [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) لإنشاء نمط جدول جديد.

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء نمط جدول تعريف مستخدم جديد:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## انسخ نمط جدول موجود

إذا لزم الأمر، يمكنك نسخ نمط جدول موجود بالفعل في مستند معين إلى مجموعة الأنماط الخاصة بك باستخدام طريقة `AddCopy`.

من المهم معرفة أنه مع هذا النسخ، يتم أيضا نسخ الأنماط المرتبطة.

يوضح مثال التعليمات البرمجية التالية كيفية استيراد نمط من مستند إلى مستند آخر:

EXAMPLE

## تطبيق نمط جدول موجود

Aspose.Words يوفر [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) الموروثة من فئة [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** يسهل المستخدم لتطبيق خيارات نمط مختلفة مثل التظليل، الحشو، المسافة البادئة، [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) و [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/)، الخ.

بالإضافة إلى ذلك، يوفر Aspose.Words فئة [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) وبعض خصائص فئة `Table` لتحديد نمط الجدول الذي سنعمل معه: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), و [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words يوفر أيضا فئة [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) التي تمثل تنسيقا خاصا يتم تطبيقه على بعض مناطق الجدول بنمط جدول معين، و [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) التي تمثل مجموعة من **ConditionalStyle** الكائنات. تحتوي هذه المجموعة على مجموعة دائمة من العناصر التي تمثل عنصرا واحدا لكل قيمة من نوع التعداد [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). ال **ConditionalStyleType** يحدد التعداد جميع مناطق الجدول الممكنة التي يمكن تعريف التنسيق الشرطي عليها بأسلوب جدول.

في هذه الحالة، يمكن تعريف التنسيق الشرطي لكل منطقة جدول ممكنة محددة تحت ConditionalStyleType نوع التعداد.

يوضح مثال التعليمات البرمجية التالية كيفية تعريف التنسيق الشرطي لصف رأس الجدول:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

يمكنك أيضا اختيار أجزاء الجدول التي تريد تطبيق الأنماط عليها، مثل العمود الأول والعمود الأخير والصفوف ذات النطاقات. يتم سردها في [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) التعداد ويتم تطبيقها من خلال [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/) خاصية. ال **TableStyleOptions** يسمح التعداد بمزيج من هذه الميزات.

يوضح مثال التعليمات البرمجية التالية كيفية إنشاء جدول جديد باستخدام نمط جدول مطبق:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

تظهر الصور أدناه تمثيلا لـ **Table Styles** في Microsoft Word وخصائصها المقابلة في Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## خذ التنسيق من نمط الجدول وقم بتطبيقه كتنسيق مباشر

يوفر Aspose.Words أيضا طريقة [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) لأخذ التنسيق الموجود على نمط جدول وتوسيعه على صفوف وخلايا الجدول كتنسيق مباشر. حاول دمج التنسيق مع نمط الجدول ونمط الخلية.

{{% alert color="primary" %}}

لن تتجاوز هذه الطريقة أي تنسيق آخر تم تطبيقه بالفعل على الجدول من خلال تنسيق صف أو خلية.

{{% /alert %}}

يوضح مثال التعليمات البرمجية التالية كيفية توسيع التنسيق من الأنماط إلى صفوف وخلايا الجدول كتنسيق مباشر:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}
