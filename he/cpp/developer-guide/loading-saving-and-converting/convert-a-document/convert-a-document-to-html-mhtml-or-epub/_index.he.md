---
title: המרת מסמך ל HTML, MHTML או EPUB
second_title: Aspose.Words עבור C++
articleTitle: המרת מסמך ל HTML, MHTML או EPUB
linktitle: המרת מסמך ל HTML, MHTML או EPUB
description: "המרת מסמך כמעט מכל פורמט ל HTML או MHTML, כמו גם ל EPUB פורמט באמצעות C++. ניתן גם לציין אפשרויות שמירה לניהול מסמך הפלט."
type: docs
weight: 20
url: /he/cpp/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

מסמכים ב HTML ו MHTML פורמטים של פריסת זרימה פופולריים מאוד וניתן להשתמש בהם בכל פלטפורמת אינטרנט. מסיבה זו, המרת מסמכים ל HTML ו MHTML היא תכונה חשובה של Aspose.Words.

EPUB (קיצור של "פרסום אלקטרוני") הוא פורמט מבוסס HTML המשמש בדרך כלל להפצת ספרים אלקטרוניים. פורמט זה נתמך באופן מלא ב Aspose.Words לייצוא ספרים אלקטרוניים התואמים לרוב מכשירי הקריאה.

## המרת מסמך

להמרה פשוטה ל HTML, MHTML, או EPUB, נעשה שימוש באחד מעומסי השיטה [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). באפשרותך לשמור את המסמך בקובץ או בזרם ולהגדיר במפורש את פורמט שמירת מסמך הפלט או להגדיר אותו מסיומת שם הקובץ.

הדוגמה הבאה מראה כיצד להמיר DOCX ל HTML עם ציון פורמט שמירה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

כדי להמיר מסמך ל MHTML או EPUB, השתמש `SaveFormat.Mhtml` או `SaveFormat.Epub` בהתאמה.

## המרת מסמך עם מידע הלוך ושוב

הפורמט HTML אינו תומך בתכונות רבות Microsoft Word, ואם עלינו לשחזר מודל מסמך קרוב ככל האפשר למקור, עלינו לשמור מידע נוסף בתוך הקובץ HTML. מידע זה נקרא גם"מידע הלוך ושוב". למטרה זו, Aspose.Words מספק יכולת לייצא מידע הלוך ושוב בעת שמירה ל HTML, MHTML, או EPUB באמצעות המאפיין [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/). שמירת המידע הלוך ושוב מאפשרת שחזור מאפייני מסמך כגון כרטיסיות, הערות, כותרות עליונות ותחתונות במהלך טעינת המסמכים של הפורמטים המפורטים בחזרה לאובייקט **Document**.

ערך ברירת המחדל הוא **true** עבור HTML ו **false** עבור MHTML ו EPUB:

- כאשר **true**, המידע הלוך ושוב מיוצא כ - או - * CSS מאפיינים של האלמנטים המתאימים HTML
- כאשר **false**, אין מידע הלוך ושוב שיוצא לקבצים המיוצרים

דוגמת הקוד הבאה מראה כיצד לייצא מידע הלוך ושוב בעת המרת מסמך מ - DOCX ל - HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## ציין אפשרויות שמירה בעת המרה ל - HTML

Aspose.Words מאפשר המרת מסמך Word ל HTML באמצעות ברירת מחדל או אפשרויות שמירה מותאמות אישית. דוגמאות מעטות לאפשרויות שמירה מותאמות אישית מתוארות להלן.

### ציין תיקיה לשמירת משאבים

באמצעות Aspose.Words אנו יכולים לציין תיקיה פיזית שבה כל המשאבים, כגון תמונות, גופנים ו CSS חיצוניים, נשמרים כאשר מסמך מומר ל HTML. כברירת מחדל, זוהי מחרוזת ריקה.

ציון המאפיין [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) הוא הדרך הפשוטה ביותר להגדיר את התיקיה שבה יש לכתוב את כל המשאבים. אנו יכולים להשתמש במאפיינים בודדים, כגון [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/) ששומר גופנים בתיקיה שצוינה ו [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/) ששומר תמונות בתיקיה שצוינה. כאשר מצוין נתיב יחסי, **FontsFolder** ו **ImagesFolder** עיין בתיקיה בה נמצאת מכלול הקוד, **ResourceFolder** ו [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) עיין בתיקיית הפלט בה נמצא המסמך HTML.

בדוגמה זו, **ResourceFolder** מציין את הנתיב היחסי. נתיב זה מתייחס לתיקיית הפלט שבה נשמר המסמך HTML. הערך של המאפיין **ResourceFolderAlias** משמש ליצירת URLs עבור כל המשאבים.

דוגמת הקוד הבאה מראה כיצד לעבוד עם מאפיינים אלה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

באמצעות המאפיין [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/), אנו יכולים גם לציין את שם התיקיה המשמשת לבניית URIs מכל המשאבים שנכתבו במסמך HTML. זוהי הדרך הפשוטה ביותר לציין כיצד יש ליצור URIs עבור כל קבצי המשאבים. ניתן לציין את אותו מידע עבור תמונות וגופנים בנפרד באמצעות [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) ו [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/) מאפיינים, בהתאמה.

עם זאת, אין תכונה אישית עבור CSS. ההתנהגות של **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** ו **CssStyleSheetFileName** מאפיינים אינם משתנים. שים לב שמאפיין **CssStyleSheetFileName** משמש הן לציון שם התיקיה והן לשם שם הקובץ.

- **ResourceFolder** יש עדיפות נמוכה יותר מאשר תיקיות שצוינו באמצעות **FontsFolder**, **ImagesFolder**, ו **CssStyleSheetFileName**. אם התיקיה שצוינה ב **ResourceFolder** אינו קיים, הוא ייווצר באופן אוטומטי.
- **ResourceFolderAlias** יש עדיפות נמוכה יותר מאשר **FontsFolderAlias** ו **ImagesFolderAlias**. אם **ResourceFolderAlias** ריק, הערך של המאפיין **ResourceFolder** ישמש ליצירת משאב URIs. אם **ResourceFolderAlias** מוגדר ל "." (נקודה), משאב URIs יכיל רק שמות קבצים מבלי לציין נתיב.

### ייצא משאבי גופני קידוד Base64

Aspose.Words מספק יכולת לציין אם יש להטמיע משאבי גופנים ב-HTML בקידוד Base64. כדי לבצע זאת, השתמש במאפיין [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) - זהו הרחבה של המאפיין [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). כברירת מחדל, הערך שלו הוא **false**, והגופנים נכתבים לקבצים נפרדים. אבל אם אפשרות זו מוגדרת ל-**true**, גופנים יוטמעו ב-CSS של המסמך בקידוד Base64. המאפיין **ExportFontsAsBase64** משפיע רק על פורמט HTML ואינו משפיע על EPUB ו-MHTML.

דוגמא הקוד הבאה מראה כיצד לייצא גופנים מקודדים ב-Base64 אל HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## ציין אפשרויות שמירה בעת המרה ל - EPUB

Aspose.Words מאפשר המרת מסמך Word לפורמט EPUB באמצעות ברירת מחדל או אפשרויות שמירה מותאמות אישית. ניתן לציין מספר אפשרויות על ידי העברת מופע של [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) לשיטה `Save`.

דוגמת הקוד הבאה מראה כיצד להמיר מסמך Word ל - EPUB עם ציון כמה אפשרויות שמירה מותאמות אישית:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
