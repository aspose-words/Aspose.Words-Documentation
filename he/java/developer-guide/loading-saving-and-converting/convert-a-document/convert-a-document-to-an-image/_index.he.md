---
title: להפוך מסמך לתמונה Java
second_title: Aspose.Words עבור Java
articleTitle: להפוך מסמך לתמונה
linktitle: להפוך מסמך לתמונה
type: docs
description: "להמיר מסמך לתבנית תמונה (JPG, PNG וכו '). צור מסמך תצוגה מקדימה או ליצור סריקת מסמך כדי לשלוח חשבונית באמצעות Java."
weight: 35
url: /he/java/convert-a-document-to-an-image/
---

לפעמים נדרש לקבל תמונה במקום מסמכים בפורמטים אחרים, כגון DOCX או PDF. לדוגמה, אתה צריך להוסיף תצוגה מקדימה של כל דף מסמך לאתר או היישום שלך או ליצור "scan" של מסמך לשלוח חשבונית. זה כאשר ייתכן שיהיה עליך להמיר מסמך בכל עת. [פורמט עומס נתמך](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) תמונה, שוב, בכל [פורמט Save](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## המונחים: Image Format

כמו כל דוגמאות המרה כבר תיאר, אתה צריך ליצור מסמך חדש או לטעון קיים בכל פורמט נתמך, לעשות את השינויים הדרושים, ולשמור אותו בכל פורמט תמונה זמין, למשל, JPEG, PNG או BMP.

דוגמה לקוד הבא מראה כיצד להמיר את DOCX ל- JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## המונחים: save Options בעת המרת תמונה

Aspose.Words מספק לך את [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) שיעור, אשר נותן יותר שליטה על האופן שבו המסמכים נשמרים בפורמטים שונים של תמונות. כמה תכונות של כיתה זו יורש או overload נכסים של שיעורי בסיס כגון [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) או [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), אבל יש גם אפשרויות ספציפיות להצלת תמונות.

ניתן לציין את הדפים להיות מומרים לתבנית תמונה באמצעות פורמט התמונה באמצעות תבנית. [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) רכוש. לדוגמה, זה יכול להיות מיושם אם אתה רק צריך תצוגה מקדימה עבור הראשון או עבור דף מוגדר.

כמו כן, ניתן לשלוט על איכות התמונה פלט ואת פורמט פיקסל באמצעות התכונות הבאות - [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), כמו גם להגדיר הגדרות צבע תמונה, באמצעות התכונות הבאות - [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

יש גם תכונות החלות על פורמט מסוים, למשל, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) או [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

דוגמה הקוד הבא מראה כיצד ליצור תצוגה מקדימה של דף המסמך הראשון עם יישום הגדרות נוספות:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
