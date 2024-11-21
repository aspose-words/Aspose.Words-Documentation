---
title: Làm việc với Biểu đồ trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với biểu đồ
linktitle: Làm việc với biểu đồ
description: "Giới thiệu tính năng Biểu đồ, cách tạo và thao tác biểu đồ bằng C#."
type: docs
weight: 310
url: /vi/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

Phương thức [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) mới đã được thêm vào lớp [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Vì vậy, hãy xem cách chèn biểu đồ cột đơn giản vào tài liệu bằng phương pháp [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/).

## Cách chèn biểu đồ

Trong phần này chúng ta sẽ tìm hiểu cách chèn biểu đồ vào tài liệu.

### Chèn biểu đồ cột

Ví dụ mã sau đây cho thấy cách chèn biểu đồ cột:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

Mã tạo ra kết quả sau:

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


Có bốn cách nạp chồng khác nhau cho phương pháp Thêm chuỗi, được đưa ra để bao gồm tất cả các biến thể có thể có của nguồn dữ liệu cho tất cả các loại biểu đồ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

Mã tạo ra kết quả sau:

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### Chèn biểu đồ phân tán

Ví dụ mã sau đây cho biết cách chèn biểu đồ tán xạ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

Mã tạo ra kết quả sau:

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### Chèn biểu đồ vùng

Ví dụ mã sau đây cho biết cách chèn biểu đồ vùng:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

Mã tạo ra kết quả sau:

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### Chèn biểu đồ bong bóng

Ví dụ mã sau đây cho biết cách chèn biểu đồ bong bóng:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

Mã tạo ra kết quả sau:

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## Làm việc với Biểu đồ thông qua đối tượng `Shape.Chart`

Sau khi biểu đồ được chèn và chứa đầy dữ liệu, bạn có thể thay đổi giao diện của biểu đồ. Thuộc tính `Shape.Chart` chứa tất cả các tùy chọn liên quan đến biểu đồ có sẵn thông qua API công khai.

Ví dụ: hãy thay đổi tiêu đề biểu đồ hoặc hành vi chú giải:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

Mã tạo ra kết quả sau:

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## Cách làm việc với ChartSeriesCollection of Chart

Hãy cùng nhìn vào bộ sưu tập [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/). Tất cả các chuỗi biểu đồ đều có sẵn thông qua bộ sưu tập [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/), là **IEnumerable**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

Bạn có thể xóa từng bộ một hoặc xóa tất cả chúng cũng như thêm một bộ mới nếu cần. Biểu đồ mới được chèn có một số chuỗi mặc định được thêm vào bộ sưu tập này. Để loại bỏ chúng, bạn cần gọi phương thức **biểu đồ.Series.Clear()**.

## Làm việc với lớp ChartSeries đơn

Đây là cách làm việc với một chuỗi cụ thể:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

Xin vui lòng xem kết quả dưới đây:

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


Tất cả [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) đơn lẻ đều có các tùy chọn [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) mặc định, vui lòng thử sử dụng đoạn mã sau để thay đổi chúng:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

Xin vui lòng xem kết quả dưới đây:

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## Cách làm việc với ChartDataPoint đơn của `ChartSeries`

Sử dụng [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/), bạn có thể tùy chỉnh định dạng của một điểm dữ liệu duy nhất trong chuỗi biểu đồ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

Xin vui lòng xem kết quả dưới đây:

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## Cách làm việc với ChartDataLabel của một ChartSeries đơn

Sử dụng [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/), bạn có thể chỉ định định dạng của một nhãn dữ liệu duy nhất của chuỗi biểu đồ, như hiển thị/ẩn LegendKey, CategoryName, SeriesName, Value, v.v.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

Xin vui lòng xem kết quả dưới đây:

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## Cách xác định các tùy chọn mặc định cho ChartDataLabels của ChartSeries

Lớp [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) xác định các thuộc tính có thể được sử dụng để đặt các tùy chọn mặc định cho **ChartDataLabels** cho **Series** biểu đồ. Các thuộc tính này bao gồm ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue, v.v.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

Xin vui lòng xem kết quả dưới đây:

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## Cách định dạng số nhãn dữ liệu biểu đồ

Sử dụng [NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/), bạn có thể chỉ định định dạng số của một nhãn dữ liệu duy nhất trên biểu đồ.

Ví dụ mã sau đây cho thấy cách định dạng một số nhãn dữ liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## Cách đặt thuộc tính trục biểu đồ

Nếu bạn muốn làm việc với trục biểu đồ, chia tỷ lệ và đơn vị hiển thị cho trục giá trị, vui lòng sử dụng các lớp [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/) và [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/).

Ví dụ mã sau đây cho thấy cách xác định thuộc tính trục X và Y:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### Cách đặt giá trị thời gian Date của trục

Ví dụ mã sau đây cho thấy cách đặt giá trị ngày/giờ cho thuộc tính trục:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### Cách định dạng giá trị số của trục

Ví dụ mã sau đây cho thấy cách thay đổi định dạng của số trên trục giá trị:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### Cách đặt giới hạn của trục

Lớp `AxisBound` biểu thị giới hạn tối thiểu hoặc tối đa của các giá trị trục. Giới hạn có thể được chỉ định dưới dạng giá trị số, ngày giờ hoặc giá trị "tự động" đặc biệt.

Ví dụ mã sau đây cho thấy cách đặt giới hạn của một trục:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### Cách đặt đơn vị khoảng thời gian giữa các nhãn

Ví dụ mã sau đây cho thấy cách đặt đơn vị khoảng giữa các nhãn trên một trục:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### Cách ẩn trục biểu đồ

Nếu bạn muốn hiển thị hoặc ẩn trục biểu đồ, bạn chỉ cần thực hiện điều này bằng cách đặt giá trị của thuộc tính `ChartAxis.Hidden`.

Ví dụ mã sau đây cho biết cách ẩn trục Y của biểu đồ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### Cách căn chỉnh nhãn biểu đồ

Nếu bạn muốn đặt căn chỉnh văn bản cho nhãn nhiều dòng, bạn chỉ cần đạt được điều này bằng cách đặt giá trị của thuộc tính [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.Căn chỉnh**.

Ví dụ mã sau đây cho thấy cách đánh dấu căn chỉnh nhãn:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word căn chỉnh Nhãn biểu đồ vào giữa theo mặc định.

{{% /alert %}}

## Cách đặt định dạng tô và nét

Định dạng điền và nét có thể được đặt cho chuỗi biểu đồ, điểm dữ liệu và điểm đánh dấu. Để thực hiện việc này, bạn cần sử dụng các thuộc tính của loại **ChartFormat** trong các lớp **ChartSeries**, **ChartDataPoint** và **ChartMarker**, cũng như các bí danh cho một số thuộc tính, chẳng hạn như ForeColor, BackColor, Visible và Transparency trong lớp `Stroke`.

Ví dụ mã sau đây cho biết cách đặt màu chuỗi:

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

Ví dụ mã sau đây cho thấy cách đặt màu và độ dày của dòng:

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
