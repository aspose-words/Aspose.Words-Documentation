---
title: Cum se setează proprietățile axei diagramei în C++
second_title: Aspose.Words pentru C++
articleTitle: Cum să setați proprietățile axei diagramei
linktitle: Cum să setați proprietățile axei diagramei
description: "Reglarea axei diagramei folosind C++."
type: docs
weight: 20
url: /ro/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

Dacă doriți să lucrați cu axa diagramei, scalarea și unitățile de afișare pentru axa valorii, vă rugăm să utilizați clasele [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) și [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

Următorul exemplu de cod arată cum se definesc proprietățile axei X și Y:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## Cum se setează valoarea dată-oră a axei

Următorul exemplu de cod arată cum să setați valorile datei/orei la proprietățile axei:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## Cum se formatează valoarea numerică a axei

Următorul exemplu de cod arată cum să modificați formatul numerelor pe axa valorii:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## Cum să setați limitele axei

Clasa `AxisBound` reprezintă o limită minimă sau maximă a valorilor axei. Bound poate fi specificat ca o valoare numerică, dată-oră sau o valoare specială "auto".

Următorul exemplu de cod arată cum să setați limitele unei axe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## Cum să setați unitatea de Interval între etichete

Următorul exemplu de cod arată cum să setați unitatea de interval între etichete pe o axă:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## Cum să ascundeți Axa diagramei

Dacă doriți să afișați sau să ascundeți axa diagramei, puteți realiza acest lucru pur și simplu setând valoarea proprietății set_Hidden.

Următorul exemplu de cod arată cum să ascundeți axa Y a diagramei:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## Cum să aliniați eticheta diagramei

Dacă doriți să setați o aliniere a textului pentru etichete cu mai multe linii, puteți realiza acest lucru pur și simplu setând valoarea proprietății [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). Următorul exemplu de cod arată cum să bifați alinierea etichetelor.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
