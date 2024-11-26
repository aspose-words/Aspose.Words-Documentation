---
title: איך ליצור ברקוד
second_title: Aspose.Words עבור .NET
articleTitle: הפעל יצירת תמונת ברקוד מותאמת אישית
linktitle: הפעל יצירת תמונת ברקוד מותאמת אישית
description: "דוגמה של יצירת צורת ברקוד באמצעות C#."
type: docs
weight: 350
url: /he/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

ברקוד הוא ייצוג חזותי של נתונים בצורה של קווים מקבילים או דפוסים. ברקודים נמצאים בשימוש נרחב בענפים שונים כמו קמעונאות, לוגיסטיקה, בריאות, בנקאות ועוד רבים אחרים.

Microsoft Word מאפשר למשתמשים להטביע ברקודים ישירות במסמכים באמצעות שדות. המשתמשים יכולים להכניס סוג מסוים של ברקוד, כגון קוד QR או ברקוד ליניארי, באמצעות שדה [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

בכתבה זו נבדוק כיצד שדה ה-BARCODE מיושם ב-Aspose.Words וכיצד Aspose.Words מאפשר למשתמשים לעבוד עם מסמכי וורד אליהם כבר נוסף קוד סריג.

## סוגי ברקודים הנתמכים על ידי Aspose.Words

Aspose.Words תומך בסוגים שונים של ברקודים. סוג הברקוד מועבר כערך מחרוזת בתכונה [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/).

{{% alert color="primary" %}}

מאחר ועבודה עם קודי-ברים במסגרת התפקוד של Aspose.Words מוגבלת, המשתמש יכול להשתמש בכל ספרייה, כולל Aspose.Barcode, או לכתוב את הקידוד שלו בעצמו כדי לעבוד עם קודי-ברים. ניתן ללמוד עוד על סוגי קודי-ברים [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

כשחוסכים בפורמטים של וורד התומכים בברקודים ניתן להשתמש בכל סוג ברקוד שהוא [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) אם סוגי הברקוד הלא נכונים הועברו מ-Word יציג שגיאה.

כאשר שומרים לפורמטים אחרים, כגון PDF, Aspose.Words מקצים את עיבוד ברקודים לקוד המשתמש, כך שהמשתמש מוגבל לסוגי הברוקוד של היישום או הספרייה שלו.

## הכנס ברקוד למסמך או טען מסמך עם ברקוד שהוסף מראש

Aspose.Words מספק את היכולת ל:

1. הכנסו באופן תכנותי קוד בר-קוד למסמך באמצעות [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) ו-[MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) קודי שדה
2. או לטעון מסמך Word עם ברקודים כבר מוכנסים לתוכו לצורך המשך העבודה

Aspose.Words יש ממשק ליצירת ברקודים מותאמים אישית שמקל על השימוש ב [Aspose.Words](https://products.aspose.com/words/net/) וב [Aspose.BarCode](https://products.aspose.com/barcode/net/) יחד כדי להציג תמונות ברקוד במסמכים. לדוגמה, ניתן ליצור מסמך DOC, OOXML או RTF ולהוסיף שדה DISPLAYBARCODE אליו באמצעות Aspose.Words. או שניתן לטעון מסמך DOC, OOXML או RTF עם שדה DISPLAYBARCODE קיים ולספק את היישום שלך ליצירת ברקוד מותאם אישית.

שדה טיפוסי של DISPLAYBARCODE הוא כדלקמן:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

להלן דוגמה לקוד מייצר באמצעות Aspose.Words ו-Aspose.BarCode API. הדוגמה הזאת מדגימה כיצד להכניס תמונות ברקודים בעמדת ה-DISPLAYBARCODE בשדה במסמך וורד:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

גם אפשר לשמור את המסמך עם הקוד או הבר-קודים שהוטענו או שנכנסו חדשים בפורמטים קבועים של עמודים כמו PDF, XPS, וכו'. הדוגמה הבאה מציגה איך לשמור מסמך וורד בפורמט PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

למידע נוסף על המרת מסמכים מפורמט אחד לאחר, ראה את [Convert a Document](/words/net/convert-a-document/) מסמך.

{{% /alert %}}

{{% alert color="primary" %}}

אתה יכול גם להשתמש בממשק [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) כדי להמיר ברקודים המוטבעים במסמכי Word לתמונות. התמונות המתקבלות יכולות לחלץ מהמסמך – ראה את המאמר "עבודה עם תמונות" לפרטים נוספים.

{{% /alert %}}

## ציין אפשרויות סריג-ברקוד

כאשר עובדים עם ברקודים ניתן להגדיר תכונות נוספות. Aspose.Words מספק לך את הכיתה [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) – כיתה עבור פרמטרי ברקוד להעביר לזרע BarcodeGenerator".

Aspose.Words תומכת ברזולוציית 96 פיקסלים מוטבעת עבור תמונות שנוצרו עם [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), שמגבילה את גודל התמונה המינימלי של ברקוד. כדי להתמודד עם זה, מפתחים יכולים להכניס באופן ידני את תמונת הברוקוד עם הרזולוציה היעד במסמך וורד ולשמור אותה בפורמט הנדרש. לקבלת פרטים ודוגמאות נוספים על עבודה עם ברקודים, עיין במאמר [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).
