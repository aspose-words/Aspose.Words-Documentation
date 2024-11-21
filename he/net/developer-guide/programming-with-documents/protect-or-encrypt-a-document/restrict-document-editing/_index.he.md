---
title: מסמך מגביל עריכה C#
second_title: Aspose.Words עבור .NET
articleTitle: מסמך הגבלת עריכה
linktitle: מסמך הגבלת עריכה
description: "הגבלת מסמך על ידי הגדרת סוג הגבלה באמצעות C#. אתה יכול גם להסיר הגנה ולעשות אזורים בלתי מוגבלים."
type: docs
weight: 30
url: /he/net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

לפעמים אתה יכול להגביל את היכולת לערוך מסמך ורק לאפשר פעולות מסוימות איתו. זה יכול להיות שימושי כדי למנוע מאנשים אחרים לערוך מידע רגיש וסודיות במסמך שלך.

Aspose.Words מאפשר לך להגביל עריכת מסמך על ידי הגדרת סוג הגבלה. בנוסף, Aspose.Words גם מאפשר לך לציין הגדרות הגנה עבור מסמך.

מאמר זה מסביר כיצד להשתמש Aspose.Words כדי לבחור סוג של הגבלה, כיצד להוסיף או להסיר הגנה, וכיצד להפוך אזורים בלתי מוגבלים לעריכה.

## המונחים: Restriction type

Aspose.Words מאפשר לך לשלוט בדרך שבה אתה מגביל את התוכן באמצעות [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) פרמטר סימולציה זה יאפשר לך לבחור סוג מדויק של הגנה כגון:

* לאפשר רק
* לאפשר רק פורמולדס
* לאפשר רק חידושים
* קרא רק
* NoProtection

כל הסוגים הם מאובטח סיסמה, ואם סיסמה זו אינה נכנסת נכונה, משתמש לא יוכל לשנות באופן חוקי את התוכן של המסמך שלך. לכן, אם המסמך שלך יוחזר אליך ללא דרישה לספק את הסיסמה הנדרשת, זה סימן שמשהו לא בסדר.

אם לא הגדרת סיסמה בעת בחירת סוג האבטחה, משתמשים אחרים יכולים פשוט להתעלם מהגנת המסמך שלך.

{{% alert color="primary" %}}

שים לב שהסיסמה נקבעת היא רק נכס במסמך שניתן להסיר אם תכונות המסמך נגישות. בהתאם לכך, סיסמה כזו אינה ערובה לאבטחת המסמך. The The The [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) השיטה מראה בדיוק את זה.

{{% /alert %}}

## הוסף Document Protection

הוספת הגנה למסמך שלך היא תהליך פשוט, שכן כל מה שאתה צריך לעשות הוא ליישם אחת משיטות ההגנה המפורטות בסעיף זה.

Aspose.Words מאפשר לך להגן על המסמכים שלך מפני שינויים באמצעות [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/) שיטה. שיטה זו אינה תכונה ביטחונית ואינו מצפין מסמך.

{{% alert color="primary" %}}

In In In Microsoft Word, ניתן להגביל את העריכה באופן דומה באמצעות שניהם:

* הגבלת עריכה (File) Protect Document)
* תכונה חלופית - "Restrict Editing" (ביקורת על הגבלת עריכה)

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להוסיף הגנת סיסמה למסמכים שלך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

הדוגמה הבאה של הקוד מראה כיצד להגביל את העריכה במסמך, כך שרק עריכת שדות צורה אפשרית:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## הסרת הגנת המסמכים

Aspose.Words מאפשר לך להסיר הגנה מפני מסמך עם שינוי מסמך פשוט וישיר. באפשרותך להסיר את הגנת המסמך מבלי לדעת את הסיסמה בפועל או לספק את הסיסמה הנכונה כדי לפתוח את המסמך על ידי שימוש במסמך. [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) שיטה. לשתי הדרכים אין הבדל.

דוגמה לקוד הבא מראה כיצד להסיר הגנה מהמסמכים שלך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## המונחים: Unrestricted Editable Zones

אתה יכול להגביל את העריכה של המסמך שלך ובמקביל לאפשר שינויים בחלקים נבחרים. לכן, כל מי שפותח את המסמך שלך יוכל לגשת לחלקים בלתי מוגבלים אלה ולבצע שינויים לתוכן.

Aspose.Words מאפשר לך לסמן את החלקים שניתן לשנות במסמך שלך באמצעות [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) ו [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/) שיטות.

הדוגמה הבאה של הקוד מראה כיצד לסמן את כל המסמך כ- Read-Only ולקבוע אזורים שניתן לערוך בו:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

ניתן גם לבחור הגבלות שונות לעריכת מסמכים עבור סעיפים שונים.

לדוגמה הקוד הבא מראה כיצד להוסיף הגבלה לכל המסמך, ולאחר מכן להסיר את ההגבלה עבור אחד הקטעים:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
