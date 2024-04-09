---
title: מיקום שולחן C#
second_title: Aspose.Words עבור .NET
articleTitle: מיקום שולחן
linktitle: מיקום שולחן
description: "מיקום שולחן ספציפי C#. קבל היערכות שולחן, לקבל ולהגדיר מיקום שולחן צף באמצעות C#."
type: docs
weight: 50
url: /he/net/position-a-table/
---

יש שולחנות צפים וטבלאות Inline:

* **שולחנות Inline** ממוקמים באותה שכבה כמו הטקסט והם ממוקמים זרימה של טקסט כי רק מקיף את השולחן מעל ומתחת. שולחנות Inline יופיעו תמיד בין פסקאות שבו הנחת אותם.
* **שולחנות Floating** הם מעוכבים על הטקסט, ואת המיקום של השולחן ביחס לפסקה נקבע על ידי עוגן השולחן. בגלל זה, המיקום של השולחן הצף במסמך מושפע הגדרות מיקום אנכי ואופקי.

לפעמים צריך למקם שולחן במסמך באופן מסוים. כדי לעשות זאת, אתה צריך להשתמש בכלים היישור ולהגדיר את התרעות בין השולחן לבין הטקסט שמסביב.

במאמר זה נדבר על אילו אפשרויות Aspose.Words מספק למקם.

## מיקום Inline Table

אתה יכול להגדיר את המיקום של שולחן Inline באמצעות Aspose.Words API וה [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) רכוש. לכן, אתה יכול להתאים את ההיערכות של השולחן ביחס לדף המסמך.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את המיקום של שולחן פנימי:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## Get Floating Table Alignment

אם הטבלה טקסט עטיפה מוגדר **Around**, אתה יכול לקבל את ההיערכות האופקית והארכינית של השולחן באמצעות ההיערכות [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) ו [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) תכונות.

עם **סוגים אחרים של טקסט עטיפה**, אתה יכול לקבל היערכות שולחן באמצעות [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד להשיג את ההיערכות של השולחן:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## קבל מיקום שולחן

 המיקום של שולחן צף נקבע באמצעות התכונות הבאות:

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) אובייקט לחישוב המיקום האופקי של שולחן צף
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) אובייקט לחישוב המיקום האנכי של שולחן צף
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) מיקום שולחן עגול מוחלט
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) מיקום שולחן צף אנכי מוחלט
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) • אפשרות לאפשר חפיפה עם אובייקטים צפים אחרים
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) שולחן צף יחסית היערכות אופקית.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) שולחן צף יחסית היערכות אנכית.

הדוגמה הבאה של הקוד מראה כיצד לקבל את המיקום של שולחן צף:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## הגדרת מיקום שולחן

בדיוק כמו להגיע, אתה יכול להגדיר את המיקום של שולחן צף באמצעות אותו הדבר. Aspose.Words API.

חשוב לדעת כי היערכות ומרחק אופקי אנכי משולבים תכונות ואחד יכול לאפס את השני. לדוגמה, הגדרת **RelativeHorizontalAlignment** לאפס את **AbsoluteHorizontalDistance** לערך ברירת המחדל ולהיפך. אותו הדבר true למען הסדר האנכי.

דוגמא הקוד הבא מראה כיצד להגדיר את המיקום של שולחן צף:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## מרחק בין שולחן לבין טקסט מקיף

Aspose.Words מספק גם הזדמנות לגלות את המרחקים בין טבלאות וטקסטים הסובבים:

- - [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) הערך של המרחק מלמעלה
- - [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) הערך של מרחק התפיסה
- - [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) ערך מרחק מימין
- - [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) ערך מרחק לשמאל

לדוגמה הקוד הבא מראה כיצד להגיע למרחק בין שולחן לטקסט המקיף שלו:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
