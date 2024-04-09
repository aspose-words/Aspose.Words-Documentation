---
title: עבודה עם תמונות Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם תמונות
linktitle: עבודה עם תמונות
description: "ליצור ולנהל תמונות של פורמטים שונים במסמך באמצעות Python."
type: docs
weight: 300
url: /he/python-net/working-with-images/
---

Aspose.Words מאפשר למשתמשים לעבוד עם תמונות בצורה גמישה מאוד. במאמר זה, אתה יכול לחקור רק כמה אפשרויות של עבודה עם תמונות.

## הוספת תמונה

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) מספק מספר עומסים של [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) שיטה המאפשרת לך להוסיף תמונה פנימית או צף. אם התמונה היא metafile EMF או WMF, זה יוכנס לתוך המסמך בפורמט metafile. כל התמונות האחרות מאוחסנים בפורמט PNG. The The The **המונחים:** שיטה יכולה להשתמש בתמונות ממקורות שונים:

- מקובץ או `URL` עובר פרמטר מיתר
- מתוך זרם על ידי עובר `Stream` פרמטר
- ממערך Byte על ידי העברת פרמטר מערך

עבור כל אחד **המונחים:** שיטות, יש עומסים נוספים המאפשרים לך להוסיף תמונה עם האפשרויות הבאות:
- Inline או צף במיקום מסוים, למשל, **המונחים:**
- גודל בינוני או גודל מותאם אישית; יותר מכך, [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) שיטה מחזירה [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) אובייקט שנוצר והוכנס כדי שתוכל לשנות את התכונות של [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### הוספת Inline Image

לעבור מחרוזת אחת המייצגת קובץ המכיל את התמונה [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) כדי להכניס את התמונה לתוך המסמך כגרפיקה פנימית.

הדוגמה הבאה של הקוד מראה כיצד להכניס תמונה איליין בעמדה cursor לתוך מסמך:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### צילום: Absolute Positioned

הדוגמה הבאה של הקוד מראה כיצד להוסיף תמונה צף מקובץ או `URL` במיקום מסוים בגודל ובגודל:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg",
    aw.drawing.RelativeHorizontalPosition.MARGIN,
    100,
    aw.drawing.RelativeVerticalPosition.MARGIN,
    100,
    200,
    100,
    aw.drawing.WrapType.SQUARE)

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_floating_image.doc")
{{< /highlight >}}

## כיצד להפיק תמונות ממכתב

כל התמונות נשמרות בפנים [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) רעשים ב [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). כדי לחלץ את כל התמונות או התמונות שיש סוג מסוים של המסמך, בצע שלבים אלה:

- השתמש [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) שיטה לבחור את כל [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) צומת
- עקבו אחרי node אוספים
- בדוק את [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/) רכוש בוז.
- נתוני צילום באמצעות [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) רכוש.
- שמור את נתוני התמונה לקובץ.

הדוגמה הבאה של הקוד מראה כיצד להפיק תמונות ממסמכים ולהציל אותם כקבצים:

ניתן להוריד את קובץ התבנית של דוגמה זו [כאן](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## כיצד להכניס Barcode לכל דף של מסמך

דוגמה זו מדגימה אותך להוסיף את אותם ברקודים או שונים על כל העמודים הספציפיים של מסמך Word. אין דרך ישירה להוסיף קודים על כל דפי המסמך, אבל אתה יכול להשתמש [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) ו [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) שיטות לעבור לכל חלק או כותרות / מ"ר ולהכניס את התמונות הברקוד כפי שאתה יכול לראות בקוד הבא.

הדוגמה הקודית הבאה מציגה תמונת ברקוד על כל דף של מסמך.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Lock Aspect Ratio of Image

היחס ההיבט של צורה גיאומטרי הוא היחס של הגדלים שלו בממדים שונים. אתה יכול לנעול את יחס ההיבט של התמונה באמצעות [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). ערך ברירת המחדל של יחס ההיבט של הצורה תלוי [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). זה `True` עבור [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) ו `False` עבור סוגים אחרים של צורה.

דוגמה לקוד הבא מראה כיצד לעבוד עם יחס היבט:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## כיצד להפוך את פצעי הצורה בנקודות

אם אתה רוצה את הקופסה האמיתית של הצורה כפי שניתן על הדף, אתה יכול להשיג את זה על ידי שימוש [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) רכוש.

דוגמה לקוד הבא מראה כיצד להשתמש בנכס זה:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## תמונות Crop

היבול של תמונה מתייחס בדרך כלל להסרת החלקים החיצוניים הלא רצויים של תמונה כדי לעזור לשפר את ההקפאה. הוא משמש גם להסרת חלק מהחלקים של תמונה כדי להגביר את המיקוד באזור מסוים.

דוגמה לקוד הבא מראה כיצד להשיג זאת באמצעות Aspose.Words API:

{{< highlight python >}}
# The path to the documents directory.
inputPath = docs_base.images_dir + "Logo.jpg"
outputPath = docs_base.artifacts_dir + "cropped_logo.jpg"

self.crop_image(inputPath,outputPath, 100, 90, 200, 200)
{{< /highlight >}}

{{< highlight python >}}
@staticmethod
def crop_image(inPath : str, outPath : str, left : int, top : int, width : int, height : int) :
    
    doc = aw.Document();
    builder = aw.DocumentBuilder(doc)
    
    croppedImage = builder.insert_image(inPath)
    
    src_width_points = croppedImage.width
    src_height_points = croppedImage.height
    
    croppedImage.width = aw.ConvertUtil.pixel_to_point(width)
    croppedImage.height = aw.ConvertUtil.pixel_to_point(height)
    
    widthRatio = croppedImage.width / src_width_points
    heightRatio = croppedImage.height / src_height_points
    
    if (widthRatio< 1) :
        croppedImage.image_data.crop_right = 1 - widthRatio
    
    if (heightRatio< 1) :
        croppedImage.image_data.crop_bottom = 1 - heightRatio
    
    leftToWidth = aw.ConvertUtil.pixel_to_point(left) / src_width_points
    topToHeight = aw.ConvertUtil.pixel_to_point(top) / src_height_points
    
    croppedImage.image_data.crop_left = leftToWidth
    croppedImage.image_data.crop_right = croppedImage.image_data.crop_right - leftToWidth
    
    croppedImage.image_data.crop_top = topToHeight
    croppedImage.image_data.crop_bottom = croppedImage.image_data.crop_bottom - topToHeight
    
    croppedImage.get_shape_renderer().save(outPath, aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG))
{{< /highlight >}}

## חיסכון תמונות כ- WMF

Aspose.Words מספק פונקציונליות כדי לשמור את כל התמונות הזמינות במסמך [WMF](https://docs.fileformat.com/image/wmf/) פורמט תוך המרת DOCX ל- RTF.

הדוגמה הבאה של הקוד מראה כיצד לחסוך תמונות כמו WMF עם RTF אפשרויות:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
