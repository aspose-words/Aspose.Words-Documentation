---
title: Nainstalovat Aspose.Words místo Android přes Java
second_title: Aspose.Words místo Java
articleTitle: Nainstalovat Aspose.Words místo Android přes Java
linktitle: Nainstalovat Aspose.Words místo Android přes Java
description: "Instalace Aspose.Words místo Android přes Java."
type: docs
weight: 20
url: /cs/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Od roku 2017 znění Aspose.Words místo Android přes Java splňuje Aspose.Words místo Java

[aspose- slova-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Instalace

V minulých dílech... Aspose.Words místo Android přes Java byla distribuována jako jediný ZIP soubor, který obsahoval JAR soubor, dema a dokumentace Aspose.Words místo Android přes Java.

1. Pokud chcete použít jakoukoliv verzi před Aspose.Words místo Android přes Java 1.11, stačí rozepnout jakoukoli verzi Aspose.Words.Android.Zip do adresáře dle vašeho výběru.
1. Zahrňte do aplikace extrahovaný soubor Jar pomocí konfigurace Build Path pro jeho aplikaci.

Verze 1.11 a 1.12 byly ručně rozděleny do dvou částí: JAR a APK s cílem omezit počet metod v souboru DEX. V těchto verzích jsme poskytli vlastní APK nakladač k zahájení správného načítání dalšího souboru tříd.dex. Od verze 17.2.0 podporujeme oficiální pracovní postupy popsané [Tady](https://developer.android.com/studio/build/multidex.html).

### Jak se používá Aspose.Words místo Android přes Java od 1.11 Onward

Minule jste viděli... JAR z Aspose.Words místo Android přes Java obsažené 47+ tisíce metod, které učinily starší verze trochu nepraktické pro použití v obrovských android aplikací. Od této verze jsme začali snižovat velikost Aspose.Words místo Android přes Java Knihovna. Naším hlavním zájmem je nyní snížit počet metod bez ztráty funkčnosti. Neustále pracujeme na zlepšování kvality a použitelnosti Aspose.Words místo Android přes Java.

### Aspose.Words místo Android přes Java Knihovna rozdělena do dvou částí

Rozdělili jsme knihovnu na dva archivy:

- aspose-words-1.11-android-jdk15.jar: První zahrnuje veřejnost. API a jeho pomocné metody. V současné době má 32395 metod.
- aspose-words-1.11.-libs-android-jdk15.apk: Druhá obsahuje třetí sklenice, základní třídy a zdroje. V současné době má 18296 metod.

### Použití aspose slov pro Android přes Java od 1.11

Včetně Aspose.Words místo Android přes Java do projektu můžete použít některou z následujících metod:

- Chcete-li umístit slova-1.11-android-jdk15.jar]ve složce?liby vašeho projektu, a archiv aspos-words-1.11-libs-android-jdk15.apk do složky?adsets? Uveďte, že budete používat AsposeWordsApplication jako základní.

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

Chcete-li spustit zatížení souboru .apk v metodě onCreate() a pokud nechcete použít android:name = ~com.aposposose.words.AsposeWordsApplication díry AndroidManifest.xml

**Činnost Java soubor**

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

### Použití Aspose.Words místo Android přes Java v Android Zkušební aplikace

K použití Aspose.Words místo Android přes Java ve zkušebních projektech lze použít stejný přístup:

- Uveďte AsposeWordsTestRunner in AndroidManifest.xml testovacího projektu.

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

V IDE může být nutné uvést AsposeWordsTestRunner v konfiguračním okně takto:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Nebo spustit zatížení .apku metodou getTargetContext().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Jak se používá Aspose.Words místo Android přes Java od 17.2.0 Vpřed

1. Stáhnout nejnovější verzi [Aspose.Words Místo Android Přes Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Kopírovat aspose-words (18.3-android.via.java.jar do vašeho projektu** libs/*folder
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Nainstalovat Aspose.Words místo Android přes Java od Maven Repozitář

1. Přidat maven Repozitář do tvé budovy. gradle
1. Přidat 'Aspose.Words místo Android přes Java' JAR jako závislost
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
