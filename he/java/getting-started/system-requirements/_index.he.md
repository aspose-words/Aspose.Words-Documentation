---
title: דרישות מערכת
second_title: Aspose.Words עבור Java
articleTitle: דרישות מערכת
linktitle: דרישות מערכת
description: "לפני שתתחיל לעבוד עם Aspose.Words עבור Java, ודא כי אתה פוגש את מערכת ההפעלה, פלטפורמה, מסגרות, דרישות איכות הסביבה, כך הפעילויות במכשירים שלך אחראים כראוי."
type: docs
weight: 80
url: /he/java/system-requirements/
---

Aspose.Words עבור Java אין צורך במוצר צד שלישי כגון Microsoft Word להיות מותקן. Aspose.Words עצמו הוא מנוע ליצירת, שינוי, המרת ועריכת מסמכים בפורמטים שונים, כולל Microsoft Word פורמטי מסמך

## מערכות הפעלה

כל מערכת הפעלה שיכולה לרוץ Java זמן ריצה (JRE) יכול לרוץ Aspose.Words עבור Java. הטבלה הבאה מתעדת בעיקר, אבל לא את כולם, תמכה במערכות הפעלה.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">מערכת הפעלה</td>
			<td style="font-weight: bold; width:400px">גרסאות</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 2012 2012 Server (x64, x86)</li><li>Windows 2012 2012 2012 R2 Server (x64, x86)</li><li>Windows 2016 2016 Server (x64, x86)</li><li>Windows 2019 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>ואחרים</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS גירסה 10.9Mavericksמאוחר יותר</li></ul></td>
		</tr>
  <tr>
			<td>Mobile Mobile Mobile</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Cloud Platforms

Aspose.Words עבור Java תומך בכל פלטפורמות ענן שיכולות לרוץ Java יישומים

## תמיכה Java גרסאות

Aspose.Words עבור Java תמיכה Java 7 וחדש יותר אם אתה נאלץ להשתמש Java 6 אנחנו עדיין משחררים נפרדים JAR עבור Java 6.


## תלות אופטית

כפי שאמרנו לעיל, Aspose.Words עבור Java דורש *only* The The Java סביבת ריצה, ואין צורך להתקין ספריות נוספות.

עם זאת, לפעמים יש מצבים שבהם ייתכן שיהיה צורך להוסיף ספריות של צד שלישי:

- - JogAmp JOGL ספרייה לחומרה מואצת OpenGL. הספרייה כלולה במילות POM הקובץ הוא תלות חיצונית. אתה יכול לערוך את POM קובץ כדי לשמור על jars JOGL נדרש עבור הפלטפורמה שלך בלבד. או שאתה יכול להסיר את התלות אם אתה לא צריך חומרה מואצת OpenGL.
- - HarfBuzz מנוע גופן הוא כבר נכלל ב-JRE 9 וחדש יותר. אם אתה משתמש JRE 8 או מבוגר יותר, אתה יכול להשתמש התלות עיצוב-harfbuzz-plugin שלנו POM קובץ. אחרת, אתה יכול להסיר את התלות.
- - Java Advanced Imaging (JAI) תמיכה בתמונות TIFF תמונות TIFF אינן נתמכות על ידי Java 8 ומעלה תמיכה ב-TIFF Java סביבות, Aspose.Words עבור Java תלוי [Java Advanced Imaging (JAI) חבילה](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) מתוך Oracle. נסביר כיצד להתקין את JAI למטה.

### כיצד להתקין את JAI על Windows

עקבו אחרי Native JAI ו ImageIO על Windows:

1 הורד **1.1.3**.
   בעת כתיבה, רק גרסת 32 סיביות של ההתקנה זמינה, כך שאם אתה משתמש ב-JDK אתה צריך להוריד [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) אם אתה משתמש ב-JRE אתה צריך להוריד [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1.1 1. הפעל את המתקין ולהציג אותו למנהל שבו JDK/JRE מותקנת.
1 הורד **I/O 1.1**.
   בעת כתיבה, רק גרסת 32 סיביות של ההתקנה זמינה, כך שאם אתה משתמש ב-JDK אתה צריך להוריד [J_imageio-1_1-lib-windows-i586-jdk.exek.exeek.exeek.exeek.exeek.exeek.exeek.exe.exeek.exeek.exe.exeek.exeek.exeek.exeek.exe.exeek.exe.exe.exe.exe.exeek.exeek.exe.exe.exeek.exe.exe.exe.exe.exe.exeek.exe.exe.exe.exeek.exeek.exe.exeek.exe.exe.exe.exe.exe.exe.exe.exe.exeek.exeek.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exeek.exeek.exeek.exeek.exe.exe.exe.exe.exeek.exeek.exe.exe.exe.exe.exe.exeek.exe.exeek.exeek.exeek.exeek.exeek.exe.exeek.exeek.exe.exeek.exeek.exeek.exeek.exe.exe.exeek.exeek.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) אם אתה משתמש ב-JRE אתה צריך להוריד [J_imageio-1_1-lib-windows-i586-jre.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1.1 1. הפעל את המתקין ולהציג אותו למנהל שבו JDK/JRE מותקנת.

### כיצד להתקין את JAI על Linux

עקבו אחרי Native JAI ו ImageIO על Linux:

1 הורד **1.1.3** בחירת האדריכלות המתאימה:
   1.1 1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) מערכות 32 סיביות
   1.1 1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) עבור 64 סיביות (גם אם משתמשים במעבדים של אינטל)
1.1 1. הוציאו את הקובץ למנהל זמני.
1.1 1. לזוז JAR תגית: JDK/JRE **המונחים/ext** תיקיה.
1.1 1. לחצו על JDK/JRE **שחרור / md64** תיקיה.<br/>

   לדוגמה, על 64 סיביות Ubuntu שלב 1-4 נראה כך:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1 הורד **I/O 1.1**, בחירת האדריכלות המתאימה:
   1.1 1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) מערכות 32 סיביות
   1.1 1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) עבור 64 סיביות (גם אם משתמשים במעבדים של אינטל)
1.1 1. הוציאו את הקובץ למנהל זמני.
1.1 1. לזוז JAR תגית: JDK/JRE **המונחים/ext** תיקיה.
1.1 1. לחצו על JDK/JRE **שחרור / md64** תיקיה.<br/>

   לדוגמה, על 64 סיביות Ubuntu צעדים 5-8 נראים כך:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## תגית: Temporary Files

Aspose.Words עבור Java משתמש במאי זמני במחשב שלך, אשר מוגדר באמצעות `java.io.tmpdir` רכוש מערכת Aspose.Words עבור Java כותב קבצים זמניים ולאחר מכן מסיר קבצים אלה ברגע השלמת ההגשה.

`java.io.tmpdir` הוא תקן Java נכס מערכת המשמש גם מדיניות אחסון מבוססת דיסק. הוא קובע היכן JVM כותב קבצים זמניים.
