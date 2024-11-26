---
title: Инсталиране Aspose.Words вместо Android през Java
second_title: Aspose.Words вместо Java
articleTitle: Инсталиране Aspose.Words вместо Android през Java
linktitle: Инсталиране Aspose.Words вместо Android през Java
description: "Инсталиране Aspose.Words вместо Android през Java."
type: docs
weight: 20
url: /bg/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

От 2017 г. версията на Aspose.Words вместо Android през Java отговаря на изискванията Aspose.Words вместо Java

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Монтиране

Досега, Aspose.Words вместо Android през Java е бил разпространен като един ZIP файл, който съдържа JAR файл, демос и документация на Aspose.Words вместо Android през Java.

1. Ако искате да използвате някоя версия преди Aspose.Words вместо Android през Java 1.11, просто трябва да разкопчаете всяка версия на Aspose.Words.Android.zip в директория по ваш избор.
1. Включване на извлечения файл Jar във вашето приложение чрез конфигурацията Build Path за неговото приложение.

Версия 1.11 и 1.12 са ръчно разделени на две части: JAR и APK, за да ограничи броя на методите във файла DEX. В тези версии, ние осигурихме наш собствен APK товарач да започне правилното зареждане на допълнителни класове.dex файл. Започвайки от версия 17.2.0 ние подкрепяме официалния работен процес, описан [Ето](https://developer.android.com/studio/build/multidex.html).

### Как да използвате Aspose.Words вместо Android през Java от 1.11 Напред

Досега в "Единична" JAR на Aspose.Words вместо Android през Java съдържащи 47+ хиляди методи, които правят по-стари версии малко непрактично да се използва в огромни андроид приложения. Започвайки от това издание, започнахме да намаляваме размера на Aspose.Words вместо Android през Java библиотеката. Нашата основна грижа сега е да намалим броя на методите без загуба на функционалност. Ние постоянно работим върху подобряване на качеството и използваемостта на Aspose.Words вместо Android през Java.

### Aspose.Words вместо Android през Java Библиотеката разделена на две части

Разделихме библиотеката на два архива:

- aspace-words-1.11-android-jdk15. jar: Първата включва публичност. API и допълнителните му методи. В момента има 32395 метода.
- aspose-words-1.11-libs-android-jdk15.apk: Вторият включва три парти буркани, основни класове и ресурси. В момента има 18296 метода.

### Използване на думи за определяне Android през Java от 1.11

Да се включи Aspose.Words вместо Android през Java в проекта можете да използвате някой от следните методи:

- За да поставите на разположение думи-1.11-android-jdk15.jar год. в кутийката на вашия проект, както и архива позиционирам-думи-1.11-libs-android-jdk15.apk...в горнотилията. Посочете, че ще използвате AsposeWords Application като основен.

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

За да инициирате натоварване на .apk файл в метода на Create() и ако не искате да използвате андроид: име = .com.aspose.words.AssposeWordsAppliction по AndroidManifest.xml

**Дейност Java файл**

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

### Използване Aspose.Words вместо Android през Java в Android Приложения за изпитване

Използване Aspose.Words вместо Android през Java в проекти за изпитване може да се приложи същия подход:

- Посочете AspaceWordsTestRunner в AndroidМанифест.xml от тестовия проект.

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

В IDE може да е необходимо да се посочи AsposeWordsTestRunner в конфигурационния прозорец, както следва:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Или за стартиране на натоварването на .apk чрез метода getTargetContext().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Как да използвате Aspose.Words вместо Android през Java от 17.2.0 Напред

1. Изтегляне на най-новата версия на [Aspose.Words вместо Android през Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Копирайте ASpose-words-18.3-android.via.java.jar във вашия проект
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Инсталиране Aspose.Words вместо Android през Java от Maven Хранилище

1. Добавяне maven Хранилище в твоята сграда. сос
1. ДобавянеAspose.Words вместо Android през Java' JAR като зависимост
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
