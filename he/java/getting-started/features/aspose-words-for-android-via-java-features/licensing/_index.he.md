---
title: רישוי
second_title: Aspose.Words עבור Java
articleTitle: רישוי
linktitle: רישוי
description: "רישוי Aspose.Words עבור Android באמצעות Java."
type: docs
weight: 60
url: /he/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

לפעמים, כדי ללמוד את המערכת בצורה טובה יותר, אתה רוצה לצלול לתוך הקוד מהר ככל האפשר. כדי להקל על זה, Aspose.Words מספק תוכניות שונות לרכישת או מציע משפט חינם ורישיון זמני של 30 יום להערכה.

{{% alert color="primary" %}}

שים לב שיש מספר מדיניות ושיטות כלליות המדריכות אותך כיצד להעריך, רישיון כראוי ורכישת המוצרים שלנו. אתה יכול למצוא אותם בתוך [רכישת מדיניות ושאלות](https://purchase.aspose.com/policies/) סעיף.

{{% /alert %}}

## משפט חופשי או רישיון זמני

Aspose.Words תוכנה מדהימה שמפתחים יכולים לנסות לפני הקנייה. ניתן להוריד בקלות / התקנה Aspose.Words עבור Java ו Aspose.Words עבור Android באמצעות Java [דף ההורדה](https://releases.aspose.com/words/androidjava/) הערכה.

גרסת ההערכה היא זהה לזו שנרכשה - גרסת המשפט פשוט הופכת ברישיון כאשר אתה מוסיף כמה שורות קוד ליישם את הרישיון.

{{% alert color="primary" %}}

למידע נוסף על המשפט החופשי או רישיון זמני Aspose.Words עבור Android באמצעות Java על [רישוי ומנוי](/words/he/java/licensing/).

{{% /alert %}}

## רישיון רכישה

לאחר רכישת, עליך ליישם את קובץ הרישיון או לכלול את קובץ הרישיון כמשאב מוטבע. סעיף זה מתאר אפשרויות של איך זה יכול להיעשות, וגם הערות על כמה שאלות נפוצות.

{{% alert color="primary" %}}

רישיון הוא קובץ טקסט פשוט XML המכיל פרטים כגון שם המוצר, מספר מפתחים מורשה, מנוי תאריך, וכן הלאה.

הקובץ חתום דיגיטלית, אז אל תשנה את הקובץ. אפילו תוספת בלתי נמנעת של קו נוסף פורץ לתוך הקובץ לא יסולא אותו.

{{% /alert %}}

{{% alert color="primary" %}}

אתה צריך להגדיר את הרישיון:

* רק פעם אחת לפלטפורמת יישום
* לפני השימוש באחר Aspose.Words שיעורים

{{% /alert %}}

{{% alert color="primary" %}}

ניתן למצוא מידע על התמחור [מחיר מידע](https://purchase.aspose.com/pricing/words/family/) דף.

{{% /alert %}}

### הגנה על רישיון הרכישה שלך

לאחר רכישת רישיון, עליך לקרוא בקפידה את המידע בדף [הגנה על רישיון הרכישה שלך](https://purchase.aspose.com/orders/protecting-your-license-file) כדי להגן על קובץ הרישיון שלך. שימו לב כי דף זה זמין לצפייה רק אם יש לכם רישיון בתשלום.

### רישיון יישום אפשרויות

ניתן ליישם הרשאות ממיקומים שונים:

* נתיב משותף
* משאב מוטבע
* כרישיון משוחרר - מנגנון רישוי חדש

#### לטעון את קובץ הרישיון

In In In Aspose.Words עבור Android באמצעות Java, הרישיון יכול להיות [רישוי ומנוי](/words/he/java/licensing/), או טעון מהזרם:

1.1 1. לשים את קובץ הרישיון בכל מקום **/ mnt/sdcard /**.
1.1 1. צור זרם המתייחס לקובץ.
1.1 1. מעבר לזרם (כולל קובץ הרישיון) `SetLicense` שיטה.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

החל רישיון מ- Embedded Resource. גישה לרישיון כמשאב בשם Android קובץ החבילה:

1.1 1. הוסף את קובץ הרישיון כמשאב ליישום שלך **Res/raw** תיקיה.
   קובץ הרישיון צריך להיות גלוי ב **Res/raw** תיקיה.
1.1 1. גישה / לטעון את הרישיון מן המשאב עם דגימת הקוד הבאה.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### יישום הרישיון

Aspose.Words מאפשר למפתחים ליישם מפתח ממונן. זהו מנגנון רישוי חדש. מנגנון הרישוי החדש ישמש יחד עם שיטת רישוי קיימת. לקוחות שרוצים להיות רשומים על בסיס השימוש API תכונות יכולות להשתמש ברישיון ממונן.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### שינוי שם הרישיון

שם הקובץ לא צריך להיות "Aspose.Words.Android.Javaבבקשה." אתה יכול לקרוא את זה לכל דבר שאתה אוהב ולהשתמש בשם זה בעת קריאה `License.SetLicense`.

### תגית: Cannot Find licensename

כאשר אתה מוריד רישיון שרכשת, קובץ הרישיון נקרא **Aspose.Words.Android.Java** כברירת מחדל. קובץ הרישיון הורד באמצעות הדפדפן שלך וכמה דפדפנים מזהים את קובץ הרישיון כ-XML ותוספת xml. הקובץ ההורדה הופך **Aspose.Words.Android.Java.XML**.

מתי Microsoft Windows מוגדר כדי להסתיר הרחבות של סוגי קבצים ידועים (למרבה הצער, זה כברירת מחדל ברובם. Windows התקנות, קובץ הרישיון רשום כ **Aspose.Words.Android.Java** פנימה Windows Explorer זה נראה כמו שם הקובץ הצפוי. אם אתה קורא `License.SetLicense` לעבור "Aspose.Words.Android.Java"אתה תראה ויוצא דופן כי אין קובץ כזה

כדי לפתור את הבעיה, שם מחדש את הקובץ כדי להסיר את הסיומת הבלתי נראית .xml. אנו ממליצים לך להשבית את האפשרות "הרחבות הייד" ב Microsoft Windows.

## שימוש במוצרים מרובים

אם אתה משתמש במספר מוצרי Aspose ביישום, למשל Aspose.Words ו `Aspose.Cells`, הנה כמה טיפים שימושיים.

- הגדר את הרישיון עבור כל מוצר בנפרד.
  גם אם יש לך קובץ רישיון יחיד עבור כל המרכיבים, למשל "כאמור". לגמרי.Android.Java"אתה עדיין צריך לקרוא לזה `License.SetLicense` שיטה בנפרד עבור כל מוצר נניח.
- השתמש בשם מלא מעמד רישיון.
  כל אחד נניח שלמוצר יש `License` בכיתה בשם שלו. לדוגמה, Aspose.Words יש מילים. רישיון ו `Aspose.Cells` יש לו תאים. שיעור הרישיון באמצעות שם המעמדי המלאכה מאפשר לך להימנע מכל בלבול לגבי איזה רישיון מוחל על איזה מוצר.
