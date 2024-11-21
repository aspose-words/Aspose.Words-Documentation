---
title: "המונחים: save Options C#"
second_title: Aspose.Words עבור .NET
articleTitle: "המונחים: save Options"
linktitle: "המונחים: save Options"
description: "בקרה מדויקת יותר על תהליך החיסכון באמצעות C#."
type: docs
weight: 10
url: /he/net/specify-save-options/
timestamp: 2024-07-09-19-00-42
---

בעת שמירת מסמך, באפשרותך להגדיר כמה תכונות מתקדמות. Aspose.Words מספק לך את [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) מעמד, המאפשר שליטה מדויקת יותר של תהליך החיסכון. יש עומסים של **Save** שיטה שמקבלת **SaveOptions** אובייקט - זה צריך להיות אובייקט של מעמד נגזר מן **SaveOptions** מעמד. לכל פורמט שמור יש מעמד מתאים המחזיק אפשרויות לתבנית זו, לדוגמה, יש. [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) כדי לחסוך בפורמט PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) כדי להציל Markdown פורמט, או [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) להציל תמונה מאמר זה מספק דוגמאות של עבודה עם כמה אפשרויות כיתות נגזרות **SaveOptions**.

לדוגמה הקוד הבא מראה כיצד להגדיר את אפשרויות החיסכון לפני שמירת המסמך ל- HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

המאמר מתאר כמה תכונות אתה יכול לשלוט בעת שמירת מסמך.

## הצפנה מסמך עם סיסמה

השתמש **Password** רכוש כדי לקבל או להגדיר סיסמה עבור מסמך מוצפן. השתמש **Password** נכס של הכיתה המקבילה לעבוד עם פורמט המסמך שנבחר.

לדוגמה, בעת שמירת מסמך DOC או DOT פורמט, השתמש [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) רכוש [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) מעמד.

הדוגמה הבאה של הקוד מראה כיצד להגדיר סיסמה להצפין מסמך באמצעות שיטת הצפנה של ה-RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

בעת שמירת מסמך לתבנית Odt, השתמש [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) רכוש [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) מעמד.

הדוגמה הקודית הבאה מראה כיצד לטעון ולהציל את OpenDocument מוצפנת עם סיסמה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

לא כל הפורמטים תומכים הצפנה והשימוש **Password** רכוש.

## תוצאות חיפוש: Saving Progress Notifications

Aspose.Words מספק את היכולת להשתמש [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) לרכוש הודעות על ההתקדמות של שמירת מסמכים.

זה זמין עכשיו בעת שמירת DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack או TXT פורמטים.

## עדכון זמן יצירת המסמכים

Aspose.Words מספק יכולת להשתמש [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) לרכוש או להגדיר את תאריך יצירת המסמך ב- UTC. אתה יכול גם לעדכן את הערך הזה לפני שמירת השימוש [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) אפשרות.

דוגמה לקוד הבא מראה כיצד לעדכן את זמן יצירת המסמך:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## עדכון אחרון

Aspose.Words מספק יכולת להשתמש [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) לרכוש או לקבוע ערך לקבוע אם [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) הנכס מעודכן לפני החיסכון.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את הנכס הזה ולהציל את המסמך:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## בקרת משאבים חיצוניים בעת שמירת מסמך ל- HTML או SVG

כדי להמיר HTML או SVG ל- PDF, פשוט להשתמש [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) שיטה וסימון שם קובץ עם הרחבה ".PDF". אם אתה רוצה לטעון תמונות, CSS, וכו ' ממקורות חיצוניים, אתה יכול להשתמש [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/).

הדוגמה הבאה של הקוד מראה כיצד להמיר את HTML ל- PDF ולטעום תמונות ממקורות חיצוניים:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## שמור שחור ולבן תמונה עם אחד bit Per Pixel

כדי לשלוט באפשרויות שמירת תמונות, **ImageSaveOptions** הכיתה משמשת. לדוגמה, אתה יכול להשתמש [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) רכוש להגדיר את פורמט פיקסל עבור התמונות שנוצרו. אנא שימו לב כי פורמט פיקסל של תמונת הפלט עשוי להיות שונה מהערך הסט בגלל העבודה של GDI+.

הדוגמה הבאה של הקוד מראה כיצד להציל תמונה שחורה ולבן עם קצת לתבנית פיקסל:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
