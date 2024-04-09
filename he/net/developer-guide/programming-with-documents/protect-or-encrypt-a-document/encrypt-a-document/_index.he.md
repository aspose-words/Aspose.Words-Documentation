---
title: קבל מסמך C#
second_title: Aspose.Words עבור .NET
articleTitle: הצפנה מסמך
linktitle: הצפנה מסמך
description: "הצפנה המסמך שלך באמצעות אלגוריתמי הצפנה מתאימים לפורמטים ספציפיים של מסמך C#."
type: docs
weight: 20
url: /he/net/encrypt-a-document/
---

הצפנה היא התהליך המתורגם טקסט קריא לרצף חסר משמעות של עציצים כך שניתן לקרוא רק על ידי האדם שיש לו מפתח פענוח או קוד סודי. תהליך זה ממלא תפקיד חשוב בהשגת התוכן שלך. זה עוזר לפענח את התוכן, לאמת את מקור המסמך, להוכיח כי התוכן לא שונה לאחר שנשלחה, ולהבטיח כי הנתונים מן המסמך בטוח.

מאמר זה מסביר כיצד Aspose.Words מאפשר לך להצפין מסמך וכיצד לבדוק אם מסמך יש הצפנה או לא.

## הצפנה עם סיסמה

כדי להצפין מסמך, השתמש **Password** נכס לספק סיסמה שפועלת כמפתח הצפנה. זה ישנה את התוכן של המסמך שלך ולהפוך אותו לבלתי קריא. המסמך המוצפן ידרוש שהסיסמה הזו תיכנס לפני שניתן לפתוח אותה.

{{% alert color="primary" %}}

אתה יכול למצוא את המתאים **Password** נכס לתבנית הנדרשת כל מסמך שומר פורמט [שמירת שם](https://reference.aspose.com/words/net/aspose.words.saving/) יש מחלקה מתאימה המכילה אפשרויות הצלה עבור פורמט זה. לדוגמה, [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) רכוש ב [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) שיעור עבור DOC, או [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) רכוש ב [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) קטגוריה: DOCX, DOCM DOTX, DOTM ו- FlatOpc

{{% /alert %}}

{{% alert color="primary" %}}

שים לב שרק פורמטי מסמך מסוימים תומכים בהצפנה. RTF אינו תומך בהצפנה.

{{% /alert %}}

הטבלה מתחת לרשימות את הפורמטים והאלגוריתמים ההצפנה הנתמכות על ידי Aspose.Words:

| פורמט |  תמיכה הצפנה תוך טעינה |  תמיכה הצפנה תוך חיסכון |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR הצפנה 40-bit RC4 הצפנהAPI RC4 הצפנה |  RC4 הצפנה (40 סיביות) |
|  DOCX, DOTX, DOCM DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpc טמפlate MacroEnabled |  ECMA-376 הצפנה סטנדרטית של ECMA-376 Encryption |  ECMA-376 הצפנה סטנדרטית (AES128 + SHA1) |
|  ODT, OTT |  ODF הצפנה (Blowfish/AES) |  ODF הצפנה (AES256 + SHA256) |
|  PDF |  -                                                            |  RC4 הצפנה (40/128 bit) |

הדוגמה הבאה של הקוד מראה כיצד להצפין מסמך עם סיסמה:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## בדוק אם מסמך מוצג

במקרים מסוימים, ייתכן שיהיה לך מסמך בלתי קריא ורוצה להיות בטוח כי המסמך מוצפן ולא מושחת או דחוס.

כדי לזהות אם מסמך מוצפן ואם נדרש סיסמה, אתה יכול להשתמש [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) רכוש [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) מעמד. נכס זה גם יאפשר לך לבצע פעולה מסוימת לפני הגשת מסמך, לדוגמה, להודיע למשתמש לספק סיסמה.

דוגמה לקוד הבא מראה כיצד לזהות את ההצפנה של המסמך:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## פתח מסמך עם או בלי סיסמה

כאשר אנו דואגים כי מסמך מוצפן, אנו יכולים לנסות לפתוח מסמך זה ללא סיסמה, אשר צריך להוביל יוצא דופן.

הדוגמה הבאה של הקוד מראה כיצד לנסות לפתוח מסמך מוצפן ללא סיסמה:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

לאחר שראינו כי לא ניתן לפתוח מסמך מוצפן ללא סיסמה, אנו יכולים לנסות לפתוח אותו באמצעות כניסה לסיסמה.

הדוגמה הבאה של הקוד מראה כיצד לנסות לפתוח מסמך מוצפן עם סיסמה:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
