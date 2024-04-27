---
title: "המונחים: save Options Java"
second_title: Aspose.Words עבור Java
articleTitle: "המונחים: save Options"
linktitle: "המונחים: save Options"
description: "הגדר תכונות מתקדמות בעת שמירת מסמך Java לספק שליטה מדויקת יותר על התהליך."
type: docs
weight: 20
url: /he/java/specify-save-options/
---

בעת שמירת מסמך, באפשרותך להגדיר כמה תכונות מתקדמות. Aspose.Words מספק לך את [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) מעמד, המאפשר שליטה מדויקת יותר של תהליך החיסכון. יש עומסים של **Save** שיטה שמקבלת **SaveOptions** אובייקט - זה צריך להיות אובייקט של מעמד נגזר מן **SaveOptions** מעמד. לכל פורמט שמור יש מעמד מתאים המחזיק אפשרויות לתבנית זו, לדוגמה, יש. [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) כדי לחסוך בפורמט PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) כדי להציל Markdown פורמט, או [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) להציל תמונה מאמר זה מספק דוגמאות של עבודה עם כמה אפשרויות כיתות נגזרות **SaveOptions**.

לדוגמה הקוד הבא מראה כיצד להגדיר את אפשרויות החיסכון לפני שמירת המסמך ל- HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

המאמר מתאר כמה תכונות אתה יכול לשלוט בעת שמירת מסמך.

## הצפנה מסמך עם סיסמה

השתמש **Password** רכוש כדי לקבל או להגדיר סיסמה עבור מסמך מוצפן. השתמש **Password** נכס של הכיתה המקבילה לעבוד עם פורמט המסמך שנבחר.

לדוגמה, בעת שמירת מסמך ל- DOC או DOT פורמט, השתמש [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) רכוש [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) מעמד.

הדוגמה הבאה של הקוד מראה כיצד להגדיר סיסמה להצפין מסמך באמצעות שיטת הצפנה של ה-RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

בעת שמירת מסמך לתבנית ODT, השתמש [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) רכוש [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) מעמד.

הדוגמה הקודית הבאה מראה כיצד לטעון ולהציל את OpenDocument מוצפנת עם סיסמה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

לא כל הפורמטים תומכים הצפנה והשימוש **Password** רכוש.

## תוצאות חיפוש: Saving Progress Notifications

Aspose.Words מספק את היכולת להשתמש [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) לרכוש הודעות על ההתקדמות של שמירת מסמכים.

זה זמין עכשיו בעת שמירת DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack או TXT פורמטים.

## עדכון זמן יצירת המסמכים

Aspose.Words מספק יכולת להשתמש [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) לרכוש או להגדיר את תאריך יצירת המסמך ב- UTC. אתה יכול גם לעדכן את הערך הזה לפני שמירת השימוש [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) אפשרות.

דוגמה לקוד הבא מראה כיצד לעדכן את זמן יצירת המסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## עדכון אחרון שנשמר

Aspose.Words מספק יכולת להשתמש [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) לרכוש או לקבוע ערך לקבוע אם [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) רכוש מעודכן לפני החיסכון.

דוגמה לקוד הבא מראה כיצד להגדיר את הנכס הזה ולהציל את המסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## שמור שחור ולבן תמונה עם אחד bit Per Pixel

כדי לשלוט באפשרויות שמירת תמונות, **ImageSaveOptions** הכיתה משמשת. לדוגמה, אתה יכול להשתמש [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) רכוש להגדיר את פורמט פיקסל עבור התמונות שנוצרו. אנא שימו לב כי פורמט פיקסל של תמונת הפלט עשוי להיות שונה מהערך שנקבע בגלל העבודה של GDI+.

הדוגמה הבאה של הקוד מראה כיצד לחסוך תמונה שחורה ולבן עם קצת על פורמט פיקסל:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
