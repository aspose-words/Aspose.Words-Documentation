---
title: כיצד להגדיר מאפייני ציר תרשים ב C++
second_title: Aspose.Words עבור C++
articleTitle: כיצד להגדיר מאפייני ציר תרשים
linktitle: כיצד להגדיר מאפייני ציר תרשים
description: "תרשים ציר כוונון באמצעות C++."
type: docs
weight: 20
url: /he/cpp/how-to-set-chart-axis-properties/
timestamp: 2024-01-27-14-07-04
---

אם אתה רוצה לעבוד עם ציר תרשים, קנה מידה, ויחידות תצוגה לציר הערך, אנא השתמש [ChartAxis](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.chart_axis), [AxisDisplayUnit](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_display_unit), ו [AxisScaling](https://reference.aspose.com/words/cpp/class/aspose.words.drawing.charts.axis_scaling) כיתות.

דוגמת הקוד הבאה מראה כיצד להגדיר איקס ו י-מאפייני ציר:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-DefineXYAxisProperties.cpp" >}}

## כיצד להגדיר ערך תאריך-זמן של ציר

דוגמת הקוד הבאה מראה כיצד להגדיר ערכי תאריך / שעה למאפייני ציר:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetDateTimeValuesToAxis.cpp" >}}

## כיצד לעצב ערך מספר של ציר

דוגמת הקוד הבאה מראה כיצד לשנות את פורמט המספרים בציר הערך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetNumberFormatForAxis.cpp" >}}

## כיצד להגדיר גבולות של ציר

הכיתה `AxisBound` מייצגת גבול מינימלי או מקסימלי של ערכי ציר. כבול יכול להיות מוגדר כמספרי, תאריך שעה או ערך "אוטומטי" מיוחד.

דוגמת הקוד הבאה מראה כיצד להגדיר את גבולות הציר:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetboundsOfAxis.cpp" >}}

## כיצד להגדיר יחידת מרווח בין תוויות

דוגמת הקוד הבאה מראה כיצד להגדיר את יחידת המרווח בין תוויות על ציר:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-SetIntervalUnitBetweenLabelsOnAxis.cpp" >}}

## כיצד להסתיר ציר תרשים

אם ברצונך להציג או להסתיר את ציר התרשים, תוכל פשוט להשיג זאת על ידי הגדרת הערך של המאפיין set_Hidden.

דוגמת הקוד הבאה מראה כיצד להסתיר את י-ציר התרשים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-HideChartAxis.cpp" >}}

## כיצד ליישר תווית תרשים

אם ברצונך להגדיר יישור טקסט עבור תוויות מרובות שורות, תוכל פשוט להשיג זאת על ידי הגדרת הערך של המאפיין [TickLabelAlignment](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_ticklabelalignment/). דוגמת הקוד הבאה מראה כיצד לסמן יישור תוויות.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Charts-WorkingWithChartAxis-TickMultiLineLabelAlignment.cpp" >}}
