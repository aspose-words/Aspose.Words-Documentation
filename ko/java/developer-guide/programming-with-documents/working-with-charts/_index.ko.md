---
title: Java의 차트 작업
second_title: Aspose.WordsJava
articleTitle: 차트 작업
linktitle: 차트 작업
description: "차트 기능 소개,Java을 사용하여 차트를 만들고 조작하는 방법."
type: docs
weight: 310
url: /ko/java/working-with-charts/
timestamp: 2024-01-27-14-07-04
---

새로운[insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double)메서드가[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)클래스에 추가되었습니다. 자,**insertChart**방법을 사용하여 간단한 세로 막대형 차트를 문서에 삽입하는 방법을 살펴 보겠습니다.


## Aspose.Words을 사용하여 처음부터 차트를 삽입하는 방법

이 섹션에서는 문서에 차트를 삽입하는 방법을 배웁니다.

###  세로 막대형 차트 삽입

다음 코드 예제에서는 세로 막대형 차트를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

이 코드는 다음과 같은 결과를 생성합니다:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

시리즈 추가 방법에는 네 가지 오버로드가 있으며,이 오버로드는 모든 차트 유형에 대해 가능한 모든 데이터 원본 변형을 포함하도록 노출되었습니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

이 코드는 다음과 같은 결과를 생성합니다:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### 분산형 차트 삽입

다음 코드 예제에서는 분산형 차트를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

이 코드는 다음과 같은 결과를 생성합니다:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### 영역 차트 삽입

다음 코드 예제에서는 영역 차트를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

이 코드는 다음과 같은 결과를 생성합니다:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### 버블 차트 삽입

다음 코드 예제에서는 거품형 차트를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

이 코드는 다음과 같은 결과를 생성합니다:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## `Shape.Chart`개체를 통해 차트 작업

차트가 삽입되고 데이터로 채워지면 모양을 변경할 수 있습니다. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart)속성에는 공용API을 통해 사용할 수 있는 모든 차트 관련 옵션이 포함되어 있습니다.

예를 들어 차트 제목 또는 범례 동작을 변경해 보겠습니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

코드는 다음 결과를 생성합니다:

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## 차트ChartSeriesCollection작업 방법

[ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/)컬렉션을 살펴 보겠습니다. 모든 차트 계열은[chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries)컬렉션(**Iterable**)을 통해 사용할 수 있습니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

당신은 하나 시리즈 하나를 제거하거나 그들 모두를 취소뿐만 아니라 필요한 경우 새 하나를 추가 할 수 있습니다. 새로 삽입된 차트에는 일부 기본 계열이 이 컬렉션에 추가되었습니다. 이를 제거하려면**chart.getSeries().clear()**메서드를 호출해야 합니다.

## 단일ChartSeries클래스로 작업

다음은 특정 시리즈를 사용하는 방법입니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

아래 결과를 참조하십시오:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

모든 단일[ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/)에는 기본[ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/)옵션이 있으므로 다음 코드를 사용하여 변경해 보십시오:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## `ChartSeries`의 단일ChartDataPoint으로 작업하는 방법

[ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/)을 사용하면 차트 계열의 단일 데이터 요소의 서식을 사용자 지정할 수 있습니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

아래 결과를 참조하십시오:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## 단일ChartSeries의ChartDataLabel로 작업하는 방법

[ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/)을 사용하면 표시/숨기기와 같이 차트 계열의 단일 데이터 레이블의 서식을 지정할 수 있습니다LegendKey, CategoryName, SeriesName, 가치 등:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

아래 결과를 참조하십시오:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## ChartSeries의ChartDataLabels에 대한 기본 옵션을 정의하는 방법

[ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/)클래스는 차트**Series**의**ChartDataLabels**에 대한 기본 옵션을 설정하는 데 사용할 수 있는 속성을 정의합니다. 이러한 속성에는setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShowValue 기타:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

아래 결과를 참조하십시오:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## 차트 데이터 레이블 수를 포맷하는 방법

[NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat)속성을 사용하여 차트의 단일 데이터 레이블의 숫자 서식을 지정할 수 있습니다.

다음 코드 예제에서는 데이터 레이블의 번호를 포맷하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## 차트 축 속성을 설정하는 방법

값 축에 대한 차트 축,크기 조정 및 표시 단위로 작업하려면[ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/),[AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/)및[AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/)클래스를 사용하십시오.

다음 코드 예제에서는 속성을 정의하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### 축의DateTime값을 설정하는 방법

다음 코드 예제에서는 날짜/시간 값을 축 속성으로 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### 축의 숫자 값을 포맷하는 방법

다음 코드 예제에서는 값 축에서 숫자 형식을 변경하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### 축 경계를 설정하는 방법

`AxisBound`클래스는 축 값의 최소 또는 최대 경계를 나타냅니다. 바인딩은 숫자,날짜-시간 또는 특수"자동"값으로 지정할 수 있습니다.

다음 코드 예제에서는 축의 경계를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### 레이블 사이의 간격 단위를 설정하는 방법

다음 코드 예제에서는 축의 레이블 간 간격 단위를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### 차트 축을 숨기는 방법

차트 축을 표시하거나 숨기려면`ChartAxis.Hidden`속성 값을 설정하면 됩니다.

다음 코드 예제에서는 차트의 축을 숨기는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### 차트 레이블을 정렬하는 방법

여러 줄 레이블에 대한 텍스트 정렬을 설정하려면[setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int)속성 값을 설정하면 됩니다.

다음 코드 예제에서는 레이블 정렬을 선택하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word차트 레이블을 기본적으로 가운데에 맞춥니다.

{{% /alert %}}

## 채우기 및 획 서식을 설정하는 방법

차트 계열,데이터 요소 및 마커에 대해 채우기 및 획 서식을 설정할 수 있습니다. 이렇게 하려면ChartSeries,ChartDataPoint및ChartMarker클래스의`ChartFormat`형식의 속성과ForeColor,BackColor,표시 및`Stroke`클래스의 투명도와 같은 일부 속성의 별칭을 사용해야 합니다.

다음 코드 예제에서는 계열 색상을 설정하는 방법을 보여 줍니다:

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

다음 코드 예제에서는 선 색상 및 가중치를 설정하는 방법을 보여 줍니다:

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
