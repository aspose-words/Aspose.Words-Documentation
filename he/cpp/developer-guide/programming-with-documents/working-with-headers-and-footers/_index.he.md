---
title: עבודה עם כותרות עליונות ותחתונות ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם כותרות עליונות ותחתונות
linktitle: עבודה עם כותרות עליונות ותחתונות
description: "כיצד לתפעל כותרות עליונות ותחתונות באמצעות C++."
type: docs
weight: 150
url: /he/cpp/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words מאפשר למשתמשים לעבוד עם כותרות עליונות ותחתונות במסמך. כותרת עליונה היא טקסט שמוצב בראש העמוד, וכותרת תחתונה היא טקסט בתחתית העמוד. בדרך כלל, אזורים אלה משמשים להכנסת מידע שיש לחזור עליו בכל דפי המסמך או חלקם, כגון מספרי עמודים, תאריך יצירה, פרטי חברה וכן הלאה.

## צור כותרות עליונות או תחתונות באמצעות DocumentBuilder

אם ברצונך להוסיף כותרת עליונה או כותרת תחתונה של מסמך באופן תכנותי, הדרך הקלה ביותר היא להשתמש בכיתה [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) כדי לעשות זאת.

דוגמת הקוד הבאה מראה כיצד להוסיף כותרת עליונה ותחתונה לדפי מסמכים:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## ציין אפשרויות כותרת עליונה או תחתונה

כאשר אתה מוסיף כותרת עליונה או תחתונה למסמך, אתה יכול להגדיר כמה מאפיינים מתקדמים. Aspose.Words מספק למשתמשים את השיעורים [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) ו [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/), כמו גם [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/) ספירה שנותנת לך שליטה רבה יותר על תהליך ההתאמה האישית של הכותרת העליונה והתחתונה.

### ציין סוג כותרת עליונה או תחתונה

ניתן לציין שלושה סוגים שונים של כותרות עליונות ושלושה סוגים שונים של כותרות תחתונות עבור מסמך אחד:

1. כותרת עליונה ו/או תחתונה עבור העמוד הראשון
2. כותרת עליונה ו/או תחתונה לדפים אחידים
3. כותרת עליונה ו/או תחתונה לדפים מוזרים

דוגמת הקוד הבאה מראה כיצד להוסיף כותרת לדפי מסמכים מוזרים:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### ציין אם להציג כותרות עליונות או תחתונות שונות עבור העמוד הראשון

כאמור לעיל, ניתן גם להגדיר כותרת עליונה או תחתונה אחרת עבור העמוד הראשון. לשם כך, עליך להגדיר את הדגל [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) ל - `true` ולאחר מכן להגדיר את הערך **HeaderFirst** או **FooterFirst**.

דוגמת הקוד הבאה מראה כיצד להגדיר את הכותרת עבור העמוד הראשון בלבד:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### ציין אם להציג כותרות עליונות או תחתונות שונות עבור דפים מוזרים או אפילו

 לאחר מכן, תרצה להגדיר כותרות עליונות או תחתונות שונות עבור דפים מוזרים ואחידים במסמך. לשם כך, עליך להגדיר את דגל [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) ל `true` ולאחר מכן לפרט את הערכים **HeaderPrimary** ו **HeaderEven**, או **FooterPrimary** ו **FooterEven**.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### הכנס תמונה ממוקמת לחלוטין לכותרת

כדי למקם תמונה בכותרת עליונה או תחתונה, השתמש בסוג הכותרת **HeaderPrimary** או בסוג הכותרת **FooterPrimary** ובשיטה `InsertImage`.

דוגמת הקוד הבאה מראה כיצד להוסיף תמונה לכותרת:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### הגדר מאפייני גופן ופסקה עבור טקסט כותרת עליונה או תחתונה

עם Aspose.Words אתה יכול להגדיר את מאפייני הגופן והפסקה, להשתמש בסוג הכותרת **HeaderPrimary** או בסוג הכותרת התחתונה **FooterPrimary**, כמו גם בשיטות ומאפיינים לעבודה עם הגופנים והפסקאות שבהם אתה משתמש עבור גוף המסמך.

דוגמת הקוד הבאה מראה כיצד להגדיר את הטקסט בכותרת לאריאל, מודגש, גודל 14 ויישור מרכז:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### הכנס מספרי עמודים לכותרת העליונה או התחתונה

במידת הצורך, תוכל להוסיף מספרי עמודים לכותרת העליונה או התחתונה. לשם כך, השתמש בסוג הכותרת **HeaderPrimary** או בסוג הכותרת התחתונה **FooterPrimary** ובשיטה [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) כדי להוסיף את השדה הנדרש.

דוגמת הקוד הבאה מראה כיצד להוסיף מספרי עמודים לכותרת התחתונה מימין:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### השתמש בכותרות עליונות או תחתונות שהוגדרו בסעיף הקודם

אם עליך להעתיק את הכותרת העליונה או התחתונה מהקטע הקודם, תוכל לעשות זאת גם כן.

דוגמת הקוד הבאה מראה כיצד להעתיק את הכותרת העליונה או התחתונה מהקטע הקודם:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### ודא מראה כותרת עליונה או תחתונה בעת שימוש בכיווני עמוד שונים וגודל עמוד

Aspose.Words מאפשר לך לספק מראה של כותרת עליונה או תחתונה בעת שימוש בכיוונים ובגדלי עמודים שונים.

הדוגמה הבאה מראה כיצד לעשות זאת:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## כיצד להסיר רק כותרות עליונות או רק תחתונות

כל קטע במסמך יכול להכיל עד שלוש כותרות עליונות ועד שלוש כותרות תחתונות (לדפים ראשונים, זוגיים ומשונים). אם ברצונך להסיר את כל הכותרות העליונות או את כל הכותרות התחתונות במסמך, עליך לעבור בין כל הסעיפים ולהסיר כל צומת כותרת עליונה או צומת כותרת תחתונה מתאימה.

דוגמת הקוד הבאה מראה כיצד להסיר את כל הכותרות התחתונות מכל החלקים אך להשאיר כותרות שלמות. ניתן להסיר רק כותרות באופן דומה:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
