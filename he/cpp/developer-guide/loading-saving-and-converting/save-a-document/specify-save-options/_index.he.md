---
title: ציין אפשרויות שמירה ב C++
second_title: Aspose.Words עבור C++
articleTitle: ציין אפשרויות שמירה
linktitle: ציין אפשרויות שמירה
description: "שליטה מדויקת יותר בתהליך השמירה."
type: docs
weight: 10
url: /he/cpp/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

בעת שמירת מסמך, באפשרותך להגדיר כמה מאפיינים מתקדמים. Aspose.Words מספק לך את הכיתה [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), המאפשרת שליטה מדויקת יותר בתהליך השמירה. יש עומס יתר של שיטת **Save** שמקבלים אובייקט **SaveOptions** זה צריך להיות אובייקט של כיתה שמקורו בכיתה **SaveOptions**. לכל פורמט שמירה יש מחלקה מתאימה שמכילה אפשרויות שמירה לפורמט שמירה זה, לדוגמה, יש [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) לשמירה לפורמט PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) לשמירה לפורמט Markdown, או [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) לשמירה בתמונה. מאמר זה מספק דוגמאות לעבודה עם כמה כיתות אפשרויות שמקורן **SaveOptions**.

דוגמת הקוד הבאה מראה כיצד להגדיר את אפשרויות השמירה לפני שמירת המסמך ל - HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

המאמר מתאר כמה מאפיינים שאתה יכול לשלוט בהם בעת שמירת מסמך.

## הצפן מסמך עם סיסמה

השתמש במאפיין **Password** כדי לקבל או להגדיר סיסמה למסמך מוצפן. השתמש במאפיין **Password** של המחלקה המתאימה כדי לעבוד עם פורמט המסמך שנבחר.

לדוגמה, בעת שמירת מסמך בפורמט DOC או DOT, השתמש במאפיין [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) של הכיתה [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

דוגמת הקוד הבאה מראה כיצד להגדיר סיסמה להצפנת מסמך בשיטת ההצפנה RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

בעת שמירת מסמך בפורמט ODT, השתמש במאפיין [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) של הכיתה [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

דוגמת הקוד הבאה מראה כיצד לטעון ולשמור OpenDocument מוצפן באמצעות סיסמה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

לא כל הפורמטים תומכים בהצפנה ובשימוש במאפיין **Password**.

## הצג הודעות על התקדמות שמירת מסמכים

Aspose.Words מספק את היכולת להשתמש במאפיין [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) כדי לקבל התראות על התקדמות שמירת המסמכים.

זה זמין כעת בעת שמירת DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, או TXT פורמטים.

## עדכן את זמן יצירת המסמך

Aspose.Words מספק יכולת להשתמש במאפיין [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) כדי לקבל או להגדיר את תאריך יצירת המסמך ב UTC. ניתן גם לעדכן ערך זה לפני השמירה באמצעות האפשרות [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

דוגמת הקוד הבאה מראה כיצד לעדכן את זמן יצירת המסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## עדכן נכס שנשמר לאחרונה

Aspose.Words מספק יכולת להשתמש במאפיין [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) כדי לקבל או להגדיר ערך הקובע אם המאפיין [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) מתעדכן לפני השמירה.

דוגמת הקוד הבאה מראה כיצד להגדיר מאפיין זה ולשמור את המסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## שמור תמונה בשחור לבן עם קצת אחד לכל פורמט פיקסל

כדי לשלוט באפשרויות שמירת תמונות, נעשה שימוש בכיתה **ImageSaveOptions**. לדוגמה, באפשרותך להשתמש במאפיין [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) כדי להגדיר את פורמט הפיקסלים עבור התמונות שנוצרו. שים לב שפורמט הפיקסלים של תמונת הפלט עשוי להיות שונה מהערך שנקבע בגלל העבודה של GDI+.

דוגמת הקוד הבאה מראה כיצד לשמור תמונה בשחור לבן בפורמט ביט אחד לפיקסל:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
