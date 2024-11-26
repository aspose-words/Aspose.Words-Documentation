---
title: العمل مع SmartArt Cold Rendering في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع العرض البارد SmartArt
linktitle: العمل مع العرض البارد SmartArt
description: "مقدمة إلى أشكال SmartArt باستخدام C#."
type: docs
description: "يقوم Aspose.Words for .NET بتنفيذ SmartArt Cold Rendering، مما يعني أنه يحدد ويعرض كائنات SmartArt إذا كان رسم SmartArt المعروض مسبقًا مفقودًا أو غير صحيح باستخدام C#."
weight: 330
url: /ar/net/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

تُستخدم رسومات SmartArt لإنشاء تمثيل مرئي للمعلومات بسرعة وسهولة. يمكنك ببساطة الاختيار من بين عدد كبير من التخطيطات التي تناسب موقفك. إن سهولة الاستخدام هذه تجعل رسومات SmartArt شائعة جدًا لبعض الأغراض.

يقوم Microsoft Word بإنشاء وحفظ الرسم المعروض مسبقًا مع كائن `SmartArt`. في معظم الحالات، يتم عرض الرسم المعروض مسبقًا بشكل جيد بواسطة Aspose.Words ولا يلزم اتخاذ أي إجراءات إضافية. ومع ذلك، إذا تم حفظ المستند بواسطة تطبيقات أخرى، فقد يكون رسم SmartArt المعروض مسبقًا مفقودًا أو غير صحيح. في هذه الحالة، يجب تخطيط كائن `SmartArt` نفسه وعرضه باستخدام Aspose.Words. نحن نسمي هذه العملية عرض `SmartArt` البارد.

## استخدام العرض البارد SmartArt

يسمح لك Aspose.Words باستخدام رسم معروض مسبقًا أو إجراء عرض بارد:

* في حالة توفر رسم معروض مسبقًا، يستخدمه Aspose.Words لعرض كائن `SmartArt`.
* إذا كان الرسم المعروض مسبقًا مفقودًا، فسيقوم Aspose.Words ضمنيًا بتنفيذ العرض البارد لعرض كائن `SmartArt`.
* إذا كان الرسم المعروض مسبقًا موجودًا ولكنه غير صحيح، فيجب تنفيذ عرض SmartArt البارد بشكل صريح عن طريق استدعاء أسلوب [UpdateSmartArtDrawing](https://reference.aspose.com/words/ar/net/aspose.words.drawing/shape/updatesmartartdrawing/).

يوضح مثال التعليمات البرمجية التالي كيفية تحديث الرسومات لجميع المخططات في المستند:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## دعم تخطيطات SmartArt القياسية

حاليًا، يتم دعم عدد محدود فقط من تخطيطات Microsoft Word SmartArt القياسية. بالإضافة إلى ذلك، يتم دعم بعض هذه التخطيطات جزئيًا، مما يعني أنه يتم عرض العقد والأشكال المهمة للرسم التخطيطي، ولكن قد تكون هناك اختلافات بين تخطيط الرسم التخطيطي Microsoft Word وAspose.Words.

يسرد الجدول أدناه التخطيطات المدعومة بالكامل وجزئيًا:

|  تخطيطات SmartArt Group |  تخطيطات مدعومة بالكامل |  تخطيطات مدعومة جزئيا |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>قائمة الحظر الأساسية</li><li>السداسيات بالتناوب</li><li>قائمة نقطية عمودية</li><li>قائمة المربعات العمودية</li><li>قائمة العرض المتغيرة</li><li>قائمة نقطية أفقية</li><li>قائمة Grouped</li><li>قائمة الحظر العمودية</li><li>قائمة شيفرون العمودية</li><li>قائمة الأسهم العمودية</li><li>قائمة شبه منحرف</li><li>قائمة الجدول</li><li>قائمة الهرم</li><li>قائمة الأهداف</li></ul> |  <ul><li>قائمة مبطنة</li><li>قائمة قوس عمودي</li><li>قائمة علامات التبويب</li><li>قائمة مكدسة</li><li>قائمة اللكنة العمودية</li><li>قائمة الدائرة العمودية</li></ul> |
|  `Process`  |  <ul><li>العملية الأساسية</li><li>عملية اللكنة</li><li>عملية الكتلة المستمرة</li><li>زيادة عملية السهم</li><li>النص المتقارب</li><li>الجدول الزمني الأساسي</li><li>عملية شيفرون الأساسية</li><li>عملية أكسنت شيفرون</li><li>عملية شيفرون المغلقة</li><li>قائمة شيفرون</li><li>عملية عمودية</li><li>عملية متداخلة</li><li>قائمة العمليات</li><li>عملية الانحناء الأساسية</li><li>تكرار عملية الانحناء</li><li>عملية مفصلة</li><li>السهم للأعلى</li><li>عملية تنازلية</li><li>عملية الانحناء الدائري</li></ul> |  <ul><li>تصعيد العملية</li><li>عملية التنحي</li><li>التدفق المتناوب</li><li>زيادة عملية الدائرة</li><li>عملية الفطيرة</li><li>عملية الكتلة المترابطة</li><li>سهام العملية</li><li>دائرة لهجة الجدول الزمني</li><li>عملية الدائرة</li><li>عملية الخطوة الفرعية</li><li>عملية مرحلية</li><li>عملية عشوائية للنتيجة</li><li>عملية السهم الدائري</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>دورة مجزأة</li><li>شعاعي مسدس</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>التسلسل الهرمي للجدول</li><li>تخطيط الهندسة المعمارية</li></ul> |
|  `Relationship`  |  <ul><li>توازن</li><li>قمع</li><li>هيأ</li><li>زائد وناقص</li><li>شريط السهم</li><li>سهام الموازنة</li><li>السهام المعاكسة</li><li>الهدف المتداخل</li><li>الهدف الأساسي</li><li>الفطيرة الأساسية</li><li>فين الأساسية</li><li>مكدسة فين</li><li>حلقة مترابطة</li></ul> |  <ul><li>علاقة الدائرة</li><li>أفكار معارضة</li><li>معادلة</li><li>المعادلة العمودية</li><li>فين الخطي</li></ul> |
|  `Matrix`  |  <ul><li>المصفوفة الأساسية</li><li>مصفوفة بعنوان</li><li>مصفوفة الشبكة</li><li>مصفوفة الدورة</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>الهرم المجزأ</li></ul> |

## مقارنة عرض SmartArt في Aspose.Words وMicrosoft

يعرض الجدول أدناه أمثلة لصور عرض Aspose.Words Cold لبعض التخطيطات القياسية مقارنة بمخرجات Microsoft Word:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/> |
|   **Circular Bending Process**   |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="Circular_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="Circular_bending_process_word"/> |
|   **Repeating Bending Process**  |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="Repearing_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="Repearing_bending_process_word"/> |
|   **Trapezoid List**             |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/> |
