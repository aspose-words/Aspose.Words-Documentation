---
title: "安装 Aspose.Words (单位:千美元) Android 通过 Java"
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: "安装 Aspose.Words (单位:千美元) Android 通过 Java"
linktitle: "安装 Aspose.Words (单位:千美元) Android 通过 Java"
description: "安装 Aspose.Words (单位:千美元) Android 通过 Java。 。 。 。"
type: docs
weight: 20
url: /zh/java/install-aspose-words-for-android-via-java/
---

{{% alert color="primary" %}}

自2017年起 版本为 Aspose.Words (单位:千美元) Android 通过 Java 遵守 Aspose.Words (单位:千美元) Java。 。 。 。

[aspose - words - 20.2 -android.via.java.jar 互联网档案馆的存檔,存档日期 2014-09-02. 互联网档案馆的存檔,存档日期2013-12-12](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## 安装

先前, Aspose.Words (单位:千美元) Android 通过 Java 以一个包含 JAR 文件、演示和文档 Aspose.Words (单位:千美元) Android 通过 Java。 。 。 。

一、导 言 如果您想要使用任何版本之前 Aspose.Words (单位:千美元) Android 通过 Java 1.11,你只需要解开任何版本的 Aspose.Words。 。 。 。Android.zip 输入您选择的目录 。
一、导 言 使用构建路径配置将提取的 Jar 文件包含在您的应用程序中。

1.11和1.12版本手工分为两部分: JAR 和APK,以限制DEX文件中的方法数量. 在这些版本中,我们提供了自己的APK加载器来启动附加类.dex文件的正确加载. 从17.2.0版本开始,我们支持描述的正式工作流程 [这里](https://developer.android.com/studio/build/multidex.html)。 。 。 。

### 如何使用 Aspose.Words (单位:千美元) Android 通过 Java 从1.11起

以前,一个单身 JAR 页:1 Aspose.Words (单位:千美元) Android 通过 Java 包含47+千种方法,使得较旧的版本有点不切实际,无法用于巨大的机器人应用. 从这个发行开始,我们开始缩小 Aspose.Words (单位:千美元) Android 通过 Java 图书馆。 我们现在的主要关切是减少方法数量而不失去功能。 我们一直在努力提高质量和可用性。 Aspose.Words (单位:千美元) Android 通过 Java。 。 。 。

### Aspose.Words (单位:千美元) Android 通过 Java 图书馆分为两个部分

我们把图书馆分为以下两个档案:

- Apose -words -1.11 -and roid -jdk15.jar: -是的 -Apose -words -1.11 -android -jdk15.jar: 第一个包括公众 API 及其辅助方法。 目前,它有32395种方法。
- aspose-words-1.11 - libs-android-jdk15.apk: - 单词: 第二个包括第3个党罐、基本班级和资源。 目前,它有18296种方法。

### 使用隐藏单词 Android 通过 Java 自1.11以来

包括 Aspose.Words (单位:千美元) Android 通过 Java 在项目中,您可以使用下列任何方法:

- 将"aspose-words-1.11-android-jdk15.jar"和"aspose-words-1.11-android-jdk15.apk"的档案放在项目"资产"的文件夹中。 指定您将使用 AposeWordsApplication 作为基本应用 。

**Android说明.xml**

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

在 onCreate () 方法中启动. apk 文件的负载, 如果您不想使用 Android: name=" com. aspose. words. Aspose WordsApplication" 中 Android说明.xml

**活动 Java 文件**

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

### 使用 Aspose.Words (单位:千美元) Android 通过 Java 输入 Android 测试应用程序

用于 Aspose.Words (单位:千美元) Android 通过 Java 在试验项目中,可以采用同样的方法:

- 请在 Android试验项目公告.xml.

**Android说明.xml**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

在 IDE 中,可能需要在配置窗口中显示 Apose Words TestRunner 如下:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- 或使用getTargetContext()方法启动负载.apk。

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## 如何使用 Aspose.Words (单位:千美元) Android 通过 Java 从17.2.0开始

一、导 言 下载最新版本 [Aspose.Words (单位:千美元) Android 通过 Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. 复制Apose-words-18.3-android.via.java.jar到您的项目*libs/*文件夹
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### 安装 Aspose.Words (单位:千美元) Android 通过 Java 从 Maven 仓库

一、导 言 添加 maven 存储到您的构建中 。 年级
一、导 言 添加"Aspose.Words (单位:千美元) Android 通过 Java ' JAR 作为依附关系
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