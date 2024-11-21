---
title: C#에서 차트 작업
second_title: .NET용 Aspose.Words
articleTitle: 차트 작업
linktitle: 차트 작업
description: "차트 기능 소개, C#를 사용하여 차트를 만들고 조작하는 방법."
type: docs
weight: 310
url: /ko/net/working-with-charts/
timestamp: 2024-02-05-15-07-18
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 클래스에 새로운 [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) 메소드가 추가되었습니다. 그럼 [InsertChart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertchart/) 방식을 이용하여 간단한 세로 막대형 차트를 문서에 삽입하는 방법을 알아보겠습니다.

## 차트를 삽입하는 방법

이번 섹션에서는 문서에 차트를 삽입하는 방법을 알아봅니다.

### 기둥형 차트 삽입

다음 코드 예제에서는 세로 막대형 차트를 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertSimpleColumnChart.cs" >}}

코드는 다음과 같은 결과를 생성합니다

![create-column-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-1.png)


모든 차트 유형에 대해 가능한 모든 데이터 소스 변형을 포괄하기 위해 노출된 시리즈 Add 메서드에는 네 가지 오버로드가 있습니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-InsertColumnChart.cs" >}}

코드는 다음과 같은 결과를 생성합니다

![create-column-chart-from-datasource-aspose-words-net](/words/net/working-with-charts/working-with-charts-2.png)

### 분산형 차트 삽입

다음 코드 예제에서는 분산형 차트를 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertScatterChart-InsertScatterChart.cs" >}}

코드는 다음과 같은 결과를 생성합니다

![scatter-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-3.png)

### 영역 차트 삽입

다음 코드 예제에서는 영역 차트를 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertAreaChart-InsertAreaChart.cs" >}}

코드는 다음과 같은 결과를 생성합니다

![area-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-4.png)

### 거품형 차트 삽입

다음 코드 예제에서는 거품형 차트를 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-InsertBubbleChart-InsertBubbleChart.cs" >}}

코드는 다음과 같은 결과를 생성합니다

![bubble-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-5.png)

## `Shape.Chart` 객체를 통한 차트 작업

차트를 삽입하고 데이터로 채운 후에는 차트 모양을 변경할 수 있습니다. `Shape.Chart` 속성에는 공개 API를 통해 사용할 수 있는 모든 차트 관련 옵션이 포함되어 있습니다.

예를 들어 차트 제목이나 범례 동작을 변경해 보겠습니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateChartUsingShape-CreateChartUsingShape.cs" >}}

코드는 다음 결과를 생성합니다

![line-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-6.png)

## ChartSeries로 작업하는 방법차트 컬렉션

[ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) 컬렉션을 살펴보겠습니다. 모든 차트 시리즈는 **IEnumerable**인 [chart.Series](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/series/) 컬렉션을 통해 사용할 수 있습니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-CreateColumnChart-ChartSeriesCollection.cs" >}}

시리즈를 하나씩 제거하거나 모두 지우고 필요한 경우 새 시리즈를 추가할 수 있습니다. 새로 삽입된 차트에는 이 컬렉션에 일부 기본 계열이 추가되어 있습니다. 이를 제거하려면 **차트.시리즈.지우기()** 메서드를 호출해야 합니다.

## 단일 ChartSeries 클래스 작업

특정 시리즈로 작업하는 방법은 다음과 같습니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-WorkWithSingleChartSeries.cs" >}}

아래 결과를 확인하세요

![line-chart-chartseries-aspose-words-net](/words/net/working-with-charts/working-with-charts-7.png)


모든 단일 [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/)에는 기본 [ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/) 옵션이 있습니다. 다음 코드를 사용하여 변경해 보세요

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartSeries-ChartDataPoint.cs" >}}

아래 결과를 확인하세요

![line-chart-chartdatapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-8.png)

## `ChartSeries`의 단일 ChartDataPoint로 작업하는 방법

[ChartDataPoint](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint/)를 사용하면 차트 시리즈의 단일 데이터 포인트 형식을 사용자 정의할 수 있습니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithSingleChartDataPoint-WorkWithSingleChartDataPoint.cs" >}}

아래 결과를 확인하세요

![line-chart-datapoint-aspose-words-net](/words/net/working-with-charts/working-with-charts-9.png)

## 단일 ChartSeries의 ChartDataLabel로 작업하는 방법

[ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/)를 사용하면 LegendKey, CategoryName, SeriesName, Value 등 표시/숨기기와 같은 차트 시리즈의 단일 데이터 레이블 형식을 지정할 수 있습니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-WorkWithChartDataLabel.cs" >}}

아래 결과를 확인하세요

![bar-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-10.png)

## ChartSeries의 ChartDataLabels에 대한 기본 옵션을 정의하는 방법

[ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) 클래스는 차트 **Series**용 **ChartDataLabels**의 기본 옵션을 설정하는 데 사용할 수 있는 속성을 정의합니다. 이러한 속성에는 ShowCategoryName, ShowBubbleSize, ShowPercentage, ShowSeriesName, ShowValue 등이 포함됩니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkWithChartDataLabels-DefaultOptionsForDataLabels.cs" >}}

아래 결과를 확인하세요

![pie-chart-aspose-words-net](/words/net/working-with-charts/working-with-charts-11.png)

## 차트 데이터 레이블 수의 형식을 지정하는 방법

[NumberFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/numberformat/)를 사용하면 차트의 단일 데이터 레이블에 대한 숫자 형식을 지정할 수 있습니다.

다음 코드 예제에서는 데이터 레이블 번호의 형식을 지정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-ChartNumberFormat-FormatNumberofDataLabel.cs" >}}

## 차트 축 속성을 설정하는 방법

차트 축, 스케일링, 값 축의 표시 단위로 작업하려면 [ChartAxis](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisdisplayunit/), [AxisScaling](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisscaling/) 클래스를 사용하세요.

다음 코드 예제에서는 X 및 Y축 속성을 정의하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cs" >}}

### 축의 Date 시간 값을 설정하는 방법

다음 코드 예제에서는 축 속성에 날짜/시간 값을 설정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cs" >}}

### 축의 숫자 값 형식을 지정하는 방법

다음 코드 예제에서는 값 축의 숫자 형식을 변경하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cs" >}}

### 축 경계를 설정하는 방법

`AxisBound` 클래스는 축 값의 최소 또는 최대 경계를 나타냅니다. 경계는 숫자, 날짜-시간 또는 특수 "자동" 값으로 지정할 수 있습니다.

다음 코드 예제에서는 축 경계를 설정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cs" >}}

### 라벨 사이의 간격 단위를 설정하는 방법

다음 코드 예제에서는 축의 레이블 간 간격 단위를 설정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cs" >}}

### 차트 축을 숨기는 방법

차트 축을 표시하거나 숨기려면 `ChartAxis.Hidden` 속성 값을 설정하면 됩니다.

다음 코드 예제에서는 차트의 Y축을 숨기는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cs" >}}

### 차트 레이블을 정렬하는 방법

여러 줄 레이블에 대한 텍스트 정렬을 설정하려면 [TickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/ticklabels/)**.조정** 속성 값을 설정하면 됩니다.

다음 코드 예제에서는 레이블 정렬을 선택하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cs" >}}

{{% alert color="primary" %}}

Microsoft Word는 기본적으로 차트 라벨을 중앙에 정렬합니다.

{{% /alert %}}

## 채우기 및 획 서식을 설정하는 방법

차트 시리즈, 데이터 포인트 및 마커에 대해 채우기 및 획 서식을 설정할 수 있습니다. 이렇게 하려면 **ChartSeries**, **ChartDataPoint** 및 **ChartMarker** 클래스의 **ChartFormat** 유형 속성과 `Stroke` 클래스의 ForeColor, BackColor, Visible 및 Transparency와 같은 일부 속성에 대한 별칭을 사용해야 합니다.

다음 코드 예제에서는 계열 색상을 설정하는 방법을 보여줍니다

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

다음 코드 예제에서는 선 색상과 두께를 설정하는 방법을 보여줍니다

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
