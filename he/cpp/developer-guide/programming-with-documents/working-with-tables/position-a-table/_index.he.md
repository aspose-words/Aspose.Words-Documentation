---
title: מיקום טבלה ב C++
second_title: Aspose.Words עבור C++
articleTitle: מקם טבלה
linktitle: מקם טבלה
description: "ציין מיקום טבלה ב C++. קבל יישור טבלה, קבל והגדר מיקום טבלה צף באמצעות C++."
type: docs
weight: 50
url: /he/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

ישנם שולחנות צפים ושולחנות מוטבעים:

* **Inline tables** ממוקמים באותה שכבה כמו הטקסט וממוקמים בזרימת טקסט שמקיפה רק את הטבלה מעל ומתחת. טבלאות מוטבעות יופיעו תמיד בין הפסקאות בהן מיקמת אותן.
* **Floating tables** מרובד מעל הטקסט, ומיקום הטבלה ביחס לפסקה נקבע על ידי עוגן הטבלה. מסיבה זו, מיקום הטבלה הצפה במסמך מושפע מהגדרות המיקום האנכיות והאופקיות.

לפעמים אתה צריך למקם טבלה במסמך בצורה מסוימת. לשם כך, עליך להשתמש בכלי היישור ולהגדיר את הכניסות בין הטבלה לטקסט שמסביב.

במאמר זה נדון באילו אפשרויות Aspose.Words מספק מיקום.

## ציין מיקום טבלה מוטבע

ניתן להגדיר את המיקום של טבלה מוטבעת באמצעות המאפיין Aspose.Words API והמאפיין [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). כך תוכלו להתאים את יישור הטבלה ביחס לדף המסמך.

דוגמת הקוד הבאה מראה כיצד להגדיר את המיקום של טבלה מוטבעת:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## קבל יישור שולחן צף

אם גלישת טקסט הטבלה מוגדרת ל **Around**, אתה יכול לקבל את היישור האופקי והאנכי של הטבלה באמצעות המאפיינים [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) ו [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

עם **other types of text wrapping**, אתה יכול לקבל יישור טבלה מוטבע באמצעות המאפיין [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

דוגמא הקוד הבאה מראה כיצד לקבל את היישור של הטבלה:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## קבל מיקום שולחן צף

 המיקום של טבלה צפה נקבע באמצעות המאפיינים הבאים:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - אובייקט לחישוב המיקום האופקי של שולחן צף
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - אובייקט לחישוב המיקום האנכי של שולחן צף
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - מיקום שולחן צף אופקי מוחלט
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - מיקום שולחן צף אנכי מוחלט
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - אפשרות להפעלה / השבתה של חפיפה עם אובייקטים צפים אחרים
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) - צף שולחן יחסית אופקי יישור.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) - צף שולחן יחסית אנכי יישור.

דוגמת הקוד הבאה מראה כיצד לקבל את המיקום של טבלה צפה:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## סט צף שולחן עמדה

בדיוק כמו לקבל, אתה יכול להגדיר את המיקום של טבלה צפה באמצעות אותו Aspose.Words API.

חשוב לדעת כי יישור ומרחק אופקי ואנכי הם מאפיינים משולבים ואחד יכול לאפס את השני. לדוגמה, הגדרת **RelativeHorizontalAlignment** תאפס את **AbsoluteHorizontalDistance** לערך ברירת המחדל שלו ולהיפך. הדבר נכון גם לגבי הסידור האנכי.

דוגמת הקוד הבאה מראה כיצד להגדיר את המיקום של טבלה צפה:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## קבל מרחק בין הטבלה לטקסט שמסביב

Aspose.Words מספק גם הזדמנות לברר את המרחקים בין טבלאות לטקסטים שמסביב:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - ערך המרחק מלמעלה
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - ערך מרחק התפיסה
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - ערך מרחק מימין
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - ערך מרחק משמאל

דוגמת הקוד הבאה מראה כיצד להשיג את המרחק בין טבלה לטקסט הסובב אותה:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
