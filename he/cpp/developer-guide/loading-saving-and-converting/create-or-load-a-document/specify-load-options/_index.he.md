---
title: ציין אפשרויות טעינה ב C++
second_title: Aspose.Words עבור C++
articleTitle: ציין אפשרויות טעינה
linktitle: ציין אפשרויות טעינה
description: "שליטה מדויקת יותר על תהליך העומס."
type: docs
weight: 10
url: /he/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

בעת טעינת מסמך, באפשרותך להגדיר כמה מאפיינים מתקדמים. Aspose.Words מספק לך את הכיתה [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/), המאפשרת שליטה מדויקת יותר בתהליך העומס. בחלק מהפורמטים של עומס יש מחלקה מתאימה שמכילה אפשרויות עומס עבור פורמט עומס זה, לדוגמה, יש [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) לטעינה ל PDF פורמט או [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) לטעינה ל TXT. מאמר זה מספק דוגמאות לעבודה עם אפשרויות של הכיתה **LoadOptions**.

## הגדר Microsoft Word גרסה כדי לשנות את המראה

גרסאות שונות של היישום Microsoft Word יכולות להציג מסמכים באדישות. לדוגמה, יש בעיה ידועה עם OOXML מסמכים כגון DOCX או DOTX המיוצר באמצעות WPS משרד. במקרה כזה, אלמנטים חיוניים של סימון מסמכים עשויים להיות חסרים או עשויים להיות מפורשים באופן שונה, מה שגורם ל Microsoft Word 2019 להציג מסמך כזה באופן שונה בהשוואה ל Microsoft Word 2010.

כברירת מחדל Aspose.Words פותח מסמכים באמצעות Microsoft Word 2019 כללים. אם אתה צריך לעשות זאת כדי לגרום לטעינת המסמך להופיע כפי שהיה קורה באחת מגרסאות היישום הקודמות Microsoft Word, עליך לציין במפורש את הגרסה הרצויה באמצעות המאפיין [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) של הכיתה **LoadOptions**.

דוגמת הקוד הבאה מראה כיצד להגדיר את הגרסה Microsoft Word עם אפשרויות טעינה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## הגדר העדפות שפה כדי לשנות את המראה

הפרטים של הצגת מסמך ב Microsoft Word תלויים לא רק בגרסת היישום ובערך המאפיין **MswVersion** אלא גם בהגדרות השפה. Microsoft Word עשוי להציג מסמכים באופן שונה בהתאם להגדרות הדו-שיח "העדפות שפת משרד", שניתן למצוא ב"קובץ אפשרויות שפות". באמצעות תיבת דו-שיח זו משתמש יכול לבחור, למשל, שפה ראשית, שפות הגהה, שפות תצוגה וכן הלאה. Aspose.Words מספק את המאפיין [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) כמקבילה לדיאלוג זה. אם Aspose.Words הפלט שונה מהפלט Microsoft Word, הגדר את הערך המתאים עבור **EditingLanguage** - זה יכול לשפר את מסמך הפלט.

דוגמת הקוד הבאה מראה כיצד להגדיר יפנית כ **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## השתמש ב WarningCallback כדי לשלוט בבעיות בעת טעינת מסמך

מסמכים מסוימים עשויים להיות פגומים, מכילים ערכים לא חוקיים או שיש להם תכונות שאינן נתמכות כרגע על ידי Aspose.Words. אם ברצונך לדעת על בעיות שהתרחשו בעת טעינת מסמך, Aspose.Words מספק את הממשק [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

דוגמת הקוד הבאה מראה את יישום ממשק **IWarningCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

כדי לקבל מידע על כל הבעיות לאורך זמן הטעינה, השתמש במאפיין `WarningCallback`.

דוגמת הקוד הבאה מראה כיצד להשתמש במאפיין זה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## השתמש ResourceLoadingCallback כדי לשלוט על טעינת המשאבים החיצוניים

מסמך עשוי להכיל קישורים חיצוניים לתמונות הממוקמות איפשהו בדיסק, ברשת או באינטרנט מקומיים. Aspose.Words טוען תמונות כאלה באופן אוטומטי למסמך, אך ישנם מצבים בהם יש לשלוט בתהליך זה. לדוגמה, כדי להחליט אם אנחנו באמת צריכים לטעון תמונה מסוימת או אולי לדלג עליה. אפשרות הטעינה ResourceLoadingCallback מאפשרת לך לשלוט בזה.

דוגמת הקוד הבאה מראה את יישום ממשק IResourceLoadingCallback:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

דוגמת הקוד הבאה מראה כיצד להשתמש במאפיין **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## השתמש TempFolder כדי למנוע חריג זיכרון

Aspose.Words תומך במסמכים גדולים במיוחד שיש בהם אלפי עמודים מלאים בתוכן עשיר. טעינת מסמכים כאלה עשויה לדרוש הרבה RAM. בתהליך הטעינה, Aspose.Words צריך עוד יותר זיכרון כדי להחזיק מבנים זמניים המשמשים לניתוח מסמך.

אם יש לך בעיה עם החריג מחוץ לזיכרון בעת טעינת מסמך, נסה להשתמש במאפיין [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/). במקרה זה, Aspose.Words יאחסן נתונים מסוימים בקבצים זמניים במקום בזיכרון, וזה יכול לעזור למנוע חריג כזה.

דוגמת הקוד הבאה מראה כיצד להגדיר **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## הגדר את הקידוד במפורש

רוב פורמטי המסמכים המודרניים מאחסנים את התוכן שלהם באוניקוד ואינם דורשים טיפול מיוחד. מצד שני, עדיין ישנם מסמכים רבים המשתמשים בקידוד קדם-יוניקוד כלשהו ולעיתים מפספסים מידע קידוד או אפילו אינם תומכים במידע קידוד מטבעו. Aspose.Words מנסה לזהות באופן אוטומטי את הקידוד המתאים כברירת מחדל, אך במקרה נדיר ייתכן שיהיה עליך להשתמש בקידוד שונה מזה שזוהה על ידי אלגוריתם זיהוי הקידוד שלנו. במקרה זה, השתמש במאפיין [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) כדי לקבל או להגדיר את הקידוד.

דוגמת הקוד הבאה מראה כיצד להגדיר את הקידוד כדי לעקוף את הקידוד שנבחר באופן אוטומטי:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## טען מסמכים מוצפנים

ניתן לטעון Word מסמכים מוצפנים באמצעות סיסמה. לשם כך, השתמש בעומס קונסטרוקטור מיוחד, המקבל אובייקט [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/). אובייקט זה מכיל את המאפיין [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), המציין את מחרוזת הסיסמה.

דוגמת הקוד הבאה מראה כיצד לטעון מסמך מוצפן באמצעות סיסמה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

אם אינך יודע מראש אם הקובץ מוצפן, תוכל להשתמש בכיתה [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/), המספקת שיטות שירות לעבודה עם פורמטים של קבצים, כגון זיהוי פורמט הקובץ או המרת סיומות קבצים אל/ממספרי פורמט הקובץ. כדי לזהות אם המסמך מוצפן ודורש סיסמה כדי לפתוח אותו, השתמש במאפיין `IsEncrypted`.

דוגמת הקוד הבאה מראה כיצד לאמת OpenDocument או שהוא מוצפן או לא:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
