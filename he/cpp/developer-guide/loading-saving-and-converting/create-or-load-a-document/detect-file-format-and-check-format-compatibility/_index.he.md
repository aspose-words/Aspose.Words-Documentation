---
title: לזהות קובץ פורמט ולבדוק פורמט תאימות
second_title: Aspose.Words עבור C++
articleTitle: לזהות קובץ פורמט ולבדוק פורמט תאימות
linktitle: לזהות קובץ פורמט ולבדוק פורמט תאימות
description: "קבע את פורמט הקובץ ב C++ אם אינך בטוח מהו התוכן בפועל של הקובץ, או כדי לבדוק את תאימות הפורמט."
type: docs
weight: 20
url: /he/cpp/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

לפעמים יש צורך לקבוע את הפורמט של מסמך לפני הפתיחה מכיוון שסיומת הקובץ אינה מבטיחה שתוכן הקובץ מתאים. לדוגמה, ידוע כי דוחות קריסטל לעתים קרובות מוציאים מסמכים בפורמט RTF, אבל נותן להם את .הארכת דוק.

Aspose.Words מספק יכולת לקבל מידע על סוג הקובץ על מנת למנוע חריג אם אינך בטוח מהו התוכן בפועל של הקובץ.

## זיהוי פורמט קובץ ללא יוצא מן הכלל

כאשר אתה מתמודד עם מספר מסמכים בפורמטים שונים של קבצים, ייתכן שיהיה עליך להפריד את הקבצים שניתן לעבד על ידי Aspose.Words מאלה שאינם יכולים. ייתכן שתרצה גם לדעת מדוע לא ניתן לעבד חלק מהמסמכים.

אם תנסה לטעון קובץ לאובייקט [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) ו Aspose.Words לא תוכל לזהות את פורמט הקובץ או שהפורמט אינו נתמך, Aspose.Words יזרוק חריג. אתה יכול לתפוס את החריגים האלה ולנתח אותם, אבל Aspose.Words מספק גם את שיטת [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) המאפשרת לנו לקבוע במהירות את פורמט הקובץ מבלי לטעון מסמך עם חריגים אפשריים. שיטה זו מחזירה אובייקט [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/) המכיל את המידע שזוהה על סוג הקובץ.

{{% alert color="primary" %}}

DetectFileFormat בודק רק את פורמט הקובץ אך אינו מאמת את פורמט הקובץ. אין ערובה שהקובץ ייפתח בהצלחה, גם אם **DetectFileFormat** מחזיר שהוא אחד מהפורמטים הנתמכים. הסיבה לכך היא ששיטה **DetectFileFormat** קוראת רק נתוני פורמט קובץ חלקי, המספיקים לבדיקת פורמט הקובץ, אך לא מספיקים לאימות מלא.

{{% /alert %}}

## בדוק תאימות פורמט קבצים

אנו יכולים לבדוק את תאימות הפורמט של כל הקבצים בתיקיה שנבחרה ולמיין אותם לפי פורמט לתיקיות משנה מתאימות.

מכיוון שאנו עוסקים בתוכן בתיקיה, הדבר הראשון שעלינו לעשות הוא לקבל אוסף של כל הקבצים בתיקיה זו בשיטת **GetFiles** של המחלקה `Directory` (ממרחב השמות `System.IO`).

דוגמת הקוד הבאה מראה כיצד לקבל רשימה של כל הקבצים בתיקיה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

כאשר כל הקבצים נאספים, שאר העבודה נעשית בשיטת **DetectFileFormat**, הבודקת את פורמט הקובץ.

דוגמת הקוד הבאה מראה כיצד לחזור על רשימת הקבצים שנאספה, לבדוק את הפורמט של כל קובץ ולהעביר כל קובץ לתיקיה המתאימה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

הקבצים מועברים לתיקיות משנה מתאימות בשיטת `Move` של הכיתה `File`, מאותו מרחב שמות `System.IO`.

הקבצים הבאים משמשים בדוגמה לעיל. שם הקובץ נמצא בצד שמאל והתיאור שלו בצד ימין:

| קבוצת קבצים | מסמך קלט | סוג |
| :- | :- | :- |
| פורמטים של קבצים נתמכים | Test File (DOC).doc | Microsoft Word 95 / 6.0 או Microsoft Word 97 – 2003 מסמך. |
|  | Test File (DOT).dot | Microsoft Word 95 / 6.0 או Microsoft Word 97 – 2003 תבנית. |
|  | Test File (DOCX).docx | משרד פתוח XML WordprocessingML מסמך ללא פקודות מאקרו. |
|  | Test File (DOCM).docm | משרד פתוח XML WordprocessingML מסמך עם פקודות מאקרו. |
|  | Test File (DOTX).dotx | משרד פתוח XML WordprocessingML תבנית. |
|  | Test File (DOTM).dotm | משרד פתוח XML WordprocessingML תבנית עם פקודות מאקרו. |
|  | Test File (XML).xml | FlatOPC OOXML מסמך. |
|  | Test File (RTF).rtf | מסמך בפורמט טקסט עשיר. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML מסמך. |
|  | Test File (HTML).html | HTML מסמך. |
|  | Test File (MHTML).mhtml | MHTML (ארכיון אינטרנט) מסמך. |
|  | Test File (ODT).odt | OpenDocument טקסט (OpenOffice סופר). |
|  | Test File (OTT).ott | OpenDocument תבנית מסמך. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 מסמך. |
| מסמכים מוצפנים | Test File (Enc).doc | מוצפן Microsoft Word 95 / 6.0 או Microsoft Word 97 – 2003 מסמך. |
|  | Test File (Enc).docx | משרד מוצפן פתוח XML WordprocessingML מסמך. |
| פורמטים של קבצים שאינם נתמכים | Test File (JPG).jpg | JPEG קובץ תמונה. |

