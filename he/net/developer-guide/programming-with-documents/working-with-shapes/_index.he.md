---
title: עבודה עם Shapes C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם Shapes
linktitle: עבודה עם Shapes
description: "מבוא לעצב שפת סימון, יצירת צורות של סוגים שונים באמצעות C#."
type: docs
weight: 280
url: /he/net/working-with-shapes/
---

נושא זה דן כיצד לעבוד באופן מתודולוגי עם צורות באמצעות Aspose.Words.

הצורות Aspose.Words מייצג אובייקט בשכבת הציור, כגון AutoShape, תיבת טקסט, freeform, OLE object, ActiveX Control או תמונה. מסמך Word יכול להכיל צורות שונות או יותר. צורות Aspose.Words מיוצגים על ידי [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) מעמד.

## המונחים: shapes Using Document Builder

באפשרותך להוסיף טופס inline עם סוג וגודל מוגדר וצורה חופשית עם המיקום שצוין, גודל וטקסט עטופה סוג לתוך מסמך באמצעות מסמך באמצעות המסמך באמצעות השימוש. [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) שיטה. The The The **InsertShape** שיטה מאפשרת הוספת צורת DML למודל המסמך. יש לשמור את המסמך בפורמט, אשר תומך בצורות DML, אחרת, נקודות כאלה יומרו לצורת VML, תוך שמירת מסמכים.

לדוגמה הקוד הבא מראה כיצד להכניס סוגים אלה של צורות לתוך המסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## תגית: Aspect Ratio Locked

שימוש Aspose.Words, אתה יכול לציין אם יחס האספקט של הצורה נעול דרך [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **AspectRatioLocked** רכוש:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## המונחים: shape Layout in Cell

אתה יכול גם לציין אם הצורה מוצגת בתוך שולחן או בחוץ באמצעות זה. [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **IsLayoutInCell** רכוש:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## תגית: Snip Corner Rectangle

אתה יכול ליצור מלבן פינה נופי באמצעות Aspose.Words. סוגי הצורה הם *SingleCornerSnipped, TopCornerssSnipped, DiagonalCornerssSnipped, TopCorners OneRounded OneCornersRounded, TopCornersRounded, * ו- TopCornersRounded OneRounded Ones. *DiagonalCornersRounded.*

צורת DML נוצרת באמצעות **InsertShape** שיטה עם צורות אלה. סוגים אלה אינם יכולים לשמש ליצירת צורות VML. ניסיון ליצור צורה על ידי שימוש במבנה הציבורי של מעמד "Shape" מעלה את החריג "NotSupportedException".

הדוגמה הבאה של הקוד מראה כיצד להכניס את הצורות הללו למסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## עקבו אחרי Actual shape Bounds

שימוש Aspose.Words API, אתה יכול לקבל את המיקום ואת הגודל של הצורה המכיל בלוק בנקודות, יחסית לעגן של הצורה העליונה. לעשות זאת, השתמש [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **BoundsInPoints** רכוש:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## תגית: Vertical Anchor

באפשרותך לציין את היערכות הטקסט אנכית בתוך צורה באמצעות [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **VerticalAnchor** רכוש:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Detect Smart אמנות

Aspose.Words מאפשר גם לזהות אם לצורה יש `SmartArt` אובייקט. לעשות זאת, השתמש [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **HasSmartArt** רכוש:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## הכנס Horizontal חוק לתוך מסמך

אתה יכול להוסיף צורה של שלטון אופקי לתוך מסמך באמצעות [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/) שיטה.

דוגמה לקוד הבא מראה כיצד לעשות זאת:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API מספק [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) רכוש לגשת למאפיינים של צורת השלטון האופקי. The The The [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) הכיתה חושפת תכונות בסיסיות כמו גובה, צבע, NoShade וכו ' עבור פורמט של כלל אופקי.

דוגמה לקוד הבא מראה כיצד להגדיר **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## ייבוא Shapes with Math XML as Shapes into DOM

אתה יכול להשתמש [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) נכס להמיר את הצורות עם EquationXML לאובייקטים של Office Math. ערך ברירת המחדל של נכס זה תואם Microsoft Word התנהגות, כלומר צורות עם משוואה XML אינן מומרות לאובייקטים במתמטיקה של Office.

הדוגמה הקודית הבאה מראה כיצד להמיר צורות לאובייקטים של Office:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
