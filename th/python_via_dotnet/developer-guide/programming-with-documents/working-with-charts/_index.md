---
title: การทำงานกับแผนภูมิใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับแผนภูมิ
linktitle: การทำงานกับแผนภูมิ
description: "สร้างและแก้ไขแผนภูมิประเภทต่างๆ ในเอกสารโดยใช้ Python"
type: docs
weight: 310
url: /th/python-net/working-with-charts/
---

มีการเพิ่มวิธี [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) ใหม่ลงในคลาส [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) มาดูวิธีแทรกแผนภูมิคอลัมน์อย่างง่ายลงในเอกสารโดยใช้วิธี [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/):

### วิธีแทรกแผนภูมิ

ในส่วนนี้ เราจะได้เรียนรู้วิธีแทรกแผนภูมิลงในเอกสาร

### แทรกแผนภูมิคอลัมน์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกแผนภูมิคอลัมน์:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

รหัสให้ผลลัพธ์ดังต่อไปนี้:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


มีวิธี [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) และ [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) ซึ่งเปิดเผยให้ครอบคลุมแหล่งข้อมูลรูปแบบต่างๆ ที่เป็นไปได้สำหรับแผนภูมิทุกประเภท:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

รหัสให้ผลลัพธ์ดังต่อไปนี้:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### แทรกแผนภูมิกระจาย

ตัวอย่างด้านล่างแสดงวิธีการแทรกแผนภูมิกระจาย

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

รหัสให้ผลลัพธ์ดังต่อไปนี้:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### แทรกแผนภูมิพื้นที่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกแผนภูมิพื้นที่:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

รหัสให้ผลลัพธ์ดังต่อไปนี้:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### แทรกแผนภูมิฟอง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกแผนภูมิฟอง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

รหัสให้ผลลัพธ์ดังต่อไปนี้:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## การทำงานกับแผนภูมิผ่านวัตถุ Shape.chart

เมื่อแทรกแผนภูมิและเติมข้อมูลแล้ว คุณจะสามารถเปลี่ยนรูปลักษณ์ได้ คุณสมบัติ [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) มีตัวเลือกที่เกี่ยวข้องกับแผนภูมิทั้งหมดที่มีอยู่ใน API สาธารณะ

ตัวอย่างเช่น เรามาเปลี่ยนชื่อ [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) หรือลักษณะการทำงานของคำอธิบาย:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

รหัสสร้างผลลัพธ์ดังต่อไปนี้:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## วิธีทำงานกับ ChartSeriesCollection ของแผนภูมิ

มาดูคอลเลกชัน [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) กันดีกว่า ชุดแผนภูมิทั้งหมดมีอยู่ในคอลเลกชัน [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

คุณสามารถลบซีรีส์ทีละรายการหรือล้างซีรีส์ทั้งหมด รวมถึงเพิ่มซีรี่ส์ใหม่ได้หากจำเป็น แผนภูมิที่แทรกใหม่มีชุดข้อมูลเริ่มต้นบางชุดที่เพิ่มลงในคอลเลกชันนี้ หากต้องการลบออกคุณต้องเรียกใช้วิธี [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/)

## การทำงานกับคลาส ChartSeries เดี่ยว

ต่อไปนี้เป็นวิธีการทำงานกับซีรีส์ใดซีรีส์หนึ่ง

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


[ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) เดียวทั้งหมดมีตัวเลือก [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) เริ่มต้น โปรดลองใช้รหัสต่อไปนี้เพื่อเปลี่ยนแปลง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## วิธีทำงานกับ Single ChartDataPoint ของ `ChartSeries`

การใช้ [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) คุณสามารถปรับแต่งการจัดรูปแบบของจุดข้อมูลจุดเดียวของชุดแผนภูมิได้:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## วิธีทำงานกับ ChartDataLabel ของ ChartSeries เดี่ยว

การใช้ [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) ทำให้คุณสามารถระบุการจัดรูปแบบของป้ายกำกับข้อมูลเดียวของชุดแผนภูมิ เช่น แสดง/ซ่อน LegendKey, CategoryName, SeriesName, Value เป็นต้น

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## วิธีกำหนดตัวเลือกเริ่มต้นสำหรับ ChartDataLabels ของ ChartSeries

คลาส [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) กำหนดคุณสมบัติที่สามารถใช้เพื่อตั้งค่าตัวเลือกเริ่มต้นสำหรับ [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) สำหรับชุดแผนภูมิ คุณสมบัติเหล่านี้ ได้แก่ [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) เป็นต้น

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## วิธีจัดรูปแบบป้ายข้อมูลแผนภูมิจำนวน

การใช้ [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/) ทำให้คุณสามารถระบุการจัดรูปแบบตัวเลขของป้ายกำกับข้อมูลเดียวของแผนภูมิได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีจัดรูปแบบป้ายกำกับข้อมูลจำนวนหนึ่ง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## วิธีการตั้งค่าคุณสมบัติแกนแผนภูมิ

หากคุณต้องการทำงานกับแกนแผนภูมิ การปรับขนาด และหน่วยการแสดงผลสำหรับแกนค่า โปรดใช้คลาส [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) และ [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีกำหนดคุณสมบัติแกน X และ Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### วิธีการตั้งค่าเวลา Date ของ Axis

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าวันที่/เวลาให้กับคุณสมบัติของแกน:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### วิธีจัดรูปแบบค่าตัวเลขของแกน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเปลี่ยนรูปแบบของตัวเลขบนแกนค่า:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### วิธีกำหนดขอบเขตของแกน

คลาส [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) แสดงถึงขอบเขตต่ำสุดหรือสูงสุดของค่าแกน ขอบเขตสามารถระบุเป็นตัวเลข วันที่-เวลา หรือค่า "อัตโนมัติ" พิเศษได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าขอบเขตของแกน:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### วิธีการตั้งค่าหน่วยช่วงเวลาระหว่างป้ายกำกับ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าหน่วยช่วงเวลาระหว่างป้ายกำกับบนแกน:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### วิธีซ่อนแกนแผนภูมิ

หากคุณต้องการแสดงหรือซ่อนแกนแผนภูมิ คุณสามารถทำได้โดยการตั้งค่าคุณสมบัติ [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการซ่อนแกน Y ของแผนภูมิ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### วิธีจัดแนวฉลากแผนภูมิ

หากคุณต้องการตั้งค่าการจัดแนวข้อความสำหรับป้ายกำกับหลายบรรทัด คุณสามารถทำได้โดยการตั้งค่าคุณสมบัติ [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำเครื่องหมายการจัดตำแหน่งป้ายกำกับ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word จัดตำแหน่งป้ายแผนภูมิให้อยู่ตรงกลางตามค่าเริ่มต้น

{{% /alert %}}

## วิธีการตั้งค่าการเติมและการจัดรูปแบบเส้นขีด

สามารถตั้งค่าการจัดรูปแบบการเติมและเส้นขีดสำหรับชุดแผนภูมิ จุดข้อมูล และเครื่องหมายได้ ในการดำเนินการนี้ คุณจะต้องใช้คุณสมบัติของประเภท [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) ในคลาส [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) และ [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) รวมถึงนามแฝงสำหรับคุณสมบัติบางอย่าง เช่น [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) และ [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) ในคลาส [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าสีของซีรี่ส์:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_chart(aw.drawing.charts.ChartType.COLUMN, 432, 252)

chart = shape.chart
seriesColl = chart.series

# Delete default generated series.
seriesColl.clear()

# Create category names array.
categories = [ "AW Category 1", "AW Category 2" ]

# Adding new series. Value and category arrays must be the same size.
series1 = seriesColl.add("AW Series 1", categories, [ 1, 2 ])
series2 = seriesColl.add("AW Series 2", categories, [ 3, 4 ])
series3 = seriesColl.add("AW Series 3", categories, [ 5, 6 ])

# Set series color.
series1.format.fill.fore_color = drawing.Color.red
series2.format.fill.fore_color = drawing.Color.yellow
series3.format.fill.fore_color = drawing.Color.blue

doc.save(docs_base.artifacts_dir + "WorkingWithCharts.set_series_color.docx")
{{< /highlight >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าสีและน้ำหนักของเส้น:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_chart(aw.drawing.charts.ChartType.LINE, 432, 252)

chart = shape.chart
seriesColl = chart.series

# Delete default generated series.
seriesColl.clear()

# Adding new series.
series1 = seriesColl.add_double("AW Series 1", [ 0.7, 1.8, 2.6 ], [ 2.7, 3.2, 0.8 ])
series2 = seriesColl.add_double("AW Series 2", [ 0.5, 1.5, 2.5 ], [ 3, 1, 2 ])

# Set series color.
series1.format.stroke.fore_color = drawing.Color.red
series1.format.stroke.weight = 5
series2.format.stroke.fore_color = drawing.Color.light_green
series2.format.stroke.weight = 5

doc.save(docs_base.artifacts_dir + "WorkingWithCharts.line_color_and_weight.docx")
{{< /highlight >}}
