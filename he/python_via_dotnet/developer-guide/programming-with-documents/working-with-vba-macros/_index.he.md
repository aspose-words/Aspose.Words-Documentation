---
title: עבודה עם VBA Macros Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם VBA Macros
linktitle: עבודה עם VBA Macros
description: "יצירה, קריאה, כתיבה, שיבוט ולנהל מאקרו VBA במסמך באמצעות שימוש Python."
type: docs
weight: 410
url: /he/python-net/working-with-vba-macros/
---

Visual Basic בקשה (VBA) Microsoft Word היא שפת תכנות פשוטה אך עוצמתית שניתן להשתמש בה כדי להרחיב את הפונקציונליות. Aspose.Words API מספק שלוש כיתות כדי לקבל גישה לקוד המקור של פרויקט VBA:

- The [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) קטגוריה מספקת גישה למידע של פרויקט VBA
- The [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) קטגוריה מחזירה את אוסף המודולים של פרויקט VBA
- The [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) שיעור מספק גישה למודול פרויקט VBA
- The [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) הערכה מגדירה את סוגי המודל בפרויקט VBA. המודול יכול להיות מודול procedural, מודול מסמך, מודול הכיתה, או מודול מעצב

## יצירת פרויקט VBA

Aspose.Words API מספק [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) רכוש כדי להגיע או להגדיר [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) במסמך.

הדוגמה הבאה של הקוד מראה כיצד ליצור פרויקט VBA ומודול VBA יחד עם תכונות בסיסיות e.g. [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) ו [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Read Macros

Aspose.Words מספק למשתמשים את היכולת לקרוא מאקרו VBA.

דוגמה לקוד הבא מראה כיצד לקרוא את VBA Macros מהמסמכים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## תגית: Modify Macros

שימוש Aspose.Words, משתמשים יכולים לשנות מאקרו VBA.

דוגמה לקוד הבא מראה כיצד לשנות את VBA Macros באמצעות ה-VBA. [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/) רכוש:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Clone VBA פרויקט

עם Aspose.Words ניתן גם לשחזר פרויקטים של VBA.

הדוגמה הבאה של הקוד מראה כיצד לשחזר את פרויקט VBA באמצעות פרויקט VBA. [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) נכסים שיוצרים עותק של הפרויקט הקיים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Clone VBA מודול

ניתן גם לשחזר מודולי VBA במידת הצורך.

הדוגמה הבאה לקוד מראה כיצד לשחזר את מודול VBA באמצעות מודול VBA [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) נכסים שיוצרים עותק של הפרויקט הקיים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## עקבו אחרי VBA Project Applications

Aspose.Words API מספק [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) שיעור לעבוד עם VBA Project הפניות המייצגות אוסף של אזכורי פרויקט VBA.

הדוגמה הבאה של הקוד מראה כיצד להסיר כמה אזכורים מאוסף ההפניות מפרויקט VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}