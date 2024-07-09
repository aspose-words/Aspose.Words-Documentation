---
title: Uw eerste aanvraag voor Android via Java
second_title: Aspose.Words voor Java
articleTitle: Uw eerste toepassing
linktitle: Uw eerste toepassing
description: "Installeren Aspose.Words voor Android via Java."
type: docs
weight: 30
url: /nl/java/your-first-application/
---

Dit artikel geeft je een idee van beginnen met Aspose.Words voor Android via Java. Het zal aantonen hoe een nieuwe Android project vanaf nul, voeg een verwijzing naar de Aspose.Words JAR en maak een nieuw document dat wordt opgeslagen op schijf in DOCX-formaat. Dit voorbeeld gebruikt [Android Studio](https://developer.android.com/studio/index.html) voor ontwikkeling en de toepassing wordt uitgevoerd op de Android Emulator. Om te beginnen met Aspose.Words voor Android via Java, volg deze stap-voor-stap tutorial om een app die gebruikt Aspose.Words voor Android via Java:

1. Download en de [Android Studio](https://developer.android.com/studio/index.html) en installeren op elke locatie.
1. Rennen. Android Studio.
1. Een nieuw aanmaken Android Applicatieproject.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Kopieer aspose-words-17.5-android.via.java.jar in uw project<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Selecteer Project sectie (uit het bestandsmenu en klik op het tabblad Afhankelijkheden.
   1. Klik op de "+" knop, selecteer de optie bestandsafhankelijkheid.
   1. Selecteren Aspose.Words bibliotheek van libs map en klik op OK.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Het project synchroniseren met Gradle-bestanden indien nodig<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. Om toegang te krijgen tot de SDcard speciale machtigingen moeten worden toegevoegd. Klik op de AndroidManifest.xml bestand en kies de XML weergave. Voeg de volgende regel toe aan het bestand <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Ga terug naar de code sectie van de app en voeg de volgende invoer toe:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
En voeg dan de volgende code in het lichaam van de onCreate methode om een nieuw document te maken vanaf nul met behulp van Aspose.Words,
voeg wat tekst toe en sla het op in de SDCard in DOCX formaat.<br/>
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
De volledige code moet er zo uitzien:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Voer nu de toepassing opnieuw uit. Deze keer de Aspose.Words code draait op de achtergrond en genereert een document dat is opgeslagen op de SDcard.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Het aangemaakte document navigeren naar het menu Hulpmiddelen selecteren Android en kies Android Apparaatmonitor<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Gebruik de standaardweergave om het document te openen. De output gegenereerd door de app met slechts een paar regels code ziet er als volgt uit:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)