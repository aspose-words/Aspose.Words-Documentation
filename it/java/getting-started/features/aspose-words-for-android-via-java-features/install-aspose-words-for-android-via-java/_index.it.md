---
title: Installare Aspose.Words per Androidtramite Java
second_title: Aspose.Words per Java
articleTitle: Installare Aspose.Words per Androidtramite Java
linktitle: Installare Aspose.Words per Androidtramite Java
description: "Installazione di Aspose.Words per Android tramite Java."
type: docs
weight: 20
url: /it/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Dal 2017 il versioning di Aspose.Words per Android via Java è conforme a Aspose.Words per Java.

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Installazione

In precedenza, Aspose.Words per Android tramite Java era distribuito come un singolo file ZIP che conteneva il file JAR, le demo e la documentazione di Aspose.Words per Android tramite Java.

1. Se si desidera utilizzare qualsiasi versione prima di Aspose.Words per Android tramite Java 1.11, è sufficiente decomprimere qualsiasi versione di Aspose.Words.Android.zip in una directory di propria scelta.
1. Includere il file Jar estratto nell'applicazione utilizzando la configurazione del percorso di compilazione per la relativa applicazione.

Le versioni 1.11 e 1.12 sono state divise manualmente in due parti: JAR e APK per limitare il numero di metodi nel file DEX. In queste versioni, abbiamo fornito il nostro caricatore APK per avviare il corretto caricamento delle classi aggiuntive.file dex. A partire dalla versione 17.2.0 supportiamo il flusso di lavoro ufficiale descritto [qui](https://developer.android.com/studio/build/multidex.html).

### Come usare Aspose.Words per Android tramite Java da 1.11 In poi

In precedenza, un singolo JAR di Aspose.Words per Android via Java conteneva oltre 47 mila metodi che rendevano le versioni precedenti un po ' poco pratiche da utilizzare in enormi applicazioni Android. Ora a partire da questa versione, abbiamo iniziato a ridurre la dimensione di Aspose.Words per Android tramite Java libreria. La nostra principale preoccupazione ora è ridurre il numero di metodi senza perdita di funzionalità. Lavoriamo costantemente per migliorare la qualità e l'usabilità di Aspose.Words per Android via Java.

### Aspose.Words per Android tramite Java Libreria Divisa in due parti

Avevamo diviso la biblioteca in due archivi:

- aspose-words-1.11-android-jdk15.jar: Il primo include public API e i suoi metodi ausiliari. Attualmente, ha 32395 metodi.
- aspose-words-1.11-libs-android-jdk15.apk: Il secondo include jar di terze parti, classi base e risorse. Attualmente, ha 18296 metodi.

### Usando le parole Aspose per Android via Javada 1.11

Per includere Aspose.Words per Android tramite Java nel progetto è possibile utilizzare uno dei seguenti metodi:

- Inserire " aspose-words-1.11-android-jdk15.jar "nella cartella" libs "del progetto e l'archivio" aspose-words-1.11-libs-android-jdk15.apk "nella cartella"assets". Indica che stai per usare AsposeWordsApplication come base.

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

Per avviare un carico di .file apk nel metodo onCreate() e se non si desidera utilizzare Android: name = " com.aspose.parola.AsposeWordsApplication " in AndroidManifest.xml

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

### Utilizzo di Aspose.Words per Android tramite Java in Android Applicazioni di test

Per utilizzare Aspose.Words per Android tramite Java nei progetti di test, è possibile applicare lo stesso approccio:

- Indicare AsposeWordsTestRunner in AndroidManifest.xml del progetto di test.

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

- O per avviare il carico di .apk utilizzando il metodo getTargetContext ().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Come usare Aspose.Words per Android tramite Java da 17.2.0 In poi

1. Scarica la versione più recente di [Aspose.Words per Android tramite Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Copia aspose-words-18.3-android.via.java.jar nella cartella *libs/* del tuo progetto
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Installare Aspose.Words per Android tramite Java dal repository Maven

1. Aggiungi maven repository nella tua build.gradle
1. Aggiungi 'Aspose.Words per Android tramite Java ' JAR come dipendenza
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
