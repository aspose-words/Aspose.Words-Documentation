---
title: "המונחים: shapes בנפרד ממסמכים"
second_title: Aspose.Words עבור .NET
articleTitle: "המונחים: shapes בנפרד ממכתב"
linktitle: "המונחים: shapes בנפרד ממכתב"
description: "להפיק אובייקטים גרפיים שונים, כגון תמונות, תיבת טקסט המכילה פסקאות, או צורות חץ, בעת עיבוד מסמך, וייצא אותם למיקום חיצוני באמצעות שימוש C#."
type: docs
weight: 40
url: /he/net/rendering-shapes-separately-from-a-document/
timestamp: 2024-07-10-14-38-57
---

בעת עיבוד מסמכים, משימה נפוצה היא לחלץ את כל התמונות שנמצאו במסמך ולייצא אותם למיקום חיצוני. משימה זו הופכת פשוטה עם Aspose.Words API, אשר כבר מספק את הפונקציונליות של תמצית והצלת נתוני תמונה. עם זאת, לפעמים ייתכן שתרצה גם לחלץ סוגים אחרים של תוכן גרפי מיוצג על ידי סוג אחר של אובייקט ציור, למשל, תיבת טקסט המכיל פסקאות, צורות חץ, ותמונה קטנה. אין דרך פשוטה להפוך את האובייקט הזה מכיוון שהוא שילוב של רכיבי תוכן בודדים. אתה יכול גם להיתקל במקרה כאשר התוכן נאסף יחד לתוך האובייקט שנראה כמו תמונה אחת.

Aspose.Words מספק פונקציונליות עבור תמצית סוג זה של תוכן באותה הדרך אתה יכול לחלץ תמונה פשוטה מצורה כמו התוכן. מאמר זה מתאר כיצד לנצל פונקציונליות זו כדי להפוך צורות עצמאיות של המסמך.

## צורות Aspose.Words

כל התוכן בשכבה ציור מסמך מיוצג על ידי [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) או [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) המונחים: Aspose.Words Document ObjectמודולDOM). תוכן כזה יכול להיות תיבות טקסט, תמונות, AutoShapes, אובייקטים פשוטים וכו '. שדות מסוימים מיובאים גם כצורות, למשל, `INCLUDEPICTURE` שדה.

תמונה פשוטה מיוצגת על ידי **Shape** Node of [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). צורה זו Node אין צמתים של ילדים, אך נתוני התמונה הכלולים בתוך צורה זו ניתן לגשת על ידי הצומת. [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) רכוש. מצד שני, צורה יכולה גם להיות מורכבת מאבני ילדים רבות. לדוגמה, טופס תיבת טקסט, אשר מיוצג על ידי [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) רכוש, יכול להיות מורכב מנקודות רבות, כגון [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) ו [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/). רוב הצורות יכולות לכלול **Paragraph** ו **Table** צומת בגובה בלוק אלה הם אותם צמתים כמו אלה המופיעים בגוף הראשי. צורות הן תמיד חלקים של פסקה מסוימת, או כלול ישירות Inline או מעוגן אל **סעיף,** אבל "לצוף" בכל מקום בדף המסמך.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

מסמך יכול לכלול גם צורות אשר מקובצים יחד. Groupניתן להכניס Microsoft Word על ידי בחירת פריטים מרובים ולחיצה על "Group"בתפריט הקליק הנכון.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In In In Aspose.Words, קבוצות אלה של צורות מיוצגות על ידי [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) צומת. ניתן גם להשתמש בהם באותה הדרך כדי להפוך את הקבוצה כולה לדימוי.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

פורמט DOCX יכול להכיל סוגים מיוחדים של תמונות, כגון דיאגרמות או תרשימים. גם צורות אלה מיוצגות באמצעות **Shape** המונחים: Aspose.Words, אשר גם מספק שיטה דומה להכנת תמונות. על ידי עיצוב, צורה לא יכולה להכיל צורה אחרת כילד, אלא אם כן צורה זו היא תמונה (**ShapeType.Image**). לדוגמה, Microsoft Word לא מאפשר לך להכניס תיבת טקסט בתוך תיבת טקסט אחרת.

סוגי הצורה המתוארים לעיל מספקים שיטה מיוחדת כדי להפוך את הצורות דרך [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) מעמד. מקרה של **ShapeRenderer** שיעור נלקח עבור **Shape** או **GroupShape** דרך **GetShapeRenderer** שיטה או ע"י העברת **Shape** אל המבנה של **ShapeRenderer** מעמד. מחלקה זו מספקת גישה לחברים, המאפשרים להפוך צורה לאחר:

- קובץ על הדיסק באמצעות [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) המונחים overload
- זרם באמצעות [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) המונחים overload
- - .NET גרפיקה אובייקטים באמצעות [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) ו [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) שיטות

{{% alert color="primary" %}}

מתי להפוך **Shape**" זה חייב להיות חלק מההיררכיה של המסמך. אם **Shape** אינו חלק מעץ המסמכים, אזי הפלט המתקבל יהיה ריק לאחר שהוא מעורר השראה. **ShapeRenderer** שיטות.

{{% /alert %}}

## עקבו אחרי File or Stream

The The The [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) שיטה מספקת עומסים שהופכים צורה ישירות לקובץ או לזרם. שניהם מקבלים מקרה של [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) מעמד, המאפשר להגדיר אפשרויות להכנת הצורה. זה עובד באותה צורה כמו [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) שיטה. למרות פרמטר זה נדרש, אתה יכול להעביר ערך אפס, וציין כי אין אפשרויות מותאמות אישית.

את הצורה ניתן לייצא בכל פורמט תמונה שצוין ב [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) אזהרה. לדוגמה, ניתן להפוך את התמונה כתמונה raster, כגון JPEG על ידי ציון התמונה. [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/) enumeration, או כדמות וקטור, כגון EMF על ידי סימון [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/).

הדוגמה הקודית מתחת ממחישה את הצורה לדימוי EMF בנפרד ממסמכים והצלת לדיסק:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

הדוגמה הקודית למטה ממחישה את הצורה לדימוי JPEG בנפרד ממסמכים והצלת זרם:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

The The The **ImageSaveOptions** הכיתה מאפשרת לך לציין מגוון רחב של אפשרויות השולטות כיצד התמונה ניתנת. את הפונקציונליות המתוארת לעיל ניתן ליישם באותה הדרך. **GroupShape** ו **Shape** צומת

## בורחים ל .NET אובייקטים גרפיים

לרוץ ישירות **Graphics** האובייקט מאפשר לך להגדיר הגדרות משלך ואת המדינה עבור **Graphics** אובייקט. תרחיש נפוץ כרוך להפוך צורה ישירות לתוך צורה **Graphics** מקור: From a Windows טופס או Bitmap מתי **Shape** צומת ניתן, ההגדרות ישפיעו על המראה הצורה. לדוגמה, אתה יכול לסובב או לדרג את הצורה על ידי שימוש **RotateTransform** או **ScaleTransform** שיטות ל **Graphics** אובייקט.

הדוגמה למטה מראה כיצד להפוך צורה ל.**NET Graphics** אובייקט בנפרד מן המסמך וליישם סיבוב על התמונה שניתנה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

באופן דומה, [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/) השיטה, [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/)שיטה תורשתית [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) שימושי ליצירת אגודל של תוכן מסמך. גודל הצורה מוגדר באמצעות הבונים. The The The **RenderToSize** השיטה מקבלת את **Graphics** האובייקט, X ו- Y לתאם את מיקום התמונה, ואת גודל התמונה (width וגובה) אשר יימשכו על **Graphics** אובייקט.

The The The **Shape** ניתן להגיע לגודל מסוים באמצעות [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) שיטה תורשתית [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) מעמד. זה דומה לזה [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) שיטה שמקבלת את אותם הפרמטרים העיקריים. ההבדל בין שתי השיטות הללו הוא זה עם **ShapeRenderer.RenderToScale** שיטה, במקום גודל מילולי, אתה בוחר ערך צף המפחית את הצורה במהלך ההזנה שלו. אם ערך הצף שווה 1.0 גורם את הצורה להיות ניתן ב-100% מהגודל המקורי שלה. ערך צף של 0.5 יפחית את גודל התמונה בחצי.

## עקבו אחרי A Shape Image

The The The [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) הכיתה מייצגת אובייקטים בשכבה הציורית, כגון AutoShape, תיבת טקסט, freeform, OLE object, ActiveX control או תמונה. באמצעות **Shape** בכיתה, אתה יכול ליצור או לשנות צורות ב Microsoft Word מסמך. נכס חשוב של צורה הוא [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype). צורות של סוגים שונים יכולות להיות יכולות שונות במסמך Word. לדוגמה, רק תמונות וצורות שלמות יכולות להיות תמונות בתוכם בעוד שרוב הצורות יכולות להיות טקסט בלבד.

הדוגמה הבאה מראה כיצד להפוך תמונת צורה לדימוי JPEG בנפרד מהמסמכים ולהציל אותו לדיסק:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## חידוש גודל צורה

The The The [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) הכיתה מספקת גם פונקציונליות כדי לשחזר את גודל הצורה בפיקסלים דרך [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) שיטה. שיטה זו מקבלת שני פרמטרים צפים (Single) - הגודל ו DPI, אשר משמשים בחישוב גודל הצורה כאשר הצורה ניתנת. השיטה מחזירה את [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) אובייקט, המכיל את רוחב וגובה של גודל מחושב. זה שימושי כאשר הוא נדרש לדעת את הגודל של הצורה הניתנת מראש, למשל בעת יצירת Bitmap חדש מן הפלט שניתנו.

הדוגמה הבאה מראה כיצד ליצור אובייקט חדש של Bitmap וגרפיקה עם רוחב וגובה של הצורה להיות:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

מתי להשתמש **RenderToSize** או **RenderToScale** שיטות, גודל התמונה המתקבל גם הוא [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) אובייקט. זה יכול להיות מוקצה למשתנה ולהשתמש בו במידת הצורך.

The The The **SizeInPoints** הנכס מחזיר את גודל הצורה נמדד בנקודות (ראה [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). התוצאה היא `SizeF` אובייקט המכיל את רוחב וגובה.
