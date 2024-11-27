---
title: עיבוד צורות בנפרד ממסמך
second_title: Aspose.Words עבור C++
articleTitle: עיבוד צורות בנפרד ממסמך
linktitle: עיבוד צורות בנפרד ממסמך
description: "חלץ אובייקטים גרפיים שונים, כגון תמונות, תיבת טקסט המכילה פסקאות או צורות חץ, בעת עיבוד מסמך וייצא אותם למיקום חיצוני."
type: docs
weight: 40
url: /he/cpp/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

בעת עיבוד מסמכים, משימה נפוצה היא לחלץ את כל התמונות שנמצאות במסמך ולייצא אותן למיקום חיצוני. משימה זו הופכת לפשוטה עם Aspose.Words API, שכבר מספק את הפונקציונליות לחילוץ ושמירת נתוני תמונה. עם זאת, לפעמים ייתכן שתרצה לחלץ באופן דומה סוגים אחרים של תוכן גרפי המיוצג על ידי סוג אחר של אובייקט ציור, לדוגמה, תיבת טקסט המכילה פסקאות, צורות חץ ותמונה קטנה. אין דרך פשוטה להציג את האובייקט הזה, מכיוון שהוא שילוב של אלמנטים תוכן בודדים. ייתכן שתיתקל גם במקרה שבו התוכן קובץ יחד לאובייקט שנראה כמו תמונה אחת.

Aspose.Words מספק פונקציונלי לחילוץ סוג זה של תוכן באותו אופן שאתה יכול לחלץ תמונה פשוטה מצורה כתוכן שניתנו. מאמר זה מתאר כיצד לנצל את הפונקציונליות הזו כדי להציג צורות באופן עצמאי מהמסמך.

## סוגי צורות ב Aspose.Words

כל התוכן בשכבת ציור מסמך מיוצג על ידי הצומת [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) או [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) במודול אובייקט המסמך Aspose.Words (DOM). תוכן כזה יכול להיות תיבות טקסט, תמונות, AutoShapes, OLE אובייקטים וכו'. שדות מסוימים מיובאים גם כצורות, למשל, שדה `INCLUDEPICTURE`.

תמונה פשוטה מיוצגת על ידי צומת **Shape** של [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). לצומת הצורה הזו אין צמתים ילדים, אך ניתן לגשת לנתוני התמונה הכלולים בצומת הצורה הזו באמצעות המאפיין [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/). מצד שני, צורה יכולה להיות מורכבת גם מצמתים רבים לילדים. לדוגמה, צורת תיבת טקסט, המייצגת על ידי המאפיין [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/), יכולה להיות מורכבת מנקודות רבות, כגון [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) ו [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/). רוב הצורות יכולות לכלול את הצמתים של **Paragraph** ו - **Table** ברמת הבלוק. אלה הם אותם צמתים כמו אלה המופיעים בגוף הראשי. צורות הן תמיד חלקים של פסקה כלשהי, או כלולות ישירות בשורה או מעוגנות ל **Paragraph,** אבל "צף" בכל מקום בדף המסמך.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

מסמך יכול להכיל גם צורות המקובצות יחד. ניתן להפעיל קיבוץ ב Microsoft Word על ידי בחירת אובייקטים מרובים ולחיצה על "קבוצה" בתפריט לחיצה ימנית.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

ב - Aspose.Words, קבוצות צורות אלה מיוצגות על ידי הצומת `GroupShape`. ניתן גם להפעיל אותם באותו אופן כדי להציג את כל הקבוצה לתמונה.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

הפורמט DOCX יכול להכיל סוגים מיוחדים של תמונות, כגון דיאגרמות או תרשימים. צורות אלה מיוצגות גם דרך הצומת **Shape** ב Aspose.Words, המספק גם שיטה דומה להצגתן כתמונות. לפי עיצוב, צורה לא יכולה להכיל צורה אחרת כילד, אלא אם כן צורה זו היא תמונה (**ShapeType.Image**). לדוגמה, Microsoft Word אינו מאפשר לך להוסיף תיבת טקסט בתוך תיבת טקסט אחרת.

סוגי הצורות המתוארים לעיל מספקים שיטה מיוחדת להציג את הצורות דרך הכיתה [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). דוגמה של כיתה **ShapeRenderer** מתקבלת עבור **Shape** או **GroupShape** באמצעות שיטת **GetShapeRenderer** או על ידי העברת **Shape** למבנה של כיתה **ShapeRenderer**. המעמד הזה מספק גישה לחברים, המאפשרים להציג צורה ל:

- קובץ בדיסק באמצעות עומס יתר בשיטת [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)
- זרם באמצעות עומס יתר בשיטת [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)
- ה `Graphics` אובייקט באמצעות ה [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) ו [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) שיטות

{{% alert color="primary" %}}

בעת עיבוד **Shape**, עליו להיות חלק מהיררכיית המסמכים. אם **Shape** אינו חלק מעץ המסמך, הפלט המוצג יהיה ריק לאחר הפעלת **ShapeRenderer** שיטות.

{{% /alert %}}

## עיבוד לקובץ או להזרים

שיטת [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) מספקת עומסי יתר המעבירים צורה ישירות לקובץ או לזרם. שני העומסים מקבלים דוגמא של הכיתה [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), המאפשרת להגדיר אפשרויות להציג את הצורה. זה עובד באותו אופן כמו שיטת [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). למרות שהפרמטר הזה נדרש, אתה יכול להעביר ערך אפס, ולציין שאין אפשרויות מותאמות אישית.

ניתן לייצא את הצורה בכל פורמט תמונה שצוין בספירה [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). לדוגמה, ניתן להציג את התמונה כדמות רסטר, כגון JPEG על ידי ציון הספירה `SaveFormat.Jpeg`, או כדמות וקטורית, כגון EMF על ידי ציון `SaveFormat.Emf`.

דוגמת הקוד שלהלן ממחישה עיבוד צורה לתמונה EMF בנפרד מהמסמך ושמירה בדיסק:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

דוגמת הקוד שלהלן ממחישה עיבוד צורה לתמונה JPEG בנפרד מהמסמך ושמירה בזרם:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

הכיתה **ImageSaveOptions** מאפשרת לך לציין מגוון אפשרויות השולטות באופן עיבוד התמונה. ניתן ליישם את הפונקציונליות המתוארת לעיל באותו אופן על הצמתים **GroupShape** ו - **Shape**.

## עיבוד לאובייקט גרפי .NET

עיבוד ישירות לאובייקט **Graphics** מאפשר לך להגדיר את ההגדרות שלך ואת המצב עבור האובייקט **Graphics**. תרחיש נפוץ כולל עיבוד צורה ישירות לאובייקט **Graphics** שנלקח מצורה Windows או מפת סיביות. כאשר הצומת **Shape** מוצג, ההגדרות ישפיעו על מראה הצורה. לדוגמה, ניתן לסובב או לשנות את קנה המידה של הצורה באמצעות השיטות **RotateTransform** או **ScaleTransform** עבור האובייקט **Graphics**.

הדוגמה הבאה מראה כיצד להציג צורה ל -.**NET Graphics** אובייקט בנפרד מהמסמך והחל סיבוב על התמונה שניתנה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

באופן דומה, לשיטה [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/), השיטה [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) שירשה מ [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) שימושית ליצירת תמונות ממוזערות של תוכן המסמך. גודל הצורה מוגדר באמצעות הבנאי. השיטה **RenderToSize** מקבלת את האובייקט **Graphics**, ה איקס ו י קואורדינטות של מיקום התמונה וגודל התמונה (רוחב וגובה) שיצויר על האובייקט **Graphics**.

ניתן להציג את **Shape** לסולם מסוים באמצעות שיטת [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) שהורשה מהכיתה [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/). זה דומה לשיטת [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/) שמקבלת את אותם פרמטרים עיקריים. ההבדל בין שתי השיטות הללו הוא שבשיטת **ShapeRenderer.RenderToScale**, במקום גודל מילולי, אתה בוחר ערך צף שמגדיל את הצורה במהלך העיבוד שלה. אם ערך הציפה שווה 1.0 גורם לצורה להיות מוצגת ב-100% מגודלה המקורי. ערך צף של 0.5 יקטין את גודל התמונה בחצי.

## עיבוד תמונת צורה

המחלקה [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) מייצגת אובייקטים בשכבת הציור, כגון AutoShape, תיבת טקסט, צורה חופשית, OLE אובייקט, בקרת אקטיבקס או תמונה. באמצעות הכיתה **Shape**, ניתן ליצור או לשנות צורות במסמך Microsoft Word. תכונה חשובה של צורה היא [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). לצורות מסוגים שונים יכולות להיות יכולות שונות במסמך Word. לדוגמה, רק תמונות ו OLE צורות יכולות להכיל תמונות בתוכם בעוד שרוב הצורות יכולות להכיל טקסט בלבד.

הדוגמה הבאה מראה כיצד להציג תמונת צורה לתמונה JPEG בנפרד מהמסמך ולשמור אותה בדיסק:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## אחזור גודל צורה

המחלקה [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) מספקת גם פונקציונליות לאחזור גודל הצורה בפיקסלים באמצעות שיטת [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/). שיטה זו מקבלת שני פרמטרים מסוג צף (יחיד) – הסולם ו DPI, המשמשים בחישוב גודל הצורה בעת עיבוד הצורה. השיטה מחזירה את האובייקט `Size`, המכיל את הרוחב והגובה של הגודל המחושב. זה שימושי כאשר נדרש לדעת את גודל הצורה המוצגת מראש, למשל בעת יצירת מפת סיביות חדשה מהפלט המוצג.

הדוגמה שלהלן מראה כיצד ליצור מפת סיביות חדשה ואובייקט גרפי עם רוחב וגובה הצורה שיש להציג:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

בעת שימוש בשיטות **RenderToSize** או **RenderToScale**, גודל התמונה המעובד מוחזר גם באובייקט [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/). ניתן להקצות זאת למשתנה ולהשתמש בו במידת הצורך.

המאפיין **SizeInPoints** מחזיר את גודל הצורה שנמדד בנקודות (ראה [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). התוצאה היא אובייקט `SizeF` המכיל את הרוחב והגובה.
