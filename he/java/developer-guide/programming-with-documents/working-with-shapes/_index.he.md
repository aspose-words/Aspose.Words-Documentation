---
title: עבודה עם Shapes Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם Shapes
linktitle: עבודה עם Shapes
type: docs
description: "מבוא לעצב שפת סימון, יצירת צורות של סוגים שונים באמצעות Java."
weight: 280
url: /he/java/working-with-shapes/
---

נושא זה דן כיצד לעבוד באופן מתודולוגי עם צורות באמצעות Aspose.Words.

הצורות Aspose.Words מייצג אובייקט בשכבה הציורית, כגון AutoShape, טקסטbox, freeform, OLE object, ActiveX control או תמונה. מסמך Word יכול להכיל צורות שונות או יותר. צורות המסמך מיוצגות על ידי [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) מעמד.

## המונחים: Document Builder

באפשרותך להוסיף טופס inline עם סוג וגודל מוגדר וצורה חופשית עם המיקום שצוין, גודל וטקסט עטופה סוג לתוך מסמך באמצעות המסמך באמצעות שימוש [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) שיטה. The The The **InsertShape** שיטה מאפשרת הוספת צורת DML למודל המסמך. יש לשמור את המסמך בפורמט, אשר תומך בצורות DML, אחרת, נקודות כאלה יומרו לצורת VML, תוך שמירת מסמכים.

לדוגמה הקוד הבא מראה כיצד להכניס סוגים אלה של צורות לתוך המסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## תגית: Aspect Ratio Locked

שימוש Aspose.Words, באפשרותך לציין האם יחס ההיבט של הצורה נעול באמצעות [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **AspectRatioLocked** רכוש:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## המונחים: shape Layout in Cell

אתה יכול גם לציין אם הצורה מוצגת בתוך שולחן או מחוץ לו באמצעות זה. [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **IsLayoutInCell** רכוש:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## תגית: Snipped

אתה יכול ליצור מלבן פינה נופי באמצעות Aspose.Words. סוגי הצורה הם *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCorners OneRounded OneCornersRounded, SingleCornersRounded, TopCornersRounded,* ו *DiagonalCornersRounded.*

צורת DML נוצרת באמצעות **InsertShape** שיטה עם צורות אלה. סוגים אלה לא ניתן להשתמש כדי ליצור צורות VML. ניסיון ליצור צורה על ידי שימוש במבנה הציבורי של המעמד "Shape" מעלה את החריג "NotSupportedException".

הדוגמה הבאה של הקוד מראה כיצד להכניס את הצורות הללו אל המסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## עקבו אחרי Actual shape Bounds

שימוש Aspose.Words API, אתה יכול לקבל את המיקום ואת הגודל של הצורה המכיל בלוק בנקודות, יחסית לעגן של הצורה העליונה. לעשות זאת, השתמש [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **BoundsInPoints** רכוש:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## תגית: Vertical Anchor

באפשרותך לציין את היערכות הטקסט אנכית בתוך צורה באמצעות [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **VerticalAnchor** רכוש:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Detect Smart אמנות

Aspose.Words מאפשר גם לזהות אם לצורה יש `SmartArt` אובייקט לעשות זאת, השתמש [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) רכוש.

דוגמה לקוד הבא מראה כיצד לעבוד עם **HasSmartArt** רכוש:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## תבנית כלל Horizontal Rule Format

אתה יכול להוסיף צורה של שלטון אופקי לתוך מסמך באמצעות [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) שיטה.

Aspose.Words API מספק [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) רכוש לגישה לנכסים של צורת השלטון האופקי. The The The [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) הכיתה חושפת תכונות בסיסיות כמו גובה, צבע, NoShade וכו ' עבור פורמט של כלל אופקי.

דוגמה לקוד הבא מראה כיצד להגדיר **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
