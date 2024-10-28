---
title: کار با نمودارها در C++
second_title: Aspose.Words برای C++
articleTitle: کار با نمودارها
linktitle: کار با نمودارها
description: "مقدمه ای به ویژگی نمودار، نحوه ایجاد و دستکاری نمودارها با استفاده از C++."
type: docs
weight: 170
url: /fa/cpp/how-to-set-fill-and-stroke-formatting/
---

قالب بندی Fill و stroke را می توان برای سری های نمودار، نقاط داده و نشانگرها تنظیم کرد. برای انجام این کار، باید از ویژگی های نوع **ChartFormat** در کلاس های **ChartSeries**، **ChartDataPoint** و **ChartMarker** و همچنین نام مستعار برای برخی از ویژگی ها مانند ForeColor، BackColor، قابل مشاهده و شفافیت در کلاس `Stroke` استفاده کنید.

مثال کد زیر نشان می دهد که چگونه رنگ سری را تنظیم کنید:

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

مثال کد زیر نشان می دهد که چگونه رنگ و وزن خط را تنظیم کنید:

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
