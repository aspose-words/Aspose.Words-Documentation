---
title: Устанавливать Aspose.Words для Android через Java
second_title: Aspose.Words для Java
articleTitle: Устанавливать Aspose.Words для Android через Java
linktitle: Устанавливать Aspose.Words для Android через Java
description: "Установка Aspose.Words для Android через Java."
type: docs
weight: 20
url: /ru/java/install-aspose-words-for-android-via-java/
---

{{% alert color="primary" %}}

С 2017 года Версия для Aspose.Words для Android через Java соблюдать Aspose.Words для Java

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Установка

Раньше, Aspose.Words для Android через Java распространялся как единый ZIP-файл, содержащий JAR файл, демо и документация Aspose.Words для Android через Java.

1. Если вы хотите использовать любую версию раньше Aspose.Words для Android через Java 1.11, вам просто нужно удалить любую версию Aspose.Words.Android.zip в каталог по вашему выбору.
1. Включите извлеченный файл Jar в приложение, используя конфигурацию Build Path для его применения.

Версии 1.11 и 1.12 были разделены вручную на две части: JAR и APK для ограничения количества методов в файле DEX. В этих версиях мы предоставили наш собственный загрузчик APK, чтобы инициировать правильную загрузку дополнительного файла class.dex. Начиная с версии 17.2.0 мы поддерживаем описанный официальный рабочий процесс. [здесь](https://developer.android.com/studio/build/multidex.html).

### Как использовать Aspose.Words для Android через Java 1.11 Вперед

Ранее один JAR из Aspose.Words для Android через Java Он содержал более 47 тысяч методов, которые сделали старые версии немного непрактичными для использования в огромных приложениях для Android. Теперь, начиная с этого выпуска, мы начали уменьшать размер Aspose.Words для Android через Java Библиотека. Наша главная задача сейчас - сократить количество методов без потери функциональности. Мы постоянно работаем над улучшением качества и удобства использования Aspose.Words для Android через Java.

### Aspose.Words для Android через Java Библиотека разделена на две части

Мы разделили библиотеку на два архива:

- aspose-words-1.11-android-jdk15.jar: Первая включает в себя публичные API и его вспомогательных методов. В настоящее время она насчитывает 32395 методов.
- aspose-words-1.11-libs-android-jdk15.apk: Второй включает в себя 3-е партийные банки, основные классы и ресурсы. В настоящее время существует 18296 методов.

### Использование слов Aspose для Android через Java с 1.11

Включать Aspose.Words для Android через Java В проекте вы можете использовать любой из следующих методов:

- Поместить "aspose-words-1.11-android-jdk15.jar" в папку "libs" вашего проекта, а архив "aspose-words-1.11-libs-android-jdk15.apk" в папку "assets". Укажите, что вы собираетесь использовать AsposeWordsApplication в качестве основного.

**AndroidПроявление.xml**

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

Инициировать загрузку файла .apk в методе onCreate() и если вы не хотите использовать android:name="com.aspose.words.AsposeWordsApplication" AndroidПроявление.xml

**Деятельность Java файл**

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

### Использовать Aspose.Words для Android через Java в Android Тестовые применения

Использовать Aspose.Words для Android через Java В тестовых проектах может применяться такой же подход:

- Указать AsposeWordsTestRunner в AndroidManifest.xml тестового проекта.

**AndroidПроявление.xml**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

В IDE может потребоваться указать AsposeWordsTestRunner в окне конфигурации следующим образом:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Или инициировать загрузку .apk с помощью метода getTargetContext().

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Как использовать Aspose.Words для Android через Java 17.2.0 Вперед

1. Скачать последнюю версию [Aspose.Words для Android через Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1.Скопируйте слова-составы-18.3-android.via.java.jar в папку *libs/* вашего проекта
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Устанавливать Aspose.Words для Android через Java из Maven Репозиторий

1. Добавить maven Репозиторий в вашей сборке. град
1. ДобавитьAspose.Words для Android через Java" JAR Как зависимость
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