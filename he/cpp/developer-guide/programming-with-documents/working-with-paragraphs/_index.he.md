---
title: עבודה עם פסקאות ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם פסקאות
linktitle: עבודה עם פסקאות
description: "שיטות מניפולציה של צומת פסקה באמצעות C++."
type: docs
weight: 210
url: /he/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

פסקה היא קבוצה של תווים המשולבים לבלוק לוגי ומסתיימים בתו מיוחד - *paragraph break*. ב Aspose.Words, פסקה מיוצגת על ידי הכיתה [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## הכנס פסקה

כדי להכניס פסקה חדשה למסמך, למעשה, עליך להכניס לתוכו תו מעבר פסקה. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) מוסיף לא רק מחרוזת טקסט למסמך, אלא גם מוסיף מעבר פסקה.

עיצוב הגופן הנוכחי מוגדר גם על ידי המאפיין [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/), ועיצוב הפסקה הנוכחי נקבע על ידי המאפיין [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). בחלק הבא נפרט יותר על עיצוב פסקאות.

דוגמת הקוד הבאה מראה כיצד להוסיף פסקה למסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## סעיף פורמט

עיצוב פסקה נוכחי מיוצג על ידי אובייקט **ParagraphFormat** המוחזר על ידי המאפיין **ParagraphFormat**. אובייקט זה מכיל מאפיינים שונים של עיצוב פסקאות הזמינים ב - Microsoft Word. אתה יכול בקלות לאפס את עיצוב הפיסקה לברירת מחדל לסגנון רגיל, מיושר לשמאל ללא כניסה, ללא ריווח, ללא גבולות וללא הצללה על ידי התקשרות [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

דוגמת הקוד הבאה מראה כיצד להגדיר עיצוב פסקה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## החל סגנון פסקה

אובייקטים מסוימים בעיצוב כמו גופן או ParagraphFormat תומכים בסגנונות. סגנון מובנה יחיד או מוגדר על ידי המשתמש מיוצג על ידי אובייקט `Style` המכיל את מאפייני הסגנון המתאימים כמו שם, סגנון בסיס, עיצוב גופן ופסקה של הסגנון וכן הלאה.

יתר על כן, אובייקט **Style** מספק את המאפיין [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) שמחזיר מזהה סגנון שאינו תלוי באזור המיוצג על ידי ערך הספירה **StyleIdentifier**. הנקודה היא ששמות הסגנונות המובנים ב Microsoft Word ממוקמים עבור שפות שונות. באמצעות מזהה סגנון, תוכל למצוא את הסגנון הנכון ללא קשר לשפת המסמך. ערכי הספירה מתאימים לסגנונות המובנים Microsoft Word כגון *Normal*, *Heading 1*, *Heading 2* וכו'. לכל הסגנונות המוגדרים על ידי המשתמש מוקצה הערך **StyleIdentifier.User**.

דוגמת הקוד הבאה מראה כיצד ליישם סגנון פסקה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## הכנס סגנון מפריד לשים שונה סעיף סגנונות

ניתן להוסיף את מפריד הסגנונות לסוף פסקה באמצעות קיצור המקשים + אלט + הזן MS Word. תכונה זו מאפשרת שני סגנונות פסקה שונים המשמשים בפסקה מודפסת לוגית אחת. אם אתה רוצה טקסט כלשהו מתחילת כותרת מסוימת שיופיע בתוכן עניינים אך אינך רוצה שהכותרת כולה בתוכן העניינים, תוכל להשתמש בתכונה זו.

דוגמת הקוד הבאה מראה כיצד להוסיף מפריד סגנונות כדי להתאים לסגנונות פסקה שונים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## לזהות סעיף סגנון מפריד

` `Aspose.Words מספק נכס ציבורי [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) לכיתה `Paragraph` מאפשר זיהוי פסקה של מפריד סגנונות כפי שמוצג בדוגמה המופיעה להלן:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## החל גבולות והצללה על פסקה

גבולות ב Aspose.Words מיוצגים על ידי הכיתה [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) – זהו אוסף של [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) אובייקטים אליהם ניתן לגשת באמצעות אינדקס או לפי סוג גבול. סוג הגבול מיוצג על ידי הספירה `BorderType`. ערכים מסוימים של הספירה חלים על מספר או רק אלמנט מסמך אחד. לדוגמה, **BorderType.Bottom** חל על פסקה או תא טבלה ואילו **BorderType.DiagonalDown** מציין את הגבול האלכסוני בתא טבלה בלבד.

גם לאוסף הגבולות וגם לכל גבול נפרד יש תכונות דומות כמו צבע, סגנון קו, רוחב קו, מרחק מהטקסט וצל אופציונלי. הם מיוצגים על ידי מאפיינים של אותו שם. ניתן להשיג סוגי גבולות שונים על ידי שילוב ערכי המאפיינים. בנוסף, הן **BorderCollection** והן **Border** אובייקטים מאפשרים לך לאפס ערכים אלה לברירת מחדל על ידי קריאה לשיטת [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

שים לב שכאשר מאפייני הגבול מאופסים לערכי ברירת המחדל שלהם, הגבול הופך לבלתי נראה.

{{% /alert %}}

Aspose.Words יש גם את [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) הכיתה מכילה תכונות הצללה לרכיבי מסמך. ניתן להגדיר את מרקם ההצללה הרצוי ואת הצבעים המוחלים על הרקע והחזית של האלמנט.

מרקם ההצללה מוגדר בערך ספירה [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) המאפשר יישום של דפוסים שונים על האובייקט **Shading**. לדוגמה, כדי להגדיר צבע רקע עבור אלמנט מסמך, השתמש בערך [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) והגדר את צבע הצללת החזית בהתאם לצורך.

דוגמת הקוד הבאה מראה כיצד להחיל גבולות והצללה על פסקה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
