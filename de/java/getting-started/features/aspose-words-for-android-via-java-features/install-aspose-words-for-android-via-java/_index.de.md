---
title: Installiere Aspose.Words für Android über Java
second_title: Aspose.Words für Java
articleTitle: Installiere Aspose.Words für Android über Java
linktitle: Installiere Aspose.Words für Android über Java
description: "Installation von Aspose.Words für Android über Java."
type: docs
weight: 20
url: /de/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Seit 2017 entspricht die Versionierung von Aspose.Words für Android über Java Aspose.Words für Java.

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Installation

Zuvor wurde Aspose.Words für Android über Java als einzelne ZIP-Datei verteilt, die die JAR-Datei, Demos und Dokumentation von Aspose.Words für Android über Java enthielt.

1. Wenn Sie eine Version vor Aspose.Words für Android über Java 1.11 verwenden möchten, müssen Sie nur eine beliebige Version von Aspose.Words.Android.zip in ein Verzeichnis Ihrer Wahl entpacken.
1. Fügen Sie die extrahierte JAR-Datei mithilfe der Erstellungspfadkonfiguration für die Anwendung in Ihre Anwendung ein.

Die Versionen 1.11 und 1.12 wurden manuell in zwei Teile unterteilt: JAR und APK, um die Anzahl der Methoden in der DEX -Datei zu begrenzen. In diesen Versionen haben wir unseren eigenen APK Loader bereitgestellt, um das korrekte Laden der zusätzlichen Klassen zu initiieren.dex-Datei. Ab Version 17.2.0 unterstützen wir den offiziell beschriebenen Workflow [hier](https://developer.android.com/studio/build/multidex.html).

### Verwendung von Aspose.Words für Android über Java ab 1.11

Zuvor enthielt eine einzelne JAR von Aspose.Words für Android über Java mehr als 47 Tausend Methoden, was die Verwendung älterer Versionen in riesigen Android-Anwendungen etwas unpraktisch machte. Ab dieser Version haben wir begonnen, die Größe von Aspose.Words für Android über die Java -Bibliothek zu reduzieren. Unser Hauptanliegen ist es nun, die Anzahl der Methoden ohne Funktionalitätsverlust zu reduzieren. Wir arbeiten ständig daran, die Qualität und Benutzerfreundlichkeit von Aspose.Words für Android über Java zu verbessern.

### Aspose.Words für Android über Java Bibliothek in zwei Teile geteilt

Wir hatten die Bibliothek in folgende zwei Archive unterteilt:

- aspose-words-1.11-android-jdk15.jar: Die erste enthält public API und seine Hilfsmethoden. Derzeit hat es 32395 Methoden.
- aspose-words-1.11-libs-android-jdk15.apk: Die zweite enthält 3rd-Party-Gläser, Grundklassen und Ressourcen. Derzeit hat es 18296 Methoden.

### Verwenden von Aspose-Wörtern für Android über Java seit 1.11

Um Aspose.Words für Android über Java in das Projekt aufzunehmen, können Sie eine der folgenden Methoden verwenden:

- Legen Sie "aspose-words-1.11-android-jdk15.jar" in den Ordner "libs" Ihres Projekts und das Archiv "aspose-words-1.11-libs-android-jdk15.apk" in den Ordner "assets". Geben Sie an, dass Sie AsposeWordsApplication als Basis verwenden werden.

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

Um eine Ladung von zu initiieren .apk-Datei in der onCreate() -Methode und wenn Sie Android nicht verwenden möchten:name ="com.posieren.Wort.AsposeWordsApplication" nach AndroidManifest.xml

**Aktivitäts- Java-Datei**

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

### Verwenden von Aspose.Words für Android über Java in Android Testanwendungen

Um Aspose.Words für Android über Java in Testprojekten zu verwenden, kann derselbe Ansatz angewendet werden:

- Geben Sie AsposeWordsTestRunner in AndroidManifest.xml des Testprojekts an.

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

In IDE muss möglicherweise AsposeWordsTestRunner im Konfigurationsfenster wie folgt angegeben werden:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Oder um die Ladung von zu initiieren.apk mit der getTargetContext () -Methode.

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Verwendung von Aspose.Words für Android über Java ab 17.2.0

1. Laden Sie die neueste Version von herunter [Aspose.Words für Android über Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Kopiere aspose-words-18.3-android.via.java.jar in den Ordner *libs/* deines Projekts
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Installiere Aspose.Words für Android über Java aus Maven Repository

1. Fügen Sie Ihrem Build das maven -Repository hinzu.gradle
1. Füge 'Aspose.Words für Android über Java' JAR als Abhängigkeit hinzu
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
