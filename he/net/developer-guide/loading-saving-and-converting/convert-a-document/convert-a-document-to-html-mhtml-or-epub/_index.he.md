---
title: המרת מסמך ל- HTML, MHTML או EPUB C#
second_title: Aspose.Words עבור .NET
articleTitle: להמיר מסמך ל- HTML, MHTML או EPUB
linktitle: להמיר מסמך ל- HTML, MHTML או EPUB
description: "להמיר מסמך כמעט מכל פורמט ל- HTML או MHTML, כמו גם לתבנית EPUB באמצעות C#. ניתן גם לציין אפשרויות הצלה לניהול מסמך הפלט."
type: docs
weight: 20
url: /he/net/convert-a-document-to-html-mhtml-or-epub/
---

מסמכים ב- HTML ו- MHTML Flow-layout הם גם מאוד פופולריים וניתן להשתמש בהם בכל פלטפורמה באינטרנט. מסיבה זו, המרת מסמכים ל- HTML ו- MHTML היא תכונה חשובה. Aspose.Words.

EPUB (קיצור "פרסום אלקטרוני") הוא פורמט מבוסס HTML המשמש בדרך כלל להפצת ספרים אלקטרוניים. פורמט זה נתמך במלואו Aspose.Words לייצא ספרים אלקטרוניים שמתאימים לרוב מכשירי הקריאה.

## המרת מסמך

עבור המרה פשוטה ל- HTML, MHTML או EPUB, אחד [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) שימוש overloads. באפשרותך לשמור את המסמך לקובץ או לזרם ולהגדיר במפורש את מסמך הפלט לשמור פורמט או להגדיר אותו מהסיומת שם הקובץ.

הדוגמה הבאה מראה כיצד להמיר את DOCX ל-HTML עם ציון פורמט הצלה:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

כדי להמיר מסמך MHTML או EPUB, השתמש `SaveFormat.Mhtml` או `SaveFormat.Epub` בהתאמה.

## המרת מסמך עם מידע עגול

פורמט HTML אינו תומך ברבים Microsoft Word תכונות, ואם אנחנו צריכים לשחזר מודל מסמך קרוב ככל האפשר למקור, אנו צריכים לחסוך מידע נוסף בתוך קובץ HTML. מידע זה נקרא גם "מידע מקיף". למטרה זו, Aspose.Words מספק את היכולת לייצא מידע עגול בעת שמירת HTML, MHTML, או EPUB באמצעות שימוש [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) רכוש. שמירת המידע העגול מאפשר לשחזר תכונות מסמך כגון כרטיסיות, הערות, ראשים, ו Footers במהלך מסמכי הטעינה של הפורמטים המפורטים בחזרה לתוך a **Document** אובייקט.

ערך ברירת המחדל הוא **true** עבור HTML ו **false** MHTML ו- EPUB:

- מתי **true**, המידע העגול ייצוא כמו - Aw - * תכונות CSS של רכיבי HTML המקבילים
- מתי **false**, אין מידע עגול כדי להיות פלט לתוך קבצים המיוצרים

דוגמה הקוד הבא מראה כיצד לייצא מידע עגול בעת המרת מסמך מ- DOCX ל- HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## המונחים: save Options when Conversion to HTML

Aspose.Words מאפשר להמיר מסמך Word ל- HTML באמצעות ברירת מחדל או אפשרויות תחזוקה מותאמות אישית. כמה דוגמאות של אפשרויות חיסכון מותאם אישית מתוארות להלן.

### עקבו אחרי Saving Resources

שימוש Aspose.Words אנו יכולים לציין תיקיה פיזית שבה כל המשאבים, כגון תמונות, גופן ו- CSS חיצוני, נשמרים כאשר מסמך מומר ל- HTML. כברירת מחדל, זהו מחרוזת ריקה.

מציג את [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) הנכס הוא הדרך הפשוטה ביותר לקבוע את התיקיה שבה יש לכתוב את כל המשאבים. אנו יכולים להשתמש בתכונות אישיות, כגון [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) אשר חוסך גופנים לתיקיה המפורטת [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) זה חוסך תמונות לתיקיה מסוימת. כאשר דרך יחסית מוגדרת, **FontsFolder** ו **ImagesFolder** מתייחס לתיקיה שבה ממוקם ה-code. **ResourceFolder** ו [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) מתייחס לתיקיית הפלט שבה ממוקם מסמך HTML.

בדוגמה זו, **ResourceFolder** מתאר את הדרך היחסית. נתיב זה מתייחס לתיקיית הפלט שבה נשמר מסמך HTML. הערך של **ResourceFolderAlias** הנכס משמש ליצירת כתובות לכל המשאבים.

דוגמה לקוד הבא מראה כיצד לעבוד עם תכונות אלה:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

באמצעות [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) נכס, אנו יכולים גם לציין את שם התיקיה המשמש לבניית URIs של כל המשאבים הכתובים במסמך HTML. זוהי הדרך הפשוטה ביותר לציין כיצד URIs צריך להיות מיוצר עבור כל קבצי משאבים. אותו מידע ניתן להציג עבור תמונות וגופנים בנפרד באמצעות [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) ו [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) תכונות, בהתאמה.

עם זאת, אין רכוש פרטי עבור CSS. ההתנהגות של **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** ו **CssStyleSheetFileName** תכונות אינן משתנות. תגית: The **CssStyleSheetFileName** הנכס משמש גם כדי לציין שם תיקיה ושם הקובץ.

- - **ResourceFolder** יש עדיפות נמוכה יותר מאשר תיקיות המפורטות באמצעות **FontsFolder**, **ImagesFolder**, ו **CssStyleSheetFileName**. אם התיקיה המפורטת בתיקיה **ResourceFolder** לא קיים, הוא ייברא באופן אוטומטי.
- - **ResourceFolderAlias** יש עדיפות נמוכה יותר מאשר **FontsFolderAlias** ו **ImagesFolderAlias**. אם **ResourceFolderAlias** ריק, הערך של **ResourceFolder** הנכס ישמש ליצירת משאב URIs. אם **ResourceFolderAlias** הוא מוגדר ל" (Dot), משאב URIs רק מכיל שמות קבצים מבלי לציין דרך.

### המונחים: Base64 Encoding Fonts Resources

Aspose.Words מספק את היכולת לציין אם משאבים גופניים צריך להיות מוטבע לתוך HTML בבסיס64 encodings. כדי לבצע זאת, השתמש [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) רכוש – זהו הרחבה של [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) רכוש. כברירת מחדל, ערכו הוא **false**, ופונטים כתובים בקבצים נפרדים. אבל אם אפשרות זו נקבעת **true**, גופנים יוטבעו לתוך ה- CSS של המסמך בבסיס64 encoding. The The The **ייצוא Fonts AsBase64** רכוש משפיע רק על פורמט HTML ואינו משפיע על EPUB ו- MHTML.

הדוגמה הבאה לקוד מראה כיצד לייצא מגופנים ממוקודים ל-HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## עקבו אחרי EPUB

Aspose.Words מאפשר להמיר מסמך Word לתוך פורמט EPUB באמצעות ברירת מחדל או אפשרויות שמירת מותאם אישית. אתה יכול לציין מספר אפשרויות על ידי עובר מקרה של [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) אל [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) שיטה.

הדוגמה הבאה של הקוד מראה כיצד להמיר מסמך Word ל- EPUB עם מפרט כמה אפשרויות תחזוקה מותאמות אישית:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## ראה גם

- [כיצד לייצא מידע עגול בעת שמירת HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
