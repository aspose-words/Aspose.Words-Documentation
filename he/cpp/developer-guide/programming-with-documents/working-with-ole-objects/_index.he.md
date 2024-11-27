---
title: עבודה עם OLE אובייקטים ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם OLE אובייקטים
linktitle: עבודה עם OLE אובייקטים
description: "יצירה ושינוי OLE הטבעה במסמך באמצעות C++."
type: docs
weight: 360
url: /he/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (קישור והטבעה של אובייקטים) היא טכנולוגיה שבאמצעותה משתמשים יכולים לעבוד עם מסמכים המכילים "אובייקטים" שנוצרו או נערכו על ידי יישומי צד שלישי. כלומר, OLE מאפשר ליישום עריכה לייצא את "האובייקטים" האלה ליישום עריכה אחר ולאחר מכן לייבא אותם עם תוכן נוסף.

במאמר זה נדבר על הכנסת אובייקט OLE והגדרת המאפיינים שלו למסמך.

## הכנס OLE אובייקט

אם אתה רוצה OLE אובייקט, התקשר לשיטה [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) והעביר אותה **ProgId** במפורש עם פרמטרים אחרים.

דוגמת הקוד הבאה מראה כיצד להוסיף OLE אובייקט למסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### הגדר שם קובץ וסיומת בעת הכנסת OLE אובייקט

חבילת OLE היא דרך מורשת ו "לא מתועדת" לאחסן אובייקטים מוטמעים אם מטפל OLE אינו ידוע.

גרסאות מוקדמות של Windows כמו Windows 3.1, 95 ו-98 היו יישום Packager.exe שניתן להשתמש בו כדי להטמיע כל סוג של נתונים במסמך. יישום זה אינו נכלל כעת ב Windows, אך Microsoft Word ויישומים אחרים עדיין משתמשים בו כדי להטביע נתונים אם המטפל OLE חסר או לא ידוע. הכיתה `OlePackage` מאפשרת למשתמשים לגשת למאפיינים OLE Package.

דוגמת הקוד הבאה מראה כיצד להגדיר את שם הקובץ, הסיומת ושם התצוגה עבור OLE Package:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### קבל גישה לנתונים גולמיים של אובייקט OLE

משתמשים יכולים לגשת לנתוני אובייקט OLE באמצעות מאפיינים ושיטות שונות של הכיתה `OleFormat`. לדוגמה, ניתן לקבל את הנתונים הגולמיים של אובייקט `OLE` או את הנתיב והשם של קובץ מקור עבור האובייקט המקושר OLE.

דוגמת הקוד הבאה מראה כיצד לקבל OLE נתונים גולמיים של אובייקט באמצעות שיטת [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### הכנס Ole אובייקט כסמל

OLE ניתן להכניס אובייקטים גם למסמכים כתמונות.

דוגמת הקוד הבאה מראה כיצד להוסיף OLE אובייקט כסמל. למטרה זו, הכיתה [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) חושפת את שיטת [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

דוגמת הקוד הבאה מראה כיצד להכניס אובייקט OLE מוטבע כסמל מזרם למסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## הכנס וידאו מקוון

ניתן להכניס וידאו מקוון למסמך Word מהכרטיסייה *"Insert" > "Online Video"*. ניתן להוסיף סרטון מקוון למסמך במיקום הנוכחי על ידי התקשרות לשיטת [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

ה [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) הכיתה מציגה ארבעה עומסי יתר של שיטה זו. הראשון עובד עם משאבי הווידאו הפופולריים ביותר ולוקח את `URL` של הסרטון כפרמטר. לדוגמה, העומס הראשון תומך בהכנסה פשוטה של סרטונים מקוונים מ [YouTube](https://www.youtube.com/) ו [וימיאו](https://vimeo.com/) משאבים.

דוגמת הקוד הבאה מראה כיצד להוסיף סרטון מקוון מ - *Vimeo* למסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

העומס השני עובד עם כל משאבי הווידאו האחרים ולוקח קוד HTML מוטבע כפרמטר. הקוד HTML להטמעת סרטון עשוי להשתנות בהתאם לספק, לכן פנה לספק המתאים לקבלת פרטים.

{{% alert color="primary" %}}

שים לב שהמסמך יהיה מותאם באופן אוטומטי עבור MS Word 2013 כדי להציג וידאו.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להכניס סרטון מקוון למסמך באמצעות קוד HTML כזה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}
