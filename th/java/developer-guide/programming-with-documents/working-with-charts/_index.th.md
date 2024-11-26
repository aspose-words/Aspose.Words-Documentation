---
title: การทำงานกับแผนภูมิในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับแผนภูมิ
linktitle: การทำงานกับแผนภูมิ
description: "บทนำเกี่ยวกับคุณลักษณะแผนภูมิวิธีการสร้างและจัดการแผนภูมิโดยใช้Java."
type: docs
weight: 310
url: /th/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

วิธีการใหม่[insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double)ถูกเพิ่มเข้าไปในชั้นเรียน[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ดังนั้น,เรามาดูวิธีการแทรกแผนภูมิคอลัมน์ง่ายๆลงในเอกสารโดยใช้วิธีการ**insertChart**.


## วิธีการแทรกแผนภูมิจากรอยขีดข่วนโดยใช้Aspose.Words

ในส่วนนี้เราจะเรียนรู้วิธีการแทรกแผนภูมิลงในเอกสาร.

###  แทรกแผนภูมิคอลัมน์

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกแผนภูมิคอลัมน์:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

รหัสสร้างผลลัพธ์ต่อไปนี้:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

มีสี่โอเวอร์โหลดที่แตกต่างกันสำหรับวิธีการเพิ่มชุดซึ่งได้สัมผัสกับครอบคลุมทุกสายพันธุ์ที่เ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

รหัสสร้างผลลัพธ์ต่อไปนี้:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### แทรกแผนภูมิกระจาย

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกแผนภูมิกระจาย:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

รหัสสร้างผลลัพธ์ต่อไปนี้:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### แทรกแผนภูมิพื้นที่

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกแผนภูมิพื้นที่:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

รหัสสร้างผลลัพธ์ต่อไปนี้:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### แทรกแผนภูมิฟอง

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกแผนภูมิฟอง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

รหัสสร้างผลลัพธ์ต่อไปนี้:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## การทำงานกับแผนภูมิผ่าน`Shape.Chart`วัตถุ

เมื่อแผนภูมิถูกแทรกและเต็มไปด้วยข้อมูลที่คุณสามารถที่จะเปลี่ยนรูปลักษณ์ของมัน [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart)สถานที่ให้บริการประกอบด้วยตัวเลือกทั้งหมดที่เกี่ยวข้องกับแผนภูมิที่มีอยู่ผ่านสาธารณะAPI.

ตัวอย่างเช่นลองเปลี่ยนชื่อแผนภูมิหรือพฤติกรรมตำนาน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

รหัสสร้างผลลัพธ์ต่อไปนี้:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## วิธีการทำงานกับChartSeriesCollectionของแผนภูมิ

ลองดูใน[ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/)คอลเลกชัน ชุดแผนภูมิทั้งหมดสามารถใช้ได้ผ่านคอลเลกชัน[chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries)ซึ่งเป็น**Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

คุณสามารถลบชุดหนึ่งโดยหนึ่งหรือล้างทั้งหมดของพวกเขาเช่นเดียวกับการเพิ่มใหม่ถ้าจ แผนภูมิที่แทรกใหม่มีชุดค่าเริ่มต้นบางส่วนเพิ่มในคอลเล็กชันนี้ ในการลบออกคุณจะต้องเรียกวิธีการ**chart.getSeries().clear()**.

## การทำงานกับชั้นเดียวChartSeries

นี่คือวิธีการทำงานกับชุดโดยเฉพาะอย่างยิ่ง.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

ทั้งหมดเดียว[ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/)มีค่าเริ่มต้น[ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/)ตัวเลือก,โปรดลองใช้รหัสต่อไปนี้เพื่อเปลี่ยนพวกเขา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## วิธีการทำงานกับเดียวChartDataPointของ`ChartSeries`

โดยใช้[ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/)คุณสามารถปรับแต่งการจัดรูปแบบของจุดข้อมูลเดียวของชุดแผนภูมิ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## วิธีการทำงานกับChartDataLabelของเดียวChartSeries

โดยใช้[ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/)คุณสามารถระบุการจัดรูปแบบของฉลากข้อมูลเดียวของชุดแผนภูมิเช่นแสดง/ซ่อนLegendKey, CategoryName, SeriesName, ค่าฯลฯ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## วิธีการกำหนดตัวเลือกเริ่มต้นสำหรับChartDataLabelsของChartSeries

คลาส[ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/)กำหนดคุณสมบัติที่สามารถใช้เพื่อตั้งค่าตัวเลือกเริ่มต้นสำหรับ**ChartDataLabels**สำหรับแผนภูมิ**Series** คุณสมบัติเหล่านี้รวมถึงsetShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue ฯลฯ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

โปรดดูผลลัพธ์ด้านล่าง:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## วิธีการจัดรูปแบบจำนวนของฉลากข้อมูลแผนภูมิ

การใช้คุณสมบัติ[NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat)คุณสามารถระบุการจัดรูปแบบหมายเลขของฉลากข้อมูลเดียวของแผนภูมิ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการจัดรูปแบบหมายเลขของป้ายข้อมูล:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## วิธีการตั้งค่าคุณสมบัติแกนแผนภูมิ

หากคุณต้องการทำงานกับแกนแผนภูมิการปรับขนาดและหน่วยแสดงผลสำหรับแกนค่าโปรดใช้[ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/),[AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/)และ[AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/)คลาส.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการกำหนดคุณสมบัติของแกน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### วิธีการตั้งค่าDateTimeค่าของแกน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าวันที่/เวลาเป็นคุณสมบัติของแกน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### วิธีการจัดรูปแบบจำนวนค่าของแกน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปลี่ยนรูปแบบของตัวเลขบนแกนค่า:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### วิธีการกำหนดขอบเขตของแกน

คลาส`AxisBound`แสดงค่าต่ำสุดหรือสูงสุดของค่าแกน ผูกพันสามารถระบุเป็นตัวเลขวันที่เวลาหรือพิเศษ"อัตโนมัติ"ค่า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าขอบเขตของแกน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### วิธีการตั้งค่าหน่วยช่วงเวลาระหว่างฉลาก

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าหน่วยช่วงเวลาระหว่างป้ายชื่อบนแกน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### วิธีการซ่อนแกนแผนภูมิ

หากคุณต้องการแสดงหรือซ่อนแกนแผนภูมิคุณสามารถทำได้โดยการตั้งค่าของคุณสมบัติ`ChartAxis.Hidden`.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการซ่อนแกนของแผนภูมิ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### วิธีการจัดแนวป้ายชื่อแผนภูมิ

หากคุณต้องการตั้งค่าการจัดตำแหน่งข้อความสำหรับป้ายชื่อหลายบรรทัด คุณสามารถทำได้ง่ายๆ โดยตั้งค่าคุณสมบัติ [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการติ๊กการจัดตำแหน่งป้ายกำกับ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Wordจัดแนวป้ายกำกับแผนภูมิให้ตรงกลางตามค่าเริ่มต้น.

{{% /alert %}}

## วิธีการตั้งค่าการกรอกข้อมูลและการจัดรูปแบบจังหวะ

กรอกข้อมูลและการจัดรูปแบบจังหวะสามารถตั้งค่าสำหรับชุดแผนภูมิจุดข้อมูลและเครื่องห ในการทำเช่นนี้คุณต้องใช้คุณสมบัติของ`ChartFormat`ชนิดในชั้นเรียนChartSeries,ChartDataPointและChartMarkerรวมทั้งนามแฝงสำหรับคุณสมบัติบางอย่างเช่นForeColor,BackColor,ที่มองเห็นได้และความโปร่งใสในชั้นเรียน`Stroke`.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าสีชุด:

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

doc.Save("ColumnColor.docx");
{{< /highlight >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าสีและน้ำหนัก:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Line, 432, 252);

Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;

// Delete default generated series.
seriesColl.Clear();

// Adding new series.
ChartSeries series1 = seriesColl.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6 }, new double[] { 2.7, 3.2, 0.8 });
ChartSeries series2 = seriesColl.Add("AW Series 2", new double[] { 0.5, 1.5, 2.5 }, new double[] { 3, 1, 2 });

// Set series color.
series1.Format.Stroke.ForeColor = Color.Red;
series1.Format.Stroke.Weight = 5;
series2.Format.Stroke.ForeColor = Color.LightGreen;
series2.Format.Stroke.Weight = 5;

doc.Save("LineColorAndWeight.docx");
{{< /highlight >}}
