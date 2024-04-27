---
title: 차트 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 차트 작업
linktitle: 차트 작업
description: "차트 기능 소개, 차트 생성 및 조작 방법 Java·"
type: docs
weight: 310
url: /ko/java/working-with-charts/
---

새로운 [insertChart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertChart-int-double-double) 메소드가 추가되었습니다. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 수업. 그래서, 간단한 열 차트를 문서로 삽입하는 방법을 볼 수 있습니다. **기타 제품 팟캐스트** 방법.


## Scratch에서 차트를 삽입하는 방법 Aspose.Words

이 섹션에서는 차트를 문서에 삽입하는 방법을 배울 것입니다.

###  삽입 란 도표

다음 코드 예제는 열 차트를 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart1.java" >}}

코드는 다음과 같은 결과를 생성합니다:

![column-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-7.png)

시리즈에는 4개의 다른 하중이 있습니다 모든 차트 유형에 대한 데이터 소스의 모든 가능한 변형을 커버하는 방법을 추가:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertColumnChart2.java" >}}

코드는 다음과 같은 결과를 생성합니다:

![column-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-8.png)

### 삽입 Scatter 팟캐스트

다음 코드 예제는 scatter 차트를 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertScatterChart.java" >}}

코드는 다음과 같은 결과를 생성합니다:

![scutter-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-9.png)

### 연락처 팟캐스트

다음 코드 예제는 지역 차트를 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertAreaChart.java" >}}

코드는 다음과 같은 결과를 생성합니다:

![area-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-10.png)

### 버블 차트

뒤에 오는 부호 예는 거품 도표를 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-OOXMLCharts-insertBubbleChart.java" >}}

코드는 다음과 같은 결과를 생성합니다:

![bubble-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-11.png)

## 차트 작업 `Shape.Chart` 기타

차트가 삽입되어 데이터로 채워지면 외관을 변경할 수 있습니다. [Shape.Chart](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChart) 재산은 대중을 통해서 유효한 모든 도표 관련 선택권을 포함합니다 API·

예를 들어, 변경하자 차트 제목 또는 전설적인 행동:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeChartAppearanceUsingShapeChartObject.java" >}}

코드는 다음과 같은 결과를 생성합니다

![line-chart-aspose-words-java-1](/words/java/working-with-charts/working-with-charts-1.png)

## ChartSeriesCollection의 작업 방법

자주 묻는 질문 [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) 회사 소개 모든 차트 시리즈는 사용할 수 있습니다. [chart.getSeries()](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeries) 수집, 이는 **Iterable**::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartSeriesCollectionOfChart-WorkWithChartSeriesCollectionOfChart.java" >}}

당신은 하나에 의해 시리즈를 제거하거나 그들 전부를 명확하게 하고 필요로 하는 경우에 새로운 것을 추가할 수 있습니다. 새로 삽입된 차트에는 이 컬렉션에 추가된 기본 시리즈가 있습니다. 자주 묻는 질문 **chart.getSeries().clear()** 방법.

## 단일 ChartSeries 클래스 작업

여기에 특정 시리즈와 작업하는 방법.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-workingWithSingleChartSeries.java" >}}

아래 결과를 참조하십시오:

![line-chart-aspose-words-java-2](/words/java/working-with-charts/working-with-charts-2.png)

모든 단일 [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) 기본값 [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) 옵션은 다음 코드를 사용하여 변경하십시오

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartAppearance-changeDefaultChartDataPointOptions.java" >}}

![line-chart-aspose-words-java3](/words/java/working-with-charts/working-with-charts-3.png)

## Single ChartDataPoint를 사용하는 방법 `ChartSeries`

사용 방법 [ChartDataPoint](https://reference.aspose.com/words/java/com.aspose.words/chartdatapoint/) 차트 시리즈의 단일 데이터 포인트의 포맷을 사용자 정의 할 수 있습니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithSingleChartDataPointOfAChartSeries-WorkWithSingleChartDataPointOfAChartSeries.java" >}}

아래 결과를 참조하십시오:

![line-chart-aspose-words-java-4](/words/java/working-with-charts/working-with-charts-4.png)

## 단일 ChartSeries의 ChartDataLabel 작업 방법

사용 방법 [ChartDataLabel](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/) show/hide LegendKey, CategoryName, SeriesName과 같은 차트 시리즈의 단일 데이터 라벨의 형식을 지정할 수 있습니다. 가치 등:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkWithChartDataLabelOfASingleChartSeries-WorkWithChartDataLabelOfASingleChartSeries.java" >}}

아래 결과를 참조하십시오:

![bar-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-5.png)

## ChartDataLabels에 대한 기본 옵션을 정의하는 방법 ChartSeries

더 보기 [ChartDataLabelCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabelcollection/) class는 기본 옵션을 설정할 수 있는 속성을 정의합니다. **ChartDataLabels** 차트 **Series**· 이 속성에는 setShowCategoryName, setShowBubbleSize, setShowPercentage, setShowSeriesName, setShow 가치 등:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-DefaultOptionsForDataLabels-DefaultOptionsForDataLabels.java" >}}

아래 결과를 참조하십시오:

![pie-chart-aspose-words-java](/words/java/working-with-charts/working-with-charts-6.png)

## 차트 데이터 라벨의 수를 포맷하는 방법

사용 방법 [NumberFormat](https://reference.aspose.com/words/java/com.aspose.words/chartdatalabel/#getNumberFormat) 속성, 당신은 차트의 단일 데이터 라벨의 번호 포맷을 지정할 수 있습니다.

다음 코드 예제는 데이터 라벨의 수를 포맷하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-ChartNumberFormat-ChartNumberFormat.java" >}}

## 차트 축 속성 설정 방법

차트 축, 스케일링, 디스플레이 단위로 작업하려면, 사용하시기 바랍니다 [ChartAxis](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/), [AxisDisplayUnit](https://reference.aspose.com/words/java/com.aspose.words/axisdisplayunit/), · [AxisScaling](https://reference.aspose.com/words/java/com.aspose.words/axisscaling/) 수업.

다음 코드 예제는 X 및 Y 축 속성을 정의하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-DefineXYAxisProperties.java" >}}

### 설정 방법 Date축선의 시간 가치

다음 코드 예제는 날짜 / 시간 값을 축 속성에 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.java" >}}

### 축의 번호 값을 형식하는 방법

다음 코드 예제는 값 축의 번호 형식을 변경하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetNumberFormatForAxis.java" >}}

### 축의 경계를 설정하는 방법

더 보기 `AxisBound` 클래스는 최소 또는 최대 축 값의 경계를 나타냅니다. 경계는 숫자, 날짜 시간 또는 특별한 "자동"값으로 지정될 수 있습니다.

다음 코드 예제는 축의 경계를 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetboundsOfAxis.java" >}}

### 라벨 사이 간격 단위 설정 방법

다음과 같은 코드 예제는 샤프트에 라벨 사이의 간격 단위를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.java" >}}

### 차트 축을 숨기기 방법

차트 축을 표시하거나 숨기려면 간단히 이 값을 설정하여 달성 할 수 있습니다. `ChartAxis.Hidden` 호텔 위치

다음 코드 예제는 차트의 Y 축을 숨기는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-HideChartAxis.java" >}}

### Align Chart 라벨의 방법

멀티 라인 라벨에 대한 텍스트 정렬을 설정하려면 간단히 이 값을 설정하여 달성 할 수 있습니다. [setTickLabelAlignment()](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#setTickLabelAlignment-int) 호텔 위치

다음 코드 예제는 라벨 정렬을 진드하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.java" >}}

{{% alert color="primary" %}}

Microsoft Word 관련 기사 기본으로 중심의 Chart Label.

{{% /alert %}}

## 필 및 스트로크 포맷 설정 방법

채우고 치기 체재는 도표 시리즈, 자료 점 및 감적기를 위해 놓일 수 있습니다. 이렇게하려면 속성을 사용해야합니다. `ChartFormat` ChartSeries, ChartDataPoint 및 ChartMarker 클래스의 유형뿐만 아니라 ForeColor, BackColor, Visible 및 Transparency와 같은 일부 속성에 대한 별칭 `Stroke` 수업.

다음 코드 예제는 시리즈 색상을 설정하는 방법을 보여줍니다:

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

다음 코드 예제는 라인 색상과 무게를 설정하는 방법을 보여줍니다:

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
