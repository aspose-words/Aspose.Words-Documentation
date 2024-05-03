---
title: Instalacja Aspose.Words zamiast Android przez Java
second_title: Aspose.Words zamiast Java
articleTitle: Instalacja Aspose.Words zamiast Android przez Java
linktitle: Instalacja Aspose.Words zamiast Android przez Java
description: "Instalacja Aspose.Words zamiast Android przez Java."
type: docs
weight: 20
url: /pl/java/install-aspose-words-for-android-via-java/
---

{{% alert color="primary" %}}

Od 2017 r. Wersja Aspose.Words zamiast Android przez Java spełnia wymogi Aspose.Words zamiast Java

[aspose-words- 20.2-android.via.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Instalacja

Poprzednio: Aspose.Words zamiast Android przez Java został rozprowadzony jako pojedynczy plik ZIP, który zawierał JAR plik, demo i dokumentacja Aspose.Words zamiast Android przez Java.

1. Jeśli chcesz użyć jakiejkolwiek wersji przed Aspose.Words zamiast Android przez Java 1.11, wystarczy rozpiąć dowolną wersję Aspose.Words.Android.zip do wybranego katalogu.
1. Włączyć do aplikacji pobrany plik Jar przy użyciu konfiguracji Build Path.

Wersje 1.11 i 1.12 zostały ręcznie podzielone na dwie części: JAR oraz APK w celu ograniczenia liczby metod w pliku DEX. W tych wersjach dostarczyliśmy własny ładowarka APK, aby zainicjować prawidłowe załadowanie dodatkowego pliku class.dex. Począwszy od wersji 17.2.0 wspieramy oficjalną pracę opisaną [Tutaj](https://developer.android.com/studio/build/multidex.html).

### Jak stosować Aspose.Words zamiast Android przez Java od 1.11 Naprzód

Poprzednio, singiel JAR z Aspose.Words zamiast Android przez Java zawierało 47 + tysiąc metod, które uczyniły starsze wersje nieco niepraktycznymi do stosowania w ogromnych zastosowaniach androida. Zaczynając od tego wydania, zaczęliśmy zmniejszać wielkość Aspose.Words zamiast Android przez Java Biblioteka. Naszym głównym problemem jest obecnie zmniejszenie liczby metod bez utraty funkcjonalności. Stale pracujemy nad poprawą jakości i użyteczności Aspose.Words zamiast Android przez Java.

### Aspose.Words zamiast Android przez Java Biblioteka podzielona na dwie części

Podzieliliśmy bibliotekę na dwa archiwa:

- aspose-words- 1.11- android- jdk15.jar: Pierwsza obejmuje publiczność. API oraz jego metody pomocnicze. Obecnie posiada metody 32395.
- aspose-words- 1.11- libs- android- jdk15.apk: Drugi zawiera słoiki, podstawowe klasy i zasoby. Obecnie posiada 18296 metod.

### Używanie Zakładaj słowa dla Android przez Java od 1.11

Do włączenia Aspose.Words zamiast Android przez Java w projekcie można zastosować jedną z następujących metod:

- Umieścić "asse- words- 1.11- android- jdk15.jar" w folderze "libs" Twojego projektu, a archiwum "asse- words- 1.11- libs- android- jdk15.apk" w folderze "assets". Wskaż, że będziesz używać AsposeWordsApplication jako podstawowego.

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

Aby zainicjować obciążenie pliku .apk w metodzie onCreate () i jeśli nie chcesz używać androida: name = "com.aspose.words.AsposeWordsApplication" in AndroidManifest.xml

**Działalność Java plik**

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

### Stosowanie Aspose.Words zamiast Android przez Java w Android Wnioski testowe

Do użycia Aspose.Words zamiast Android przez Java w projektach testowych można zastosować takie samo podejście:

- Indicate AspeWordsTestRunner in AndroidManifest.xml projektu testowego.

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

W IDE może być konieczne wskazanie AsposeWordsTestRunner w oknie konfiguracji w następujący sposób:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Lub inicjować obciążenie .apk metodą getTargetContext ().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Jak stosować Aspose.Words zamiast Android przez Java od 17.2.0 Naprzód

1. Pobierz najnowszą wersję [Aspose.Words zamiast Android Przez Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Kopiuj aspose- words- 18.3-android.via.java.jar do folderu * libs / *
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Instalacja Aspose.Words zamiast Android przez Java od Maven Repozytorium

1. Dodaj maven Repozytorium do twojego budynku. sadło
1. Dodaj 'Aspose.Words zamiast Android przez Java' JAR jako zależność
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