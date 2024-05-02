---
title: Встановити Aspose.Words для Android Зареєструватися Java
second_title: Aspose.Words для Java
articleTitle: Встановити Aspose.Words для Android Зареєструватися Java
linktitle: Встановити Aspose.Words для Android Зареєструватися Java
description: "Встановлення Aspose.Words для Android Зареєструватися Javaй"
type: docs
weight: 20
url: /uk/java/install-aspose-words-for-android-via-java/
---

{{% alert color="primary" %}}

З 2017 версія версії Aspose.Words для Android Зареєструватися Java Відповідальність Aspose.Words для Javaй

[Javaдоля API Веб-сайт Go1.13.8](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## Монтаж

Попередньо, Aspose.Words для Android Зареєструватися Java був розподілений як єдиний ZIP-файл, який містив JAR файл, демо та документація Aspose.Words для Android Зареєструватися Javaй

1,1 км Якщо ви хочете використовувати будь-яку версію до Aspose.Words для Android Зареєструватися Java 1.11, вам просто потрібно заблокувати будь-яку версію Aspose.WordsйAndroid.zip в каталог вашого вибору.
1,1 км У тому числі вилучений файл Jar у вашому додатку, використовуючи настройку додатків Створити шлях.

Версія 1.11 і 1.12 були вручну розподілені на дві частини: JAR і APK для обмеження кількості методів у файлі DEX. У цих версіях ми забезпечили власний навантажувач APK, щоб ініціювати правильне завантаження додаткового файлу. Починаючи з версії 17.2.0 ми підтримуємо офіційний робочий процес, описаний [Головна](https://developer.android.com/studio/build/multidex.html)й

### Як використовувати Aspose.Words для Android Зареєструватися Java від 1.11 Onward

Попередньо, один JAR з Aspose.Words для Android Зареєструватися Java містять 47 + тисячі методів, які зробили старші версії трохи непрактично для використання у величезних андроїд додатках. Тепер від цього релізу ми почали зменшити розмір Aspose.Words для Android Зареєструватися Java Бібліотека. Наша велика турбота тепер полягає в тому, щоб зменшити кількість методів без втрати функціональності. Ми постійно працюємо над підвищенням якості та відповідальності Aspose.Words для Android Зареєструватися Javaй

### Aspose.Words для Android Зареєструватися Java Бібліотека дивилася на дві частини

Ми поділили бібліотеку на наступні два архіви:

- aspose-words-1.11-android-jdk15.jar: В першу чергу входить громадськість API і його допоміжні методи. В даний час він має 32395 методи.
- aspose-words-1.11-libs-android-jdk15.apk: Друга частина включає 3rd party банок, базові класи та ресурси. В даний час він має 18296 методи.

### Використання Aspose Words для Android Зареєструватися Java від 1.11

До послуг Aspose.Words для Android Зареєструватися Java в проект можна використовувати будь-які наступні методи:

- Для розміщення "азпое-словес-1.11-android-jdk15.jar" в папці "лібів" вашого проекту, а архів "азпое-словес-1.11-libs-android-jdk15.apk" в папку "assets". Вкажіть, що ви будете використовувати AsposeWordsApplication як базовий.

**AndroidEnglish, Українська, Français.**

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

Для ініціювання завантаження файла .apk в методі "Create() і якщо ви не хочете використовувати андроїд:name="com.aspose.words.AsposeWordsApplication" в AndroidEnglish, Українська, Français.

**Діяльність Java Головна**

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

### Використання Aspose.Words для Android Зареєструватися Java в Android Тестові програми

Для використання Aspose.Words для Android Зареєструватися Java в тестових проектах можна застосувати такий самий підхід:

- Індикатор AsposeWordsTestRunner в AndroidManifest.xml тестового проекту.

**AndroidEnglish, Українська, Français.**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

У IDE необхідно вказати AsposeWordsTestRunner у вікні конфігурації:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- Або ініціювати завантаження .apk за допомогою методу getTargetContext()

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## Як використовувати Aspose.Words для Android Зареєструватися Java від 17.2.0 Onward

1,1 км Завантажити найновішу версію [Aspose.Words для Android Зареєструватися Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Скопіювати фрази-18.3-андроїд.via.java.java.jar в проект *libs/*folder
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### Встановити Aspose.Words для Android Зареєструватися Java з Maven Репозиторій

1,1 км Додати maven репозиторій у Вашій будівлі. градлі
1,1 км ДодатиAspose.Words для Android Зареєструватися JavaР JAR як залежність
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