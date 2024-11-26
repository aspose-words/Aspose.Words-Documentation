---
title: Установить Aspose.Words для Android через Java
second_title: Aspose.Words для Java
articleTitle: Установить Aspose.Words для Android через Java
linktitle: Установить Aspose.Words для Android через Java
description: "Установка Aspose.Words для Android через Java."
type: docs
weight: 20
url: /ru/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

С 2017 года версии Aspose.Words для Android через Java соответствуют Aspose.Words для Java.

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Установка

Ранее Aspose.Words для Android через Java распространялся в виде одного файла ZIP, который содержал файл JAR, демонстрации и документацию по Aspose.Words для Android через Java.

1. Если вы хотите использовать любую версию до Aspose.Words для Android по Java 1.11, вам просто нужно распаковать любую версию Aspose.Words.Android.zip в каталог по вашему выбору.
1. Включите извлеченный Jar-файл в свое приложение, используя конфигурацию пути сборки для этого приложения.

Версии 1.11 и 1.12 были вручную разделены на две части: JAR и APK, чтобы ограничить количество методов в файле DEX. В этих версиях мы предоставили наш собственный загрузчик APK, чтобы инициировать правильную загрузку дополнительного файла classes.dex. Начиная с версии 17.2.0, мы поддерживаем официальный рабочий процесс, описанный выше. [здесь](https://developer.android.com/studio/build/multidex.html).

### Как использовать Aspose.Words для Android, Java и 1.11 и далее

Ранее один JAR из Aspose.Words для Android через Java содержал более 47 тысяч методов, что делало старые версии немного непрактичными для использования в огромных приложениях для Android. Начиная с этого выпуска, мы начали уменьшать размер Aspose.Words для Android с помощью библиотеки Java. Сейчас нашей главной задачей является сокращение количества методов без потери функциональности. Мы постоянно работаем над улучшением качества и удобства использования Aspose.Words для Android через Java.

### Aspose.Words для Android через Java Библиотеку, разделенную на две части

Мы разделили библиотеку на следующие два архива:

- aspose-words-1.11-android-jdk15.jar: Первый включает в себя общедоступный API и его вспомогательные методы. В настоящее время в нем 32395 методов.
- aspose-words-1.11-libs-android-jdk15.apk: Второй включает в себя сторонние jar-файлы, базовые классы и ресурсы. В настоящее время в нем содержится 18296 методов.

### Использование одинаковых слов от Android до Java, начиная с 1.11

Чтобы включить Aspose.Words для Android через Java в проект, вы можете использовать любой из следующих методов:

- Поместите "aspose-words-1.11-android-jdk15.jar" в папку "libs" вашего проекта, а архив "aspose-words-1.11-libs-android-jdk15.apk" - в папку "assets". Укажите, что вы собираетесь использовать AsposeWordsApplication в качестве основного.

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

Чтобы инициировать загрузку файла .apk методом onCreate() и если вы не хотите использовать android:name="com.aspose.words.AsposeWordsApplication" в AndroidManifest.xml

**Файл действия Java**

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

### Использование Aspose.Words для Android через Java в Android тестовых приложениях

Чтобы использовать Aspose.Words для Android через Java в тестовых проектах, можно применить тот же подход:

- Укажите AsposeWordsTestRunner в AndroidManifest.xml тестового проекта.

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

В поле IDE может потребоваться указать AsposeWordsTestRunner в окне конфигурации следующим образом:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Или инициировать загрузку файла .apk с помощью метода getTargetContext().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Как использовать Aspose.Words для Android, Java, 17.2.0 и далее

1. Загрузите последнюю версию [Aspose.Words для Android через Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Скопируйте aspose-words-18.3-android.via.java.jar в папку вашего проекта *libs/*
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Установить Aspose.Words для Android через Java из Maven репозитория

1. Добавьте репозиторий maven в свой build.gradle
1. Добавьте 'Aspose.Words для Android через Java' JAR в качестве зависимости
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
