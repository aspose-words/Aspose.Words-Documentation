---
title: מפרט אפשרויות טעינה C#
second_title: Aspose.Words עבור .NET
articleTitle: אפשרויות טעינה
linktitle: אפשרויות טעינה
description: "בקרה מדויקת יותר על תהליך העומס באמצעות C#."
type: docs
weight: 10
url: /he/net/specify-load-options/
timestamp: 2024-07-09-19-00-42
---

בעת טעינת מסמך, אתה יכול להגדיר כמה תכונות מתקדמות. Aspose.Words מספק לך את [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) שיעור, המאפשר שליטה מדויקת יותר של תהליך העומס. כמה פורמטים של עומס יש מעמד מתאים המחזיק אפשרויות עומס עבור פורמט עומס זה, למשל, יש. [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) טעינה לתבנית PDF או [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) טעינה ל- TXT. מאמר זה מספק דוגמאות לעבודה עם אפשרויות של **LoadOptions** מעמד.

## Set Microsoft Word גרסה לשינוי המראה

גרסאות שונות של Microsoft Word יישום יכול להציג מסמכים באופן שונה. לדוגמה, יש בעיה ידועה עם מסמכי OOXML כגון DOCX או DOCX. DOTX מיוצר באמצעות WPS Office. במקרה כזה, רכיבי סימון מסמכים חיוניים עשויים להיות חסרים או עשויים להיות מפורשים באופן שונה. Microsoft Word 2019 להציג מסמך כזה שונה בהשוואה Microsoft Word 2010 2010.

כברירת מחדל Aspose.Words פתיחת מסמכים באמצעות Microsoft Word חוקי 2019 אם אתה צריך לבצע טעינת מסמכים מופיעים כפי שזה יקרה באחד הקודמים. Microsoft Word גרסאות יישום, עליך לציין במפורש את הגרסה הרצויה באמצעות הגירסה הרצויה [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) רכוש **LoadOptions** מעמד.

דוגמה לקוד הבא מראה כיצד להגדיר את Microsoft Word גירסה עם אפשרויות טעינה:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## הגדרת העדפות שפה כדי לשנות את המראה

פרטים על הצגת מסמך Microsoft Word תלוי לא רק בגרסת היישום ובגרסה **MswVersion** ערך רכוש אך גם על הגדרות השפה. Microsoft Word עשוי להראות מסמכים באופן שונה בהתאם להגדרות הדו-שיח "שפת Office" שניתן למצוא ב-"File , Options - Languаge". באמצעות דיאלוג זה משתמש יכול לבחור, למשל, שפה ראשית, הוכחת שפות, להציג שפות וכן הלאה. Aspose.Words מספק [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) רכוש שווה ערך לשיח הזה. אם Aspose.Words הפלט שונה מה Microsoft Word תפוקה, להגדיר את הערך המתאים **EditingLanguage** זה יכול לשפר את מסמך הפלט.

דוגמה לקוד הבא מראה כיצד להגדיר את יפן **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## שימוש בשימוש WarningCallback בעיות שליטה תוך שמירה על מסמך

מסמכים מסוימים עשויים להיות מושחתים, מכילים ערכים לא חוקיים, או שיש להם תכונות שאינן נתמכות כיום על ידי Aspose.Words. אם אתה רוצה לדעת על בעיות שהתרחשו בעת טעינת מסמך, Aspose.Words מספק [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) ממשק.

הדוגמה הבאה מציגה את יישום **IWarningCallback** ממשק:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

כדי לקבל מידע על כל הבעיות לאורך זמן העומס, השתמש [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/) רכוש.

דוגמה לקוד הבא מראה כיצד להשתמש בנכס זה:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## שימוש ב-Loading קריאה לשליטה במשאבים החיצוניים

מסמך עשוי להכיל קישורים חיצוניים לתמונות הנמצאות במקום כלשהו בדיסק מקומי, ברשת או באינטרנט. Aspose.Words באופן אוטומטי נטען תמונות כאלה במסמך, אך יש מצבים שבהם יש לשלוט בתהליך זה. לדוגמה, כדי להחליט אם אנחנו באמת צריכים לטעון תמונה מסוימת או אולי לדלג עליה. The The The [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) אפשרות לטעון מאפשרת לך לשלוט בזה.

הדוגמה הבאה מציגה את יישום [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) ממשק:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

דוגמה לקוד הבא מראה כיצד להשתמש **ResourceLoadingCallback** רכוש:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## השתמש טמפלר כדי להימנע מפרש זיכרון

Aspose.Words תומך במסמכים גדולים מאוד שיש להם אלפי דפים מלאים תוכן עשיר. טעינת מסמכים כאלה עשויה לדרוש הרבה RAM. בתהליך הטעינה, Aspose.Words צריך אפילו יותר זיכרון כדי להחזיק מבנים זמניים המשמשים כדי לחלק מסמך.

אם יש לך בעיה עם יוצא דופן זיכרון תוך טעינה של מסמך, נסה להשתמש [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/) רכוש. במקרה זה, Aspose.Words יש לאחסן כמה נתונים בקבצים זמניים במקום זיכרון, וזה יכול לעזור למנוע יוצא מן הכלל הזה.

דוגמה לקוד הבא מראה כיצד להגדיר **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## תגית: Encoding Explicitly

רוב פורמטי המסמך המודרניים מאחסנים את התוכן שלהם Unicode ואינם דורשים טיפול מיוחד. מצד שני, יש עדיין מסמכים רבים המשתמשים בקידוד pre-Unicode ולעיתים גם מפספסים מידע קידודי או אפילו לא תומכים במידע על ידי הטבע. Aspose.Words מנסה לזהות באופן אוטומטי את הקידוד המתאים כברירת מחדל, אבל במקרה נדיר ייתכן שיהיה עליך להשתמש באנתרופולוגיה שונה מזו מזוהה על ידי אלגוריתם ההכרה שלנו. במקרה זה, השתמש [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) לרכוש או להגדיר את הקידוד.

דוגמה הקוד הבא מראה כיצד להגדיר את הקידוד כדי לעקוף את הקידוד שנבחר באופן אוטומטי:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## מסמכים מוצפנים

אתה יכול לטעון מסמכי Word מוצפנים עם סיסמה. כדי לעשות זאת, השתמש עומס בנייה מיוחד, אשר מקבל תוספת [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) אובייקט. אובייקט זה מכיל [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) רכוש, המפרט את מחרוזת הסיסמה.

הדוגמה הבאה של הקוד מראה כיצד לטעון מסמך מוצפן עם סיסמה:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

אם אתה לא יודע מראש אם הקובץ מוצפן, אתה יכול להשתמש [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/) מעמד, המספק שיטות שימושיות לעבודה עם פורמטים קובץ, כגון זיהוי תבנית הקובץ או המרת הרחבות קבצים ל / מתבניות תבנית הקובץ. כדי לזהות אם המסמך מוצפן ודורש סיסמה כדי לפתוח אותו, השתמש באפשרות [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) רכוש.

הדוגמה הקודית הבאה מראה כיצד לאמת את OpenDocument או שהיא מוצפנת או לא:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
