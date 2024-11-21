---
title: Cách Đặt Thuộc Tính Trục Biểu đồ trong C++
second_title: Aspose.Words cho C++
articleTitle: Cách Đặt Thuộc Tính Trục Biểu đồ
linktitle: Cách Đặt Thuộc Tính Trục Biểu đồ
description: "Điều chỉnh trục biểu đồ bằng C++."
type: docs
weight: 20
url: /vi/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

Nếu bạn muốn làm việc với các đơn vị trục biểu đồ, tỷ lệ và hiển thị cho trục giá trị, vui lòng sử dụng các lớp [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) và [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

Ví dụ mã sau đây cho thấy cách xác định các thuộc tính trục X Và Y:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## Cách Đặt Giá Trị Ngày-Giờ Của Trục

Ví dụ mã sau đây cho thấy cách đặt giá trị ngày/giờ thành thuộc tính trục:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## Cách Định Dạng Giá Trị Số Của Trục

Ví dụ mã sau đây cho thấy cách thay đổi định dạng của các số trên trục giá trị:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## Cách Đặt Giới hạn Của Trục

Lớp `AxisBound` đại diện cho giới hạn tối thiểu hoặc tối đa của các giá trị trục. Ràng buộc có thể được chỉ định dưới dạng số, ngày giờ hoặc giá trị "tự động" đặc biệt.

Ví dụ mã sau đây cho thấy cách đặt giới hạn của một trục:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## Cách Đặt Đơn vị Khoảng Giữa Các Nhãn

Ví dụ mã sau đây cho thấy cách đặt đơn vị khoảng giữa các nhãn trên một trục:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## Cách Ẩn Trục Biểu đồ

Nếu bạn muốn hiển thị hoặc ẩn trục biểu đồ, bạn chỉ cần đạt được điều này bằng cách đặt giá trị của thuộc tính set_Hidden.

Ví dụ mã sau đây cho thấy cách ẩn trục Y của biểu đồ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## Cách Căn Chỉnh Nhãn Biểu Đồ

Nếu bạn muốn đặt căn chỉnh văn bản cho nhãn nhiều dòng, bạn chỉ cần đạt được điều này bằng cách đặt giá trị của thuộc tính [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). Ví dụ mã sau đây cho thấy cách đánh dấu căn chỉnh nhãn.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
