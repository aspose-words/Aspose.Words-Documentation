---
title: Jou Eerste Aansoek vir Android via Java
second_title: Aspose.Words vir Java
articleTitle: Jou Eerste Aansoek
linktitle: Jou Eerste Aansoek
description: "Installeer Aspose.Words vir Android via Java."
type: docs
weight: 30
url: /af/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Hierdie artikel gee jou'n idee om te begin met Aspose.Words vir Android via Java. Dit sal demonstreer hoe om'n nuwe Android projek van nuuts af op te stel, 'n verwysing na die Aspose.Words JAR by te voeg en'n nuwe dokument te skep wat in DOCX formaat op skyf gestoor word. Hierdie voorbeeld gebruik [Android Studio](https://developer.android.com/studio/index.html) vir ontwikkeling en die aansoek word uitgevoer op die Android Emulator. Om te begin met Aspose.Words vir Android via Java, volg asseblief hierdie stap-vir-stap handleiding om'n program te skep wat Aspose.Words vir Android via Javagebruik:

1. Aflaai en die [Android Studio](https://developer.android.com/studio/index.html) en installeer dit op enige plek.
1. Begin die Android Studio.
1. Skep'n Nuwe Android Aansoek Projek.<br>
![install-aspose-words-for-android-via-java-3](install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](install-aspose-words-for-android-via-java-7.jpg)<br>
1. Kopieer aspose-words-17.5-android.via.java.jar in jou projek se libs / gids<br>
![install-aspose-words-for-android-via-java-8](install-aspose-words-for-android-via-java-8.jpg)
1. Kies Projekafdeling (van die lêer-kieslys en klik op die Afhanklikhede-oortjie.
   1. Klik op die "+" knoppie, kies die lêer afhanklikheid opsie.
   1. Kies Aspose.Words biblioteek van libs gids en klik op OK.<br>
   ![install-aspose-words-for-android-via-java-9](install-aspose-words-for-android-via-java-9.png)
1. Sinkroniseer die projek met Gradle-lêers indien nodig<br>
![install-aspose-words-for-android-via-java-10](install-aspose-words-for-android-via-java-10.png)
1. Om toegang tot die SDcard spesiale regte moet bygevoeg word. Klik op die AndroidManifest.xml lêer en kies die XML aansig. Voeg die volgende reël by die lêer <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](install-aspose-words-for-android-via-java-11.jpg)
1. Navigeer terug na die kode-afdeling van die toepassing en voeg die volgende invoer by:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
En dan voeg die volgende kode in die liggaam van die onCreate metode om'n nuwe dokument van nuuts af te skep met behulp van Aspose.Words,
voeg'n bietjie teks in en stoor dit in die SDCard in DOCX formaat.<br>
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
{{< /highlight >}}<br>
Die volledige kode moet so lyk:<br>
![install-aspose-words-for-android-via-java-12](install-aspose-words-for-android-via-java-12.png)
1. Begin nou die aansoek weer. Hierdie keer sal die Aspose.Words kode in die agtergrond loop en'n dokument genereer wat in die SDcard gestoor word.<br>
![install-aspose-words-for-android-via-java-13](install-aspose-words-for-android-via-java-13.jpg)
1. Om die geskape dokument te sien, navigeer na Die Tools-kieslys en kies dan Android En Kies Android Toestelmonitor<br>
![install-aspose-words-for-android-via-java-14](install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](install-aspose-words-for-android-via-java-15.jpg)
1. Gebruik die verstekkyker om die dokument oop te maak. Die uitset wat deur die toepassing gegenereer word met net'n paar reëls kode lyk soos volg:<br>
![install-aspose-words-for-android-via-java-16](install-aspose-words-for-android-via-java-16.jpg)
