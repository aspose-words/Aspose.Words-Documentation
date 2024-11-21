---
title: עדכון שדות C#
second_title: Aspose.Words עבור .NET
articleTitle: עדכון שדות
linktitle: עדכון שדות
description: "למד כיצד לעדכן שדות C#. אבטחת שדות תוכנה או שימוש בעדכון שדה אוטומטי באמצעות .NET API."
type: docs
weight: 30
url: /he/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

בדרך כלל, שדה מוכנס לתוך Microsoft Word כבר מכיל ערך עדכני. לדוגמה, אם השדה הוא נוסחה או מספר דף, הוא יכיל את הערך הרצוי הנכון לגרסה נתונה של המסמך. אבל אם יש לך יישום אשר יוצר או משנה מסמך עם שדות כמו מיזוג שני מסמכים או המאוכלס אותו עם נתונים, אז באופן אידיאלי כל התחומים חייבים להיות מעודכנים עבור המסמך להיות שימושי.

## כיצד לעדכן שדות

כאשר מסמך טעון, Aspose.Words לחקות את ההתנהגות של Microsoft Word עם האפשרות לעדכן באופן אוטומטי שדות מוחלפו. ניתן לסכם את ההתנהגות כדלקמן:

- כאשר אתה פותח / שומר מסמך שהשדות נשארים שלמים
- אתה יכול לעדכן במפורש את כל התחומים במסמך, למשל, לבנות מחדש `TOC`, כאשר אתה צריך
- בעת הדפסה / חזרה ל- PDF או XPS השדות הקשורים למספר העמודים ב Headers/footers מעודכנים
- כאשר אתה מבצע mail merge כל התחומים מעודכנים באופן אוטומטי

### עדכון שדות

כדי לעדכן באופן מפורש שדות בכל המסמך, פשוט לקרוא [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) שיטה. כדי לעדכן שדות הכלולים במסגרת מסמך, קבל [Range](https://reference.aspose.com/words/net/aspose.words/range/) להתנגד ולקרוא [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/) שיטה. In In In Aspose.Words, אתה יכול להשיג **Range** עבור כל צומת בעץ המסמך, כגון [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) , [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), וכו' באמצעות [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) רכוש. אתה יכול לעדכן את התוצאה של שדה אחד על ידי קריאה [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/) שיטה.

### עדכון אוטומטי של Page-Related Fields במהלך Rendering

כאשר אתה מבצע המרה של מסמך לפורמט קבוע של דף לדוגמה ל- PDF או PDF או XPS, ואז Aspose.Words באופן אוטומטי לעדכן את שדות הקשורים ל-Page פריסה `PAGE`, `PAGEREF` נמצא בראש/עמודי המסמך. התנהגות זו מחקה את ההתנהגות של Microsoft Word בעת הדפסה של מסמך.

אם אתה רוצה לעדכן את כל השדות האחרים במסמך, עליך להתקשר [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) לפני הגשת המסמך.

הדוגמה הבאה של הקוד מראה כיצד לעדכן את כל התחומים לפני ביצוע מסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### עדכון שדה אוטומטי במהלך Mail Merge

כשאתם מבצעים <span notrans="<span notrans=" mail merge"=""></span>" כל התחומים במסמך מעודכנים באופן אוטומטי. הסיבה לכך היא mail merge זה מקרה של עדכון שדה. התוכנית פוגשת mail merge שדה וצריכה לעדכן את התוצאה שלה, אשר כרוך לתפוס את הערך ממקור הנתונים ולהכניס אותו לתחום. ההיגיון הוא כמובן מורכב יותר, למשל, כאשר סוף המסמך /mail merge האזור מגיע אבל יש עדיין נתונים נוספים להתמזג, אז האזור צריך להיות משוכפל ואת מערכת שדות חדשה מעודכן.

## עקבו אחרי Dirty Attribute

Wdirty הוא תכונה ברמה שדה כי יהיה לרענן רק את השדה שאתה מציין כאשר המסמך נפתח. זה אומר ל-MS Word רק לרענן שדה זה בפעם הבאה שהמסמכים נפתחים. אתה יכול להשתמש [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) רכוש כדי לציין אם לעדכן את התחומים עם התכונה המלוכלכת. כאשר הערך של **UpdateDirtyFields** מוגדר <span notrans="<span notrans=" *true*"=""></span>" לכל התחומים יש *true* ערך [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) או [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) נכסים מעודכנים על עומס המסמכים.

הדוגמה הבאה של הקוד מראה כיצד לעדכן שדות שיש להם את התכונה המלוכלכת:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## עדכון אחרון הנכס לפני החיסכון

אתה יכול להשתמש [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) רכוש אם לעדכן את הנכס המובנה המתאים [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) בעת שמירת המסמך.

דוגמה לקוד הבא מראה כיצד לעדכן את הנכס:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
