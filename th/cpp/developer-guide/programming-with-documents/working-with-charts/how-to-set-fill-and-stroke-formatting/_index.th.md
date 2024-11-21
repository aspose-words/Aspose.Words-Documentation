---
title: การทำงานกับแผนภูมิในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับแผนภูมิ
linktitle: การทำงานกับแผนภูมิ
description: "บทนำเกี่ยวกับคุณลักษณะแผนภูมิวิธีการสร้างและจัดการแผนภูมิโดยใช้C++."
type: docs
weight: 170
url: /th/cpp/how-to-set-fill-and-stroke-formatting/
timestamp: 2024-01-27-14-07-04
---

กรอกข้อมูลและการจัดรูปแบบจังหวะสามารถตั้งค่าสำหรับชุดแผนภูมิจุดข้อมูลและเครื่องห ในการทำเช่นนี้คุณต้องใช้คุณสมบัติของ**ChartFormat**ชนิดในชั้นเรียน**ChartSeries**,**ChartDataPoint**และ**ChartMarker**รวมทั้งนามแฝงสำหรับคุณสมบัติบางอย่างเช่นForeColor,BackColor,ที่มองเห็นได้และความโปร่งใสในชั้นเรียน`Stroke`.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าสีชุด:

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

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าสีและน้ำหนัก:

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
