---
title: 차트 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 차트 작업
linktitle: 차트 작업
description: "차트 기능 소개,다음을 사용하여 차트를 만들고 조작하는 방법 C++."
type: docs
weight: 170
url: /ko/cpp/how-to-set-fill-and-stroke-formatting/
---

차트 계열,데이터 요소 및 마커에 대해 채우기 및 획 서식을 설정할 수 있습니다. 이렇게하려면,당신은의 속성을 사용해야합니다 **ChartFormat** 입력 **ChartSeries**, **ChartDataPoint**,그리고 **ChartMarker** 클래스뿐만 아니라 다음과 같은 일부 속성에 대한 별칭 ForeColor, BackColor,눈에 보이는,그리고 투명성 `Stroke` 수업

다음 코드 예제에서는 계열 색상을 설정하는 방법을 보여 줍니다:

{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);

auto shape = builder->InsertChart(ChartType::Column, 432, 252);

auto chart = shape->get_Chart();
auto seriesColl = chart->get_Series();

// Delete default generated series.
seriesColl->Clear();

// Create category names array.
auto categories = System::MakeArray<System::String>({ u"AW Category 1", u"AW Category 2" });

// Adding new series. Value and category arrays must be the same size.
auto series1 = seriesColl->Add(u"AW Series 1", categories, System::MakeArray<double>({ 1, 2 }));
auto series2 = seriesColl->Add(u"AW Series 2", categories, System::MakeArray<double>({ 3, 4 }));
auto series3 = seriesColl->Add(u"AW Series 3", categories, System::MakeArray<double>({ 5, 6 }));

// Set series color.
series1->get_Format()->get_Fill()->set_ForeColor(Color::get_Red());
series2->get_Format()->get_Fill()->set_ForeColor(Color::get_Yellow());
series3->get_Format()->get_Fill()->set_ForeColor(Color::get_Blue());

doc->Save(u"ColumnColor.docx");
{{< /highlight >}}

다음 코드 예제에서는 선 색상 및 가중치를 설정하는 방법을 보여 줍니다:

{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);

auto shape = builder->InsertChart(ChartType::Column, 432, 252);

auto chart = shape->get_Chart();
auto seriesColl = chart->get_Series();

// Delete default generated series.
seriesColl->Clear();

// Adding new series.
auto series1 = seriesColl->Add(u"AW Series 1", System::MakeArray<double>({ 0.7, 1.8, 2.6 }), System::MakeArray<double>({ 2.7, 3.2, 0.8 }));
auto series2 = seriesColl->Add(u"AW Series 2", System::MakeArray<double>({ 0.5, 1.5, 2.5 }), System::MakeArray<double>({ 3, 1, 2 }));

// Set series color.
series1->get_Format()->get_Stroke()->set_ForeColor(Color::get_Red());
series1->get_Format()->get_Stroke()->set_Weight(5);
series2->get_Format()->get_Stroke()->set_ForeColor(Color::get_LightGreen());
series2->get_Format()->get_Stroke()->set_Weight(5);

doc->Save("LineColorAndWeight.docx");
{{< /highlight >}}
