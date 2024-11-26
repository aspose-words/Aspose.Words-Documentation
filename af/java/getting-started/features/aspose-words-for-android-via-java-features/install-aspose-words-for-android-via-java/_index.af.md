---
title: Installeer Aspose.Words vir Android via Java
second_title: Aspose.Words vir Java
articleTitle: Installeer Aspose.Words vir Android via Java
linktitle: Installeer Aspose.Words vir Android via Java
description: "Installeer Aspose.Words vir Android via Java."
type: docs
weight: 20
url: /af/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Aangesien 2017 die weergawe van Aspose.Words vir Android via Java voldoen aan Aspose.Words vir Java.

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Installasie

Voorheen is Aspose.Words vir Android via Java versprei as'n enkele ZIP lêer wat die JAR lêer, demo's en dokumentasie van Aspose.Words vir Android via Java bevat.

1. As jy enige weergawe voor Aspose.Words vir Android via Java 1.11 wil gebruik, moet jy net enige weergawe van Aspose.Words uitpak.Android.zip in'n gids van jou keuse.
1. Sluit die onttrekte Jar-lêer in u toepassing in deur die Boupadkonfigurasie vir die toepassing daarvan te gebruik.

Weergawes 1.11 en 1.12 is handmatig in twee dele verdeel: JAR en APK om die aantal metodes in die DEX lêer te beperk. In hierdie weergawes het ons ons eie APK laaier verskaf om die korrekte laai van die bykomende klasse te begin.dex lêer. Begin van weergawe 17.2.0 ons ondersteun die amptelike werkstroom beskryf [hier is](https://developer.android.com/studio/build/multidex.html).

### Hoe om Aspose.Words te Gebruik vir Android via Java van 1.11 Af

Voorheen het'n enkele JAR van Aspose.Words vir Android via Java 47+ duisend metodes bevat wat ouer weergawes'n bietjie onprakties gemaak het om in groot android-toepassings te gebruik. Nou begin van hierdie vrystelling, het ons begin om die grootte van Aspose.Words vir Android te verminder via Java biblioteek. Ons grootste bekommernis is nou om die aantal metodes te verminder sonder om funksionaliteit te verloor. Ons werk voortdurend aan die verbetering van die kwaliteit en bruikbaarheid van Aspose.Words vir Android via Java.

### Aspose.Words vir Android via Java Biblioteek Verdeel In Twee Dele

Ons het die biblioteek in die volgende twee argiewe verdeel:

- aspose-words-1.11-android-jdk15.jar: die eerste een sluit openbare API en sy hulpmetodes in. Tans het dit 32395 metodes.
- aspose-words-1.11-libs-android-jdk15.apk: die tweede een sluit 3de party potte, basiese klasse, en hulpbronne. Tans het dit 18296 metodes.

### Gebruik Aspose Woorde vir Android via Java sedert 1.11

Om Aspose.Words vir Android via Java in die projek in te sluit, kan jy enige van die volgende metodes gebruik:

- Om "aspose-words-1.11-android-jdk15.jar" in die gids "libs" van jou projek te plaas, en die argief "aspose-words-1.11-libs-android-jdk15.apk" in die gids "assets". Dui aan dat jy AsposeWordsApplication as die basiese een gaan gebruik.

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

Om'n lading van te begin .apk lêer in die onCreate() metode en as jy nie android wil gebruik nie:name="com.aspose.woorde.AsposeWordsApplication " in AndroidManifest.xml

**Aktiwiteit Java lêer**

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

### Gebruik Aspose.Words vir Android via Java in Android Toets Toepassings

Om Aspose.Words vir Android via Java in toetsprojekte te gebruik, kan dieselfde benadering toegepas word:

- Dui AsposeWordsTestRunner in AndroidManifest aan.xml van die toetsprojek.

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

In IDE kan dit nodig wees om AsposeWordsTestRunner in die konfigurasie venster soos volg aan te dui:

![install-aspose-words-for-android-via-java-1](install-aspose-words-for-android-via-java-1.png)

- Of om die las van te begin .apk met behulp van die getTargetContext() metode.

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Hoe om Aspose.Words te Gebruik vir Android via Java van 17.2.0 Af

1. Laai die nuutste weergawe van [Aspose.Words vir Android via Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Kopieer aspose-words-18.3-android.via.java.jar in jou projek se *libs/*gids
![install-aspose-words-for-android-via-java-2](install-aspose-words-for-android-via-java-2.jpg)

### Installeer Aspose.Words vir Android via Java vanaf Maven Repository

1. Voeg maven repository by jou bou.gradle
1. Voeg 'Aspose.Words by vir Android via Java' JAR as'n afhanklikheid
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
