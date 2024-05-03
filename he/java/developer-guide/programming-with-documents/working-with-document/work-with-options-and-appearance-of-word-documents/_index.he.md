---
title: אפשרויות והופעת מסמכי Word
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם אפשרויות והופעת מסמכי Word
linktitle: עבודה עם אפשרויות והופעת מסמכי Word
description: "לשלוט במראה של מסמכי Word לקחת בחשבון את ההבדל בין שונים Microsoft Word גרסאות באמצעות Java."
type: docs
weight: 40
url: /he/java/work-with-word-document-options-and-appearance/
---

לפעמים אתה יכול לשנות את המראה של מסמך, למשל, להגדיר העדפות שפה או מספר השורות בעמוד.Aspose.Words מספק את היכולת לשלוט כיצד המסמך יוצג, כמו גם כמה אפשרויות נוספות. מאמר זה מתאר אפשרויות כאלה.

## הגדרת אפשרויות תצוגה

אתה יכול לשלוט איך מסמך יופיע Microsoft Word באמצעות [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) מעמד. לדוגמה, באפשרותך להגדיר ערך OOm מסמך באמצעות מסמך [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) רכוש, או מצב התצוגה באמצעות [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) רכוש.

לדוגמה הקוד הבא מראה כיצד להבטיח כי מסמך מוצג ב -50% כאשר נפתח בשנת Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

באפשרותך להוריד את קובץ התבנית לדוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 לא כותב שום גורם ב- zoom למסמך ולא מגדיר יותר את גן החיות של ברירת המחדל מהערך שנכתב במסמך, במקום זאת, נראה שהוא משתמש בגורם גן החיות של המסמך הפתוח האחרון.

{{% /alert %}}

## הגדרות Page Display Options

אם אתה רוצה להגדיר את מספר הדמויות לכל קו, השתמש [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) רכוש. אתה יכול גם להגדיר את מספר השורות בדף עבור מסמך Word - להשתמש [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) רכוש כדי לקבל או להגדיר את מספר השורות בעמוד ברשת המסמך.

{{% alert color="primary" %}}

In In In Microsoft Word, באפשרותך להגדיר את אותם הפרמטרים באמצעות הכרטיסייה "Document Grid" בתיבת הדו-שיח "Page Setup" רק כאשר תמיכה בשפה אסיה מותקנת.

{{% /alert %}}

הדוגמה הקודית הבאה מראה כיצד להגדיר את מספר הדמויות לשורה ואת מספר השורות בעמוד Microsoft Word מסמך:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## הגדרות שפה

הצגת מסמך Microsoft Word תלוי אילו שפות מוגדרות כברירת מחדל עבור מסמך זה. אם אין שפות מוגדרות כברירת מחדל, Microsoft Word לוקח מידע מתיבת הדו-שיח "Set Office Language Preferences" אשר, לדוגמה, ניתן למצוא תחת "File s אפשרויות שפה" ב Microsoft Word 2019

עם Aspose.Words, ניתן גם להגדיר העדפות שפה באמצעות [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) מעמד. כמו כן, שימו לב כי עבור התצוגה הנכונה של המסמך שלכם יש צורך להגדיר את התצוגה הנכונה. Microsoft Word גרסה כי תהליך טעינת המסמך צריך להתאים - זה יכול להיעשות באמצעות [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) רכוש.

{{% alert color="primary" %}}

אם אתה Aspose.Words מסמך שנוצר אינו נראה צפוי, בדוק את **LanguagePreferences** ו **MswVersion** ערכים ולהתאים אותם במידת הצורך כדי להתאים את ההגדרות עבורך Microsoft Word גרסה.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להוסיף יפנים לעריכה שפות:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

הדוגמה הבאה של הקוד מראה כיצד להגדיר רוסית כשפת העריכה ברירת המחדל:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## עקבו אחרי a Particular גירסה Word

The The The [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) שיטה מאפשרת אופטימיזציה של תוכן מסמך, כמו גם ברירת מחדל Aspose.Words התנהגות לגרסה מסוימת של Microsoft Word. ניתן להשתמש בשיטה זו כדי למנוע Microsoft Word מהצגת "מצב תאימות" ribbon על טעינת מסמכים. שימו לב שגם אתם צריכים להגדיר את `Compliance` נכס Iso29500_2008_Transitional או גבוה יותר.

הדוגמה הבאה של הקוד מראה כיצד לייעל תוכן מסמך עבור Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
