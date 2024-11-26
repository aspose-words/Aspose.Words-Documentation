---
title: עבודה עם תמונות C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם תמונות
linktitle: עבודה עם תמונות
description: "צורות צילום בפרטים ותכונות מתקדמות המסופקות על ידי Aspose.Words עבור .NET."
type: docs
weight: 300
url: /he/net/working-with-images/
timestamp: 2024-05-02-11-51-44
---

Aspose.Words מאפשר למשתמשים לעבוד עם תמונות בצורה גמישה מאוד. במאמר זה, אתה יכול לחקור רק כמה אפשרויות של עבודה עם תמונות.

## כיצד להכניס תמונה {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) מספק מספר עומסים של [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) שיטה המאפשרת לך להוסיף תמונה פנימית או צף. אם התמונה היא metafile EMF או WMF, זה יוכנס לתוך המסמך בפורמט metafile. כל התמונות האחרות מאוחסנים בפורמט PNG. The The The **InsertImage** שיטה יכולה להשתמש בתמונות ממקורות שונים:

- מקובץ או `URL` על ידי עובר `String` פרמטר [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- מתוך זרם על ידי עובר `Stream` פרמטר **InsertImage**
- מאובייקט תמונה על ידי העברת פרמטר תמונה **InsertImage**
- ממערך Byte על ידי העברת פרמטר מערך **InsertImage**

עבור כל אחד **InsertImage** שיטות, יש עומסים נוספים המאפשרים לך להוסיף תמונה עם האפשרויות הבאות:
- Inline או צף במיקום מסוים, למשל, **InsertImage**
- גודל בינוני או גודל מותאם אישית, למשל, **InsertImage**עוד יותר, **InsertImage** שיטה מחזירה [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) אובייקט שנוצר והוכנס כדי שתוכל לשנות את התכונות של הצורה

### כיצד להכניס תמונה Inline {#insert-an-inline-image}

לעבור מחרוזת אחת המייצגת קובץ המכיל את התמונה **InsertImage** כדי להכניס את התמונה לתוך המסמך כגרפיקה פנימית

הדוגמה הבאה של הקוד מראה כיצד להכניס תמונה איליין בעמדה cursor לתוך מסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### כיצד להכניס תמונה Floating {#insert-a-floating-image}

הדוגמה הבאה של הקוד מראה כיצד להוסיף תמונה צף מקובץ או `URL` במיקום מסוים בגודל ובגודל:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## כיצד להפיק תמונות ממכתב {#how-to-extract-images-from-a-document}

כל התמונות נשמרות בפנים **Shape** רעשים ב [Document](https://reference.aspose.com/words/net/aspose.words/document/). כדי לחלץ את כל התמונות או התמונות שיש סוג מסוים של המסמך, בצע שלבים אלה:

- השתמש [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) שיטה לבחור את כל **Shape** צומת
- עקבו אחרי node אוספים
- בדוק את [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/) רכוש בוז.
- נתוני צילום באמצעות [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) רכוש.
- שמור את נתוני התמונה לקובץ.

הדוגמה הבאה של הקוד מראה כיצד להפיק תמונות ממסמכים ולהציל אותם כקבצים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## כיצד להכניס Barcode לכל מסמך {#how-to-insert-barcode-on-each-documen-page}

דוגמה זו מדגימה אותך להוסיף את אותם ברקודים או שונים על כל העמודים הספציפיים של מסמך Word. אין דרך ישירה להוסיף קודים על כל דפי המסמך, אבל אתה יכול להשתמש **MoveToSection**, **MoveToHeaderFooter** ו **InsertImage** שיטות לעבור לכל חלק או כותרות / מ"ר ולהכניס את התמונות הברקוד כפי שאתה יכול לראות בקוד הבא.

הדוגמה הבאה של הקוד מראה כיצד להוסיף תמונת ברקוד על כל דף של מסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Lock Aspect Ratio of Image {#lock-aspect-ratio-of-image}

היחס ההיבט של צורה גיאומטרי הוא היחס של הגדלים שלו בממדים שונים. אתה יכול לנעול את יחס ההיבט של התמונה באמצעות [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/). ערך ברירת המחדל של יחס ההיבט של הצורה תלוי [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). זה *true* עבור `ShapeType.Image` ו *false* עבור סוגים אחרים של צורה.

דוגמה לקוד הבא מראה כיצד לעבוד עם יחס היבט:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## כיצד להפוך את פצעי הצורה בנקודות {#how-to-get-actual-bounds-of-shape-in-points}

אם אתה רוצה את הקופסה האמיתית של הצורה כפי שניתן על הדף, אתה יכול להשיג את זה על ידי שימוש [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/) רכוש.

דוגמה לקוד הבא מראה כיצד להשתמש בנכס זה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## תמונות Crop {#crop-images}

היבול של תמונה מתייחס בדרך כלל להסרת החלקים החיצוניים הלא רצויים של תמונה כדי לעזור לשפר את ההקפאה. הוא משמש גם להסרת חלק מהחלקים של תמונה כדי להגביר את המיקוד באזור מסוים.

דוגמה לקוד הבא מראה כיצד להשיג זאת באמצעות Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## שמור תמונות כמו WMF {#save-images-as-wmf}

Aspose.Words מספק פונקציונליות כדי לשמור את כל התמונות הזמינות במסמך [WMF](https://docs.fileformat.com/image/wmf/)פורמט תוך המרת DOCX ל- RTF.

הדוגמה הבאה של הקוד מראה כיצד לחסוך תמונות כמו WMF עם RTF אפשרויות:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
