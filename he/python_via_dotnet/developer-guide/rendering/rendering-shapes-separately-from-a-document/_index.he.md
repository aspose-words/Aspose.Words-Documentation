---
title: צורה בנפרד ממסמכים
second_title: Aspose.Words עבור Python via .NET
articleTitle: "המונחים: shapes בנפרד ממכתב"
linktitle: "המונחים: shapes בנפרד ממכתב"
description: "להפיק אובייקטים גרפיים שונים, כגון תמונות, תיבת טקסט המכילה פסקאות, או צורות חץ, בעת עיבוד מסמך, וייצא אותם למיקום חיצוני באמצעות שימוש Python."
type: docs
weight: 40
url: /he/python-net/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

בעת עיבוד מסמכים, משימה נפוצה היא לחלץ את כל התמונות שנמצאו במסמך ולייצא אותם למיקום חיצוני. משימה זו הופכת פשוטה עם Aspose.Words API, אשר כבר מספק את הפונקציונליות של תמצית והצלת נתוני תמונה. עם זאת, לפעמים ייתכן שתרצה גם לחלץ סוגים אחרים של תוכן גרפי מיוצג על ידי סוג אחר של אובייקט ציור, למשל, תיבת טקסט המכיל פסקאות, צורות חץ, ותמונה קטנה. אין דרך פשוטה להפוך את האובייקט הזה מכיוון שהוא שילוב של רכיבי תוכן בודדים. אתה יכול גם להיתקל במקרה כאשר התוכן נאסף יחד לתוך האובייקט שנראה כמו תמונה אחת.

Aspose.Words מספק פונקציונליות עבור תמצית סוג זה של תוכן באותה הדרך אתה יכול לחלץ תמונה פשוטה מצורה כמו התוכן. מאמר זה מתאר כיצד לנצל פונקציונליות זו כדי להפוך צורות עצמאיות של המסמך.

## צורות Aspose.Words

כל התוכן בשכבה ציור מסמך מיוצג על ידי [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) או [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) המונחים: Aspose.Words Document ObjectמודולDOM). תוכן כזה יכול להיות תיבות טקסט, תמונות, AutoShapes, אובייקטים פשוטים וכו '. שדות מסוימים מיובאים גם כצורות, למשל, `INCLUDEPICTURE` שדה.

תמונה פשוטה מיוצגת על ידי [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Node of [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). צורה זו Node אין צמתים של ילדים, אך נתוני התמונה הכלולים בתוך צורה זו ניתן לגשת על ידי הצומת. [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) רכוש. מצד שני, צורה יכולה גם להיות מורכבת מאבני ילדים רבות. לדוגמה, טופס תיבת טקסט, אשר מיוצג על ידי [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) רכוש, יכול להיות מורכב מנקודות רבות, כגון [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ו [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). רוב הצורות יכולות לכלול [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ו [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) צומת בגובה בלוק אלה הם אותם צמתים כמו אלה המופיעים בגוף הראשי. צורות הן תמיד חלקים של פסקה מסוימת, או כלול ישירות Inline או מעוגן אל [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)אבל "לצוף" בכל מקום בדף המסמך.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

מסמך יכול לכלול גם צורות אשר מקובצים יחד. Groupניתן להכניס Microsoft Word על ידי בחירת פריטים מרובים ולחיצה על "Group"בתפריט הקליק הנכון.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

In In In Aspose.Words, קבוצות אלה של צורות מיוצגות על ידי [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) צומת. ניתן גם להשתמש בהם באותה הדרך כדי להפוך את הקבוצה כולה לדימוי.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

פורמט DOCX יכול להכיל סוגים מיוחדים של תמונות, כגון דיאגרמות או תרשימים. גם צורות אלה מיוצגות באמצעות [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) המונחים: Aspose.Words, אשר גם מספק שיטה דומה להכנת תמונות. על ידי עיצוב, צורה לא יכולה להכיל צורה אחרת כילד, אלא אם כן צורה זו היא תמונה ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). לדוגמה, Microsoft Word לא מאפשר לך להכניס תיבת טקסט בתוך תיבת טקסט אחרת.

סוגי הצורה המתוארים לעיל מספקים שיטה מיוחדת כדי להפוך את הצורות דרך [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) מעמד. מקרה של [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) שיעור נלקח עבור [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) או [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) דרך [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) שיטה או ע"י העברת [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) אל המבנה של [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) מעמד. מחלקה זו מספקת גישה לחברים, המאפשרים להפוך צורה לאחר:

- קובץ על הדיסק
- זרם

{{% alert color="primary" %}}

מתי להפוך [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) זה חייב להיות חלק מההיררכיה של המסמך. אם [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) אינו חלק מעץ המסמכים, אזי הפלט המתקבל יהיה ריק לאחר שהוא מעורר השראה. [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) שיטות.

{{% /alert %}}

## עקבו אחרי File or Stream

The The The [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) שיטה מספקת עומסים שהופכים צורה ישירות לקובץ או לזרם. שניהם מקבלים מקרה של [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) מעמד, המאפשר להגדיר אפשרויות להכנת הצורה. זה עובד באותה צורה כמו [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) שיטה. למרות פרמטר זה נדרש, אתה יכול להעביר ערך אפס, וציין כי אין אפשרויות מותאמות אישית.

את הצורה ניתן לייצא בכל פורמט תמונה שצוין ב [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) אזהרה. לדוגמה, ניתן להפוך את התמונה כתמונה raster, כגון JPEG על ידי ציון התמונה. [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg) enumeration, או כדמות וקטור, כגון EMF על ידי סימון [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

הדוגמה הקודית מתחת ממחישה את הצורה לדימוי EMF בנפרד ממסמכים והצלת לדיסק:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

הדוגמה הקודית למטה ממחישה את הצורה לדימוי JPEG בנפרד ממסמכים והצלת זרם:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

The The The [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) הכיתה מאפשרת לך לציין מגוון רחב של אפשרויות השולטות כיצד התמונה ניתנת. את הפונקציונליות המתוארת לעיל ניתן ליישם באותה הדרך. [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) ו [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) צומת

## עקבו אחרי A Shape Image

The The The [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) הכיתה מייצגת אובייקטים בשכבה הציורית, כגון AutoShape, תיבת טקסט, freeform, OLE object, ActiveX control או תמונה. באמצעות [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) בכיתה, אתה יכול ליצור או לשנות צורות ב Microsoft Word מסמך. נכס חשוב של צורה הוא [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). צורות של סוגים שונים יכולות להיות יכולות שונות במסמך Word. לדוגמה, רק תמונות וצורות שלמות יכולות להיות תמונות בתוכם בעוד שרוב הצורות יכולות להיות טקסט בלבד.

הדוגמה הבאה מראה כיצד להפוך תמונת צורה לדימוי JPEG בנפרד מהמסמכים ולהציל אותו לדיסק:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## חידוש גודל צורה

The The The [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) הכיתה מספקת גם פונקציונליות כדי לשחזר את גודל הצורה בפיקסלים דרך [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/) שיטה. שיטה זו מקבלת שני פרמטרים צפים (Single) - הגודל ו DPI, אשר משמשים בחישוב גודל הצורה כאשר הצורה ניתנת. השיטה מחזירה את **Size** אובייקט, המכיל את רוחב וגובה של גודל מחושב. זה שימושי כאשר הוא נדרש לדעת את הגודל של הצורה שניתנו מראש. The The The [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) הנכס מחזיר את גודל הצורה נמדד בנקודות. התוצאה היא **SizeF** אובייקט המכיל את רוחב וגובה. גם אתה יכול להשתמש [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) רכוש כדי להשיג גבולות אמיתיים של הצורה.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


