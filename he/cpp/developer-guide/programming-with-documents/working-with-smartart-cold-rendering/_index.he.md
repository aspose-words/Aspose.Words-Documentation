---
title: עבודה עם SmartArt עיבוד קר ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם SmartArt עיבוד קר
linktitle: עבודה עם SmartArt עיבוד קר
type: docs
description: "Aspose.Words עבור C++ מבצע SmartArt עיבוד קר, כלומר הוא פורס ומעבד SmartArt אובייקטים אם הציור SmartArt שהועבר מראש חסר או שגוי."
weight: 330
url: /he/cpp/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt גרפיקה משמשים במהירות ובקלות ליצור ייצוג חזותי של מידע. אתה פשוט בוחר מתוך מספר רב של פריסות המתאימות ביותר למצבך. קלות שימוש זו הופכת את הגרפיקה SmartArt לפופולרית למדי למטרות מסוימות.

Microsoft Word יוצר ושומר את הציור שהועבר מראש יחד עם האובייקט `SmartArt`. ברוב המקרים, הציור המוצג מראש מוצג היטב על ידי Aspose.Words ואין צורך בפעולות נוספות. עם זאת, אם המסמך נשמר על ידי יישומים אחרים, ייתכן שהציור SmartArt שהועבר מראש חסר או שגוי. במקרה זה, האובייקט `SmartArt` עצמו צריך להיות מונח ומעובד באמצעות Aspose.Words. אנו קוראים לתהליך זה עיבוד קר `SmartArt`.

## באמצעות SmartArt עיבוד קר

Aspose.Words מאפשר לך להשתמש מראש שניתנו ציור או לבצע עיבוד קר:

* אם ציור מראש זמין, Aspose.Words משתמש בו כדי להציג את האובייקט `SmartArt`.
* אם חסר ציור מראש, Aspose.Words מבצע באופן מרומז עיבוד קר כדי לעבד את האובייקט `SmartArt`.
* אם ציור מראש מוצג קיים אך אינו נכון, הוא נדרש לבצע SmartArt עיבוד קר באופן מפורש על ידי קריאה [UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/) שיטה.

דוגמת הקוד הבאה מראה כיצד לעדכן שרטוטים עבור כל הדיאגרמות במסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## תמיכה בתקן SmartArt פריסות

נכון לעכשיו, רק מספר מוגבל של פריסות סטנדרטיות Microsoft Word SmartArt נתמכות. כמו כן, חלק מהפריסות הללו נתמכות באופן חלקי, כלומר צמתים וצורות משמעותיות של התרשים ניתנים, אך יתכנו הבדלים בין Microsoft Word ו Aspose.Words פריסת תרשים.

הטבלה שלהלן מפרטת את הפריסות הנתמכות באופן מלא וחלקי:

| SmartArt קבוצת פריסות | פריסות נתמכות באופן מלא | פריסות נתמכות חלקית |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>רשימת בלוקים בסיסית</li><li>משושים מתחלפים</li><li>רשימת כדורים אנכית</li><li>רשימת תיבות אנכית</li><li>רשימת רוחב משתנה</li><li>רשימת כדורים אופקית</li><li>רשימה מקובצת</li><li>רשימת בלוקים אנכיים</li><li>רשימת שברון אנכית</li><li>רשימת חץ אנכית</li><li>רשימת טרפז</li><li>רשימת טבלה</li><li>רשימת פירמידה</li><li>רשימת יעד</li></ul> | <ul><li>רשימה מרופדת</li><li>רשימת סוגר אנכי</li><li>רשימת כרטיסיות</li><li>רשימה מוערמת</li><li>רשימת הדגשה אנכית</li><li>רשימת מעגלים אנכיים</li></ul> |
| `Process` | <ul><li>תהליך בסיסי</li><li>תהליך המבטא</li><li>תהליך בלוק רציף</li><li>הגדלת תהליך החץ</li><li>טקסט מתכנס</li><li>קו הזמן הבסיסי</li><li>תהליך שברון בסיסי</li><li>תהליך מבטא שברון</li><li>תהליך שברון סגור</li><li>רשימת שברון</li><li>תהליך אנכי</li><li>תהליך מתנודד</li><li>רשימת תהליכים</li><li>תהליך כיפוף בסיסי</li><li>תהליך כיפוף חוזר</li><li>תהליך מפורט</li><li>חץ כלפי מעלה</li><li>תהליך יורד</li><li>תהליך כיפוף מעגלי</li></ul> | <ul><li>שלב את התהליך</li><li>צעד למטה תהליך</li><li>זרימה מתחלפת</li><li>הגדלת תהליך המעגל</li><li>Pie תהליך</li><li>תהליך בלוק מחובר</li><li>חיצי תהליך</li><li>ציר זמן מבטא מעגל</li><li>תהליך מעגל</li><li>תהליך שלב משנה</li><li>תהליך בשלבים</li><li>תהליך אקראי לתוצאה</li><li>תהליך חץ מעגל</li></ul> |
| `Cycle` |  | <ul><li>מחזור מפולח</li><li>משושה רדיאלי</li></ul> |
| `Hierarchy` |  | <ul><li>היררכיית טבלה</li><li>פריסת אדריכלות</li></ul> |
| `Relationship` | <ul><li>איזון</li><li>משפך</li><li>ציוד</li><li>פלוס ומינוס</li><li>סרט חץ</li><li>חצים נגד איזון</li><li>חצים מנוגדים</li><li>יעד מקונן</li><li>יעד בסיסי</li><li>בסיסי Pie</li><li>בסיסי ון</li><li>מוערמים ון</li><li>טבעת מחוברת</li></ul> | <ul><li>יחסי מעגל</li><li>רעיונות מנוגדים</li><li>משוואה</li><li>משוואה אנכית</li><li>ון ליניארי</li></ul> |
| `Matrix` | <ul><li>מטריצה בסיסית</li><li>מטריצה שכותרתה</li><li>מטריקס רשת</li><li>מטריצה מחזורית</li></ul> |  |
| `Pyramid` |  | <ul><li>פירמידה מפולחת</li></ul> |

## השוואה של SmartArt טיוח ב Aspose.Words ו Microsoft

הטבלה שלהלן מציגה תמונות לדוגמה של Aspose.Words עיבוד קר של כמה פריסות סטנדרטיות בהשוואה לפלט Microsoft Word:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
