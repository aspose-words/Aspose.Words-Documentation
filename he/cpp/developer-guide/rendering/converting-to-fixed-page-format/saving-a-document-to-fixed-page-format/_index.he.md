---
title: שמירה בפורמט דף קבוע ב C++
second_title: Aspose.Words עבור C++
articleTitle: שמירת מסמך בפורמט דף קבוע
linktitle: שמירת מסמך בפורמט דף קבוע
description: "כיצד לשמור מסמך בפורמט דף קבוע– PDF, XPS, HTML, XAML, PostScript, ו PCL? עיין בהוראות."
type: docs
weight: 15
url: /he/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

לאחר בניית פריסת העמוד ומחושבים הגיאומטריה של האובייקטים ומיקומם בדף, ניתן לשמור את המסמך בפורמט עמוד קבוע הנתמך על ידי Aspose.Words.

בעת שמירת מסמכים בפורמטים של דפים קבועים, ניתן להשתמש באפשרויות העיבוד המשותפות לכל הפורמטים הללו. הם מאפשרים לשלוט:

- מספר ומגוון הדפים הכלולים במסמך הפלט([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- התקדמות שמירת מסמכים עמוד אחר עמוד ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- קבוצה של תווים המשמשים מספרים טיוח ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- נגן מטאפיל ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). לפרטים נוספים, ראה [טיפול Windows מטא-קבצים](/words/cpp/handling-windows-metafiles/) סעיף.
- שיעור איכות לדחיסה מחדש של תמונות JPEG, שערכן עשוי להשתנות מעט, בהתאם לפורמט השמירה שנבחר ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- אופטימיזציה של גרפיקה וקטורית בפלט Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- אפשרויות גרפיקה בעת שמירה בפורמטים של טיף, פנגוויה, פנגוויה, פנגוויה, פנגוויה, פנגוויה, פנגוויה, פנגוויה, פנגוויה, פנגוויה ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- שמירת המסמך בגווני אפור ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- מעבר בין העיבוד של DrawingML צורות וצורות נסיגה ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- מעבר בין DML מצבי עיבוד אפקטים ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

הדוגמה שלהלן מדגימה כיצד לשמור מסמך בפורמט JPEG באמצעות שיטת `Save` ואפשרויות העיבוד:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
