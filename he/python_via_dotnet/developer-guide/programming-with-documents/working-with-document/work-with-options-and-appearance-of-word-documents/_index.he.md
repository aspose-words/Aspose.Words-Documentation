---
title: אפשרויות והצגת מסמך Word
second_title: Aspose.Words עבור Python
articleTitle: עבודה עם אפשרויות והופעת מסמכי Word
linktitle: עבודה עם אפשרויות והופעת מסמכי Word
description: "לשלוט במראה של מסמכי Word לקחת בחשבון את ההבדל בין שונים Microsoft Word גרסאות באמצעות Python."
type: docs
weight: 40
url: /he/python-net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

לפעמים אתה יכול לשנות את המראה של מסמך, למשל, להגדיר העדפות שפה או מספר השורות בעמוד.Aspose.Words מספק את היכולת לשלוט כיצד המסמך יוצג, כמו גם כמה אפשרויות נוספות. מאמר זה מתאר אפשרויות כאלה.

## הגדרת אפשרויות תצוגה

אתה יכול לשלוט איך מסמך יופיע Microsoft Word באמצעות [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/) מעמד. לדוגמה, באפשרותך להגדיר ערך OOm מסמך באמצעות מסמך [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/) רכוש, או מצב התצוגה באמצעות [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/) רכוש.

דוגמה לקוד הבא מראה כיצד להבטיח כי מסמך מוצג ב-50% כאשר נפתח בשנת Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

באפשרותך להוריד את קובץ התבנית לדוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 לא כותב שום גורם ב- zoom למסמך ולא מגדיר יותר את גן החיות של ברירת המחדל מהערך שנכתב במסמך, במקום זאת, נראה שהוא משתמש בגורם גן החיות של המסמך הפתוח האחרון.

{{% /alert %}}

## הגדרות Page Display Options

אם אתה רוצה להגדיר את מספר הדמויות לכל קו, השתמש [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/) רכוש. באפשרותך גם להגדיר את מספר השורות בדף עבור מסמך Word - להשתמש [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) רכוש כדי לקבל או להגדיר את מספר השורות בעמוד ברשת המסמך.

{{% alert color="primary" %}}

In In In Microsoft Word, באפשרותך להגדיר את אותם הפרמטרים באמצעות הכרטיסייה "Document Grid" בתיבת הדו-שיח "Page Setup" רק כאשר תמיכה בשפה אסיה מותקנת.

{{% /alert %}}

הדוגמה הקודית הבאה מראה כיצד להגדיר את מספר הדמויות לשורה ואת מספר השורות בעמוד Microsoft Word מסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## הגדרות שפה

הצגת מסמך Microsoft Word תלוי אילו שפות מוגדרות כברירת מחדל עבור מסמך זה. אם אין שפות מוגדרות כברירת מחדל, Microsoft Word לוקח מידע מתיבת הדו-שיח "Set Office Language Preferences" אשר, לדוגמה, ניתן למצוא תחת "File s אפשרויות שפה" ב Microsoft Word 2019

עם Aspose.Words, ניתן גם להגדיר העדפות שפה באמצעות [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/) מעמד. כמו כן, שימו לב כי עבור התצוגה הנכונה של המסמך שלכם יש צורך להגדיר את התצוגה הנכונה. Microsoft Word גרסה כי תהליך טעינת המסמך צריך להתאים - זה יכול להיעשות באמצעות [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) רכוש.

{{% alert color="primary" %}}

אם אתה Aspose.Words מסמך שנוצר אינו נראה צפוי, בדוק את [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) ו [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) ערכים ולהתאים אותם במידת הצורך כדי להתאים את ההגדרות עבורך Microsoft Word גרסה.

{{% /alert %}}

דוגמה לקוד הבא מראה כיצד להוסיף יפנים לעריכה שפות:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

דוגמה לקוד הבא מראה כיצד להגדיר רוסית כשפת העריכה ברירת המחדל:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## עקבו אחרי a Particular גירסה Word

The The The [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) שיטה מאפשרת אופטימיזציה של תוכן מסמך, כמו גם ברירת מחדל Aspose.Words התנהגות לגרסה מסוימת של Microsoft Word. ניתן להשתמש בשיטה זו כדי למנוע Microsoft Word מהצגת "מצב תאימות" ribbon על טעינת מסמכים. שימו לב שגם אתם צריכים להגדיר את [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) רכוש [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) או גבוה יותר.

הדוגמה הבאה של הקוד מראה כיצד לייעל תוכן מסמך עבור Microsoft Word 2016:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
