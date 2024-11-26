---
title: אפשרויות ומראה של מסמכים Word
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם אפשרויות ומראה של מסמכים Word
linktitle: עבודה עם אפשרויות ומראה של מסמכים Word
description: "שלוט במראה של Word מסמכים תוך התחשבות בהבדל בין גרסאות Microsoft Word שונות."
type: docs
weight: 40
url: /he/cpp/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

לפעמים ייתכן שיהיה עליך לשנות את המראה של מסמך, לדוגמה, להגדיר העדפות שפה או את מספר השורות בעמוד.Aspose.Words מספק את היכולת לשלוט באופן הצגת המסמך, כמו גם כמה אפשרויות נוספות. מאמר זה מתאר אפשרויות כאלה.

## הגדר אפשרויות להצגת מסמכים

ניתן לקבוע כיצד יוצג מסמך ב Microsoft Word באמצעות הכיתה [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/). לדוגמה, ניתן להגדיר ערך זום מסמך באמצעות המאפיין [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/), או מצב תצוגה באמצעות המאפיין [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/).

דוגמת הקוד הבאה מראה כיצד להבטיח שמסמך יוצג ב-50% כאשר הוא נפתח ב Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית עבור דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 אינו כותב שום גורם זום למסמך ואינו מגדיר עוד את זום ברירת המחדל מהערך שנכתב למסמך, במקום זאת נראה שהוא משתמש בגורם הזום של המסמך הפתוח האחרון.

{{% /alert %}}

## הגדר אפשרויות תצוגת עמוד

אם ברצונך להגדיר את מספר התווים בכל שורה, השתמש במאפיין [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/). ניתן גם להגדיר את מספר השורות בעמוד עבור מסמך Word – השתמש במאפיין [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/) כדי לקבל או להגדיר את מספר השורות בעמוד ברשת המסמכים.

{{% alert color="primary" %}}

ב Microsoft Word, אתה יכול להגדיר את אותם פרמטרים באמצעות הכרטיסייה "רשת מסמכים" בתיבת הדו-שיח "הגדרת עמוד" רק כאשר מותקנת תמיכה בשפה אסייתית.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להגדיר את מספר התווים בשורה ואת מספר השורות בעמוד עבור מסמך Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## הגדר העדפות שפה

הצגת מסמך ב Microsoft Word תלויה באילו שפות מוגדרות כברירת מחדל עבור מסמך זה. אם אין שפות המוגדרות כברירת מחדל, Microsoft Word לוקח מידע מתיבת הדו-שיח "הגדר העדפות שפת משרד", אשר, למשל, ניתן למצוא תחת" קובץ אפשרויות שפה " ב Microsoft Word 2019.

עם Aspose.Words, אתה יכול גם להגדיר העדפות שפה באמצעות הכיתה [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/). כמו כן, שים לב כי עבור התצוגה הנכונה של המסמך שלך יש צורך להגדיר את הגירסה Microsoft Word כי תהליך טעינת המסמך צריך להתאים – זה יכול להיעשות באמצעות המאפיין [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/).

{{% alert color="primary" %}}

אם המסמך שנוצר Aspose.Words שלך לא נראה כצפוי, בדוק את הערכים **LanguagePreferences** ו **MswVersion** והתאם אותם במידת הצורך כדי להתאים להגדרות של גרסת Microsoft Word שלך.

{{% /alert %}}

דוגמת הקוד הבאה מראה כיצד להוסיף יפנית לשפות עריכה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

דוגמת הקוד הבאה מראה כיצד להגדיר רוסית כשפת העריכה המוגדרת כברירת מחדל:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## בצע אופטימיזציה של מסמך עבור גרסה מסוימת Word

שיטת [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) מאפשרת אופטימיזציה של תוכן המסמך, כמו גם התנהגות ברירת מחדל Aspose.Words עבור גרסה מסוימת של Microsoft Word. אתה יכול להשתמש בשיטה זו כדי למנוע Microsoft Word מהצגת הסרט "מצב תאימות" בעת טעינת המסמך. שים לב שייתכן שתצטרך גם להגדיר את המאפיין `Compliance` ל Iso29500_2008_Transitional ומעלה.

דוגמת הקוד הבאה מראה כיצד לייעל את תוכן המסמך עבור Microsoft Word 2016:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
