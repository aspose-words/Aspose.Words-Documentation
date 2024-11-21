---
title: עבודה עם תמונות Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם תמונות
linktitle: עבודה עם תמונות
type: docs
description: "צורות צילום בפרטים ותכונות מתקדמות המסופקות על ידי Aspose.Words עבור Java."
weight: 300
url: /he/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words מאפשר למשתמשים לעבוד עם תמונות בצורה גמישה מאוד. במאמר זה, אתה יכול לחקור רק כמה אפשרויות של עבודה עם תמונות.

## כיצד להפיק תמונות מתעודה {#how-to-extract-images-from-a-document}

כל התמונות נשמרות בפנים **Shape** חסרונות במסמך כדי לחלץ את כל התמונות או התמונות שיש סוג מסוים של המסמך, בצע שלבים אלה:

- השתמש [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) שיטה לבחור את כל נקודות הצורה.
- עקבו אחרי node אוספים
- בדוק את [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) רכוש בוז.
- נתוני צילום באמצעות [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) רכוש.
- שמור את נתוני התמונה לקובץ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## כיצד להכניס Barcode לכל מסמך {#how-to-insert-barcode-on-each-documen-page}

דוגמה זו מאפשרת לך להוסיף את אותו ברקודים או שונים על כל העמודים הספציפיים של מסמך Word. אין דרך ישירה להוסיף קודים על כל דפי המסמך, אבל אתה יכול להשתמש [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) ו [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])שיטות לעבור לכל חלק או כותרות / מ"ר ולהכניס את התמונות הברקוד כפי שאתה יכול לראות בקוד הבא

הדוגמה הבאה של הקוד מראה כיצד להוסיף תמונת ברקוד על כל דף של מסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Lock Aspect Ratio of Image {#lock-aspect-ratio-of-image}

היחס ההיבט של צורה גיאומטרי הוא היחס של הגדלים שלו בממדים שונים. אתה יכול לנעול את יחס ההיבט של תמונה באמצעות [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). ערך ברירת המחדל של יחס ההיבט של הצורה תלוי [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). זה true עבור `ShapeType.Image` ו false עבור סוגים אחרים של צורה.

דוגמה לקוד הבא מראה כיצד לעבוד עם יחס היבט:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## כיצד להשיג פצעי צורה מעשיים בנקודות {#how-to-get-actual-bounds-of-shape-in-points}

אם אתה רוצה את הקופסה האמיתית של הצורה כפי שניתן על הדף, אתה יכול להשיג את זה על ידי שימוש [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) רכוש.

דוגמה לקוד הבא מראה כיצד להשתמש בנכס זה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## תמונות Crop

היבול של תמונה מתייחס בדרך כלל להסרת החלקים החיצוניים הלא רצויים של תמונה כדי לעזור לשפר את ההקפאה. הוא משמש גם להסרת חלק מהחלקים של תמונה כדי להגביר את המיקוד באזור מסוים.

דוגמה לקוד הבא מראה כיצד להשיג זאת באמצעות Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## שמירת תמונות כ- WMF

Aspose.Words מספק פונקציונליות כדי לשמור את כל התמונות הזמינות במסמך [WMF](https://docs.fileformat.com/image/wmf/)פורמט תוך המרת DOCX ל- RTF.

הדוגמה הבאה של הקוד מראה כיצד לחסוך תמונות כמו WMF עם RTF אפשרויות:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
