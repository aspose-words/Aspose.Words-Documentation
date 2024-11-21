---
title: הבקשה הראשונה שלך Android באמצעות Java
second_title: Aspose.Words עבור Java
articleTitle: היישום הראשון שלך
linktitle: היישום הראשון שלך
description: "התקנת Aspose.Words עבור Android באמצעות Java."
type: docs
weight: 30
url: /he/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

מאמר זה נותן לך רעיון להתחיל עם Aspose.Words עבור Android באמצעות Java. זה יוכיח כיצד להקים חדש Android פרויקט מאפס, הוסף התייחסות Aspose.Words JAR ליצור מסמך חדש שנשמר לדיסק בפורמט DOCX. דוגמה זו משתמשת [Android סטודיו](https://developer.android.com/studio/index.html) לפיתוח והיישום מנוהל על Android אדמירטור להתחיל עם Aspose.Words עבור Android באמצעות Javaנא לעקוב אחר מדריך צעד זה כדי ליצור אפליקציה המשתמשת Aspose.Words עבור Android באמצעות Java:

1.1 1. הורד וה [Android סטודיו](https://developer.android.com/studio/index.html) להתקין אותו לכל מקום.
1.1 1. לרוץ Android סטודיו
1.1 1. ליצור חדש Android פרויקט יישומים<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
עותק של Asume-words-17.5-android.via.java.jar לתוך הליבות /folder של הפרויקט שלך<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1.1 1. בחר פרויקט סעיף (מתפריט הקובץ ולחץ על הכרטיסיה התלות.
   לחץ על כפתור "+" , בחר באפשרות תלות הקובץ.
   1.בחר Aspose.Words ספריה של תיקיית libs ולחץ על OK.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1.1 1. Sync הפרויקט עם קבצי Gradle במידת הצורך<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1.1 1. כדי לגשת לרשאות מיוחדות של SDcard יש להוסיף. לחץ על Androidקובץ Manifest הוסף את השורה הבאה לקובץ <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1.1 1. לנווט חזרה לסעיף הקוד של האפליקציה ולהוסיף את הייבוא הבא:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
ולאחר מכן הכנס את הקוד הבא בגוף של שיטת OnCreate כדי ליצור מסמך חדש מאפס באמצעות שריטה. Aspose.Words,
הכנס טקסט ושמור אותו לתבנית SDCard ב- DOCX.<br/>
{{< highlight csharp >}}
try
{
   Document doc = new Document();
   DocumentBuilder builder = new DocumentBuilder(doc);
   builder.writeln("Hello World!");
   String sdCardPath = Environment.getExternalStorageDirectory().getPath() + File.separator;
   doc.save(sdCardPath + "Document Out.docx");
}
catch (Exception e)
{
   e.printStackTrace();
}
{{< /highlight >}}<br/>
הקוד המלא צריך להיראות כך:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1.1 1. עכשיו להפעיל שוב את היישום. הפעם Aspose.Words הקוד ירוץ ברקע ויפיק מסמך שנשמר ל-SDcard.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1.1 1. כדי להציג את המסמך שנוצר לנווט בתפריט הכלים ולאחר מכן בחר Android ובחר Android עקבו<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1.1 1. השתמש בצופה ברירת המחדל כדי לפתוח את המסמך. הפלט שנוצר על ידי האפליקציה עם כמה שורות קוד נראה כך:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
