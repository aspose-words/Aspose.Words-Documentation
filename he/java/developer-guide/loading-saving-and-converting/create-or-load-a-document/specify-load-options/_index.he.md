---
title: מפרט אפשרויות טעינה Java
second_title: Aspose.Words עבור Java
articleTitle: אפשרויות טעינה
linktitle: אפשרויות טעינה
description: "הגדר תכונות מתקדמות בעת טעינת מסמך באמצעות Java להשיג שליטה מדויקת יותר על התהליך."
type: docs
weight: 10
url: /he/java/specify-load-options/
---

בעת טעינת מסמך, אתה יכול להגדיר כמה תכונות מתקדמות. Aspose.Words מספק לך את [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) מעמד, המאפשר שליטה מדויקת יותר של תהליך העומס. כמה פורמטי עומס יש מעמד מתאים המחזיק אפשרויות עומס עבור פורמט עומס זה, למשל, יש. [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) טעינה לתבנית PDF או [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) טעינה ל- TXT. מאמר זה מספק דוגמאות לעבודה עם אפשרויות של **LoadOptions** מעמד.

## Set Microsoft Word גרסה לשינוי המראה

גרסאות שונות של Microsoft Word יישום יכול להציג מסמכים באופן שונה. לדוגמה, יש בעיה ידועה עם מסמכי OOXML כגון DOCX או DOCX. DOTX מיוצר באמצעות WPS Office. במקרים כאלה, אלמנטים של סימון מסמכים חיוניים עשויים להיות חסרים או עשויים להיות מתפרשים אחרת. Microsoft Word 2019 להציג מסמך כזה שונה בהשוואה Microsoft Word 2010 2010.

כברירת מחדל Aspose.Words פתיחת מסמכים באמצעות Microsoft Word חוקי 2019 אם אתה צריך לבצע טעינת מסמכים מופיעים כפי שזה יקרה באחד הקודמים. Microsoft Word גרסאות יישום, עליך לציין במפורש את הגרסה הרצויה באמצעות הגירסה הרצויה [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) רכוש **LoadOptions** מעמד.

דוגמה לקוד הבא מראה כיצד להגדיר את Microsoft Word גירסה עם אפשרויות טעינה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## הגדרת העדפות שפה כדי לשנות את המראה

פרטים על הצגת מסמך Microsoft Word תלוי לא רק בגרסת היישום ובגרסה **MswVersion** ערך רכוש אך גם על הגדרות השפה. Microsoft Word עשוי להראות מסמכים באופן שונה בהתאם להגדרות הדו-שיח "שפת Office" שניתן למצוא ב-"File - Options" Languаge. באמצעות דיאלוג זה משתמש יכול לבחור, למשל, שפה ראשית, הוכחת שפות, להציג שפות וכן הלאה. Aspose.Words מספק [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) רכוש שווה ערך לשיח הזה. אם Aspose.Words הפלט שונה מה Microsoft Word תפוקה, להגדיר את הערך המתאים **EditingLanguage** זה יכול לשפר את מסמך הפלט.

דוגמה לקוד הבא מראה כיצד להגדיר את יפן **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## שימוש בשימוש WarningCallback בעיות בקרה תוך שמירה על מסמך

מסמכים מסוימים עשויים להיות מושחתים, מכילים ערכים לא חוקיים, או שיש להם תכונות שאינן נתמכות כיום על ידי Aspose.Words. אם אתה רוצה לדעת על בעיות שהתרחשו בעת טעינת מסמך, Aspose.Words מספק [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) ממשק.

הדוגמה הבאה מציגה את יישום **IWarningCallback** ממשק:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

כדי לקבל מידע על כל הבעיות לאורך זמן העומס, השתמש [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) רכוש.

דוגמה לקוד הבא מראה כיצד להשתמש בנכס זה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## שימוש ב-Loading קריאה לשליטה במשאבים החיצוניים

מסמך עשוי להכיל קישורים חיצוניים לתמונות הנמצאות במקום כלשהו בדיסק מקומי, ברשת או באינטרנט. Aspose.Words באופן אוטומטי נטען תמונות כאלה במסמך, אך יש מצבים שבהם יש לשלוט בתהליך זה. לדוגמה, כדי להחליט אם אנחנו באמת צריכים לטעון תמונה מסוימת או אולי לדלג עליה. The The The [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) אפשרות לטעון מאפשרת לך לשלוט בזה.

הדוגמה הבאה מציגה את יישום [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) ממשק:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

דוגמה לקוד הבא מראה כיצד להשתמש **ResourceLoadingCallback** רכוש:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## השתמש טמפלר כדי להימנע מפרש זיכרון

Aspose.Words תומך במסמכים גדולים מאוד שיש להם אלפי דפים מלאים תוכן עשיר. טעינה של מסמכים כאלה עשויה לדרוש הרבה RAM. בתהליך הטעינה, Aspose.Words צריך אפילו יותר זיכרון כדי להחזיק מבנים זמניים המשמשים כדי לחלק מסמך.

אם יש לך בעיה עם יוצא דופן מחוץ לזיכרון בעת טעינת מסמך, נסה להשתמש [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) רכוש. במקרה זה, Aspose.Words יש לאחסן כמה נתונים בקבצים זמניים במקום זיכרון, וזה יכול לעזור למנוע יוצא מן הכלל הזה.

דוגמה לקוד הבא מראה כיצד להגדיר **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## תגית: Encoding Explicitly

רוב פורמטי המסמך המודרניים מאחסנים את התוכן שלהם Unicode ואינם דורשים טיפול מיוחד. מצד שני, יש עדיין מסמכים רבים המשתמשים בקידוד pre-Unicode ולעיתים גם מפספסים מידע קידודי או אפילו לא תומכים במידע על ידי הטבע. Aspose.Words מנסה לזהות באופן אוטומטי את הקידוד המתאים כברירת מחדל, אבל במקרה נדיר ייתכן שיהיה עליך להשתמש באנתרופולוגיה שונה מזו מזוהה על ידי אלגוריתם ההכרה שלנו. במקרה זה, השתמש [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) לרכוש או להגדיר את הקידוד.

דוגמה הקוד הבא מראה כיצד להגדיר את הקידוד כדי לעקוף את הקידוד שנבחר באופן אוטומטי:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## מסמכים מוצפנים

אתה יכול לטעון מסמכי Word מוצפנים עם סיסמה. כדי לעשות זאת, השתמש עומס בנייה מיוחד, אשר מקבל תוספת [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) אובייקט אובייקט זה מכיל [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) רכוש, המפרט את מחרוזת הסיסמה.

הדוגמה הבאה של הקוד מראה כיצד לטעון מסמך מוצפן עם סיסמה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

אם אתה לא יודע מראש אם הקובץ מוצפן, אתה יכול להשתמש [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) הכיתה, המספקת שיטות שימושיות לעבודה עם פורמטי קובץ, כגון זיהוי תבנית הקובץ או המרת הרחבות קבצים ל / מתבניות תבנית הקובץ. כדי לזהות אם המסמך מוצפן ודורש סיסמה כדי לפתוח אותו, השתמש באפשרות [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) רכוש.

הדוגמה הקודית הבאה מראה כיצד לאמת את OpenDocument או שהיא מוצפנת או לא:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
