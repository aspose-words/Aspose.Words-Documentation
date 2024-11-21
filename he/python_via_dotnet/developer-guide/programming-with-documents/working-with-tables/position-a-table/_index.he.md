---
title: מיקום שולחן Python
second_title: Aspose.Words עבור Python
articleTitle: מיקום שולחן
linktitle: מיקום שולחן
description: "מיקום שולחן ספציפי Python. קבל היערכות שולחן, לקבל ולהגדיר מיקום שולחן צף באמצעות Python."
type: docs
weight: 50
url: /he/python-net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

יש שולחנות צפים וטבלאות Inline:

* **שולחנות Inline** ממוקמים באותה שכבה כמו הטקסט והם ממוקמים זרימה של טקסט כי רק מקיף את השולחן מעל ומתחת. שולחנות Inline יופיעו תמיד בין פסקאות שבו הנחת אותם.
* **שולחנות Floating** הם מעוכבים על הטקסט, ואת המיקום של השולחן ביחס לפסקה נקבע על ידי עוגן השולחן. בגלל זה, המיקום של השולחן הצף במסמך מושפע הגדרות מיקום אנכי ואופקי.

לפעמים צריך למקם שולחן במסמך באופן מסוים. כדי לעשות זאת, אתה צריך להשתמש בכלים היישור ולהגדיר את התרעות בין השולחן לבין הטקסט שמסביב.

במאמר זה נדבר על אילו אפשרויות Aspose.Words מספק למקם.

## מיקום Inline Table

אתה יכול להגדיר את המיקום של שולחן Inline באמצעות Aspose.Words API וה [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/) רכוש. לכן, אתה יכול להתאים את ההיערכות של השולחן ביחס לדף המסמך.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את המיקום של שולחן פנימי:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Get Floating Table Alignment

אם הטבלה טקסט עטיפה מוגדר **Around**, אתה יכול לקבל את ההיערכות האופקית והארכינית של השולחן באמצעות ההיערכות [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) ו [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) תכונות.

עם **סוגים אחרים של טקסט עטיפה**, אתה יכול לקבל היערכות שולחן באמצעות [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד להשיג את ההיערכות של השולחן:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## קבל מיקום שולחן

 המיקום של שולחן צף נקבע באמצעות התכונות הבאות:

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) אובייקט לחישוב המיקום האופקי של שולחן צף
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) אובייקט לחישוב המיקום האנכי של שולחן צף
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) מיקום שולחן עגול מוחלט
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) מיקום שולחן צף אנכי מוחלט
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) • אפשרות לאפשר חפיפה עם אובייקטים צפים אחרים
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) שולחן צף יחסית היערכות אופקית.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) שולחן צף יחסית היערכות אנכית.

הדוגמה הבאה של הקוד מראה כיצד לקבל את המיקום של שולחן צף:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## הגדרת מיקום שולחן

בדיוק כמו להגיע, אתה יכול להגדיר את המיקום של שולחן צף באמצעות אותו הדבר. Aspose.Words API.

חשוב לדעת כי היערכות ומרחק אופקי אנכי משולבים תכונות ואחד יכול לאפס את השני. לדוגמה, הגדרת **RelativeHorizontalAlignment** לאפס את **AbsoluteHorizontalDistance** לערך ברירת המחדל ולהיפך. אותו הדבר true למען הסדר האנכי.

דוגמא הקוד הבא מראה כיצד להגדיר את המיקום של שולחן צף:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## מרחק בין שולחן לבין טקסט מקיף

Aspose.Words מספק גם הזדמנות לגלות את המרחקים בין טבלאות וטקסטים הסובבים:

- - [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) הערך של המרחק מלמעלה
- - [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) הערך של מרחק התפיסה
- - [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) ערך מרחק מימין
- - [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) ערך מרחק לשמאל

לדוגמה הקוד הבא מראה כיצד להגיע למרחק בין שולחן לטקסט המקיף שלו:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}
