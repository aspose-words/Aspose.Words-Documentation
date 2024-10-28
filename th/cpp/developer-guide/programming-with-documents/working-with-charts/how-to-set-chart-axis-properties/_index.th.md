---
title: วิธีการตั้งค่าคุณสมบัติแกนแผนภูมิในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: วิธีการตั้งค่าคุณสมบัติแกนแผนภูมิ
linktitle: วิธีการตั้งค่าคุณสมบัติแกนแผนภูมิ
description: "การปรับแต่งแกนแผนภูมิโดยใช้C++."
type: docs
weight: 20
url: /th/cpp/how-to-set-chart-axis-properties/
---

หากคุณต้องการทำงานกับแกนแผนภูมิการปรับขนาดและหน่วยแสดงผลสำหรับแกนค่าโปรดใช้[ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis),[AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit)และ[AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling)คลาส.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการกำหนดคุณสมบัติของแกน:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## วิธีการตั้งค่าวันที่-เวลาของแกน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าวันที่/เวลาเป็นคุณสมบัติของแกน:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## วิธีการจัดรูปแบบจำนวนค่าของแกน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปลี่ยนรูปแบบของตัวเลขบนแกนค่า:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## วิธีการกำหนดขอบเขตของแกน

คลาส`AxisBound`แสดงค่าต่ำสุดหรือสูงสุดของค่าแกน ผูกพันสามารถระบุเป็นตัวเลขวันที่เวลาหรือพิเศษ"อัตโนมัติ"ค่า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าขอบเขตของแกน:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## วิธีการตั้งค่าหน่วยช่วงเวลาระหว่างฉลาก

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าหน่วยช่วงเวลาระหว่างป้ายชื่อบนแกน:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## วิธีการซ่อนแกนแผนภูมิ

หากคุณต้องการแสดงหรือซ่อนแกนแผนภูมิคุณสามารถทำได้โดยการตั้งค่าของคุณสมบัติที่ซ่อ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการซ่อนแกนของแผนภูมิ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## วิธีการจัดแนวป้ายชื่อแผนภูมิ

หากต้องการตั้งค่าการจัดตำแหน่งข้อความสำหรับป้ายชื่อหลายบรรทัด คุณสามารถทำได้ง่ายๆ โดยตั้งค่าคุณสมบัติ [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/) ตัวอย่างโค้ดต่อไปนี้จะแสดงวิธีการเลือกการจัดตำแหน่งป้ายชื่อ.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
