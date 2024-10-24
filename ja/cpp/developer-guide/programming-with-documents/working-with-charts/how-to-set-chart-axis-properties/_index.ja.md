---
title: C++でグラフ軸のプロパティを設定する方法
second_title: C++の場合Aspose.Words
articleTitle: グラフ軸のプロパティを設定する方法
linktitle: グラフ軸のプロパティを設定する方法
description: "C++を使用したグラフ軸の調整。"
type: docs
weight: 20
url: /ja/cpp/how-to-set-chart-axis-properties/
---

グラフ軸、スケーリング、および値軸の表示単位を操作する場合は、[ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis)、[AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit)、および[AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling)クラスを使用してください。

次のコード例は、X軸とY軸のプロパティを定義する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## 軸の日付と時刻の値を設定するにはどうすればよいですか

次のコード例は、日付/時刻の値を軸のプロパティに設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## 軸の数値をフォーマットする方法

次のコード例は、値軸の数値の形式を変更する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## 軸の境界を設定する方法

`AxisBound`クラスは、軸値の最小または最大の境界を表します。 Boundは、数値、日付/時刻、または特別な"auto"値として指定できます。

次のコード例は、軸の境界を設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## ラベル間の間隔単位を設定する方法

次のコード例は、軸上のラベル間の間隔単位を設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## グラフの軸を非表示にする方法

グラフ軸を表示または非表示にする場合は、set_hiddenプロパティの値を設定するだけでこれを実現できます。

次のコード例は、グラフのY軸を非表示にする方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## グラフのラベルを揃える方法

複数行のラベルにテキストの配置を設定する場合は、[TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/)プロパティの値を設定するだけでこれを実現できます。 次のコード例は、ラベルの配置をチェックする方法を示しています。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
