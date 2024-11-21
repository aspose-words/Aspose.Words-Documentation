---
title: הדפסה של מסמך C#
second_title: Aspose.Words עבור .NET
articleTitle: הדפסה מסמך מתודולוגיה או שימוש באבחון
linktitle: הדפסה מסמך מתודולוגיה או שימוש באבחון
description: "הדפס מסמך על מסמך Server שימוש ב- XpsPrint API או באמצעות מדפסת שנבחרה עם הגדרות ופרופיל הדפסה C#."
type: docs
weight: 55
url: /he/net/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-31-14-23-37
---

מאמר זה מתאר כיצד להדפיס מסמך עיבוד מילה מ- ASP.NET או Windows יישום שירות באמצעות Aspose.Words וה `XpsPrint` API. הוא גם מדגים את השיטות של הדפסה מסמך עם הגדרות, תצוגה מקדימה הדפסה ודיאלוגים מתקדמים הדפסה, ומסביר כיצד להפחית את זמן הקריאה הראשונה כדי להדפיס מסמך.

## הדפסה מסמך על מסמך Server באמצעות `XpsPrint` API

סעיף זה מיועד למשתמשים שרוצים להגיש XPS מסמך XpsPrint API מתוך A .NET יישום באמצעות Aspose.Words.

### מגבלות הדפסה מסמך ASP.NET או Windows יישומי שירות

מתי לפתח .NET יישום שיוצר פלט מודפס כלשהו, אתה בדרך כלל יכול להשתמש שיעורים הניתנים ב *System.Drawing.Printing* שם, או Windows מצגת Foundation (WPF) כיתות עם זאת, אם היישום הוא ASP.NET או Windows יישום השירות, האפשרויות להדפסה מוגבלות, כי Microsoft מונע באמצעות גישה זו. The The The .NET Framework שיעורי הדפסה אינם נתמך על ידי יישום שירותים. זה כולל ASP דפים, שבדרך כלל פועלים בהקשר של שירות השרת.

השיעורים בתוך *System.Drawing.Printing* השם אינו נתמך לשימוש בתוך Windows שירות או שירות ASP.NET יישום או שירות, וניסיון השימוש שלהם עשוי לייצר ביצועי שירות מופחתים, חריגים בזמן ריצה, ובעיות אחרות. השימוש ב- WPF כדי לבנות Windows כמו כן, שירותים אינם תומכים. מאז WPF היא טכנולוגיית מצגת, Windows השירות דורש הרשאות מתאימות לביצוע פעולות חזותיות הכרוכות באינטראקציה של משתמשים. אם Windows לשירות אין הרשאות כאלה, ייתכן שיש תוצאות בלתי צפויות.

The The The Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) אובייקט מספק משפחה [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) שיטות להדפיס מסמכים שיטות אלה משתמשות .NET שיעורי הדפסה המוגדרים ב *System.Drawing.Printing* שם. יש הרבה Aspose.Words לקוחות המשתמשים בהם בהצלחה להדפסה באפליקציות של השרת שלהם. עם זאת, מאמר זה מדגים שיטה חלופית להדפסה כי הוא תואם עם Microsoftהמלצות

### שיטות להדפיס מסמך על Server

הדרך הנכונה להדפיס מסמכים לפי Microsoft באמצעות XpsPrint API. זה API זמין Windows 7, Windows Server 2008 2008 R2, על Windows Vista מספק את Update for Windows Vista הוא מותקן.

מאז Aspose.Words יכול בקלות להמיר כל מסמך <span notrans="<span notrans=" XPS"=""></span>" צריך רק לכתוב את הקוד שעובר XPS מסמך `XpsPrint` API. הבעיה היחידה היא ש `XpsPrint` API הוא לא מנוסה ודורש ידע כלשהו של טכנולוגיית Invoke.

כדי להדפיס מסמך, Aspose.Words מספק **XpsPrintHelper** הכיתה מכילה שיטת הדפסה פשוטה, שבה אתה רק צריך לציין את הפרמטרים הבאים (ראה פרטים נוספים במאמר) [מסמך הדפסה באמצעות XPS API](/words/net/missing-features-in-openxml/)):

- מסמך שאתה רוצה להדפיס.
- שם Printer
- שם עבודה (אופציונלי).
- ערך בולט, המציין האם התוכנית צריכה לחכות עד להשלמת עבודת ההדפסה. לכן, המערכת תבדוק האם המסמך הודפס בהצלחה או ישוב מיד לאחר שליחת עבודת ההדפסה. במקרה האחרון, אי אפשר לזהות האם עבודת ההדפסה הצליחה.

עם כל בעיות הגשת או הדפסה של המסמך, השיטה תזרוק יוצא דופן.

דוגמה קוד להלן מראה כיצד להדפיס מסמך באמצעות **XpsPrintHelper** קטגוריה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

כאשר אתה מפעיל את הפרויקט, הוא הדפס מסמך מדגם על המדפסת המפורטת ופותח חלון קונסולה כדי להציג תוצאות הדפסה. כאשר עבודת ההדפסה משלימה או שגיאות בחוץ, המערכת תציג הודעת הצלחה או טקסט של יוצא מן הכלל נזרק.

ניתן גם להגדיר כמה הגדרות הדפסה באמצעות [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) מעמד. לדוגמא, Microsoft Word, מגשי המדפסת מוגדרים לכל חלק והם ספציפיים למדפסות. לכן, אתה יכול לשנות באופן שיטתי את הערכים האלה עבור כל חלק באמצעות הסעיף. [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) ו [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/) תכונות.

{{% alert color="primary" %}}

במקרים מסוימים, ייתכן שתצטרך להשתמש במדגם זה ללא Aspose.Words. לדוגמה, כאשר כבר יש לך XPS מסמך ורק רוצה להדפיס אותו מתוך ASP.NET או Windows יישום השירות אז אתה יכול פשוט למחוק את `Print` שיטה.

{{% /alert %}}

ישנם שני עומסים של **XpsPrintHelper**.**Print** שיטה. המטען הראשון לוקח [Document](https://reference.aspose.com/words/net/aspose.words/document/) אובייקט וחוסך אותו לתוך `MemoryStream` בתוך XPS פורמט. העומס השני מקבל `Stream` אובייקט. הזרם חייב להכיל מסמך XPS פורמט.

אתה יכול להוריד את הדוגמאות של שיטה overloading [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## הדפסה מסמך עם הגדרות ותצוגה מקדימה של הדפסה

בעת עבודה עם מסמכים, נדרש לעתים קרובות להדפיס אותם למדפסת שנבחרה. זה עוזר להשתמש בדיאלוג תצוגה מקדימה הדפסה כדי לבדוק באופן ויזואלי איך המסמך המודפס יופיע ולבחור אפשרויות הדפסה רלוונטיות.

The The The Aspose.Words אין דיאלוגים או צורות בנויות, אלא מיישם את [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) מעמד, המבוסס על .NET **PrintDocument** מעמד. מקרה של כיתה זו ניתן לעבור **PrintPreviewDialog** ליצור תצוגה מקדימה ולהדפיס את המסמך. גם, [הדפסהPreviewDialog](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) הכיתה מגדירה את הפלט להעברת מדפסת.

הדוגמה הבאה מראה כיצד להשתמש בכיתות אלה כדי להדפיס מסמך Aspose.Words באמצעות דיאלוגי תצוגה מקדימה והגדרות:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

The The The **AllowSomePages** הנכס מאפשר לך לבחור מגוון של דפים להדפסה אם הערך של נכס זה נכון. כברירת מחדל, כל הדפים בטווח נבחרים להדפסה.

{{% /alert %}}

כדי לייעל את המראה של הגדרות דיאלוג הדפסה Preview, ציין תכונות של **PrintPreviewDialog** מעמד.

## הדפסת דפים מרובים על One Sheet

תמיד מועיל להיות יותר גמישות בעת הדפסת מסמכים. שימוש .NET ו Aspose.Words אתה יכול בקלות לתקן את פעולת ההדפסה כדי ליישם את ההיגיון מותאם אישית שלך על ידי הגדרת הדרך שבה המסמך יופיע בדף המודפס.

כמו בסעיף הקודם, Aspose.Words ליישם את **MultipagePrintDocument** הכיתה, המבוססת על .NET **PrintDocument** מעמד. פירוש הדבר כי קיים .NET ניתן להשתמש בתשתיות הדפסה באופן כזה שהדיאלוגים הקלאסיים והדפסים יאפשרו הדמיה של המסמך לפני הדפסה. The The The **MultipagePrintDocument** הכיתה מספקת את היכולת להדפיס כמה דפים על גיליון אחד של נייר.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

התוצאה של דוגמה קוד זה מוצגת להלן:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## עקבו אחרי Print Progress Dialog When Printing a Document

הדפסת אבחון התקדמות אינה מופיעה בעת הדפסה של מסמך באמצעות המסמך [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) שיטה. עם זאת, דיאלוג זה מופיע במהלך הדפסה עם אחר. [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) שיטה. במקרה זה, כדי למנוע דו-שיח הדפסה להופיע, עליך לציין הגדרות מדפסת בתוקף ואת בקר הדפסה סטנדרטי בשיטה זו, כפי שמוצג בדוגמה להלן:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## כיצד להפחית את זמן הקריאה הראשונה כדי להדפיס מסמך

Aspose.Words קורא ותופס כמה שדות **PrinterSettings** להפחית את זמן ההדפסה. אתה יכול להשיג את זה על ידי קריאה [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) שיטה. שיטה זו נקראת לפני הדפסה מתחילה אם היא לא בוצעה בעבר. שימו לב כי הזמן הכולל של הדפסה ללא קריאה של שיטה זו הוא כמעט זהה. מטרת השימוש בשיטה זו היא להפחית את זמן הקריאה הראשונה של [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) שיטה. דוגמה לקוד הבא מראה כיצד להשתמש בשיטה זו:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## ראה גם

- [עדכון פלטפורמה Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
