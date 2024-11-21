---
title: Làm việc với biểu đồ trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với biểu đồ
linktitle: Làm việc với biểu đồ
description: "Giới thiệu về tính năng biểu đồ, cách tạo và thao tác với các biểu đồ bằng Java."
type: docs
weight: 310
url: /vi/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Phương pháp mới [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) đã được thêm vào lớp [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Vậy chúng ta sẽ xem cách chèn biểu đồ cột đơn giản vào tài liệu bằng phương pháp **chèn biểu đồ**.


## Làm thế nào để chèn một biểu đồ từ đầu bằng cách sử dụng Aspose.Words

Trong phần này chúng ta sẽ tìm hiểu cách chèn một biểu đồ vào tài liệu.

###  Chèn Sơ đồ Cột

Mã đoạn sau cho thấy cách chèn biểu đồ cột:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

Mã này cho kết quả sau:

![column-chart-aspose-words-java-1](working-with-charts-7.png)

Có bốn loại quá tải khác nhau cho phương thức 'Add', những phương thức này được mở rộng để bao gồm tất cả các biến thể có thể xảy ra của nguồn dữ liệu cho tất cả các loại biểu đồ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

Mã này tạo ra kết quả sau đây:

![column-chart-aspose-words-java-2](working-with-charts-8.png)

### Chèn biểu đồ phân tán

Mã sau đây cho thấy cách chèn biểu đồ phân tán:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

Mã này cho ra kết quả sau:

![scutter-chart-aspose-words-java](working-with-charts-9.png)

### Chèn biểu đồ khu vực

Mã ví dụ cho thấy cách chèn biểu đồ khu vực:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

Mã này cho ra kết quả sau đây:

![area-chart-aspose-words-java](working-with-charts-10.png)

### Chèn biểu đồ bong bóng

Mã ví dụ sau cho thấy cách chèn một biểu đồ bong bóng:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

Mã tạo ra kết quả sau đây:

![bubble-chart-aspose-words-java](working-with-charts-11.png)

## Làm việc với các biểu đồ thông qua `Shape.Chart` đối tượng

Khi bảng đã được chèn và điền bằng dữ liệu, bạn có thể thay đổi kiểu dáng của nó. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) thuộc tính chứa tất cả các tùy chọn liên quan đến đồ thị có sẵn thông qua công cộng API.

Ví dụ thay đổi tiêu đề biểu đồ hoặc hành vi huyền thoại:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

Mã tạo ra kết quả sau đây:

![line-chart-aspose-words-java-1](working-with-charts-1.png)

## Cách làm việc với ChartSeriesCollection của biểu đồ

Hãy xem vào [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) bộ sưu tập. Tất cả các loạt biểu đồ đều có sẵn thông qua bộ sưu tập [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries), là **Iterable**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

Bạn có thể loại bỏ từng tập theo lượt hoặc xóa tất cả chúng cũng như thêm một tập mới nếu cần thiết. Biểu đồ mới chèn có một số chuỗi mặc định được thêm vào bộ sưu tập này. Để bỏ chúng, bạn cần gọi phương pháp **chart.getSeries (). clear ()**.

## Làm việc với lớp Single ChartSeries

Dưới đây là cách để làm việc với một bộ sưu tập cụ thể.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

Xin xem kết quả ở bên dưới:

![line-chart-aspose-words-java-2](working-with-charts-2.png)

Tất cả các giá trị đơn [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) có các tùy chọn mặc định [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/), xin thử sử dụng mã sau để thay đổi chúng:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](working-with-charts-3.png)

## Cách làm việc với Single ChartDataPoint của một `ChartSeries`

Sử dụng [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/), bạn có thể tùy chỉnh định dạng của một điểm dữ liệu đơn trong chuỗi biểu đồ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

Hãy xem kết quả dưới đây:

![line-chart-aspose-words-java-4](working-with-charts-4.png)

## Làm thế nào để làm việc với ChartDataLabel của một Single ChartSeries

Sử dụng [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/), bạn có thể chỉ định định dạng của một nhãn dữ liệu duy nhất trên chuỗi biểu đồ, chẳng hạn như hiển thị / ẩn LegendKey, CategoryName, SeriesName, giá trị,.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

Xin vui lòng xem kết quả dưới đây:

![bar-chart-aspose-words-java](working-with-charts-5.png)

## Làm thế nào để xác định các tùy chọn mặc định cho ChartDataLabels của ChartSeries

Lớp [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) xác định các thuộc tính có thể được sử dụng để đặt tùy chọn mặc định cho **ChartDataLabels** cho Biểu đồ **Series**. Những tính năng này bao gồm setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue, vv

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

Xin vui lòng xem kết quả dưới đây:

![pie-chart-aspose-words-java](working-with-charts-6.png)

## Làm sao định dạng số của nhãn dữ liệu biểu đồ

Sử dụng thuộc tính [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat), bạn có thể chỉ định số dạng của một nhãn dữ liệu đơn trong biểu đồ.

Mã ví dụ sau cho thấy cách định dạng một số của nhãn dữ liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## Cách thiết lập thuộc tính trục biểu đồ

Nếu bạn muốn làm việc với trục biểu đồ, quy mô và đơn vị hiển thị cho trục giá trị, vui lòng sử dụng các lớp [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), và [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/).

Ví dụ sau cho thấy cách định nghĩa các thuộc tính trục X và Y:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### Cách Đặt Date Giá trị Thời gian của Trục

Mã ví dụ sau cho thấy cách đặt giá trị ngày/giờ cho các thuộc tính trục:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### Cách định dạng giá trị số của trục

Mã ví dụ sau cho thấy cách thay đổi định dạng số trên trục giá trị:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### Cách thiết lập giới hạn trục

Lớp `AxisBound` đại diện cho giới hạn tối thiểu hoặc tối đa của các giá trị trục. Bound có thể được chỉ định dưới dạng một giá trị số, ngày giờ hoặc một giá trị đặc biệt "auto".

Ví dụ mã sau cho thấy cách thiết lập ranh giới của một trục:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### Cách đặt khoảng thời gian giữa nhãn

Mã ví dụ sau cho thấy cách đặt khoảng thời gian giữa các nhãn trên trục:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### Cách ẩn trục biểu đồ

Nếu bạn muốn hiển thị hoặc ẩn trục biểu đồ, bạn có thể đơn giản đạt được điều này bằng cách đặt giá trị của thuộc tính `ChartAxis.Hidden`

Mã ví dụ bên dưới cho thấy cách ẩn trục Y của biểu đồ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Làm thế nào để sắp xếp nhãn biểu đồ

Nếu bạn muốn đặt một kiểu căn chỉnh văn bản cho các nhãn đa dòng, bạn có thể dễ dàng đạt được điều đó bằng cách đặt giá trị của [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) thuộc tính.

Mã ví dụ sau cho thấy cách đánh dấu căn nhãn:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word căn chỉnh nhãn đồ thị về phía giữa theo mặc định.

{{% /alert %}}

## Cách đặt định dạng màu lấp và nét viền

Định dạng điền và nét vẽ có thể được đặt cho các chuỗi biểu đồ, điểm dữ liệu và dấu hiệu. Để làm được điều này, bạn cần sử dụng các thuộc tính của kiểu `ChartFormat` trong lớp ChartSeries, ChartDataPoint và ChartMarker; cũng như các đại diện cho một số thuộc tính, chẳng hạn như ForeColor, BackColor, Visible và Transparency trong lớp `Stroke`.

Ví dụ về mã này cho thấy cách đặt màu của chuỗi:

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

Mã ví dụ cho thấy cách đặt màu và trọng lượng dòng:

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
