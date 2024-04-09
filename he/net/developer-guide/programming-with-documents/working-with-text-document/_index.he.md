---
title: עבודה עם מסמך טקסט C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם מסמך טקסט
linktitle: עבודה עם מסמך טקסט
description: "Advanced TXT מסמך עיבוד, רשימות, BiDi, Headers/footer, באמצעות שימוש C#."
type: docs
weight: 430
url: /he/net/working-with-text-document/
---

במאמר זה, נלמד אילו אפשרויות יכולות להיות שימושיות עבור עבודה עם מסמך טקסט דרך Aspose.Words. שימו לב כי זו אינה רשימה מלאה של אפשרויות זמינות, אלא רק דוגמא לעבודה עם חלק מהן.

## תגית: Bi-Directional מארקס

אתה יכול להשתמש [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) רכוש כדי לציין אם להוסיף סימנים דו-כי-כיוניים לפני כל BDi לרוץ כאשר ייצוא בפורמט טקסט רגיל. Aspose.Words הוסף את האופי Unicode "Rnight-TO-LEFT MARK" (U+200F) לפני כל ריצה דו-זמנית בטקסט. אפשרות זו תואמת את האפשרות "Add bi-directional" בדיאלוג של MS Word, כאשר אתה מייצא לתבנית טקסט פשוטה. שימו לב כי הוא מופיע בדיאלוג רק אם יש שפות עריכת ערבית או עברית נוספו ב-MS Word.

דוגמה לקוד הבא מראה כיצד להשתמש **AddBidiMarks** רכוש. ערך ברירת המחדל של הנכס הזה הוא *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## פריטים נבחרים במהלך טעינה

Aspose.Words ניתן לייבא פריט רשימה של קובץ טקסט כמספרי רשימה או טקסט פשוט במודל אובייקט המסמך שלה. The The The [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) הנכס מאפשר לציין כיצד פריטים ברשימה ממוספרים מוכרים כאשר מסמך מיובא מתבנית טקסט פשוטה:

* אם אפשרות זו נקבעת *true*, חללים לבנים משמשים גם כמספר מספר רשימה: אלגוריתם זיהוי רשימה לסגנון הערבי מספר (1., 1.1.2).

* אם אפשרות זו נקבעת *false*, אלגוריתם זיהוי מציין את פסקאות הרשימה, כאשר מספרים מספרים מסתיים עם אוט, סמלים הימניים או הקליעיים (כגון "ד", "או").

דוגמה לקוד הבא מראה כיצד להשתמש בנכס זה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## אזורי מוביל וטיול במהלך טעינה TXT

אתה יכול לשלוט על הדרך של טיפול בחללים מובילים וכבישים במהלך טעינה TXT. החללים המובילים יכולים להיות מזורים, נשמרים או מומרים למקומות עכורים וכבישים יכולים להיות מפורצים או נשמרים.

הדוגמה הבאה של הקוד מראה כיצד לקצץ חללים מובילים וכבישים תוך ייבוא קובץ TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## מסמך Detect כיוון טקסט

Aspose.Words מספק [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) רכוש ב [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) שיעור כדי לזהות את כיוון הטקסט (RTL / LTR) במסמך. נכס זה קובע או מקבל הוראות טקסט מסמכים הניתנים ב [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/) אזהרה. ערך ברירת המחדל נשאר *right*.

הדוגמה הבאה של הקוד מראה כיצד לזהות כיוון טקסט של המסמך תוך ייבוא קובץ TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## ייצוא Header and Footer in Output TXT

אם אתה רוצה לייצא Header ו Footer במסמך ProT, אתה יכול להשתמש [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/) רכוש. נכס זה מפרט את הדרך שבה ראשים והולכי רגל מיוצאים לתבנית טקסט פשוטה.

הדוגמה הבאה של הקוד מראה כיצד לייצא ראשים והולכי רגל לתבנית טקסט פשוטה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## מכירת הרשימה ב Output TXT

Aspose.Words הציג את [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) שיעור המאפשר לציין כיצד רמות הרשימה מוזנחות תוך הייצוא לתבנית טקסט פשוטה. בזמן עבודה עם [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/), The The [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) הנכס מסופק כדי לציין את הדמות שיש להשתמש עבור רמות הרשימה indenting וספירה המציין כמה דמויות להשתמש כ indentation לרמה אחת של רשימה.

ערך ברירת המחדל לקניין אופי הוא '\0' המציין כי אין רתיעה. עבור ספירת רכוש, ערך ברירת המחדל הוא 0, כלומר לא התמדה.

### המונחים: tab Character

הדוגמה הבאה של הקוד מראה כיצד לייצא את רמות הרשימה באמצעות דמויות לשוניות:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### שימוש בטבע

לדוגמה הקוד הבא מראה כיצד לייצא את רמות הרשימה באמצעות דמויות חלל:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### המונחים: Default Indentation

הדוגמה הבאה לקוד מראה כיצד לייצא את רמות הרשימה תוך שימוש בזיהוי ברירת מחדל:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
