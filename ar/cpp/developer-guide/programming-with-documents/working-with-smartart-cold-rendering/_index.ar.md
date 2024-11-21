---
title: العمل مع SmartArt التقديم البارد في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع SmartArt التقديم البارد
linktitle: العمل مع SmartArt التقديم البارد
type: docs
description: "Aspose.Words ل C++ ينفذ SmartArt التقديم البارد، مما يعني أنه يضع ويعرض SmartArt كائنات إذا كان الرسم SmartArt المعروض مسبقا مفقودا أو غير صحيح."
weight: 330
url: /ar/cpp/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

تستخدم SmartArt الرسومات لإنشاء تمثيل مرئي للمعلومات بسرعة وسهولة. يمكنك ببساطة الاختيار من بين عدد كبير من التخطيطات التي تناسب وضعك. سهولة الاستخدام هذه تجعل SmartArt رسومات شائعة جدا لبعض الأغراض.

Microsoft Word يولد ويحفظ الرسم المقدمة مسبقا جنبا إلى جنب مع الكائن `SmartArt`. في معظم الحالات، يتم تقديم الرسم المقدم مسبقا بشكل جيد بواسطة Aspose.Words ولا يلزم اتخاذ إجراءات إضافية. ومع ذلك، إذا تم حفظ المستند بواسطة تطبيقات أخرى، فقد يكون الرسم SmartArt المعروض مسبقا مفقودا أو غير صحيح. في هذه الحالة، يجب وضع الكائن `SmartArt` نفسه وتقديمه باستخدام Aspose.Words. نسمي هذه العملية `SmartArt` التقديم البارد.

## باستخدام SmartArt التقديم البارد

Aspose.Words يسمح لك باستخدام رسم مسبق أو إجراء عرض بارد:

* إذا كان الرسم المعروض مسبقا متاحا، Aspose.Words يستخدمه لعرض الكائن `SmartArt`.
* إذا كان الرسم المعروض مسبقا مفقودا، Aspose.Words يؤدي ضمنيا عرضا باردا لعرض الكائن `SmartArt`.
* إذا كان الرسم المعروض مسبقا موجودا ولكنه غير صحيح، فيجب إجراء SmartArt عرض بارد بشكل صريح عن طريق استدعاء طريقة [UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/).

يوضح مثال الكود التالي كيفية تحديث الرسومات لجميع المخططات في المستند:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## دعم القياسية SmartArt تخطيطات

حاليا، يتم دعم عدد محدود فقط من التخطيطات القياسية Microsoft Word SmartArt. أيضا، يتم دعم بعض هذه التخطيطات جزئيا، مما يعني أنه يتم تقديم العقد والأشكال المهمة للرسم التخطيطي، ولكن قد تكون هناك اختلافات بين Microsoft Word و Aspose.Words تخطيط الرسم التخطيطي.

يسرد الجدول أدناه التخطيطات المدعومة كليا وجزئيا:

| SmartArt مجموعة التخطيطات | تخطيطات مدعومة بالكامل | تخطيطات مدعومة جزئيا |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>قائمة الحظر الأساسية</li><li>السداسي بالتناوب</li><li>قائمة رصاصة عمودية</li><li>قائمة مربع عمودي</li><li>قائمة عرض متفاوتة</li><li>قائمة رصاصة أفقية</li><li>قائمة مجمعة</li><li>قائمة الحظر العمودي</li><li>قائمة شيفرون العمودية</li><li>قائمة الأسهم العمودية</li><li>قائمة شبه منحرف</li><li>قائمة الجدول</li><li>قائمة الهرم</li><li>قائمة الأهداف</li></ul> | <ul><li>قائمة مبطنة</li><li>قائمة قوس عمودي</li><li>قائمة علامات التبويب</li><li>قائمة مكدسة</li><li>قائمة اللكنة العمودية</li><li>قائمة الدائرة العمودية</li></ul> |
| `Process` | <ul><li>العملية الأساسية</li><li>عملية اللكنة</li><li>عملية كتلة مستمرة</li><li>زيادة عملية السهم</li><li>النص المتقارب</li><li>الجدول الزمني الأساسي</li><li>عملية شيفرون الأساسية</li><li>عملية لهجة شيفرون</li><li>عملية شيفرون مغلقة</li><li>قائمة شيفرون</li><li>عملية عمودية</li><li>عملية متداخلة</li><li>قائمة العمليات</li><li>عملية الانحناء الأساسية</li><li>تكرار عملية الانحناء</li><li>عملية مفصلة</li><li>السهم التصاعدي</li><li>عملية تنازلي</li><li>عملية الانحناء الدائري</li></ul> | <ul><li>تصعيد العملية</li><li>عملية التنحي</li><li>التدفق المتناوب</li><li>زيادة عملية الدائرة</li><li>Pie عملية</li><li>عملية كتلة مترابطة</li><li>أسهم العملية</li><li>دائرة لهجة الجدول الزمني</li><li>عملية الدائرة</li><li>عملية الخطوة الفرعية</li><li>عملية مرحلية</li><li>عشوائي لعملية النتيجة</li><li>عملية سهم الدائرة</li></ul> |
| `Cycle` |  | <ul><li>دورة مجزأة</li><li>مسدس شعاعي</li></ul> |
| `Hierarchy` |  | <ul><li>التسلسل الهرمي للجدول</li><li>تخطيط العمارة</li></ul> |
| `Relationship` | <ul><li>الرصيد</li><li>القمع</li><li>جير</li><li>زائد وناقص</li><li>السهم الشريط</li><li>الأسهم موازنة</li><li>السهام المعارضة</li><li>الهدف المتداخل</li><li>الهدف الأساسي</li><li>أساسي Pie</li><li>فين الأساسي</li><li>مكدسة فين</li><li>حلقة مترابطة</li></ul> | <ul><li>علاقة الدائرة</li><li>معارضة الأفكار</li><li>المعادلة</li><li>المعادلة العمودية</li><li>الخطي فين</li></ul> |
| `Matrix` | <ul><li>المصفوفة الأساسية</li><li>مصفوفة بعنوان</li><li>مصفوفة الشبكة</li><li>مصفوفة الدورة</li></ul> |  |
| `Pyramid` |  | <ul><li>هرم مجزأ</li></ul> |

## مقارنة SmartArt التقديم في Aspose.Words و Microsoft

يوضح الجدول أدناه أمثلة على صور Aspose.Words عرض بارد لبعض التخطيطات القياسية مقارنة بإخراج Microsoft Word:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
