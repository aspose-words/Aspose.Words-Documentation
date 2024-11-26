---
title: הגבל את עריכת המסמכים ב C++
second_title: Aspose.Words עבור C++
articleTitle: הגבל עריכת מסמכים
linktitle: הגבל עריכת מסמכים
description: "הגבל עריכת מסמך על ידי הגדרת סוג הגבלה באמצעות C++. ניתן גם להסיר הגנה ולהפוך אזורים בלתי מוגבלים לעריכה."
type: docs
weight: 30
url: /he/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

לפעמים ייתכן שיהיה עליך להגביל את היכולת לערוך מסמך ולאפשר רק פעולות מסוימות איתו. זה יכול להיות שימושי כדי למנוע מאנשים אחרים לערוך מידע רגיש וסודי במסמך שלך.

Aspose.Words מאפשר לך להגביל עריכת מסמך על ידי הגדרת סוג הגבלה. בנוסף, Aspose.Words גם מאפשר לך לציין הגדרות הגנת כתיבה למסמך.

מאמר זה מסביר כיצד להשתמש Aspose.Words לבחירת סוג הגבלה, כיצד להוסיף או להסיר הגנה וכיצד להפוך אזורים בלתי מוגבלים לעריכה.

## בחר סוג הגבלת עריכה

Aspose.Words מאפשר לך לשלוט באופן שבו אתה מגביל את התוכן באמצעות פרמטר הספירה [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/). זה יאפשר לך לבחור סוג הגנה מדויק כגון:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

כל הסוגים מאובטחים בסיסמה, ואם סיסמה זו לא הוזנה כהלכה, משתמש לא יוכל לשנות באופן חוקי את תוכן המסמך שלך. לפיכך, אם המסמך שלך מוחזר אליך ללא דרישה לספק את הסיסמה הדרושה, זה סימן שמשהו לא בסדר.

אם לא הגדרת סיסמה בעת בחירת סוג האבטחה, משתמשים אחרים יכולים פשוט להתעלם מההגנה על המסמך שלך.

{{% alert color="primary" %}}

שים לב שהסיסמה המוגדרת היא רק מאפיין במסמך שניתן להסיר אם ניתן לגשת למאפייני המסמך. לפיכך, סיסמה כזו אינה ערובה לאבטחת המסמך. שיטת [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) מראה בדיוק את זה.

{{% /alert %}}

## הוסף הגנה על מסמכים

הוספת הגנה למסמך שלך היא תהליך פשוט, שכן כל שעליך לעשות הוא ליישם אחת משיטות ההגנה המפורטות בסעיף זה.

Aspose.Words מאפשר לך להגן על המסמכים שלך מפני שינויים בשיטת [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). שיטה זו אינה תכונת אבטחה ואינה מצפינה מסמך.

{{% alert color="primary" %}}

ב Microsoft Word, אתה יכול להגביל את העריכה בצורה דומה באמצעות שניהם:

* הגבל עריכה (קובץ, מידע, הגנה על מסמך)
* תכונה חלופית – " הגבל עריכה "(סקירה הגנה על הגבלת עריכה)

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף הגנה באמצעות סיסמה למסמך שלך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

דוגמת הקוד הבאה מראה כיצד להגביל עריכה במסמך כך שרק עריכה בשדות טופס אפשרית:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## הסר את הגנת המסמכים

Aspose.Words מאפשר לך להסיר הגנה ממסמך עם שינוי מסמך פשוט וישיר. באפשרותך להסיר את הגנת המסמך מבלי לדעת את הסיסמה בפועל או לספק את הסיסמה הנכונה לביטול נעילת המסמך באמצעות שיטת [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). שתי הדרכים להסרת אין הבדל.

דוגמת הקוד הבאה מראה כיצד להסיר הגנה מהמסמך שלך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## ציין אזורים הניתנים לעריכה ללא הגבלה

אתה יכול להגביל את עריכת המסמך שלך ובמקביל לאפשר שינויים בחלקים שנבחרו ממנו. לכן, כל מי שיפתח את המסמך שלך יוכל לגשת לחלקים בלתי מוגבלים אלה ולבצע שינויים בתוכן.

Aspose.Words מאפשר לך לסמן את החלקים שניתן לשנות במסמך שלך באמצעות [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) ו [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/) שיטות.

דוגמת הקוד הבאה מראה כיצד לסמן את המסמך כולו כקריאה בלבד ולציין בו אזורים הניתנים לעריכה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

ניתן גם לבחור הגבלות שונות לעריכת מסמכים עבור חלקים שונים.

דוגמת הקוד הבאה מראה כיצד להוסיף הגבלה עבור המסמך כולו, ולאחר מכן להסיר את ההגבלה עבור אחד הסעיפים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
