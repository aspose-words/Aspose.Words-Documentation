---
title: Python에서 차트 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 차트 작업
linktitle: 차트 작업
description: "Python를 사용하여 문서에서 다양한 유형의 차트를 만들고 수정합니다."
type: docs
weight: 310
url: /ko/python-net/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 클래스에 새로운 [insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) 메소드가 추가되었습니다. 이제 [DocumentBuilder.insert_chart](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_chart/) 메서드를 사용하여 간단한 세로 막대형 차트를 문서에 삽입하는 방법을 살펴보겠습니다

### 차트를 삽입하는 방법

이번 섹션에서는 문서에 차트를 삽입하는 방법을 알아봅니다.

### 기둥형 차트 삽입

다음 코드 예제에서는 세로 막대형 차트를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertSimpleColumnChart.py" >}}

코드는 다음과 같은 결과를 생성합니다

![create-column-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-1.png)


모든 차트 유형에 대해 가능한 모든 데이터 소스 변형을 포괄하기 위해 공개된 [add](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add/), [add_double](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_double/) 및 [add_date](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/add_date/) 방법이 있습니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertColumnChart.py" >}}

코드는 다음과 같은 결과를 생성합니다

![create-column-chart-from-datasource-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-2.png)

### 분산형 차트 삽입

아래 예에서는 분산형 차트를 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertScatterChart.py" >}}

코드는 다음과 같은 결과를 생성합니다

![scatter-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-3.png)

### 영역 차트 삽입

다음 코드 예제에서는 영역 차트를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertAreaChart.py" >}}

코드는 다음과 같은 결과를 생성합니다

![area-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-4.png)

### 거품형 차트 삽입

다음 코드 예제에서는 거품형 차트를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-InsertBubbleChart.py" >}}

코드는 다음과 같은 결과를 생성합니다

![bubble-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-5.png)

## Shape.chart 객체를 통한 차트 작업

차트를 삽입하고 데이터로 채운 후에는 차트 모양을 변경할 수 있습니다. [Shape.chart](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/chart/) 속성에는 공개 API를 통해 사용할 수 있는 모든 차트 관련 옵션이 포함되어 있습니다.

예를 들어 [Chart](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/) 제목이나 범례 동작을 변경해 보겠습니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-CreateChartUsingShape.py" >}}

코드는 다음 결과를 생성합니다

![line-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-6.png)

## ChartSeries로 작업하는 방법차트 컬렉션

[ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) 컬렉션을 살펴보겠습니다. 모든 차트 시리즈는 [Chart.series](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series/) 컬렉션을 통해 제공됩니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartSeriesCollection.py" >}}

시리즈를 하나씩 제거하거나 모두 지우고 필요한 경우 새 시리즈를 추가할 수 있습니다. 새로 삽입된 차트에는 이 컬렉션에 일부 기본 계열이 추가되어 있습니다. 이를 제거하려면 [chart.series.clear()](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriescollection/clear/) 메서드를 호출해야 합니다.

## 단일 ChartSeries 클래스 작업

특정 시리즈로 작업하는 방법은 다음과 같습니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartSeries.py" >}}

아래 결과를 확인하세요

![line-chart-chartseries-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-7.png)


모든 단일 [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/)에는 기본 [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) 옵션이 있습니다. 다음 코드를 사용하여 변경해 보세요

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-ChartDataPoint.py" >}}

아래 결과를 확인하세요

![line-chart-chartdatapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-8.png)

## `ChartSeries`의 단일 ChartDataPoint로 작업하는 방법

[ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/)를 사용하면 차트 시리즈의 단일 데이터 포인트 형식을 사용자 정의할 수 있습니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithSingleChartDataPoint.py" >}}

아래 결과를 확인하세요

![line-chart-datapoint-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-9.png)

## 단일 ChartSeries의 ChartDataLabel로 작업하는 방법

[ChartDataLabel](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/)를 사용하면 LegendKey, CategoryName, SeriesName, Value 등 표시/숨기기와 같은 차트 시리즈의 단일 데이터 레이블 형식을 지정할 수 있습니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-WorkWithChartDataLabel.py" >}}

아래 결과를 확인하세요

![bar-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-10.png)

## ChartSeries의 ChartDataLabels에 대한 기본 옵션을 정의하는 방법

[ChartDataLabelCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/) 클래스는 차트 시리즈용 [ChartDataLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/)의 기본 옵션을 설정하는 데 사용할 수 있는 속성을 정의합니다. 이러한 속성에는 [show_category_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_category_name/), [show_bubble_size](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_bubble_size/), [show_percentage](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_percentage/), [show_series_name](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_series_name/), [show_value](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabelcollection/show_value/) 등이 포함됩니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefaultOptionsForDataLabels.py" >}}

아래 결과를 확인하세요

![pie-chart-aspose-words-net](/words/python-net/working-with-charts/working-with-charts-11.png)

## 차트 데이터 레이블 수의 형식을 지정하는 방법

[ChartDataLabel.number_format](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatalabel/number_format/)를 사용하면 차트의 단일 데이터 레이블에 대한 숫자 형식을 지정할 수 있습니다.

다음 코드 예제에서는 데이터 레이블 번호의 형식을 지정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-FormatNumberOfDataLabel.py" >}}

## 차트 축 속성을 설정하는 방법

차트 축, 스케일링, 값 축의 표시 단위로 작업하려면 [ChartAxis](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisdisplayunit/), [AxisScaling](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisscaling/) 클래스를 사용하세요.

다음 코드 예제에서는 X 및 Y축 속성을 정의하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-DefineXYAxisProperties.py" >}}

### 축의 Date 시간 값을 설정하는 방법

다음 코드 예제에서는 축 속성에 날짜/시간 값을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetDateTimeValuesToAxis.py" >}}

### 축의 숫자 값 형식을 지정하는 방법

다음 코드 예제에서는 값 축의 숫자 형식을 변경하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetNumberFormatForAxis.py" >}}

### 축 경계를 설정하는 방법

[AxisBound](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisbound/) 클래스는 축 값의 최소 또는 최대 경계를 나타냅니다. 경계는 숫자, 날짜-시간 또는 특수 "자동" 값으로 지정할 수 있습니다.

다음 코드 예제에서는 축 경계를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetboundsOfAxis.py" >}}

### 라벨 사이의 간격 단위를 설정하는 방법

다음 코드 예제에서는 축의 레이블 간 간격 단위를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-SetIntervalUnitBetweenLabelsOnAxis.py" >}}

### 차트 축을 숨기는 방법

차트 축을 표시하거나 숨기려면 [ChartAxis.hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/hidden/) 속성 값을 설정하면 됩니다.

다음 코드 예제에서는 차트의 Y축을 숨기는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-HideChartAxis.py" >}}

### 차트 레이블을 정렬하는 방법

여러 줄 레이블에 대한 텍스트 정렬을 설정하려면 [ChartAxis.tick_label_alignment](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/tick_label_alignment/) 속성 값을 설정하면 됩니다.

다음 코드 예제에서는 레이블 정렬을 선택하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_charts-TickMultiLineLabelAlignment.py" >}}

{{% alert color="primary" %}}

MS Word에서는 기본적으로 차트 레이블을 가운데에 정렬합니다.

{{% /alert %}}

## 채우기 및 획 서식을 설정하는 방법

차트 시리즈, 데이터 포인트 및 마커에 대해 채우기 및 획 서식을 설정할 수 있습니다. 이렇게 하려면 [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), [ChartDataPoint](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapoint/) 및 [ChartMarker](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmarker/) 클래스의 [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) 유형 속성과 [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) 클래스의 [fore_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_color/), [back_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_color/), [visible](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/visible/) 및 [transparency](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/transparency/)와 같은 일부 속성에 대한 별칭을 사용해야 합니다.

다음 코드 예제에서는 계열 색상을 설정하는 방법을 보여줍니다

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

다음 코드 예제에서는 선 색상과 두께를 설정하는 방법을 보여줍니다

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
