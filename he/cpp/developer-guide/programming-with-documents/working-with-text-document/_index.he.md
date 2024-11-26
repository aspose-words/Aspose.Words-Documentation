---
title: עבודה עם מסמך טקסט ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם מסמך טקסט
linktitle: עבודה עם מסמך טקסט
description: "מתקדם TXT עיבוד מסמכים, רשימות, BiDi, כותרות עליונות / תחתונה, באמצעות C++."
type: docs
weight: 430
url: /he/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

במאמר זה נלמד אילו אפשרויות יכולות להיות שימושיות לעבודה עם מסמך טקסט באמצעות Aspose.Words. לידיעתך, זו אינה רשימה מלאה של האפשרויות הזמינות, אלא רק דוגמה לעבודה עם חלק מהן.

## הוסף סימנים דו כיווניים

אתה יכול להשתמש במאפיין [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) כדי לציין אם להוסיף סימנים דו כיווניים לפני כל BiDi לרוץ בעת ייצוא בפורמט טקסט רגיל. Aspose.Words מוסיף תו יוניקוד 'RIGHT-TO-LEFT MARK' ( + 200 מעלות צלזיוס) לפני כל ריצה דו-כיוונית בטקסט. אפשרות זו מתאימה לאפשרות" הוסף סימנים דו-כיווניים " ב MS Word דיאלוג המרת קבצים בעת ייצוא לפורמט טקסט רגיל. שים לב שהוא מופיע בדיאלוג רק אם אחת משפות העריכה הערבית או העברית מתווספת ב MS Word.

דוגמת הקוד הבאה מראה כיצד להשתמש במאפיין **AddBidiMarks**. ערך ברירת המחדל של מאפיין זה הוא *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## זיהוי פריטי רשימה במהלך הטעינה TXT

Aspose.Words ניתן לייבא פריט רשימה של קובץ טקסט כמספרי רשימה או טקסט רגיל במודל אובייקט המסמך שלו. המאפיין [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) מאפשר לציין כיצד פריטי רשימה ממוספרים מזוהים כאשר מסמך מיובא מתבנית טקסט רגילה:

* אם אפשרות זו מוגדרת ל - *true*, חללים לבנים משמשים גם כגבולות מספר רשימה: אלגוריתם זיהוי רשימה עבור הצפייה בסגנון ערבי (1., 1.1.2.) משתמש גם בסמלים של חללים לבנים וגם בסמלים של נקודות (".").
* אם אפשרות זו מוגדרת ל *false*, אלגוריתם זיהוי רשימות מזהה פסקאות רשימה, כאשר מספרי רשימה מסתיימים בסמלי נקודה, סוגר ימני או כדור (כגון "•", "*", "-" או "o").

דוגמת הקוד הבאה מראה כיצד להשתמש במאפיין זה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## כיצד לטפל ברווחים מובילים ונגררים במהלך הטעינה TXT

אתה יכול לשלוט בדרך הטיפול ברווחים מובילים ונגררים במהלך הטעינה TXT קובץ. ניתן היה לקצץ, לשמר או להמיר את החללים המובילים לכניסה וניתן היה לקצץ או לשמר את החללים הנגררים.

דוגמת הקוד הבאה מראה כיצד לקצץ רווחים מובילים ונגררים בעת ייבוא קובץ TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## ייצוא כותרת עליונה ותחתונה בפלט TXT

אם ברצונך לייצא כותרת עליונה ותחתונה בפלט TXT מסמך, אתה יכול להשתמש במאפיין [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). מאפיין זה מציין את אופן ייצוא הכותרות העליונות והתחתונות לפורמט הטקסט הרגיל.

דוגמת הקוד הבאה מראה כיצד לייצא כותרות עליונות ותחתונות לפורמט טקסט רגיל:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## יצוא רשימת כניסה בפלט TXT

Aspose.Words הציג את הכיתה [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) המאפשרת לציין כיצד רמות הרשימה מוטבעות תוך ייצוא לפורמט טקסט רגיל. תוך כדי עבודה עם [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/), המאפיין [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) מסופק כדי לציין את התו שישמש להכנסת רמות רשימה ולספור לציין כמה תווים להשתמש ככניסה לכל רמת רשימה אחת.

ערך ברירת המחדל עבור מאפיין תו הוא '\0' המציין שאין כניסה. עבור נכס ספירה, ערך ברירת המחדל הוא 0 כלומר אין כניסה.

### באמצעות תו הכרטיסייה

דוגמת הקוד הבאה מראה כיצד לייצא רמות רשימה באמצעות תווי כרטיסייה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### שימוש באופי החלל

דוגמת הקוד הבאה מראה כיצד לייצא רמות רשימה באמצעות אותיות חלל:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### שימוש בכניסת ברירת מחדל

דוגמת הקוד הבאה מראה כיצד לייצא רמות רשימה באמצעות כניסה ברירת מחדל:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
