---
title: עבודה עם תמונות ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם תמונות
linktitle: עבודה עם תמונות
type: docs
description: "מבוא לתכונת תמונה, כיצד ליצור ולתפעל תמונה באמצעות C++."
weight: 300
url: /he/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words מאפשר למשתמשים לעבוד עם תמונות בצורה מאוד גמישה. במאמר זה, אתה יכול לחקור רק חלק מהאפשרויות של עבודה עם תמונות.

## כיצד לחלץ תמונות ממסמך

כל התמונות מאוחסנות בתוך **Shape** צמתים ב [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). כדי לחלץ את כל התמונות או התמונות בעלות סוג מסוים מהמסמך, בצע את השלבים הבאים:

- השתמש בשיטת [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) כדי לבחור את כל הצמתים **Shape**.
- איטרציה באמצעות אוספי צומת וכתוצאה מכך.
- בדוק את המאפיין הבוליאני [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/).
- חלץ נתוני תמונה באמצעות המאפיין [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- שמור נתוני תמונה בקובץ.

דוגמת הקוד הבאה מראה כיצד לחלץ תמונות ממסמך ולשמור אותן כקבצים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## שמירת תמונות כ WMF

Aspose.Words מספק פונקציונליות לשמירת כל התמונות הזמינות במסמך כדי [WMF ](https://docs.fileformat.com/image/wmf/)פורמט תוך המרה DOCX ל RTF.

דוגמת הקוד הבאה מראה כיצד לשמור תמונות כ WMF עם RTF שמור אפשרויות:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
