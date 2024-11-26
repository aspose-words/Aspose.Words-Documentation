---
title: Jak nastavit vlastnosti osy grafu v C++
second_title: Aspose.Words pro C++
articleTitle: Jak nastavit vlastnosti osy grafu
linktitle: Jak nastavit vlastnosti osy grafu
description: "Ladění osy grafu pomocí C++."
type: docs
weight: 20
url: /cs/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

Pokud chcete pracovat s osou grafu, měřítkem a zobrazovacími jednotkami pro hodnotovou osu, použijte třídy [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit) a [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling).

Následující příklad kódu ukazuje, jak definovat vlastnosti osy X a Y:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## Jak nastavit hodnotu data a času osy

Následující příklad kódu ukazuje, jak nastavit hodnoty data/času na vlastnosti osy:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## Jak formátovat číselnou hodnotu osy

Následující příklad kódu ukazuje, jak změnit formát čísel na ose hodnot:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## Jak nastavit hranice osy

Třída `AxisBound` představuje minimální nebo maximální hranici hodnot osy. Vázaný může být zadán jako číselná, datum-čas nebo speciální "auto" hodnota.

Následující příklad kódu ukazuje, jak nastavit hranice osy:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## Jak nastavit intervalovou jednotku mezi štítky

Následující příklad kódu ukazuje, jak nastavit intervalovou jednotku mezi štítky na ose:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## Jak skrýt osu grafu

Pokud chcete zobrazit nebo skrýt osu grafu, můžete toho jednoduše dosáhnout nastavením hodnoty vlastnosti set_Hidden.

Následující příklad kódu ukazuje, jak skrýt osu Y grafu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## Jak zarovnat štítek grafu

Pokud chcete nastavit zarovnání textu pro víceřádkové štítky, můžete toho jednoduše dosáhnout nastavením hodnoty vlastnosti [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). Následující příklad kódu ukazuje, jak zaškrtnout zarovnání štítků.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
