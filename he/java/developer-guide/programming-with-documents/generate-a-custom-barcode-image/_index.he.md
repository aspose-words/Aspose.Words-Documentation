---
title: צור ברקוד ב־ Java
second_title: Aspose.Words עבור Java
articleTitle: צרו תמונה של ברקוד מותאם אישית
linktitle: צרו תמונה של ברקוד מותאם אישית
description: "דוגמה ליצירת צורת ברקוד באמצעות Java."
type: docs
weight: 350
url: /he/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

פריט בר-קוד הוא ייצוג חזותי של נתונים בצורת קווים מקבילים או דפוסים. פריטי בר-קוד נמצאים בשימוש נרחב בתעשיות שונות כגון קמעונאות, לוגיסטיקה, בריאות, בנקאות ועוד רבים.

Microsoft Word מאפשר למשתמשים להטביע ברקודים ישירות במסמכים באמצעות שדות. המשתמשים יכולים להכניס סוג ספציפי של ברקוד, כגון קוד QR או ברקוד ליניארי, באמצעות השדה [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

במאמר זה, נבדוק כיצד שדה ה-BARCODE מיושם ב-Aspose.Words וכיצד Aspose.Words מאפשר למשתמשים לעבוד עם מסמכי וורד אליהם הוסף כבר קוד בר.

## סוגי ברים הנתמכים על ידי Aspose.Words

מספר Aspose.Words תומך בסוגים שונים של ברקודים. סוג הברקוד מועבר כערך מחרוזת בתכונה [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

מכיוון שהעבודה עם ברקודים במסגרת הפונקציונליות של Aspose.Words מוגבלת, המשתמש יכול להשתמש בכל ספרייה, כולל Aspose.Barcode, או לכתוב את הרינדור שלו בעצמו כדי לעבוד עם ברקודים. ניתן ללמוד עוד על סוגי הברקודים [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

כאשר שומרים בפורמטים של וורד התומכים בברקודים, ניתן להשתמש בכל סוג ברקוד שמתאים ל-[supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). אם סופק סוג שגוי של ברקוד, וורד יציג הודעת שגיאה.

כאשר שומרים לפורמטים אחרים, כגון PDF, Aspose.Words מעביר את הדמיית הבר-קוד לקוד המשתמש, כך שהמשתמש מוגבל לסוגי הבר-קוד של היישום או הספרייה בהם משתמש.

## הכנס ברקוד למסמך או טעינה של מסמך עם ברקוד שהוסף מראש

Aspose.Words מספק את היכולת:

1. הזן באופן תכנותי קוד סריג לתוך מסמך באמצעות קודי השדות [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) ו-[MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. או לטעון מסמך Word עם ברקודים שכבר הוכנסו אליו לביצוע עוד עבודה

Aspose.Words יש ממשק ליצירת ברקודים מותאמים אישית שהופך אותו לקל לשלב [Aspose.Words](https://products.aspose.com/words/java/) ו-[Aspose.BarCode](https://products.aspose.com/barcode/java/) יחד כדי להציג תמונות של ברקוד במסמכי פלט. לדוגמה, ניתן ליצור מסמך DOC, OOXML או RTF ולהוסיף את שדה DISPLAYBARCODE אליו באמצעות Aspose.Words. או שאתה יכול לטעון מסמך DOC, OOXML או RTF עם שדה ה-DISPLAYBARCODE כבר קיים בו ולספק לך את היישום שלך ליצירת ברקוד מותאם אישית.

שדה DISPLAYBARCODE טיפוסי הוא בעל התחביר הבא:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

להלן דוגמה ליצרן קוד המשתמש ב-Aspose.Words ו-Aspose.BarCode API. הדוגמה הזו מראה כיצד להכניס תמונות של קודי סריקה בעמדת ה-"DISPLAYBARCODE" במסמך מילה:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

ניתן גם לשמור את המסמך עם ברקוד נטען או שנכנס חדש בפורמטים קבועים של עמודים כגון PDF, XPS, וכו'. הדוגמה הבאה מציגה כיצד לשמור מסמך וורד בפורמט PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

למידע נוסף על המרת מסמכים מפורמט אחד לאחר, ראה את [Convert a Document](/words/java/convert-a-document/) חלק התיעוד.

{{% /alert %}}

{{% alert color="primary" %}}

ניתן גם להשתמש בממשק [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) כדי להמיר ברקודים המוטבעים במסמכי Word לתמונות. התמונות שנוצרו ניתן לחלץ מהמסמך – ראו את המאמר "עבודה עם תמונות" לקבלת פרטים נוספים.

{{% /alert %}}

## ציין אפשרויות ברקוד

כאשר עובדים עם ברקודים ניתן להגדיר תכונות נוספות. Aspose.Words מספק לך את הכיתה – [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) כיתה לברקודים פרמטרים להעביר לתוך BarcodeGenerator

Aspose.Words תומכת ברזולוציה מוטבעת של 96 פיקסלים לתמונה שנוצרה באמצעות [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), אשר מגבילה את הגודל המינימלי של תמונת ברקוד. כדי להתמודד עם זה, מפתחים יכולים להכניס באופן ידני תמונות ברקוד עם הרזולוציה המכוונות לתוך מסמך וורד ולשמור אותן בפורמט הנדרש. לקבלת פרטים נוספים ודוגמאות על עבודה עם ברקודים, ראו את המאמר [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
