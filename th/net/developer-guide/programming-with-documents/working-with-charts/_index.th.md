---
title: การทำงานกับแผนภูมิใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับแผนภูมิ
linktitle: การทำงานกับแผนภูมิ
description: "ข้อมูลเบื้องต้นเกี่ยวกับคุณลักษณะแผนภูมิ วิธีสร้างและจัดการแผนภูมิโดยใช้ C#"
type: docs
weight: 310
url: /th/net/working-with-charts/
---

มีการเพิ่มวิธี [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) ใหม่ลงในคลาส [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) มาดูวิธีแทรกแผนภูมิคอลัมน์อย่างง่ายลงในเอกสารโดยใช้วิธี [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/)

## วิธีแทรกแผนภูมิ

ในส่วนนี้ เราจะได้เรียนรู้วิธีแทรกแผนภูมิลงในเอกสาร

### แทรกแผนภูมิคอลัมน์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกแผนภูมิคอลัมน์:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

รหัสให้ผลลัพธ์ดังต่อไปนี้:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


มีโอเวอร์โหลดที่แตกต่างกันสี่แบบสำหรับวิธีการเพิ่มแบบอนุกรม ซึ่งเปิดเผยให้ครอบคลุมแหล่งข้อมูลรูปแบบต่างๆ ที่เป็นไปได้ทั้งหมดสำหรับแผนภูมิทุกประเภท:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

รหัสให้ผลลัพธ์ดังต่อไปนี้:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### แทรกแผนภูมิกระจาย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกแผนภูมิกระจาย:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

รหัสให้ผลลัพธ์ดังต่อไปนี้:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### แทรกแผนภูมิพื้นที่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกแผนภูมิพื้นที่:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

รหัสให้ผลลัพธ์ดังต่อไปนี้:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### แทรกแผนภูมิฟอง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกแผนภูมิฟอง:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

รหัสให้ผลลัพธ์ดังต่อไปนี้:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## การทำงานกับแผนภูมิผ่านวัตถุ `Shape.Chart`

เมื่อแทรกแผนภูมิและเติมข้อมูลแล้ว คุณจะสามารถเปลี่ยนรูปลักษณ์ได้ คุณสมบัติ `Shape.Chart` มีตัวเลือกที่เกี่ยวข้องกับแผนภูมิทั้งหมดที่มีอยู่ใน API สาธารณะ

ตัวอย่างเช่น เปลี่ยนชื่อแผนภูมิหรือลักษณะการทำงานของคำอธิบายแผนภูมิ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

รหัสสร้างผลลัพธ์ดังต่อไปนี้:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## วิธีทำงานกับ ChartSeriesCollection ของแผนภูมิ

มาดูคอลเลกชัน [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) กันดีกว่า ชุดแผนภูมิทั้งหมดมีอยู่ในคอลเลกชัน [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) ซึ่งก็คือ **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

คุณสามารถลบซีรีส์ทีละรายการหรือล้างซีรีส์ทั้งหมด รวมถึงเพิ่มซีรี่ส์ใหม่ได้หากจำเป็น แผนภูมิที่แทรกใหม่มีชุดข้อมูลเริ่มต้นบางชุดที่เพิ่มลงในคอลเลกชันนี้ หากต้องการลบออกคุณต้องเรียกใช้วิธี **แผนภูมิซีรีส์.เคลียร์()**

## การทำงานกับคลาส ChartSeries เดี่ยว

ต่อไปนี้เป็นวิธีทำงานกับซีรีส์เฉพาะ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


[ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) เดียวทั้งหมดมีตัวเลือก [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) เริ่มต้น โปรดลองใช้รหัสต่อไปนี้เพื่อเปลี่ยนแปลง:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## วิธีทำงานกับ Single ChartDataPoint ของ `ChartSeries`

การใช้ [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) คุณสามารถปรับแต่งการจัดรูปแบบของจุดข้อมูลจุดเดียวของชุดแผนภูมิได้:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## วิธีทำงานกับ ChartDataLabel ของ ChartSeries เดี่ยว

การใช้ [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) ทำให้คุณสามารถระบุการจัดรูปแบบของป้ายกำกับข้อมูลเดียวของชุดแผนภูมิได้ เช่น แสดง/ซ่อน LegendKey, CategoryName, SeriesName, Value ฯลฯ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## วิธีกำหนดตัวเลือกเริ่มต้นสำหรับ ChartDataLabels ของ ChartSeries

คลาส [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) กำหนดคุณสมบัติที่สามารถใช้เพื่อตั้งค่าตัวเลือกเริ่มต้นสำหรับ **ChartDataLabels** สำหรับแผนภูมิ **Series** คุณสมบัติเหล่านี้ได้แก่ ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue ฯลฯ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## วิธีจัดรูปแบบป้ายข้อมูลแผนภูมิจำนวน

การใช้ [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/) ทำให้คุณสามารถระบุการจัดรูปแบบตัวเลขของป้ายกำกับข้อมูลเดียวของแผนภูมิได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีจัดรูปแบบป้ายกำกับข้อมูลจำนวนหนึ่ง:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## วิธีการตั้งค่าคุณสมบัติแกนแผนภูมิ

หากคุณต้องการทำงานกับแกนแผนภูมิ การปรับขนาด และหน่วยแสดงผลสำหรับแกนค่า โปรดใช้คลาส [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/) และ [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีกำหนดคุณสมบัติแกน X และ Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### วิธีการตั้งค่าเวลา Date ของ Axis

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าวันที่/เวลาให้กับคุณสมบัติของแกน:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### วิธีจัดรูปแบบค่าตัวเลขของแกน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเปลี่ยนรูปแบบของตัวเลขบนแกนค่า:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### วิธีกำหนดขอบเขตของแกน

คลาส `AxisBound` แสดงถึงขอบเขตต่ำสุดหรือสูงสุดของค่าแกน ขอบเขตสามารถระบุเป็นตัวเลข วันที่-เวลา หรือค่า "อัตโนมัติ" พิเศษได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าขอบเขตของแกน:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### วิธีการตั้งค่าหน่วยช่วงเวลาระหว่างป้ายกำกับ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าหน่วยช่วงเวลาระหว่างป้ายกำกับบนแกน:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### วิธีซ่อนแกนแผนภูมิ

หากคุณต้องการแสดงหรือซ่อนแกนแผนภูมิ คุณสามารถทำได้โดยการตั้งค่าคุณสมบัติ `ChartAxis.Hidden`

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการซ่อนแกน Y ของแผนภูมิ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### วิธีจัดแนวฉลากแผนภูมิ

หากคุณต้องการตั้งค่าการจัดแนวข้อความสำหรับป้ายกำกับหลายบรรทัด คุณสามารถทำได้โดยการตั้งค่าคุณสมบัติ [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.การจัดตำแหน่ง**

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำเครื่องหมายการจัดตำแหน่งป้ายกำกับ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word จัดตำแหน่ง Chart Label ให้อยู่ตรงกลางตามค่าเริ่มต้น

{{% /alert %}}

## วิธีการตั้งค่าการเติมและการจัดรูปแบบเส้นขีด

สามารถตั้งค่าการจัดรูปแบบการเติมและเส้นขีดสำหรับชุดแผนภูมิ จุดข้อมูล และเครื่องหมายได้ ในการดำเนินการนี้ คุณจะต้องใช้คุณสมบัติของประเภท **ChartFormat** ในคลาส **ChartSeries**, **ChartDataPoint** และ **ChartMarker** รวมถึงนามแฝงสำหรับคุณสมบัติบางอย่าง เช่น ForeColor, BackColor, Visible และความโปร่งใสในคลาส `Stroke`

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าสีของซีรี่ส์:

{{< highlight csharp >}}

Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Column, 432, 252);

Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;

// Delete default generated series.
seriesColl.Clear();

// Create category names array.
string[] categories = new string[] { "AW Category 1", "AW Category 2" };

// Adding new series. Value and category arrays must be the same size.
ChartSeries series1 = seriesColl.Add("AW Series 1", categories, new double[] { 1, 2 });
ChartSeries series2 = seriesColl.Add("AW Series 2", categories, new double[] { 3, 4 });
ChartSeries series3 = seriesColl.Add("AW Series 3", categories, new double[] { 5, 6 });

// Set series color.
series1.Format.Fill.ForeColor = Color.Red;
series2.Format.Fill.ForeColor = Color.Yellow;
series3.Format.Fill.ForeColor = Color.Blue;

doc.Save(dir + "ColumnColor.docx");
{{< /highlight >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าสีและน้ำหนักของเส้น:

{{< highlight csharp >}}

Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Line, 432, 252);

Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;

// Delete default generated series.
seriesColl.Clear();

// Adding new series.
ChartSeries series1 = seriesColl.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6 },
	new double[] { 2.7, 3.2, 0.8 });
ChartSeries series2 = seriesColl.Add("AW Series 2", new double[] { 0.5, 1.5, 2.5 },
	new double[] { 3, 1, 2 });

// Set series color.
series1.Format.Stroke.ForeColor = Color.Red;
series1.Format.Stroke.Weight = 5;
series2.Format.Stroke.ForeColor = Color.LightGreen;
series2.Format.Stroke.Weight = 5;

doc.Save(dir + "LineColorAndWeight.docx");
{{< /highlight >}}
