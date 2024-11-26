---
title: Instalați Aspose.Words pentru Android prin Java
second_title: Aspose.Words pentru Java
articleTitle: Instalați Aspose.Words pentru Android prin Java
linktitle: Instalați Aspose.Words pentru Android prin Java
description: "Instalarea Aspose.Words pentru Android prin Java."
type: docs
weight: 20
url: /ro/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Deoarece 2017 versiunea Aspose.Words pentru Android prin Java este conformă cu Aspose.Words pentru Java.

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Instalare

Anterior, Aspose.Words pentru Android prin Java a fost distribuit ca un singur fișier ZIP care conținea fișierul JAR, demo-urile și documentația Aspose.Words pentru Android prin Java.

1. Dacă doriți să utilizați orice versiune înainte de Aspose.Words pentru Android prin Java 1.11, trebuie doar să dezarhivați orice versiune de Aspose.Words.Android.zip într-un director la alegere.
1. Includeți fișierul JAR extras în aplicația dvs. utilizând configurația căii de construire pentru aplicația sa.

Versiunile 1.11 și 1.12 au fost împărțite manual în două părți: JAR și APK pentru a limita numărul de metode din fișierul DEX. În aceste versiuni, am furnizat propriul nostru încărcător APK pentru a iniția încărcarea corectă a claselor suplimentare.fișier dex. Pornind de la versiunea 17.2.0 susținem fluxul de lucru oficial descris [aici](https://developer.android.com/studio/build/multidex.html).

### Cum se utilizează Aspose.Words pentru Android prin Java de la 1.11 mai departe

Anterior, un singur JAR de Aspose.Words pentru Android prin Java conținea 47 + mii de metode care făceau versiunile mai vechi puțin impracticabile de utilizat în aplicații android uriașe. Acum, pornind de la această versiune, am început să reducem dimensiunea Aspose.Words pentru Android prin Java bibliotecă. Preocuparea noastră majoră acum este de a reduce numărul de metode fără pierderea funcționalității. Lucrăm în mod constant la îmbunătățirea calității și utilizabilității Aspose.Words pentru Android prin Java.

### Aspose.Words pentru Android prin Java bibliotecă împărțită în două părți

Am împărțit biblioteca în următoarele două arhive:

- aspose-words-1.11-android-jdk15.jar: primul include public API și metodele sale auxiliare. În prezent, are 32395 metode.
- aspose-words-1.11-libs-android-jdk15.apk: Al doilea include borcane 3rd party, clase de bază, și resurse. În prezent, are 18296 metode.

### Folosind cuvinte Aspose pentru Android prin Java de la 1.11

Pentru a include Aspose.Words pentru Android prin Java În Proiect, puteți utiliza oricare dintre următoarele metode:

- Pentru a plasa " aspose-words-1.11-android-jdk15.jar "în folderul" libs "al proiectului dvs. și arhiva" aspose-words-1.11-libs-android-jdk15.apk "în folderul"active". Indicați că veți folosi AsposeWordsApplication ca cel de bază.

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

Pentru a iniția o sarcină de .fișier apk în metoda onCreate () și dacă nu doriți să utilizați android:name="com.aspose.cuvinte.AsposeWordsApplication " în AndroidManifest.xml

**Activitate Java fișier**

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

### Folosind Aspose.Words pentru Android prin Java în Android aplicații de testare

Pentru a utiliza Aspose.Words pentru Android prin Java în proiectele de testare, se poate aplica aceeași abordare:

- Indicați AsposeWordsTestRunner în AndroidManifest.xml al proiectului de testare.

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

În IDE ar putea fi necesar să se indice AsposeWordsTestRunner în fereastra de configurare după cum urmează:

![install-aspose-words-for-android-via-java-1](install-aspose-words-for-android-via-java-1.png)

- Sau pentru a iniția sarcina de .apk folosind metoda getTargetContext ().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Cum se utilizează Aspose.Words pentru Android prin Java de la 17.2.0 mai departe

1. Descărcați cea mai nouă versiune a [Aspose.Words pentru Android prin Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Copiați aspose-words-18.3-android.via.java.jar în folderul *libs/*al proiectului dvs
![install-aspose-words-for-android-via-java-2](install-aspose-words-for-android-via-java-2.jpg)

### Instalați Aspose.Words pentru Android prin Java din depozitul Maven

1. Adăugați maven depozit în versiunea dvs.gradle
1. Adăugați 'Aspose.Words pentru Android prin Java ' JAR ca dependență
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
