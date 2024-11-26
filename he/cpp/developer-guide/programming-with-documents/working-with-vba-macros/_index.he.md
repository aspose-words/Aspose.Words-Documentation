---
title: עבודה עם VBA פקודות מאקרו ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם VBA פקודות מאקרו
linktitle: עבודה עם VBA פקודות מאקרו
description: "עבודה עם מסמך VBA פרויקטים באמצעות C++."
type: docs
weight: 410
url: /he/cpp/working-with-vba-macros/
timestamp: 2024-01-30-16-22-34
---

Visual Basic עבור יישומים (VBA) עבור Microsoft Word היא שפת תכנות פשוטה אך חזקה שניתן להשתמש בה כדי להרחיב את הפונקציונליות. Aspose.Words API מספק שלוש כיתות כדי לקבל גישה לקוד המקור של הפרויקט VBA:

- הכיתה [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) מספקת גישה למידע על הפרויקט VBA
- הכיתה [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) מחזירה את האוסף של מודולים של פרויקט VBA
- הכיתה [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) מספקת גישה למודול הפרויקט VBA

## צור פרויקט VBA

Aspose.Words API מספק `Document.VbaProject` נכס לקבל או להגדיר VbaProject במסמך.

דוגמת הקוד הבאה מדגימה כיצד ליצור מודול VBA פרויקט ו VBA יחד עם מאפיינים בסיסיים, למשל שם וסוג:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## קרא פקודות מאקרו

Aspose.Words גם מספק למשתמשים את היכולת לקרוא VBA פקודות מאקרו.

דוגמת הקוד הבאה מראה כיצד לקרוא VBA פקודות מאקרו מהמסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## כתוב או שנה פקודות מאקרו

באמצעות Aspose.Words, משתמשים יכולים לשנות VBA פקודות מאקרו.

דוגמת הקוד הבאה מראה כיצד לשנות VBA פקודות מאקרו באמצעות המאפיין [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## שיבוט VBA פרויקט

עם Aspose.Words אפשר גם לשכפל VBA פרויקטים.

דוגמת הקוד הבאה מראה כיצד לשכפל את הפרויקט VBA באמצעות המאפיין [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) שיוצר עותק של הפרויקט הקיים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## מודול שיבוט VBA

ניתן גם לשכפל VBA מודולים במידת הצורך.

דוגמת הקוד הבאה מראה כיצד לשכפל את מודול VBA באמצעות המאפיין [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) שיוצר עותק של הפרויקט הקיים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
