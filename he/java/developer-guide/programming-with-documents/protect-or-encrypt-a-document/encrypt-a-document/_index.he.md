---
title: קבל מסמך Java
second_title: Aspose.Words עבור Java
articleTitle: הצפנה מסמך
linktitle: הצפנה מסמך
description: "הצפנה המסמך שלך באמצעות אלגוריתמי הצפנה מתאימים עבור פורמטי מסמך ספציפיים Java."
type: docs
weight: 20
url: /he/java/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

הצפנה היא התהליך המתורגם טקסט קריא לרצף חסר משמעות של עציצים, כך שניתן לקרוא רק על ידי האדם שיש לו מפתח פעמוני או קוד סודי. תהליך זה ממלא תפקיד חשוב בהשגת התוכן שלך. זה עוזר לפענח את התוכן, לאמת את מקור המסמך, להוכיח כי התוכן לא שונה לאחר שליחתו, ולהבטיח כי הנתונים מן המסמך בטוח.

מאמר זה מסביר כיצד Aspose.Words מאפשר לך להצפין מסמך וכיצד לבדוק אם מסמך יש הצפנה או לא.

## הצפנה עם סיסמה

כדי להצפין מסמך, השתמש **Password** נכס לספק סיסמה שפועלת כמפתח הצפנה. זה ישנה את התוכן של המסמך שלך ולהפוך אותו לבלתי קריא. המסמך המוצפן ידרוש שהסיסמה הזו תיכנס לפני שניתן לפתוח אותה.

{{% alert color="primary" %}}

אתה יכול למצוא את המתאים **Password** נכס לתבנית הנדרשת. לכל פורמט שמור מסמך יש מחלקה מתאימה המכילה אפשרויות הצלה עבור פורמט זה. לדוגמה, [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) רכוש ב [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) שיעור עבור DOC, או [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) רכוש ב [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) קטגוריה עבור DOCX, DOCM, DOTX, DOTM ו- FlatOpc

{{% /alert %}}

{{% alert color="primary" %}}

שים לב שרק פורמטי מסמך מסוימים תומכים בהצפנה. RTF אינו תומך בהצפנה.

{{% /alert %}}

הטבלה מתחת לרשימות את הפורמטים והאלגוריתמים ההצפנה הנתמכות על ידי Aspose.Words:

| פורמט |  תמיכה הצפנה תוך טעינה |  תמיכה בהצפנה תוך חיסכון |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR הצפנה 40-bit RC4 הצפנהAPI RC4 הצפנה |  RC4 הצפנה (40 סיביות) |
|  DOCX, DOTX, DOCM DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpc טמפlate MacroEnabled |  ECMA-376 הצפנה סטנדרטית של ECMA-376 Encryption |  ECMA-376 הצפנה סטנדרטית (AES128 + SHA1) |
|  ODT, OTT |  ODF הצפנה (Blowfish/AES) |  ODF הצפנה (AES256 + SHA256) |
|  PDF |  -                                                            |  RC4 הצפנה (40/128 bit) |

הדוגמה הבאה של הקוד מראה כיצד להצפין מסמך עם סיסמה:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## בדוק אם מסמך מוצפן

במקרים מסוימים, ייתכן שיהיה לך מסמך בלתי קריא ורוצה להיות בטוח כי המסמך מוצפן ולא מושחת או דחוס.

כדי לזהות אם מסמך מוצפן ואם נדרש סיסמה, אתה יכול להשתמש [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) רכוש [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) מעמד. נכס זה גם יאפשר לך לבצע פעולה מסוימת לפני הגשת מסמך, לדוגמה, להודיע למשתמש לספק סיסמה.

דוגמה לקוד הבא מראה כיצד לזהות את ההצפנה של המסמך:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## פתח מסמך עם או בלי סיסמה

כאשר אנו דואגים כי מסמך מוצפן, אנו יכולים לנסות לפתוח מסמך זה ללא סיסמה, אשר צריך להוביל יוצא דופן.

הדוגמה הבאה של הקוד מראה כיצד לנסות לפתוח מסמך מוצפן ללא סיסמה:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

לאחר שראינו כי לא ניתן לפתוח מסמך מוצפן ללא סיסמה, אנו יכולים לנסות לפתוח אותו על ידי כניסה לסיסמה.

הדוגמה הבאה של הקוד מראה כיצד לנסות לפתוח מסמך מוצפן עם סיסמה:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
