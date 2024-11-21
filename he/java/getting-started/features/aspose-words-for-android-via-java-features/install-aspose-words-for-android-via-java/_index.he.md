---
title: התקן Aspose.Words עבור Android באמצעות Java
second_title: Aspose.Words עבור Java
articleTitle: התקן Aspose.Words עבור Android באמצעות Java
linktitle: התקן Aspose.Words עבור Android באמצעות Java
description: "התקנת Aspose.Words עבור Android באמצעות Java."
type: docs
weight: 20
url: /he/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

מאז 2017 הגרסה של Aspose.Words עבור Android באמצעות Java שתף פעולה Aspose.Words עבור Java

[20.2-android.via.java.jar.jar.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## מתקן

בעבר, Aspose.Words עבור Android באמצעות Java הופץ כקובץ ZIP יחיד שכלל את JAR קובץ, הדגמה ותיעוד Aspose.Words עבור Android באמצעות Java.

1.1 1. אם אתה רוצה להשתמש בכל גירסה לפני Aspose.Words עבור Android באמצעות Java 1.11, אתה רק צריך לבטל כל גרסה של Aspose.Words.Androidzip לתוך מנהל של הבחירה שלך.
1.1 1. כולל את קובץ ג'ארד מופק ביישום שלך באמצעות תצורה של Build Path עבור היישום שלה.

גרסאות 1.11 ו-1.12 חולקו באופן ידני לשני חלקים: JAR ו- API כדי להגביל את מספר השיטות בקובץ DEX. בגרסאות אלה, סיפקנו את עומס ה-IP שלנו ליזום את הטעינה הנכונה של הקובץ הנוסף.dex. החל מהגרסה 17.2.0 אנו תומכים בזרימת העבודה הרשמית המתוארת [כאן](https://developer.android.com/studio/build/multidex.html).

### כיצד להשתמש Aspose.Words עבור Android באמצעות Java 1.11 ואילך

קודם כל, אחד JAR של Aspose.Words עבור Android באמצעות Java הכיל 47 + אלף שיטות שהפכו גירסאות ישנות יותר לא מעשיות לשימוש באפליקציות אנדרואיד ענקיות. החל מהשחרור הזה, התחלנו להפחית את הגודל של Aspose.Words עבור Android באמצעות Java ספרייה הדאגה העיקרית שלנו היא להפחית את מספר השיטות ללא אובדן פונקציונליות. אנחנו כל הזמן עובדים על שיפור האיכות והיכולות של Aspose.Words עבור Android באמצעות Java.

### Aspose.Words עבור Android באמצעות Java הספרייה מחולקת לשני חלקים

חילקנו את הספרייה לשני ארכיונים:

- המונחים: 1.11-android-jdk15 הראשון כולל את הציבור API ושיטות העזר שלו. כיום יש לה 32395 שיטות.
- המונחים: 1.11-libs-android-jdk15.apk השני כולל jars צד שלישי, כיתות בסיסיות ומשאבים. כיום יש בו 18296 שיטות.

### שימוש במילים נניח Android באמצעות Java מאז 1.11

לכלול Aspose.Words עבור Android באמצעות Java בפרויקט תוכלו להשתמש בכל אחת מהשיטות הבאות:

- כדי למקם "כמו מילים-1.11-android-jdk15.jar" בתיקיה "libs" של הפרויקט שלך, ואת הארכיון "כמו מילים-1.11-libs-android-jdk15.apk" לתוך התיקיה "פרטים". מציין כי אתה הולך להשתמש As נניחwordsApplication כמו הבסיסי.

**AndroidManifest**

{{< highlight csharp >}}
...
...
<application        
    android:allowBackup="true"
    android:icon="@drawable/ic_launcher"
    android:name="com.aspose.words.AsposeWordsApplication"
    android:label="@string/app_name"
    android:theme="@style/AppTheme" >
    <activity
...
...
{{< /highlight >}}

כדי ליזום עומס של קובץ .apk בשיטת OnCreate() ואם אתה לא רוצה להשתמש באנדרואיד: שם="com. asposes.words.A נניחwordsApplication" ב AndroidManifest

**פעילות Java קובץ**

{{< highlight csharp >}}
@Override
protected void onCreate(Bundle savedInstanceState) 
{
    super.onCreate(savedInstanceState);

    // load AW manually
    AsposeWordsApplication awapp = new AsposeWordsApplication();
    
    // this context AW uses to find assets/ folder which contains the second part of the library.
    awapp.loadLibs(getApplicationContext()); 
    if (!checkIfAWSetUpCorrectly())
            throw new IllegalStateException();	
    ...
}
public static boolean checkIfAWSetUpCorrectly()
{
    try
    {
        Class.forName("com.aspose.words.Document");
        return true;
    }
    catch (ClassNotFoundException e)
    {
        e.printStackTrace();
        return false;
    }
}
{{< /highlight >}}

### שימוש Aspose.Words עבור Android באמצעות Java פנימה Android יישומי מבחן

להשתמש Aspose.Words עבור Android באמצעות Java בפרויקטים של בדיקות ניתן ליישם אותה גישה:

- Indicate AsumeWordsTest Runner AndroidManifest

**AndroidManifest**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

ב- IDE ייתכן שיהיה צורך לציין את AsposesTest Runner בחלון התצורה כדלקמן:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- או ליזום את העומס של .apk באמצעות שיטת GetTargetContext()

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## כיצד להשתמש Aspose.Words עבור Android באמצעות Java 17.2.0 ואילך

1.1 1. הורד את הגרסה החדשה של [Aspose.Words עבור Android באמצעות Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
העתק כ-SE-words-18.3-android.via.java.jar לתוך הפרויקט שלך *libs/*folder
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### התקן Aspose.Words עבור Android באמצעות Java מתוך Maven חידוש

1.1 1. הוסף maven חזרה אל המבנה שלך. דירוג
1.1 1. הוסףAspose.Words עבור Android באמצעות Java"" JAR כמו תלות
{{< highlight csharp >}}

// 1. Add maven repository into your build.gradle 
repositories {
    mavenCentral()
    maven { url "https://repository.aspose.com/words/" }
}

// 2. Add 'Aspose.Words for Android via Java' JAR as a dependency
dependencies {
    ...
    ...
    compile (group: 'com.aspose', name: 'aspose-words', version: '20.2', classifier: 'android.via.java')
}
{{< /highlight >}}
