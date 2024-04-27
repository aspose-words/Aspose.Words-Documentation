---
title: Installazione Aspose.Words per Android via Java
second_title: Aspose.Words per Java
articleTitle: Installazione Aspose.Words per Android via Java
linktitle: Installazione Aspose.Words per Android via Java
description: "Installazione Aspose.Words per Android via Java."
type: docs
weight: 20
url: /it/java/install-aspose-words-for-android-via-java/
---

{{% alert color="primary" %}}

Dal 2017 la versione di Aspose.Words per Android via Java conforme a Aspose.Words per Java

[aspose-parole-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Installazione

Negli episodi precedenti... Aspose.Words per Android via Java è stato distribuito come un unico file ZIP che conteneva JAR file, demo e documentazione di Aspose.Words per Android via Java.

1. Se si desidera utilizzare qualsiasi versione prima Aspose.Words per Android via Java 1.11, è solo necessario destare qualsiasi versione di Aspose.Words.Android.zip in una directory di vostra scelta.
1. Includere il file Jar estratto nella vostra applicazione utilizzando la configurazione Build Path per la sua applicazione.

Le versioni 1.11 e 1.12 sono state divise manualmente in due parti: JAR e APK per limitare il numero di metodi nel file DEX. In queste versioni, abbiamo fornito il nostro caricatore APK per avviare il caricamento corretto del file aggiuntivo class.dex. A partire dalla versione 17.2.0 supportiamo il flusso di lavoro ufficiale descritto [Qui](https://developer.android.com/studio/build/multidex.html).

### Come Usare Aspose.Words per Android via Java da 1.11 In avanti

Nelle puntate precedenti... JAR di Aspose.Words per Android via Java conteneva 47+ mila metodi che rendevano le versioni più vecchie un po' impraticabili da usare in applicazioni Android enormi. Ora a partire da questa release, abbiamo iniziato a ridurre le dimensioni di Aspose.Words per Android via Java biblioteca. La nostra principale preoccupazione ora è quella di ridurre il numero di metodi senza perdita di funzionalità. Lavoriamo costantemente per migliorare la qualità e l'usabilità Aspose.Words per Android via Java.

### Aspose.Words per Android via Java Biblioteca diviso in due parti

Avevamo diviso la biblioteca in due archivi seguenti:

- aspose-words-1.11-android-jdk15.jar: Il primo include il pubblico API e i suoi metodi ausiliari. Attualmente, ha 32395 metodi.
- aspose-words-1.11-libs-android-jdk15.apk: Il secondo include vasi di terze parti, classi di base e risorse. Attualmente, ha 18296 metodi.

### Utilizzo delle parole per Android via Java dal 1.11

Per includere Aspose.Words per Android via Java nel progetto è possibile utilizzare uno dei seguenti metodi:

- Per posizionare "aspose-words-1.11-android-jdk15.jar" nella cartella "libs" del vostro progetto, e l’archivio "aspose-words-1.11-libs-android-jdk15.apk" nella cartella "assets". Indicare che si sta per utilizzare AsposeWordsApplication come quello di base.

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

Per avviare un carico di file .apk nel metodo onCreate() e se non si desidera utilizzare Android:name="com.aspose.words.AsposeWordsApplication" in AndroidManifest.xml

**Attività Java file**

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

### Utilizzo Aspose.Words per Android via Java in Android Applicazioni di prova

Per usare Aspose.Words per Android via Java in progetti di prova, lo stesso approccio può essere applicato:

- Indicare AsposeWordsTestRunner in AndroidManifest.xml del progetto di prova.

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

In IDE potrebbe essere necessario indicare AsposeWordsTestRunner nella finestra di configurazione come segue:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- O per avviare il carico di .apk utilizzando il metodo getTargetContext().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Come Usare Aspose.Words per Android via Java dal 17.2.0 In avanti

1. Scarica la nuova versione di [Aspose.Words per Android via Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Copiare aspose-words-18.3-android.via.java.jar nel vostro progetto *libs/*folder
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Installazione Aspose.Words per Android via Java da Maven Repository

1. Aggiungi maven repository nella tua build. Gradificazione
1. Aggiungi 'Aspose.Words per Android via Java' JAR come dipendenza
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