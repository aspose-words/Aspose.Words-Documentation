---
title: C++ 'da Grafik Ekseni Özellikleri Nasıl Ayarlanır
second_title: Aspose.Words için C++
articleTitle: Grafik Ekseni Özellikleri Nasıl Ayarlanır
linktitle: Grafik Ekseni Özellikleri Nasıl Ayarlanır
description: "C++ kullanarak grafik ekseni ayarı."
type: docs
weight: 20
url: /tr/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

Değer ekseni için grafik ekseni, ölçekleme ve görüntüleme birimleriyle çalışmak istiyorsanız, lütfen [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) ve [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling) sınıflarını kullanın.

Aşağıdaki kod örneği, X ve Y ekseni özelliklerinin nasıl tanımlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## Eksenin Tarih-Saat Değeri Nasıl Ayarlanır

Aşağıdaki kod örneği, tarih/saat değerlerinin eksen özelliklerine nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## Eksenin Sayı Değeri Nasıl Biçimlendirilir

Aşağıdaki kod örneği, değer eksenindeki sayıların biçiminin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## Eksen Sınırları Nasıl Ayarlanır

`AxisBound` sınıfı, eksen değerlerinin minimum veya maksimum sınırını temsil eder. Sınır, sayısal, tarih-saat veya özel bir "otomatik" değer olarak belirtilebilir.

Aşağıdaki kod örneği, bir eksenin sınırlarının nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## Etiketler Arasında Aralık Birimi Nasıl Ayarlanır

Aşağıdaki kod örneği, bir eksen üzerindeki etiketler arasındaki aralık biriminin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## Grafik Ekseni Nasıl Gizlenir

Grafik eksenini göstermek veya gizlemek istiyorsanız, set_Hıdden özelliğinin değerini ayarlayarak bunu başarabilirsiniz.

Aşağıdaki kod örneği, grafiğin Y ekseninin nasıl gizleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## Grafik Etiketi Nasıl Hizalanır

Çok satırlı etiketler için bir metin hizalaması ayarlamak istiyorsanız, bunu [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/) özelliğinin değerini ayarlayarak gerçekleştirebilirsiniz. Aşağıdaki kod örneği, etiket hizalamasının nasıl işaretleneceğini gösterir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
