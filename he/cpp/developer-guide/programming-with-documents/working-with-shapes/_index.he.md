---
title: עבודה עם צורות ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם צורות
linktitle: עבודה עם צורות
type: docs
description: "מבוא לשפת סימון צורה, יצירת צורות מסוגים שונים באמצעות C++."
weight: 280
url: /he/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

נושא זה דן כיצד לעבוד באופן פרוגרמטי עם צורות באמצעות Aspose.Words.

הצורות ב Aspose.Words מייצגות אובייקט בשכבת הציור, כגון AutoShape, תיבת טקסט, צורה חופשית, OLE אובייקט, בקרת אקטיבקס או תמונה. מסמך Word יכול להכיל צורה אחת או יותר. צורות המסמך מיוצגות על ידי הכיתה [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## הכנס צורה באמצעות בונה מסמכים

ניתן להוסיף צורה מוטבעת עם סוג וגודל מוגדרים וצורה צפה חופשית עם המיקום, הגודל וסוג גלישת הטקסט שצוינו למסמך בשיטת [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). שיטת **InsertShape** מאפשרת הכנסת DML צורה למודל המסמך. יש לשמור את המסמך בפורמט, התומך בצורות DML, אחרת, צמתים כאלה יומרו לצורה VML, תוך שמירת מסמך.

דוגמת הקוד הבאה מראה כיצד להכניס צורות מסוג זה למסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## הגדר יחס גובה-רוחב נעול

באמצעות Aspose.Words, אתה יכול לציין אם יחס הגובה-רוחב של הצורה נעול דרך המאפיין [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

דוגמת הקוד הבאה מראה כיצד לעבוד עם המאפיין **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## הגדר פריסת צורה בתא

ניתן גם לציין אם הצורה מוצגת בתוך טבלה או מחוצה לה באמצעות המאפיין [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

דוגמת הקוד הבאה מראה כיצד לעבוד עם המאפיין **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## צור מלבן פינת חיתוך

ניתן ליצור מלבן פינתי חיתוך באמצעות Aspose.Words. סוגי הצורות הם *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* ו *DiagonalCornersRounded.*

הצורה DML נוצרת באמצעות שיטת **InsertShape** עם סוגי צורות אלה. לא ניתן להשתמש בסוגים אלה כדי ליצור צורות VML. ניסיון ליצור צורה באמצעות הבונה הציבורי של כיתת " צורה "מעלה את החריג" NotSupportedException".

דוגמת הקוד הבאה מראה כיצד להכניס צורות מסוג זה למסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## קבל נקודות גבולות צורה בפועל

באמצעות Aspose.Words API, אתה יכול לקבל את המיקום והגודל של הצורה המכילה בלוק בנקודות, ביחס לעוגן של הצורה העליונה ביותר. לשם כך, השתמש במאפיין [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

דוגמת הקוד הבאה מראה כיצד לעבוד עם המאפיין **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## פורמט כלל אופקי

Aspose.Words API מספק את המאפיין [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) כדי לגשת למאפיינים של צורת הכלל האופקי. הכיתה **HorizontalRuleFormat** חושפת תכונות בסיסיות כמו גובה, צבע, צל, וכו'. לעיצוב של כלל אופקי.

הדוגמה הבאה של הקוד מראה כיצד להגדיר **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## הכנס OLE אובייקט כסמל

Aspose.Words API מספק **Shape** **InsertOleObjectAsIcon** פונקציה להכניס אובייקט מוטבע או מקושר OLE כסמל למסמך. פונקציה זו מאפשרת לציין את קובץ הסמל ואת הכיתוב. סוג האובייקט `OLE` יזוהה באמצעות סיומת הקובץ.

דוגמת הקוד הבאה מראה כיצד להגדיר הוספה OLE אובייקט כסמל למסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

הגודל המרבי של הסמל חייב להיות 32 על 32 לתצוגה הנכונה.

{{% /alert %}}
