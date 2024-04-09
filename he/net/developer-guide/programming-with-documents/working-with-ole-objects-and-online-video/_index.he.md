---
title: עבודה עם אובייקטים ווידאו באינטרנט C#
second_title: Aspose.Words עבור .NET
articleTitle: עקבו אחרי OLE Objects and online Video
linktitle: עקבו אחרי OLE Objects and online Video
description: "ליצור ולשנות OLE הטמיע במסמך שלך C#."
type: docs
weight: 360
url: /he/net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) היא טכנולוגיה שבאמצעותה משתמשים יכולים לעבוד עם מסמכים המכילים "אובייקטים" שנוצרו על ידי יישומים של צד שלישי. כלומר, OLE מאפשר יישום עריכה לייצא אלה "אובייקטים" ליישום עריכה אחר ולאחר מכן לייבא אותם עם תוכן נוסף.

במאמר זה נדבר על הוספת אובייקט OLE והגדרת התכונות שלו, כמו גם הוספת וידאו מקוון לתוך מסמך.

## המונחים: אובייקטים

אם אתה רוצה אובייקט מוחלט, התקשר [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) שיטה ולהעביר אותה **ProgId** במפורש עם פרמטרים אחרים.

דוגמה לקוד הבא מראה כיצד להוסיף אובייקטים במסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### הגדרת שם הקובץ והרחבה בעת הוספת אובייקט OLE

חבילת OLE היא מורשת ו-"לא מטופלת" דרך לאחסן חפצים מוטבעים אם מטפל OLE אינו ידוע.

מוקדם Windows גרסאות כגון Windows 3.1,95 ו-98 היו חבילה. יישום exe שניתן להשתמש בו כדי להטביע כל סוג של נתונים במסמך. יישום זה נשלל כעת Windowsאבל Microsoft Word יישומים אחרים עדיין משתמשים בו כדי להטמיע נתונים אם המטפל חסר או לא ידוע. The The The `OlePackage` הכיתה מאפשרת למשתמשים לגשת לתכונות החבילה.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את שם הקובץ, הרחבה, ואת שם התצוגה של חבילת OLE:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### גישה ל-OLE Object Raw Data

משתמשים יכולים לגשת לנתונים של OLE באמצעות תכונות ושיטות שונות של `OleFormat` מעמד. לדוגמה, ניתן לקבל את `OLE` אובייקטים נתונים גולמיים או הנתיב והשם של קובץ מקור עבור אובייקט OLE המקושר.

דוגמה לקוד הבא מראה כיצד להגיע ל-OLE נתונים גולמיים באמצעות [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/) שיטה:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### המונחים: אובייקטים כאייקון

אובייקטים קטנים יכולים גם להיות מוכנסים למסמכים כתמונות.

הדוגמה הקודית הבאה מראה כיצד להכניס את אובייקט OLE כסמל. למטרה זו, [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) השיעור חושף את [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/) שיטה:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

הדוגמה הקודית הבאה מראה כיצד להכניס אובייקט מוטבע כסמל מזרם לתוך המסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

הגודל המקסימלי של הסמל חייב להיות 32x32 עבור התצוגה הנכונה.

{{% /alert %}}

## הכנס וידאו באינטרנט

וידאו מקוון יכול להיות מוכנס לתוך מסמך Word מן * "Insert" > "Online Video" tab. באפשרותך להוסיף וידאו מקוון לתוך מסמך במיקום הנוכחי על ידי קריאה [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/) שיטה.

The The The [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) הכיתה מציגה ארבעה מעלים של שיטה זו. הראשון עובד עם משאבי הווידאו הפופולריים ביותר ולוקח את `URL` וידאו כפרמטר. לדוגמה, העומס הראשון תומך בהכנסה פשוטה של קטעי וידאו מקוונים מ [YouTube](https://www.youtube.com/) ו [Vimeo](https://vimeo.com/) משאבים.

דוגמה לקוד הבא מראה כיצד להכניס סרטון מקוון *Vimeo* לתוך מסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

עומס שני עובד עם כל משאבי וידאו אחרים ולוקח קוד HTML מוטבע כפרמטר. קוד HTML להטמעת וידאו עשוי להשתנות בהתאם לספק, כך ליצור קשר עם הספק המתאים לפרטים.

{{% alert color="primary" %}}

שימו לב כי המסמך יהיה מותאם באופן אוטומטי עבור MS Word 2013 כדי להציג וידאו.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להכניס סרטון מקוון לתוך מסמך באמצעות קוד HTML כזה:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}