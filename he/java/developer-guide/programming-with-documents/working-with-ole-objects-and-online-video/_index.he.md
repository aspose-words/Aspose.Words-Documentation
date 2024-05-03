---
title: עבודה עם אובייקטים Ole
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם אובייקטים Ole
linktitle: עבודה עם אובייקטים Ole
description: "ליצור ולשנות OLE הטמיע במסמך שלך Java."
type: docs
weight: 360
url: /he/java/working-with-ole-objects/
---

שם הסרטון: Object Linking and Embedding זוהי הטכנולוגיה שבאמצעותה משתמשים יכולים לעבוד עם מסמכים המכילים "אובייקטים" שנוצרו או ערכו על ידי יישומי צד שלישי. כלומר, OLE מאפשר יישום לייצא אלה "אובייקטים" ליישום אחר לעריכה, ולאחר מכן לייבא אותם בחזרה עם תוכן נוסף.

במאמר זה, נדבר על הוספת אובייקט OLE והגדרת התכונות שלו לתוך מסמך.

## תגית: Ole Object

אם אתה רוצה אובייקט מוחלט, התקשר [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) שיטה ולהעביר אותה **ProgId** במפורש עם פרמטרים אחרים.

דוגמה לקוד הבא מראה כיצד להוסיף אובייקטים במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### הגדרת שם הקובץ והרחבה בעת הוספת אובייקט OLE

חבילת OLE היא מורשת ו-"לא מטופלת" דרך לאחסן חפצים משובצים אם מטפל אולטי אינו ידוע.

מוקדם Windows גרסאות כגון Windows 3.1, 95 ו-98 היו חבילה. יישום exe שניתן להשתמש בו כדי להטביע כל סוג של נתונים במסמך. יישום זה נשלל כעת Windowsאבל Microsoft Word יישומים אחרים עדיין משתמשים בו כדי להטמיע נתונים אם המטפל חסר או לא ידוע. The The The `OlePackage` הכיתה מאפשרת למשתמשים לגשת לתכונות החבילה.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את שם הקובץ, הרחבה, ואת שם התצוגה של חבילת OLE:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### גישה ל-OLE Object Raw Data

משתמשים יכולים לגשת לנתונים של OLE באמצעות תכונות ושיטות שונות של `OleFormat` מעמד. לדוגמה, ניתן לקבל את `OLE` אובייקטים נתונים גולמיים או הנתיב והשם של קובץ מקור עבור אובייקט OLE המקושר.

דוגמה לקוד הבא מראה כיצד להגיע ל-OLE נתונים גולמיים באמצעות [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) שיטה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### המונחים: אובייקטים כאייקון

אובייקטים קטנים יכולים גם להיות מוכנסים למסמכים כתמונות.

הדוגמה הקודית הבאה מראה כיצד להכניס את אובייקט OLE כסמל. למטרה זו, **DocumentBuilder** השיעור חושף את [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) שיטה.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

הדוגמה הקודית הבאה מראה כיצד להכניס אובייקט מוטבע כסמל מזרם לתוך המסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## הכנס וידאו באינטרנט

וידאו מקוון יכול להיות מוכנס לתוך מסמך Word מן * "Insert" > "Online Video" tab. אתה יכול להוסיף וידאו מקוון לתוך מסמך במיקום הנוכחי על ידי קריאה [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) שיטה:

The The The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) הכיתה מציגה ארבעה מעלים של שיטה זו. הראשון עובד עם משאבי הווידאו הפופולריים ביותר ולוקח את `URL` וידאו כפרמטר. לדוגמה, העומס הראשון תומך בהרחבה פשוטה של קטעי וידאו מקוונים מ [YouTube](https://www.youtube.com/) ו [Vimeo](https://vimeo.com/) משאבים.

דוגמה לקוד הבא מראה כיצד להכניס סרטון מקוון *Vimeo* במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

עומס שני עובד עם כל משאבי וידאו אחרים ולוקח קוד HTML מוטבע כפרמטר. קוד HTML להטמעת וידאו עשוי להשתנות בהתאם לספק, כך ליצור קשר עם הספק המתאים לפרטים.

{{% alert color="primary" %}}

שימו לב כי המסמך יהיה מותאם באופן אוטומטי עבור MS Word 2013 כדי להציג וידאו.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להכניס סרטון מקוון לתוך מסמך באמצעות קוד HTML כזה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
