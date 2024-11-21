---
title: עבודה עם חכם אמנות מגניבה Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם חכם אמנות Cold Rendering
linktitle: עבודה עם חכם אמנות Cold Rendering
type: docs
description: "Aspose.Words עבור Java מבצעים חכמים אמנות קר רנדרינג, כלומר הוא מניח והופך אובייקטים SmartArt אם הציור החכם מראש הוא חסר או לא נכון."
weight: 330
url: /he/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

גרפיקה חכמה לאמנות משמשת במהירות ובקלות ליצירת ייצוג חזותי של מידע. אתה פשוט בוחר ממספר גדול של פריסות שמתאימות למצב שלך. קלות זו של שימוש עושה גרפיקה SmartArt די פופולרי עבור כמה מטרות.

Microsoft Word יוצר ומציל את הציור מראש יחד עם `SmartArt` אובייקט ברוב המקרים, הציור מראש ניתן היטב על ידי Aspose.Words אין צורך בפעולות נוספות. עם זאת, אם המסמך נשמר על ידי יישומים אחרים, ציור SmartArt מראש עשוי להיות חסר או לא נכון. במקרה הזה, `SmartArt` יש להניח את האובייקט עצמו ולהפוך Aspose.Words. אנחנו קוראים לתהליך הזה `SmartArt` קר רנדרינג

## שימוש חכם אמנות Cold Rendering

Aspose.Words מאפשר לך להשתמש ציור מראש או לבצע הצטננות:

* אם ציור מראש זמין, Aspose.Words להשתמש בו כדי להפוך את `SmartArt` אובייקט
* אם הציור הקודם חסר, Aspose.Words באופן בלתי נמנע ביצוע קר להפוך את `SmartArt` אובייקט
* אם ציור מראש מוצג אך אינו נכון, הוא נדרש לבצע קר של SmartArt במפורש על ידי קריאה [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) שיטה.

הדוגמה הבאה של הקוד מראה כיצד לעדכן רישומים עבור כל הדיאגרמות במסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## תגיות: Standard SmartArt Layouts

כיום, רק מספר מוגבל של סטנדרט Microsoft Word פריסות אמנות חכמות נתמכות. כמו כן, חלק מהפריסות הללו נתמכות באופן חלקי, כלומר שנקודות וצורות משמעותיות של הדיאגרמה ניתנות, אך ייתכן שיש הבדלים בין ההבדלים בין Microsoft Word ו Aspose.Words עיצוב דיאגרמות

הטבלה מתחת לרשימות את הפריסה המלאה והנתמכת חלקית:

|  חכם חכם אמנות Group |  פריסות תמיכה מלאה |  פריסות תמיכה חלקית |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>רשימת בלוקים בסיסית</li><li>עקבו אחרי Hexagons</li><li>רשימת קליעים</li><li>רשימת Box</li><li>רשימת Width</li><li>Horizontal Bullet List</li><li>Groupרשימה</li><li>רשימת בלוקים</li><li>רשימת Chevron</li><li>רשימת החץ</li><li>רשימת ptezoid</li><li>רשימת שולחן</li><li>רשימת הפירמידה</li><li>רשימת מטרות</li></ul> |  <ul><li>רשימה</li><li>ארכיון תגיות: Vertical Bracket list</li><li>רשימת</li><li>רשימה סגורה</li><li>הרשימה הזמנית</li><li>רשימת מעגל Vertical Circle</li></ul> |
|  `Process`  |  <ul><li>תהליך בסיסי</li><li>תהליך</li><li>תהליך בלוק מתמשך</li><li>הגדלת תהליך החץ</li><li>הודעות טקסט</li><li>ציר זמן בסיסי</li><li>תהליך Chevron</li><li>תהליך של Chevron</li><li>תהליך Chevron</li><li>רשימת Chevron</li><li>תהליך Vertical Process</li><li>תהליך מבוזר</li><li>רשימת תהליכים</li><li>תהליך שריפת בסיס</li><li>חזור על Bending Process</li><li>תהליך מפורט</li><li>חץ למעלה</li><li>תהליך הליכה</li><li>תהליך איסוף מעגלי</li></ul> |  <ul><li>שלב למעלה</li><li>שלב למטה תהליך</li><li>תגית: Flow</li><li>הגדלת תהליך המעגל</li><li>תהליכים</li><li>תהליך בלוק מחובר</li><li>מעבדים Arrows</li><li>המונחים: timeline</li><li>תהליך המעגל</li><li>תהליך</li><li>תהליך שלב</li><li>אקראית כדי לגרום</li><li>תהליך החץ</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>מעגל</li><li>Hexagon Radial</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>שולחן Hierarchy</li><li>אדריכלות: Layout</li></ul> |
|  `Relationship`  |  <ul><li>איזון</li><li>Funnel</li><li>Gear</li><li>תגית: Minus</li><li>חץ ריקבון</li><li>המונחים: Arrows</li><li>תגית: Arrows</li><li>Targeted</li><li>מטרה בסיסית</li><li>פאי בסיסי</li><li>בסיס Venn</li><li>המונחים: Venn</li><li>טבעת משולבת</li></ul> |  <ul><li>מערכת יחסים</li><li>יצירת רעיונות</li><li>Equation</li><li>המונחים: Equation</li><li>תגית: Venn</li></ul> |
|  `Matrix`  |  <ul><li>מטריקס בסיסי</li><li>תגית: Matrix</li><li>גרי מטריקס</li><li>מעגל מטריקס</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>פירמידה</li></ul> |

## השוואה של SmartArt Rendering Aspose.Words ו Microsoft

השולחן למטה מציג תמונות של Aspose.Words קר קר ניצול של כמה פריסות סטנדרטיות בהשוואה Microsoft Word הפקה:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
