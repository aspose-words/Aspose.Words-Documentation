---
title: הצפן מסמך ב C++
second_title: Aspose.Words עבור C++
articleTitle: הצפן מסמך
linktitle: הצפן מסמך
description: "הצפן את המסמך שלך באמצעות אלגוריתמי הצפנה מתאימים לפורמטים ספציפיים של מסמכים."
type: docs
weight: 20
url: /he/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

הצפנה היא התהליך שמתרגם טקסט קריא לרצפים חסרי משמעות של בתים, כך שניתן לקרוא אותו רק על ידי האדם שיש לו את מפתח הפענוח או את הקוד הסודי. תהליך זה ממלא תפקיד חשוב באבטחת התוכן שלך. זה עוזר לקודד את התוכן, לאמת את מקור המסמך, להוכיח שהתוכן לא שונה לאחר שליחתו ולוודא שהנתונים מהמסמך בטוחים.

מאמר זה מסביר כיצד Aspose.Words מאפשר לך להצפין מסמך וכיצד לבדוק אם למסמך יש הצפנה או לא.

## הצפן באמצעות סיסמה

כדי להצפין מסמך, השתמש במאפיין **Password** כדי לספק סיסמה שמתפקדת כמפתח הצפנה. פעולה זו תשנה את תוכן המסמך שלך ותהפוך אותו לבלתי קריא. המסמך המוצפן ידרוש להזין סיסמה זו לפני שניתן יהיה לפתוח אותה.

{{% alert color="primary" %}}

תוכל למצוא את המאפיין **Password** המתאים לפורמט הנדרש. לכל פורמט שמירת מסמך ב [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) יש מחלקה מתאימה המכילה אפשרויות שמירה לפורמט זה. לדוגמה, המאפיין [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) בכיתה [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) עבור DOC, או המאפיין [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) בכיתה [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) עבור DOCX, DOCM, DOTX, DOTM, ו FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

שים לב שרק פורמטים מסוימים של מסמכים תומכים בהצפנה. לדוגמה, RTF אינו תומך בהצפנה.

{{% /alert %}}

הטבלה שלהלן מפרטת את הפורמטים ואלגוריתמי ההצפנה הנתמכים על ידי Aspose.Words:

| פורמט | הצפנה נתמכת בזמן הטעינה | הצפנה נתמכת תוך שמירה |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR הצפנה40 סיביות RC4 EncryptionCryptoAPI RC4 הצפנה | RC4 הצפנה (40 סיביות) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 סטנדרטי EncryptionECMA-376 הצפנה זריזה | ECMA-376 הצפנה רגילה (AES128 + SHA1) |
| ODT, OTT | ODF הצפנה (דג מכה / AES) | ODF הצפנה (AES256 + SHA256) |
| PDF | RC4 הצפנה (40/128 קצת) |

דוגמת הקוד הבאה מראה כיצד להצפין מסמך באמצעות סיסמה:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## בדוק אם מסמך מוצפן

במקרים מסוימים, ייתכן שיהיה מסמך בלתי קריא ואתה רוצה להיות בטוח שהמסמך מוצפן ולא פגום או דחוס.

כדי לזהות אם מסמך מוצפן ואם נדרשת סיסמה, אתה יכול להשתמש במאפיין [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) של הכיתה [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo). מאפיין זה יאפשר לך גם לבצע פעולה כלשהי לפני טעינת מסמך, לדוגמה, ליידע משתמש לספק סיסמה.

דוגמת הקוד הבאה מראה כיצד לזהות את הצפנת המסמך:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## פתח מסמך עם או בלי סיסמה

לאחר שווידאנו שמסמך מוצפן, נוכל לנסות לפתוח מסמך זה ללא סיסמה, מה שאמור להוביל לחריג.

דוגמת הקוד הבאה מראה כיצד לנסות לפתוח מסמך מוצפן ללא סיסמה:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

לאחר שראינו שלא ניתן לפתוח מסמך מוצפן ללא סיסמה, נוכל לנסות לפתוח אותו על ידי הזנת הסיסמה.

דוגמת הקוד הבאה מראה כיצד לנסות לפתוח מסמך מוצפן עם סיסמה:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
