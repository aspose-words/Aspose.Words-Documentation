---
title: המרת מסמך ל- HTML, MHTML או EPUB
second_title: Aspose.Words עבור Java
articleTitle: המרת מסמך ל- HTML, MHTML או EPUB
linktitle: המרת מסמך ל- HTML, MHTML או EPUB
description: "שימוש בשימוש Aspose.Words עבור Java להמיר מסמכים מ Word או כל פורמטים אחרים נתמך ל- HTML, MHTML או EPUB."
type: docs
weight: 20
url: /he/java/convert-a-document-to-html-mhtml-or-epub/
---

מסמכים ב- HTML ו- MHTML Flow-layout הם גם מאוד פופולריים וניתן להשתמש בהם בכל פלטפורמה באינטרנט. מסיבה זו, המרת מסמכים ל- HTML ו- MHTML היא תכונה חשובה. Aspose.Words.

EPUB (קיצור "פרסום אלקטרוני") הוא פורמט מבוסס HTML המשמש בדרך כלל להפצת ספרים אלקטרוניים. פורמט זה נתמך במלואו Aspose.Words לייצא ספרים אלקטרוניים שמתאימים לרוב מכשירי הקריאה.

## המרת מסמך

עבור המרה פשוטה ל-HTML, MHTML, או EPUB, אחד [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) שימוש overloads. באפשרותך לשמור את המסמך לקובץ או לזרם ולהגדיר במפורש את מסמך הפלט לשמור פורמט או להגדיר אותו מהסיומת שם הקובץ.

הדוגמה הבאה מראה כיצד להמיר את DOCX ל-HTML עם ציון פורמט הצלה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

כדי להמיר מסמך ל- MHTML או EPUB, השתמש `SaveFormat.MHTML` או `SaveFormat.EPUB` בהתאמה.

## המרת מסמך עם מידע עגול

פורמט HTML אינו תומך ברבים Microsoft Word תכונות, ואם יש צורך לשחזר מודל מסמך קרוב ככל האפשר למקור, עלינו לשמור מידע נוסף בתוך קובץ HTML. מידע זה נקרא גם "מידע מקיף". למטרה זו, Aspose.Words מספק יכולת לייצא מידע עגול ב-HTML, MHTML או EPUB באמצעות ה-HTML. [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) רכוש. שמירת המידע העגול מאפשר לשחזר תכונות מסמך כגון כרטיסיות, הערות, ראשים, ו Footers במהלך מסמכי הטעינה של הפורמטים המפורטים בחזרה לתוך a **Document** אובייקט

ערך ברירת המחדל הוא **true** עבור HTML ו **false** MHTML ו- EPUB:

- מתי **true**, המידע העגול ייצוא כמו - Aw - * תכונות CSS של רכיבי HTML המקבילים
- מתי **false**, אין מידע עגול כדי להיות פלט לתוך קבצים המיוצרים

הדוגמה הבאה של הקוד מראה כיצד לייצא מידע עגול בעת המרת מסמך מ- DOCX ל-HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## המונחים: save Options when Conversion to HTML

Aspose.Words מאפשר להמיר מסמך Word ל- HTML באמצעות ברירת מחדל או אפשרויות תחזוקה מותאמות אישית. כמה דוגמאות של אפשרויות חיסכון מותאם אישית מתוארות להלן.

### עקבו אחרי Saving Resources

שימוש Aspose.Words אנו יכולים לציין תיקיה פיזית שבה כל המשאבים, כגון תמונות, גופן ו CSS חיצוני, נשמרים כאשר מסמך מומר ל- HTML. כברירת מחדל, זהו מחרוזת ריקה.

מציג את [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) הנכס הוא הדרך הפשוטה ביותר לקבוע את התיקיה שבה יש לכתוב את כל המשאבים. אנו יכולים להשתמש בתכונות אישיות, כגון [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) אשר חוסך גופנים לתיקיה המפורטת [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) זה חוסך תמונות לתיקיה מוגדרת. כאשר דרך יחסית מוגדרת, **FontsFolder** ו **ImagesFolder** מתייחס לתיקיה שבה ממוקם ה-code. **ResourceFolder** ו [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) מתייחס לתיקיית הפלט שבה ממוקם מסמך HTML.

בדוגמה זו, **ResourceFolder** מתאר את הדרך היחסית. נתיב זה מתייחס לתיקיית הפלט שבה נשמר מסמך HTML. הערך של **ResourceFolderAlias** הנכס משמש ליצירת כתובות לכל המשאבים.

דוגמה לקוד הבא מראה כיצד לעבוד עם תכונות אלה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

באמצעות [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) נכס, אנו יכולים גם לציין את שם התיקיה המשמש לבניית URIs של כל המשאבים הכתובים במסמך HTML. זוהי הדרך הפשוטה ביותר לציין כיצד URIs צריך להיות מיוצר עבור כל קבצי משאבים. אותו מידע ניתן להציג עבור תמונות וגופנים בנפרד באמצעות [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) ו [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) תכונות, בהתאמה.

עם זאת, אין רכוש פרטי עבור CSS. ההתנהגות של **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** ו **CssStyleSheetFileName** תכונות אינן משתנות. שימו לב **CssStyleSheetFileName** הנכס משמש גם כדי לציין שם תיקיה ושם הקובץ.

- - **ResourceFolder** יש עדיפות נמוכה יותר מאשר תיקיות המפורטות באמצעות **FontsFolder**, **ImagesFolder**, ו **CssStyleSheetFileName**. אם התיקיה המפורטת בתיקיה **ResourceFolder** לא קיים, הוא ייברא באופן אוטומטי.
- - **ResourceFolderAlias** יש עדיפות נמוכה יותר מאשר **FontsFolderAlias** ו **ImagesFolderAlias**. אם **ResourceFolderAlias** ריק, הערך של **ResourceFolder** הנכס ישמש ליצירת משאב URIs. אם **ResourceFolderAlias** הוא מוגדר ל" (Dot), משאב URIs רק מכיל שמות קבצים מבלי לציין דרך.

### המונחים: Base64 Encoding Fonts Resources

Aspose.Words מספק יכולת לציין אם משאבים גופניים צריך להיות מוטבע לתוך HTML בבסיס64 encodings. כדי לבצע זאת, השתמש [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) רכוש – זהו הרחבה של [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) רכוש. כברירת מחדל, ערכו הוא **false**, ופונטים כתובים בקבצים נפרדים. אבל אם אפשרות זו נקבעת **true**, גופנים יוטבעו לתוך ה- CSS של המסמך בבסיס64 encoding. The The The **ייצוא Fonts AsBase64** רכוש משפיע רק על פורמט HTML ואינו משפיע על EPUB ו- MHTML.

הדוגמה הבאה לקוד מראה כיצד לייצא מגופנים ממוקודים ל-HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## עקבו אחרי EPUB

Aspose.Words מאפשר להמיר מסמך Word לתוך פורמט EPUB באמצעות ברירת מחדל או אפשרויות שמירת מותאם אישית. אתה יכול לציין מספר אפשרויות על ידי עובר מקרה של [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) אל [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) שיטה.

הדוגמה הבאה של הקוד מראה כיצד להמיר מסמך Word ל- EPUB עם מפרט כמה אפשרויות תחזוקה מותאמות אישית:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## ראה גם

- [המונחים:PSK](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
