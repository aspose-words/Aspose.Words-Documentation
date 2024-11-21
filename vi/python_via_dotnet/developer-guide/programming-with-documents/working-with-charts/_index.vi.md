---
title: Làm việc với Biểu đồ trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với biểu đồ
linktitle: Làm việc với biểu đồ
description: "Tạo và sửa đổi các loại biểu đồ khác nhau trong tài liệu bằng Python."
type: docs
weight: 310
url: /vi/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

Phương thức [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) mới đã được thêm vào lớp [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Vì vậy, hãy xem cách chèn biểu đồ cột đơn giản vào tài liệu bằng phương thức [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/):

### Cách chèn biểu đồ

Trong phần này chúng ta sẽ tìm hiểu cách chèn biểu đồ vào tài liệu.

### Chèn biểu đồ cột

Ví dụ mã sau đây cho thấy cách chèn biểu đồ cột:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

Mã tạo ra kết quả sau:

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


Có các phương thức [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) và [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) được trình bày để bao gồm tất cả các biến thể nguồn dữ liệu có thể có cho tất cả các loại biểu đồ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

Mã tạo ra kết quả sau:

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### Chèn biểu đồ phân tán

Ví dụ dưới đây cho thấy cách chèn biểu đồ tán xạ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

Mã tạo ra kết quả sau:

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### Chèn biểu đồ vùng

Ví dụ mã sau đây cho biết cách chèn biểu đồ vùng:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

Mã tạo ra kết quả sau:

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### Chèn biểu đồ bong bóng

Ví dụ mã sau đây cho biết cách chèn biểu đồ bong bóng:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

Mã tạo ra kết quả sau:

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Làm việc với Biểu đồ thông qua đối tượng Shape.chart

Sau khi biểu đồ được chèn và chứa đầy dữ liệu, bạn có thể thay đổi giao diện của biểu đồ. Thuộc tính [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) chứa tất cả các tùy chọn liên quan đến biểu đồ có sẵn thông qua API công khai.

Ví dụ: hãy thay đổi hành vi tiêu đề hoặc chú giải [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

Mã tạo ra kết quả sau:

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## Cách làm việc với ChartSeriesCollection of Chart

Hãy cùng nhìn vào bộ sưu tập [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/). Tất cả các chuỗi biểu đồ đều có sẵn thông qua bộ sưu tập [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

Bạn có thể xóa từng bộ một hoặc xóa tất cả chúng cũng như thêm một bộ mới nếu cần. Biểu đồ mới được chèn có một số chuỗi mặc định được thêm vào bộ sưu tập này. Để loại bỏ chúng, bạn cần gọi phương thức [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/).

## Làm việc với lớp ChartSeries đơn

Đây là cách làm việc với một chuỗi cụ thể.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

Xin vui lòng xem kết quả dưới đây:

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


Tất cả [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) đơn lẻ đều có các tùy chọn [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) mặc định, vui lòng thử sử dụng đoạn mã sau để thay đổi chúng:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

Xin vui lòng xem kết quả dưới đây:

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## Cách làm việc với ChartDataPoint đơn của `ChartSeries`

Sử dụng [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/), bạn có thể tùy chỉnh định dạng của một điểm dữ liệu duy nhất trong chuỗi biểu đồ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

Xin vui lòng xem kết quả dưới đây:

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## Cách làm việc với ChartDataLabel của một ChartSeries đơn

Sử dụng [ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/), bạn có thể chỉ định định dạng của một nhãn dữ liệu duy nhất của chuỗi biểu đồ, như hiển thị/ẩn LegendKey, CategoryName, SeriesName, Value, v.v.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

Xin vui lòng xem kết quả dưới đây:

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## Cách xác định các tùy chọn mặc định cho ChartDataLabels của ChartSeries

Lớp [ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) xác định các thuộc tính có thể được sử dụng để đặt các tùy chọn mặc định cho [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/) cho Chuỗi biểu đồ. Các thuộc tính này bao gồm [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/), v.v.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

Xin vui lòng xem kết quả dưới đây:

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## Cách định dạng số nhãn dữ liệu biểu đồ

Sử dụng [ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/), bạn có thể chỉ định định dạng số của một nhãn dữ liệu duy nhất trên biểu đồ.

Ví dụ mã sau đây cho thấy cách định dạng một số nhãn dữ liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## Cách đặt thuộc tính trục biểu đồ

Nếu bạn muốn làm việc với trục biểu đồ, chia tỷ lệ và đơn vị hiển thị cho trục giá trị, vui lòng sử dụng các lớp [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/) và [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/).

Ví dụ mã sau đây cho thấy cách xác định thuộc tính trục X và Y:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### Cách đặt giá trị thời gian Date của trục

Ví dụ mã sau đây cho thấy cách đặt giá trị ngày/giờ cho thuộc tính trục:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### Cách định dạng giá trị số của trục

Ví dụ mã sau đây cho thấy cách thay đổi định dạng của số trên trục giá trị:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### Cách đặt giới hạn của trục

Lớp [AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) biểu thị giới hạn tối thiểu hoặc tối đa của các giá trị trục. Giới hạn có thể được chỉ định dưới dạng giá trị số, ngày giờ hoặc giá trị "tự động" đặc biệt.

Ví dụ mã sau đây cho thấy cách đặt giới hạn của một trục:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### Cách đặt đơn vị khoảng thời gian giữa các nhãn

Ví dụ mã sau đây cho thấy cách đặt đơn vị khoảng giữa các nhãn trên một trục:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### Cách ẩn trục biểu đồ

Nếu bạn muốn hiển thị hoặc ẩn trục biểu đồ, bạn chỉ cần thực hiện điều này bằng cách đặt giá trị của thuộc tính [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/).

Ví dụ mã sau đây cho biết cách ẩn trục Y của biểu đồ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### Cách căn chỉnh nhãn biểu đồ

Nếu bạn muốn đặt căn chỉnh văn bản cho nhãn nhiều dòng, bạn chỉ cần đạt được điều này bằng cách đặt giá trị của thuộc tính [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/).

Ví dụ mã sau đây cho thấy cách đánh dấu căn chỉnh nhãn:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word căn chỉnh Nhãn biểu đồ vào giữa theo mặc định.

{{% /alert %}}

## Cách đặt định dạng tô và nét

Định dạng điền và nét có thể được đặt cho chuỗi biểu đồ, điểm dữ liệu và điểm đánh dấu. Để thực hiện việc này, bạn cần sử dụng các thuộc tính của loại [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) trong các lớp [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) và [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/), cũng như các bí danh cho một số thuộc tính, chẳng hạn như [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) và [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/) trong lớp [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/).

Ví dụ mã sau đây cho biết cách đặt màu chuỗi:

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

Ví dụ mã sau đây cho thấy cách đặt màu và độ dày của dòng:

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
