---
title: Installieren Aspose.Words für Android über Java
second_title: Aspose.Words für Java
articleTitle: Installieren Aspose.Words für Android über Java
linktitle: Installieren Aspose.Words für Android über Java
description: "Installation Aspose.Words für Android über Java."
type: docs
weight: 20
url: /de/java/install-aspose-words-for-android-via-java/
---

{{% alert color="primary" %}}

Seit 2017 die Versionierung von Aspose.Words für Android über Java entspricht Aspose.Words für Java

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Installation

Zuvor, Aspose.Words für Android über Java wurde als einzige ZIP-Datei verteilt, die die JAR Datei, Demos und Dokumentation Aspose.Words für Android über Java.

ANHANG Wenn Sie eine Version verwenden möchten, bevor Aspose.Words für Android über Java 1.11, Sie müssen einfach jede Version entpacken Aspose.Words.Android.zip in ein Verzeichnis Ihrer Wahl.
ANHANG Fügen Sie die extrahierte Jar-Datei in Ihrer Anwendung mit der Build Path-Konfiguration für ihre Anwendung ein.

Die Versionen 1.11 und 1.12 wurden manuell in zwei Teile unterteilt: JAR und APK, um die Anzahl der Verfahren in der DEX-Datei zu begrenzen. In diesen Versionen haben wir unseren eigenen APK-Lader zur Initiierung der korrekten Beladung der zusätzlichen Klassen.dex-Datei bereitgestellt. Ab Version 17.2.0 unterstützen wir den beschriebenen offiziellen Workflow [Hier](https://developer.android.com/studio/build/multidex.html).

### Wie zu benutzen Aspose.Words für Android über Java von 1.11 Weiter

Bisher eine Single JAR von Aspose.Words für Android über Java enthielt 47+mila Methoden, die ältere Versionen ein wenig unpraktisch gemacht, um in riesigen Android-Anwendungen zu verwenden. Jetzt beginnend von dieser Veröffentlichung, haben wir begonnen, die Größe zu reduzieren Aspose.Words für Android über Java Bibliothek. Unser Hauptanliegen besteht nun darin, die Anzahl der Methoden ohne Funktionsverlust zu reduzieren. Wir arbeiten ständig an der Verbesserung der Qualität und Usability Aspose.Words für Android über Java.

### Aspose.Words für Android über Java Bibliothek in zwei Teile unterteilt

Wir hatten die Bibliothek in zwei Archive unterteilt:

- Aspose-words-1.11-android-jdk15.jar: Die erste umfasst die Öffentlichkeit API und deren Hilfsmethoden. Derzeit hat es 32395 Methoden.
- Aspose-words-1.11-libs-android-jdk15.apk: Die zweite besteht aus Drittparteien, Grundklassen und Ressourcen. Derzeit hat es 18296 Methoden.

### Verwenden von Aspose Words für Android über Java seit 1.11

Einschließlich Aspose.Words für Android über Java in das Projekt können Sie eine der folgenden Methoden verwenden:

- Um "aspose-words-1.11-android-jdk15.jar" in den Ordner "libs" Ihres Projekts zu platzieren, und das Archiv "aspose-words-1.11-libs-android-jdk15.apk" in den Ordner "Attenten". Geben Sie an, dass Sie AsposeWordsApplication als grundlegende verwenden werden.

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

Um eine Belastung der .apk-Datei in der onCreate()-Methode einzuleiten und wenn Sie nicht wollen Android:name="com.aspose.words.AsposeWordsApplication" in AndroidManifest.xml

**Tätigkeit Java Datei**

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

### Verwendung Aspose.Words für Android über Java in Android Testanwendungen

Zur Verwendung Aspose.Words für Android über Java bei Testprojekten kann der gleiche Ansatz angewandt werden:

- AsposeWordsTestRunner in AndroidManifest.xml des Testprojekts.

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

In IDE kann es notwendig sein, AsposeWordsTestRunner im Konfigurationsfenster wie folgt anzuzeigen:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Oder die Ladung von .apk mit der getTargetContext() Methode zu initiieren.

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Wie zu benutzen Aspose.Words für Android über Java von 17.2.0 Weiter

ANHANG Die neueste Version herunterladen [Aspose.Words für Android Über uns Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Kopieren Sie Aspose-words-18.3-android.via.java.jar in Ihr Projekt *libs/*folder
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Installieren Aspose.Words für Android über Java von Maven Repository

ANHANG Hinzufügen maven Repository in Ihren Build. Grad
ANHANG 'Aspose.Words für Android über Java' JAR als Abhängigkeit
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