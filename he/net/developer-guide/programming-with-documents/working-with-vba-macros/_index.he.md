---
title: עבודה עם VBA Macros C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם VBA Macros
linktitle: עבודה עם VBA Macros
description: "עבודה עם מסמכי VBA פרויקטים באמצעות C#."
type: docs
weight: 410
url: /he/net/working-with-vba-macros/
---

Visual Basic בקשה (VBA) Microsoft Word היא שפת תכנות פשוטה אך עוצמתית שניתן להשתמש בה כדי להרחיב את הפונקציונליות. Aspose.Words API מספק שלוש כיתות כדי לקבל גישה לקוד המקור של פרויקט VBA:

- The [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) קטגוריה מספקת גישה למידע של פרויקט VBA
- The [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) קטגוריה מחזירה את אוסף המודולים של פרויקט VBA
- The [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) שיעור מספק גישה למודול פרויקט VBA
- The [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) הערכה מגדירה את סוגי המודל בפרויקט VBA. המודול יכול להיות מודול procedural, מודול מסמך, מודול הכיתה, או מודול מעצב

## יצירת פרויקט VBA

Aspose.Words API מספק [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) לרכוש או להגדיר VbaProject במסמך.

הדוגמה הבאה של הקוד מראה כיצד ליצור פרויקט VBA ומודול VBA יחד עם תכונות בסיסיות e.g. שם וסוג:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Read Macros

Aspose.Words מספק למשתמשים את היכולת לקרוא מאקרו VBA.

דוגמה לקוד הבא מראה כיצד לקרוא את VBA Macros מהמסמכים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## תגית: Modify Macros

שימוש Aspose.Words, משתמשים יכולים לשנות מאקרו VBA.

דוגמה לקוד הבא מראה כיצד לשנות את VBA Macros באמצעות ה-VBA. [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/) רכוש:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Clone VBA פרויקט

עם Aspose.Words ניתן גם לשחזר פרויקטים של VBA.

הדוגמה הבאה של הקוד מראה כיצד לשחזר את פרויקט VBA באמצעות פרויקט VBA. [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) נכסים שיוצרים עותק של הפרויקט הקיים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Clone VBA מודול

ניתן גם לשחזר מודולי VBA במידת הצורך.

הדוגמה הבאה לקוד מראה כיצד לשחזר את מודול VBA באמצעות מודול VBA [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) נכסים שיוצרים עותק של הפרויקט הקיים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## עקבו אחרי VBA Project Applications

Aspose.Words API מספק [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) שיעור לעבוד עם VBA Project הפניות המייצגות אוסף של אזכורי פרויקט VBA.

הדוגמה הבאה של הקוד מראה כיצד להסיר כמה אזכורים מאוסף ההפניות מפרויקט VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}