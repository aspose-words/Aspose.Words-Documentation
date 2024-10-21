---
title: תבנית File בעת טעינה
second_title: Aspose.Words עבור Python via .NET
articleTitle: Detect File Format ו- Check Compatibility
linktitle: Detect File Format ו- Check Compatibility
description: "לקבוע את תבנית הקובץ Python אם אינך בטוח מהו התוכן האמיתי של הקובץ, או לבדוק את תאימות הפורמט."
type: docs
weight: 20
url: /he/python-net/detect-file-format-and-check-format-compatibility/
---

לפעמים יש צורך לקבוע את פורמט המסמך לפני הפתיחה, כי הרחבה הקובץ אינה מבטיחה כי התוכן של הקובץ מתאים. לדוגמה, ידוע כי דוחות קריסטל לעתים קרובות מפיקים מסמכים בפורמט RTF, אבל נותן להם את הסיומת.doc.

Aspose.Words מספק יכולת לקבל מידע על סוג הקובץ כדי למנוע חריג אם אתה לא בטוח מה התוכן האמיתי של הקובץ.

## תבנית קובץ Detect ללא יוצא דופן

כאשר אתה מתמודד עם מסמכים מרובים בפורמטים שונים של קבצים, ייתכן שתצטרך להפריד קבצים אלה שניתן לעבד על ידי Aspose.Words מאלה שלא יכולים. אתה יכול גם לדעת מדוע חלק מהמסמכים לא ניתן לעבד.

אם אתה מנסה לטעון קובץ לתוך קובץ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) אובייקט ו Aspose.Words לא יכול לזהות את פורמט הקובץ או את התבנית לא נתמך. Aspose.Words לזרוק יוצא מן הכלל. אתה יכול לתפוס את החריגים האלה לנתח אותם, אבל Aspose.Words גם מספק [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) שיטה המאפשרת לנו לקבוע במהירות את תבנית הקובץ מבלי לטעון מסמך עם חריגים אפשריים. שיטה זו מחזירה [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) אובייקט המכיל את המידע מזוהה על סוג הקובץ.

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) רק בודק את תבנית הקובץ, אך אינו מאמת את תבנית הקובץ. אין ערובה לכך שהקובץ ייפתח בהצלחה, גם אם [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) הוא חוזר כי זהו אחד הפורמטים הנתמכות. זה בגלל [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) שיטה קוראת רק נתוני פורמט קבצים חלקיים, מספיק כדי לבדוק את תבנית הקובץ, אך לא מספיק עבור אימות מלא.

{{% /alert %}}

## עקבו אחרי Files Compatibility

אנו יכולים לבדוק את תאימות הפורמט של כל הקבצים בתיקיה שנבחרה ולמיין אותם על ידי פורמט לתוך מכפליים מקבילים.

מכיוון שאנו מתמודדים עם תוכן בתיקיה, הדבר הראשון שאנחנו צריכים לעשות הוא לקבל אוסף של כל הקבצים בתיקיה זו באמצעות שימוש בקובץ. **רשימה מלוכלכת** שיטת **os** מודול.

לדוגמה הקוד הבא מראה כיצד לקבל רשימה של כל הקבצים בתיקיה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

כאשר כל הקבצים נאספים, שאר העבודה מתבצעת על ידי [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) שיטה, אשר בודקת את תבנית הקובץ.

הדוגמה הבאה של הקוד מראה כיצד להחליש מעל רשימת הקבצים שנאספו, לבדוק את התבנית של כל קובץ, ומעביר כל קובץ לתיקיה המתאימה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

הקבצים מועברים למכפירים המתאימים באמצעות **העתק** שיטת **סגור** מודול.

הקבצים הבאים משמשים בדוגמה לעיל. שם הקובץ בצד שמאל והתיאור שלו מימין:

| Group קבצים | Input Document | סוג |
|  :-  |  :-  |  :-  |
| פורמטים קובץ | מבחן (Doc)doc | Microsoft Word 95/6.0 Microsoft Word 97 - 2003 מסמך |
|  | File (`Dot`(Dot) | Microsoft Word 95/6.0 Microsoft Word 97 - 2003 תבנית |
|  | File File (Docx)docx | Office Open XML Wordprocessing מסמך ML ללא מאקרו |
|  | File File (DoCM) | Office Open XML Wordprocessing ML מסמך עם מאקרו |
|  | תגית: dotx | Office Open XML Wordprocessing תבנית ML |
|  | תגית: Dotm | Office Open XML Wordprocessing תבנית ML עם מאקרו |
|  | תגית: XML | מסמך FlatOPC OOXML |
|  | תגית:RTF | מסמך פורמט טקסט עשיר |
|  | שם הסרטון:WordML | Microsoft Word 2003 Wordprocessing מסמך ML |
|  | File File (HTML)html | מסמך HTML |
|  | מבחן (MHTML)mhtml | מסמך MHTML (ארכיון אינטרנט) |
|  | מבחן (Odt) | OpenDocument Text (OpenOffice Writer) |
|  | מבחן (Ot) | קוד פתוח |
|  | מבחן (DocPreWord60).doc | Microsoft Word 2.0 מסמך |
| מסמכים מוצפנים | מבחן (Enc)doc | הצפנה Microsoft Word 95/6.0 Microsoft Word 97 - 2003 מסמך |
|  | מבחן (Enc)docx | Office Open XML Wordprocessing מסמך ML |
| פורמטים קובץ לא נתמך | תגית: JPG jpg | קובץ JPEG |

