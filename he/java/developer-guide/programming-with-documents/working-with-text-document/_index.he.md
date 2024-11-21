---
title: עבודה עם מסמך טקסט Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם מסמך טקסט
linktitle: עבודה עם מסמך טקסט
description: "Advanced TXT מסמך עיבוד, רשימות, BiDi, Headers/footer, באמצעות שימוש Java."
type: docs
weight: 430
url: /he/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

במאמר זה נלמד אילו אפשרויות יכולות להיות מועילות לעבוד עם מסמך טקסט דרך Aspose.Words. שימו לב כי זו אינה רשימה מלאה של אפשרויות זמינות, אלא רק דוגמא לעבודה עם חלק מהן.

## תגית: Bi-Directional מארקס

אתה יכול להשתמש [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) נכס כדי לציין אם להוסיף סימנים דו-כי-כיוניים לפני כל BDi לרוץ כאשר ייצוא בפורמט טקסט רגיל. Aspose.Words הוסף את האופי Unicode "Rnight-TO-LEFT MARK" (U+200F) לפני כל ריצה דו-זמנית בטקסט. אפשרות זו תואמת את האפשרות "Add bi-directional" ב- MS Word Conversionשיח כאשר אתה מייצא לתבנית טקסט פשוטה. שימו לב כי הוא מופיע בדיאלוג רק אם אחת מהשפות הערביות או העבריות נוספו ב-MS Word.

דוגמה לקוד הבא מראה כיצד להשתמש `TxtSaveOptions.AddBidiMarks` רכוש. ערך ברירת המחדל של הנכס הזה הוא *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## פריטים נבחרים במהלך טעינה

Aspose.Words ניתן לייבא פריט רשימה של קובץ טקסט כמספרי רשימה או טקסט פשוט במודל אובייקט המסמך שלה. The The The [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) הנכס מאפשר לציין כיצד פריטים ברשימה ממוספרים מוכרים כאשר מסמך מיובא מתבנית טקסט פשוטה:

* אם אפשרות זו נקבעת *true*, חללים לבנים משמשים גם כמספר מספר רשימה: אלגוריתם זיהוי רשימה לסגנון הערבי מספר (1., 1.1.2).
* אם אפשרות זו נקבעת *false*, אלגוריתם זיהוי הרשימות מזהה את סעיף פסקאות, כאשר מספרי רשימה מסתיים עם dot, הברכיט הנכון או סמלי כדורים (כגון "זה", "או").

דוגמה לקוד הבא מראה כיצד להשתמש בנכס זה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## מוביל וטיול חללים במהלך טעינה

אתה יכול לשלוט על הדרך של טיפול בחללים מובילים וכבישים במהלך טעינת קבצי TXT. החללים המובילים יכולים להיות מזורים, נשמרים או מומרים למקומות עכורים וכבישים יכולים להיות מפורצים או נשמרים.

דוגמה לקוד שניתן להלן מראה כיצד לקצץ חללים מובילים וכבישים תוך ייבוא קובץ TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## מסמך Detect כיוון טקסט

Aspose.Words מספק [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) רכוש [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) שיעור כדי לזהות את כיוון הטקסט (RTL / LTR) במסמך. נכס זה קובע או מקבל הוראות טקסט מסמכים הניתנים ב [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) אזהרה. ערך ברירת המחדל נשאר נכון.

הדוגמה הבאה של הקוד מראה כיצד לזהות את כיוון הטקסט של המסמך תוך ייבוא קובץ TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## ייצוא Header and Footer in Output TXT File

אם אתה רוצה לייצא את Header ו Footer במסמך הפלט TXT, אתה יכול להשתמש [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) רכוש. נכס זה מפרט את הדרך שבה ראשים והולכי רגל מיוצאים לתבנית טקסט פשוטה.

דוגמה הקוד הבא מראה כיצד לייצא ראשים והולכי רגל לתבנית טקסט פשוטה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## מכירת הרשימה ב Output TXT

Aspose.Words הציג [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) שיעור המאפשר לציין כיצד רמות הרשימה מוזנחות תוך הייצוא לתבנית טקסט פשוטה. בזמן עבודה עם [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), The The [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) הנכס מסופק כדי לציין את הדמות שיש להשתמש עבור רמות הרשימה indenting וספירה המציין כמה דמויות להשתמש כ indentation לרמה אחת של רשימה.

ערך ברירת המחדל לקניין אופי הוא '\0' המציין כי אין רתיעה. עבור ספירת רכוש, ערך ברירת המחדל הוא 0, כלומר לא התמדה.

### המונחים: tab Character

הדוגמה הבאה לקוד מראה כיצד לייצא את רמות הרשימה באמצעות דמויות לשוניות:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### שימוש בטבע

לדוגמה הקוד הבא מראה כיצד לייצא את רמות הרשימה באמצעות דמויות חלל:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### המונחים: Default Indentation

הדוגמה הקודית הבאה מראה כיצד לייצא את רמות הרשימה באמצעות הסתה ברירת מחדל:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
