---
title: מפרט אפשרויות טעינה Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: אפשרויות טעינה
linktitle: אפשרויות טעינה
description: "בקרה מדויקת יותר על תהליך העומס באמצעות Python."
type: docs
weight: 10
url: /he/python-net/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

בעת טעינת מסמך, אתה יכול להגדיר כמה תכונות מתקדמות. Aspose.Words מספק לך את [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) שיעור, המאפשר שליטה מדויקת יותר של תהליך העומס. כמה פורמטים של עומס יש מעמד מתאים המחזיק אפשרויות עומס עבור פורמט עומס זה, למשל, יש. [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) טעינה לתבנית PDF או [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) טעינה ל- TXT. מאמר זה מספק דוגמאות לעבודה עם אפשרויות של [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) מעמד.

## Set Microsoft Word גרסה לשינוי המראה

גרסאות שונות של Microsoft Word יישום יכול להציג מסמכים באופן שונה. לדוגמה, יש בעיה ידועה עם מסמכי OOXML כגון DOCX או DOCX. DOTX מיוצר באמצעות WPS Office. במקרה כזה, רכיבי סימון מסמכים חיוניים עשויים להיות חסרים או עשויים להיות מפורשים באופן שונה. Microsoft Word 2019 להציג מסמך כזה שונה בהשוואה Microsoft Word 2010 2010.

כברירת מחדל Aspose.Words פתיחת מסמכים באמצעות Microsoft Word חוקי 2019 אם אתה צריך לבצע טעינת מסמכים מופיעים כפי שזה יקרה באחד הקודמים. Microsoft Word גרסאות יישום, עליך לציין במפורש את הגרסה הרצויה באמצעות הגירסה הרצויה [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) רכוש [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) מעמד.

דוגמה לקוד הבא מראה כיצד להגדיר את Microsoft Word גירסה עם אפשרויות טעינה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## הגדרת העדפות שפה כדי לשנות את המראה

פרטים על הצגת מסמך Microsoft Word תלוי לא רק בגרסת היישום ובגרסה [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) ערך רכוש אך גם על הגדרות השפה. Microsoft Word עשוי להראות מסמכים באופן שונה בהתאם להגדרות הדו-שיח "שפת Office" שניתן למצוא ב-"File , Options - Languаge". באמצעות דיאלוג זה משתמש יכול לבחור, למשל, שפה ראשית, הוכחת שפות, להציג שפות וכן הלאה. Aspose.Words מספק [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) רכוש שווה ערך לשיח הזה. אם Aspose.Words הפלט שונה מה Microsoft Word תפוקה, להגדיר את הערך המתאים [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) זה יכול לשפר את מסמך הפלט.

דוגמה לקוד הבא מראה כיצד להגדיר את יפן [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## השתמש טמפלר כדי להימנע מפרש זיכרון

Aspose.Words תומך במסמכים גדולים מאוד שיש להם אלפי דפים מלאים תוכן עשיר. טעינת מסמכים כאלה עשויה לדרוש הרבה RAM. בתהליך הטעינה, Aspose.Words צריך אפילו יותר זיכרון כדי להחזיק מבנים זמניים המשמשים כדי לחלק מסמך.

אם יש לך בעיה עם יוצא דופן זיכרון תוך טעינה של מסמך, נסה להשתמש [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) רכוש. במקרה זה, Aspose.Words יש לאחסן כמה נתונים בקבצים זמניים במקום זיכרון, וזה יכול לעזור למנוע יוצא מן הכלל הזה.

דוגמה לקוד הבא מראה כיצד להגדיר [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## תגית: Encoding Explicitly

רוב פורמטי המסמך המודרניים מאחסנים את התוכן שלהם Unicode ואינם דורשים טיפול מיוחד. מצד שני, יש עדיין מסמכים רבים המשתמשים בקידוד pre-Unicode ולעיתים גם מפספסים מידע קידודי או אפילו לא תומכים במידע על ידי הטבע. Aspose.Words מנסה לזהות באופן אוטומטי את הקידוד המתאים כברירת מחדל, אבל במקרה נדיר ייתכן שיהיה עליך להשתמש באנתרופולוגיה שונה מזו מזוהה על ידי אלגוריתם ההכרה שלנו. במקרה זה, השתמש [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) לרכוש או להגדיר את הקידוד.

דוגמה הקוד הבא מראה כיצד להגדיר את הקידוד כדי לעקוף את הקידוד שנבחר באופן אוטומטי:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## מסמכים מוצפנים

אתה יכול לטעון מסמכי Word מוצפנים עם סיסמה. כדי לעשות זאת, השתמש עומס בנייה מיוחד, אשר מקבל תוספת [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) אובייקט. אובייקט זה מכיל [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) רכוש, המפרט את מחרוזת הסיסמה.

הדוגמה הבאה של הקוד מראה כיצד לטעון מסמך מוצפן עם סיסמה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

אם אתה לא יודע מראש אם הקובץ מוצפן, אתה יכול להשתמש [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/) מעמד, המספק שיטות שימושיות לעבודה עם פורמטים קובץ, כגון זיהוי תבנית הקובץ או המרת הרחבות קבצים ל / מתבניות תבנית הקובץ. כדי לזהות אם המסמך מוצפן ודורש סיסמה כדי לפתוח אותו, השתמש באפשרות [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) רכוש.

לדוגמה הקוד הבא מראה כיצד לאמת מסמך מוצפן או לא:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
