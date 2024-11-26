---
title: עבודה עם Shapes Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם Shapes
linktitle: עבודה עם Shapes
description: "ליצור ולנהל צורות, אובייקטים ole במסמך באמצעות Python."
type: docs
weight: 280
url: /he/python-net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

נושא זה דן כיצד לעבוד באופן מתודולוגי עם צורות באמצעות Aspose.Words.

הצורות Aspose.Words מייצג אובייקט בשכבת הציור, כגון AutoShape, תיבת טקסט, freeform, OLE object, ActiveX Control או תמונה. מסמך Word יכול להכיל צורות שונות או יותר. צורות המסמך מיוצגות על ידי [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) מעמד.

## המונחים: shapes Using Document Builder

באפשרותך להוסיף טופס inline עם סוג וגודל מוגדר וצורה חופשית עם המיקום שצוין, גודל וטקסט עטופה סוג לתוך מסמך באמצעות מסמך באמצעות שימוש [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) שיטה. The The The [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) שיטה מאפשרת הוספת צורת DML למודל המסמך. יש לשמור את המסמך בפורמט, אשר תומך בצורות DML, אחרת, נקודות כאלה יומרו לצורת VML, תוך שמירת מסמכים.

לדוגמה הקוד הבא מראה כיצד להכניס סוגים אלה של צורות לתוך המסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## תגית: Aspect Ratio Locked

שימוש Aspose.Words, אתה יכול לציין אם יחס האספקט של הצורה נעול דרך [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **AspectRatioLocked** רכוש:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## המונחים: shape Layout in Cell

אתה יכול גם לציין אם הצורה מוצגת בתוך שולחן או בחוץ באמצעות זה. [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **IsLayoutInCell** רכוש:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## תגית: Snip Corner Rectangle

אתה יכול ליצור מלבן פינה נופי באמצעות Aspose.Words. סוגי הצורה הם [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded), ו [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

צורת DML נוצרת באמצעות [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) שיטה עם צורות אלה. סוגים אלה אינם יכולים לשמש ליצירת צורות VML. ניסיון ליצור צורה באמצעות בניית הציבור של [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) הכיתה מעלה את החריג "NotSupportedException".

הדוגמה הבאה של הקוד מראה כיצד להכניס את הצורות הללו למסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## עקבו אחרי Actual shape Bounds

שימוש Aspose.Words API, אתה יכול לקבל את המיקום ואת הגודל של הצורה המכיל בלוק בנקודות, יחסית לעגן של הצורה העליונה. לעשות זאת, השתמש [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **BoundsInPoints** רכוש:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## תגית: Vertical Anchor

באפשרותך לציין את היערכות הטקסט אנכית בתוך צורה באמצעות [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **VerticalAnchor** רכוש:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Detect Smart אמנות

Aspose.Words מאפשר גם לזהות אם לצורה יש `SmartArt` אובייקט. לעשות זאת, השתמש [נכסים חכמים_art](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **HasSmartArt** רכוש:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## הכנס Horizontal חוק לתוך מסמך

אתה יכול להוסיף צורה של שלטון אופקי לתוך מסמך באמצעות [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) שיטה.

דוגמה לקוד הבא מראה כיצד לעשות זאת:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API מספק [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) רכוש לגשת למאפיינים של צורת השלטון האופקי. The The The [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) שיעור חושף תכונות בסיסיות כמו [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) וכו' לתבנית של שלטון אופקי.

דוגמה לקוד הבא מראה כיצד להגדיר [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## המונחים: אובייקטים כאייקון

Aspose.Words API מספק **Shape.insert_ole_object_as_icon** תפקיד להכניס אובייקט מוטבע או מקושר כסמל לתוך המסמך. פונקציה זו מאפשרת לציין את קובץ הסמל ואת הכיתוב. The The The `OLE` סוג האובייקט יוזה באמצעות הרחבה הקובץ.

הדוגמה הבאה של הקוד ממחישה כיצד להגדיר את אובייקט OLE כאייקון במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

הגודל המקסימלי של הסמל חייב להיות 32x32 עבור התצוגה הנכונה.

{{% /alert %}}

## ייבוא Shapes with Math XML as Shapes into DOM

אתה יכול להשתמש [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) נכס להמיר את הצורות עם EquationXML לאובייקטים של Office Math. ערך ברירת המחדל של נכס זה תואם להתנהגות MS Word i.צורות עם משוואה XML אינם מומרים לאובייקטים מתמטיים של Office.

הדוגמה הקודית הבאה מראה כיצד להמיר צורות לאובייקטים של Office:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
