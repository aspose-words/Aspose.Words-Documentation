---
title: מסמך מגביל עריכה Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: מסמך הגבלת עריכה
linktitle: מסמך הגבלת עריכה
description: "הגבלת מסמך על ידי הגדרת סוג הגבלה באמצעות Python. אתה יכול גם להסיר הגנה ולעשות אזורים בלתי מוגבלים."
type: docs
weight: 30
url: /he/python-net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

לפעמים אתה יכול להגביל את היכולת לערוך מסמך ורק לאפשר פעולות מסוימות איתו. זה יכול להיות שימושי כדי למנוע מאנשים אחרים לערוך מידע רגיש וסודיות במסמך שלך.

Aspose.Words מאפשר לך להגביל עריכת מסמך על ידי הגדרת סוג הגבלה. בנוסף, Aspose.Words גם מאפשר לך לציין הגדרות הגנה עבור מסמך.

מאמר זה מסביר כיצד להשתמש Aspose.Words כדי לבחור סוג של הגבלה, כיצד להוסיף או להסיר הגנה, וכיצד להפוך אזורים בלתי מוגבלים לעריכה.

## המונחים: Restriction type

Aspose.Words מאפשר לך לשלוט בדרך שבה אתה מגביל את התוכן באמצעות [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) פרמטר סימולציה זה יאפשר לך לבחור סוג מדויק של הגנה כגון:

* [ALLOW_ONLY_COMMENTS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_comments)
* [ALLOW_ONLY_FORM_FIELDS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_form_fields)
* [ALLOW_ONLY_REVISIONS](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#allow_only_revisions)
* [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only)
* [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection)

כל הסוגים הם מאובטח סיסמה, ואם סיסמה זו אינה נכנסת נכונה, משתמש לא יוכל לשנות באופן חוקי את התוכן של המסמך שלך. לכן, אם המסמך שלך יוחזר אליך ללא דרישה לספק את הסיסמה הנדרשת, זה סימן שמשהו לא בסדר.

אם לא הגדרת סיסמה בעת בחירת סוג האבטחה, משתמשים אחרים יכולים פשוט להתעלם מהגנת המסמך שלך.

{{% alert color="primary" %}}

שים לב שהסיסמה נקבעת היא רק נכס במסמך שניתן להסיר אם תכונות המסמך נגישות. בהתאם לכך, סיסמה כזו אינה ערובה לאבטחת המסמך. The The The [Document.unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) השיטה מראה בדיוק את זה.

{{% /alert %}}

## הוסף Document Protection

הוספת הגנה למסמך שלך היא תהליך פשוט, שכן כל מה שאתה צריך לעשות הוא ליישם אחת משיטות ההגנה המפורטות בסעיף זה.

Aspose.Words מאפשר לך להגן על המסמכים שלך מפני שינויים באמצעות [Document.protect](https://reference.aspose.com/words/python-net/aspose.words/document/protect/) שיטה. שיטה זו אינה תכונה ביטחונית ואינו מצפין מסמך.

{{% alert color="primary" %}}

In In In Microsoft Word, ניתן להגביל את העריכה באופן דומה באמצעות שניהם:

* הגבלת עריכה (File) Protect Document)
* תכונה חלופית - "Restrict Editing" (ביקורת על הגבלת עריכה)

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להוסיף הגנת סיסמה למסמכים שלך:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()

# Apply document protection.
doc.protect(aw.ProtectionType.NO_PROTECTION, "password")

doc.save(docs_base.artifacts_dir + "DocumentProtection.PasswordProtection.docx");
{{< /highlight >}}

הדוגמה הבאה של הקוד מראה כיצד להגביל את העריכה במסמך, כך שרק עריכת שדות צורה אפשרית:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Text added to a document.")

# A document protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# Save the protected document.
doc.save(docs_base.artifacts_dir + "DocumentProtection.AllowOnlyFormFieldsProtect.docx");
{{< /highlight >}}

## הסרת הגנת המסמכים

Aspose.Words מאפשר לך להסיר הגנה מפני מסמך עם שינוי מסמך פשוט וישיר. באפשרותך להסיר את הגנת המסמך מבלי לדעת את הסיסמה בפועל או לספק את הסיסמה הנכונה כדי לפתוח את המסמך על ידי שימוש במסמך. [unprotect](https://reference.aspose.com/words/python-net/aspose.words/document/unprotect/) שיטה. לשתי הדרכים אין הבדל.

דוגמה לקוד הבא מראה כיצד להסיר הגנה מהמסמכים שלך:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Text added to a document.")

# Documents can have protection removed either with no password, or with the correct password.
doc.unprotect()
doc.protect(aw.ProtectionType.READ_ONLY, "newPassword")
doc.unprotect("newPassword")

doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveDocumentProtection.docx");
{{< /highlight >}}

## המונחים: Unrestricted Editable Zones

אתה יכול להגביל את העריכה של המסמך שלך ובמקביל לאפשר שינויים בחלקים נבחרים. לכן, כל מי שפותח את המסמך שלך יוכל לגשת לחלקים בלתי מוגבלים אלה ולבצע שינויים לתוכן.

Aspose.Words מאפשר לך לסמן את החלקים שניתן לשנות במסמך שלך באמצעות [start_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_editable_range/) ו [end_editable_range](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_editable_range/) שיטות.

הדוגמה הבאה של הקוד מראה כיצד לסמן את כל המסמך כ- Read-Only ולקבוע אזורים שניתן לערוך בו:

{{< highlight python >}}
import aspose.words as aw

# Upload a document and make it as read-only.
doc = aw.Document(docs_base.my_dir + "Document.docx")
builder = aw.DocumentBuilder(doc)

doc.protect(aw.ProtectionType.READ_ONLY, "MyPassword")

builder.writeln("Hello world! Since we have set the document's protection level to read-only, we cannot edit this paragraph without the password.")

# Start an editable range.
edRangeStart = builder.start_editable_range()
# An EditableRange object is created for the EditableRangeStart that we just made.
editableRange = edRangeStart.editable_range

# Put something inside the editable range.
builder.writeln("Paragraph inside first editable range")

# An editable range is well-formed if it has a start and an end.
edRangeEnd = builder.end_editable_range()

builder.writeln("This paragraph is outside any editable ranges, and cannot be edited.");

doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedEditableRegions.docx");
{{< /highlight >}}

ניתן גם לבחור הגבלות שונות לעריכת מסמכים עבור סעיפים שונים.

לדוגמה הקוד הבא מראה כיצד להוסיף הגבלה לכל המסמך, ולאחר מכן להסיר את ההגבלה עבור אחד הקטעים:

{{< highlight python >}}
import aspose.words as aw

# Insert two sections with some text.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Section 1. Unprotected.")
builder.insert_break(aw.BreakType.SECTION_BREAK_CONTINUOUS)
builder.writeln("Section 2. Protected.")

# Section protection only works when document protection is turned and only editing in form fields is allowed.
doc.protect(aw.ProtectionType.ALLOW_ONLY_FORM_FIELDS, "password")

# By default, all sections are protected, but we can selectively turn protection off.
doc.sections[0].protected_for_forms = False
doc.save(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");

doc = aw.Document(docs_base.artifacts_dir + "DocumentProtection.UnrestrictedSection.docx");
self.assertFalse(doc.sections[0].protected_for_forms)
self.assertTrue(doc.sections[1].protected_for_forms);
{{< /highlight >}}
