---
title: Installeren Aspose.Words voor Android via Java
second_title: Aspose.Words voor Java
articleTitle: Installeren Aspose.Words voor Android via Java
linktitle: Installeren Aspose.Words voor Android via Java
description: "Installeren Aspose.Words voor Android via Java."
type: docs
weight: 20
url: /nl/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Sinds 2017 de versiering van Aspose.Words voor Android via Java voldoet aan Aspose.Words voor Java

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Installatie

Wat voorafging: Aspose.Words voor Android via Java werd verspreid als een enkel ZIP-bestand dat de JAR bestand, demo's en documentatie van Aspose.Words voor Android via Java.

1. Als u een versie wilt gebruiken voor Aspose.Words voor Android via Java 1.11, je hoeft alleen maar een versie van Aspose.Words.Android.zip in een directory naar keuze.
1. Neem het uitgepakte Jar-bestand in uw toepassing op met behulp van de Build Path-configuratie voor de toepassing ervan.

De versies 1.11 en 1.12 waren handmatig verdeeld in twee delen: JAR en APK om het aantal methoden in het DEX-bestand te beperken. In deze versies hebben we onze eigen APK lader geleverd om de juiste lading van het extra classes.dex bestand te starten. Vanaf versie 17.2.0 ondersteunen we de officiële workflow beschreven [Hier](https://developer.android.com/studio/build/multidex.html).

### Hoe gebruikt u dit middel? Aspose.Words voor Android via Java vanaf 1.11 Onward

Wat voorafging: JAR van Aspose.Words voor Android via Java bevatte 47+duizend methoden die oudere versies een beetje onpraktisch te gebruiken in enorme android toepassingen. Vanaf deze release zijn we begonnen om de grootte van Aspose.Words voor Android via Java bibliotheek. Onze grootste zorg is nu het verminderen van het aantal methoden zonder verlies van functionaliteit. We werken voortdurend aan de verbetering van de kwaliteit en bruikbaarheid van Aspose.Words voor Android via Java.

### Aspose.Words voor Android via Java Bibliotheek verdeeld in twee delen

We hadden de bibliotheek verdeeld in volgende twee archieven:

- aspose-words-1.11-android-jdk15.jar: De eerste omvat het publiek API en de aanvullende methoden. Momenteel heeft het 32395 methoden.
- aspose-words-1.11-libs-android-jdk15.apk: De tweede bevat 3rd party potten, basis klassen, en middelen. Momenteel heeft het 18296 methoden.

### Woorden gebruiken voor Android via Java sinds 1.11

Insluiten Aspose.Words voor Android via Java in het project kunt u een van de volgende methoden gebruiken:

- Om te plaatsen Geef aan dat u AsposeWordsApplication gaat gebruiken als basis.

**AndroidManifest.xml**

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

Om een lading van .apk bestand in de onCreate() methode te starten en als u geen android wilt gebruiken:name= AndroidManifest.xml

**Activiteit Java bestand**

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

### Gebruik Aspose.Words voor Android via Java in Android Testtoepassingen

Te gebruiken Aspose.Words voor Android via Java bij testprojecten kan dezelfde aanpak worden toegepast:

- Geef AsposeWordsTestRunner in AndroidManifest.xml van het testproject.

**AndroidManifest.xml**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

In IDE kan het nodig zijn om AsposeWordsTestRunner in het configuratievenster als volgt aan te geven:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Of om de belasting van .apk te starten met behulp van de getTargetContext() methode.

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Hoe gebruikt u dit middel? Aspose.Words voor Android via Java vanaf 17.2.0 Onward

1. Download de nieuwste versie van [Aspose.Words voor Android via Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Kopieer aspose-words-18.3-android.via.java.jar in uw project
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Installeren Aspose.Words voor Android via Java van Maven Repository

1. Voeg toe maven repository in uw build. gradle
1. ToevoegenAspose.Words voor Android via Java' JAR als afhankelijkheid
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
