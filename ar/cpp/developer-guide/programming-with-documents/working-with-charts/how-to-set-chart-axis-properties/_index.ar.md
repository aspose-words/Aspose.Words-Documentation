---
title: كيفية تعيين خصائص محور الرسم البياني في C++
second_title: Aspose.Words ل C++
articleTitle: كيفية تعيين خصائص محور الرسم البياني
linktitle: كيفية تعيين خصائص محور الرسم البياني
description: "ضبط محور الرسم البياني باستخدام C++."
type: docs
weight: 20
url: /ar/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

إذا كنت ترغب في العمل مع وحدات محور المخطط والقياس والعرض لمحور القيمة، فيرجى استخدام فئات [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis) و [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) و [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

يوضح مثال الكود التالي كيفية تعريف خصائص المحور س و ص:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## كيفية تعيين قيمة التاريخ والوقت للمحور

يوضح مثال التعليمات البرمجية التالية كيفية تعيين قيم التاريخ / الوقت إلى خصائص المحور:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## كيفية تنسيق قيمة رقم المحور

يوضح مثال التعليمات البرمجية التالية كيفية تغيير تنسيق الأرقام على محور القيمة:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## كيفية تعيين حدود المحور

تمثل فئة `AxisBound` حدا أدنى أو أقصى لقيم المحور. يمكن تحديد ملزمة كقيمة رقمية أو تاريخ-وقت أو قيمة "تلقائية" خاصة.

يوضح مثال التعليمات البرمجية التالية كيفية تعيين حدود محور:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## كيفية تعيين وحدة الفاصل الزمني بين التسميات

يوضح مثال التعليمات البرمجية التالية كيفية تعيين وحدة الفاصل الزمني بين التسميات على محور:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## كيفية إخفاء محور الرسم البياني

إذا كنت تريد إظهار محور المخطط أو إخفاؤه، فيمكنك ببساطة تحقيق ذلك عن طريق تعيين قيمة خاصية المجموعة المخفية.

يوضح مثال الكود التالي كيفية إخفاء المحور الصادي للمخطط:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## كيفية محاذاة تسمية المخطط

إذا كنت ترغب في تعيين محاذاة نص للتسميات متعددة الأسطر، يمكنك ببساطة تحقيق ذلك عن طريق تعيين قيمة الخاصية [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). يوضح مثال التعليمات البرمجية التالية كيفية وضع علامة محاذاة التسمية.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
