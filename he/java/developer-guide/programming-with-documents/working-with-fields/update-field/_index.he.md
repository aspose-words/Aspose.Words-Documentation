---
title: עדכון שדות Java
second_title: Aspose.Words עבור Java
articleTitle: עדכון שדות
linktitle: עדכון שדות
description: "למד כיצד לעדכן שדות Java. אבטחת שדות תוכנה או שימוש בעדכון שדה אוטומטי באמצעות Java API"
type: docs
weight: 30
url: /he/java/update-field/
---

בדרך כלל, שדה מוכנס לתוך Microsoft Word כבר מכיל ערך עדכני. לדוגמה, אם השדה הוא נוסחה או מספר דף, הוא יכלול את הערך הרצוי הנכון עבור הגרסה נתונה של המסמך. אבל אם יש לך יישום אשר יוצר או משנה מסמך עם שדות כמו מיזוג שני מסמכים או המאוכלס אותו עם נתונים, אז באופן אידיאלי כל התחומים חייבים להיות מעודכנים עבור המסמך להיות שימושי.

## כיצד לעדכן שדות

כאשר מסמך טעון, Aspose.Words לחקות את ההתנהגות של Microsoft Word עם האפשרות לעדכן באופן אוטומטי שדות מוחלפו. ניתן לסכם את ההתנהגות כדלקמן:

- כאשר אתה פותח / שומר מסמך שהשדות נשארים שלמים
- אתה יכול לעדכן במפורש את כל התחומים במסמך, למשל, לבנות מחדש `TOC` כאשר אתה צריך
- בעת הדפסה / חזרה ל- PDF או XPS השדות הקשורים למספר העמודים ב Headers/footers מעודכנים
- כאשר אתה מבצע mail merge כל התחומים מעודכנים באופן אוטומטי

### עדכון שדות

כדי לעדכן במפורש שדות במסמך כולו, פשוט לקרוא [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) שיטה. כדי לעדכן שדות הכלולים במסגרת מסמך, קבל [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) להתנגד ולקרוא [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) שיטה. In In In Aspose.Words, אתה יכול להשיג **Range** עבור כל צומת בעץ המסמך, כגון [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), וכו' באמצעות [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) רכוש. אתה יכול לעדכן את התוצאה של שדה אחד על ידי קריאה [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) שיטה.

### עדכון אוטומטי של Page-Related Fields במהלך Rendering

כאשר אתה מבצע המרה של מסמך לפורמט קבוע של דף לדוגמה ל- PDF או PDF או XPS, ואז Aspose.Words באופן אוטומטי לעדכן את שדות הקשורים ל-Page פריסה `PAGE`, `PAGEREF` נמצא בראש/עמודי המסמך. התנהגות זו מחקה את ההתנהגות של Microsoft Word בעת הדפסת מסמך

אם אתה רוצה לעדכן את כל השדות האחרים במסמך, עליך להתקשר [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) לפני הגשת המסמך.

הדוגמה הבאה מראה כיצד לעדכן את כל התחומים לפני ביצוע מסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### עדכון שדה אוטומטי במהלך Mail Merge

כשאתם מבצעים <span notrans="<span notrans=" mail merge"=""></span>" כל התחומים במסמך מעודכנים באופן אוטומטי. זה בגלל mail merge זה מקרה של עדכון שדה. התוכנית פוגשת mail merge שדה וצריכה לעדכן את התוצאה שלה, אשר כרוך לתפוס את הערך ממקור הנתונים ולהכניס אותו לתחום. ההיגיון הוא, כמובן, מורכב יותר, למשל, כאשר סוף המסמך /mail merge האזור מגיע אבל עדיין יש נתונים נוספים כדי להתמזג, אז האזור צריך להיות משוכפל ואת מערך שדות חדש מעודכן.

## עקבו אחרי Dirty Attribute

Wdir:ty הוא תכונה ברמה שדה כי יהיה לרענן רק את השדה שאתה מציין כאשר המסמך נפתח. זה אומר ל-MS Word רק לרענן שדה זה בפעם הבאה שהמסמכים נפתחים. באפשרותך להשתמש ב- LoadOptions.setUpdateDirtyFields () כדי לציין אם לעדכן את השדות עם התכונה המלוכלכת. כאשר הערך של LoadOptions <span notrans="<span notrans=" *true*"=""></span>" לכל התחומים יש *true* ערך `Field.IsDirty` או `FieldChar.IsDirty` נכסים מעודכנים על עומס המסמכים

הדוגמה הבאה של הקוד מראה כיצד לעדכן שדות שיש להם את התכונה המלוכלכת:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## עדכון אחרון הנכס לפני החיסכון

אתה יכול להשתמש [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) רכוש אם לעדכן את הנכס המובנה המתאים [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) בעת שמירת המסמך.

דוגמה לקוד הבא מראה כיצד לעדכן את הנכס:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
