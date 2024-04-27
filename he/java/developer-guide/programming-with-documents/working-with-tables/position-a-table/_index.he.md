---
title: מיקום שולחן Java
second_title: Aspose.Words עבור Java
articleTitle: מיקום שולחן
linktitle: מיקום שולחן
description: "מיקום שולחן ספציפי Java. קבל היערכות שולחן, לקבל ולהגדיר מיקום שולחן צף באמצעות Java."
type: docs
weight: 50
url: /he/java/position-a-table/
---

יש שולחנות צפים וטבלאות Inline:

* **שולחנות Inline** ממוקמים באותה שכבה כמו הטקסט והם ממוקמים בזרימה של טקסט כי רק מקיף את השולחן מעל ומתחת. שולחנות Inline יופיעו תמיד בין פסקאות שבו הנחת אותם.
* **שולחנות Floating** הם מעוכבים על הטקסט, ואת המיקום של השולחן ביחס לפסקה נקבע על ידי עוגן השולחן. בגלל זה, המיקום של השולחן הצף במסמך מושפע הגדרות מיקום אנכי ואופקי.

לפעמים צריך למקם שולחן במסמך באופן מסוים. כדי לעשות זאת, אתה צריך להשתמש בכלים היישור ולהגדיר את התרעות בין השולחן לבין הטקסט שמסביב.

במאמר זה נדבר על אילו אפשרויות Aspose.Words מספק למקם.

## מיקום Inline Table

אתה יכול להגדיר את המיקום של שולחן אינטרנט באמצעות Aspose.Words API וה [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) רכוש. לכן, אתה יכול להתאים את ההיערכות של השולחן ביחס לדף המסמך.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את המיקום של שולחן פנימי:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Get Floating Table Alignment

אם הטבלה טקסט עטיפה מוגדר **Around**, אתה יכול לקבל את ההיערכות האופקית והארכינית של השולחן באמצעות היישר [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) ו [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) תכונות.

עם **סוגים אחרים של טקסט עטיפה**, אתה יכול לקבל היערכות שולחן באמצעות **Alignment** רכוש.

הדוגמה הבאה של הקוד מראה כיצד להגיע להיערכות של השולחן:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## קבל מיקום שולחן

 המיקום של שולחן צף נקבע באמצעות התכונות הבאות:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) אובייקט לחישוב המיקום האופקי של שולחן צף
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) אובייקט לחישוב המיקום האנכי של שולחן צף
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) מיקום שולחן עגול מוחלט
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) מיקום שולחן צף אנכי מוחלט
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) • אפשרות לאפשר לחפיפה / בלתי אפשרית עם אובייקטים צפים אחרים
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) שולחן צף יחסית היערכות אופקית
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) שולחן צף יחסית היערכות אנכית.

לדוגמה הקוד הבא מראה כיצד לקבל את המיקום של שולחן צף:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## הגדרת מיקום שולחן

בדיוק כמו להגיע, אתה יכול להגדיר את המיקום של שולחן צף באמצעות אותו הדבר. Aspose.Words API.

חשוב לדעת כי היישור והמרחק האופקי והארכי הם תכונות משולבות ואחד יכול לאפס את השני. לדוגמה, הגדרת **RelativeHorizontalAlignment** לאפס את **AbsoluteHorizontalDistance** לערך ברירת המחדל ולהיפך. אותו הדבר true למען הסדר האנכי.

לדוגמה הקוד הבא מראה כיצד להגדיר את המיקום של שולחן צף:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## מרחק בין שולחן לבין טקסט מקיף

Aspose.Words מספק גם הזדמנות לגלות את המרחקים בין טבלאות וטקסטים הסובבים:

- - [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) הערך של המרחק מלמעלה
- - [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) הערך של מרחק התפיסה
- - [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) ערך מרחק מימין
- - [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) ערך מרחק לשמאל

הדוגמה הבאה של הקוד מראה כיצד להגיע למרחק בין שולחן לטקסט הסובב:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
