---
title: 通过Java为Android安装Aspose.Words
second_title: Aspose.Words为Java
articleTitle: 通过Java为Android安装Aspose.Words
linktitle: 通过Java为Android安装Aspose.Words
description: "通过Java为Android安装Aspose.Words。"
type: docs
weight: 20
url: /zh/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

自2017年以来，通过Java对Android的Aspose.Words版本控制符合Java的Aspose.Words。

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## 安装工程

以前，Aspose.WordsforAndroidviaJava作为单个ZIP文件分发，其中包含JAR文件，演示和Aspose.WordsforAndroidviaJava的文档。

1. 如果您想通过Java1.11为Android使用Aspose.Words之前的任何版本，则只需将Aspose.Words.Android.zip的任何版本解压缩到您选择的目录中。
1. 使用应用程序的生成路径配置将提取的Jar文件包含在应用程序中。

版本1.11和1.12手动分为两部分：JAR和APK，以限制DEX文件中的方法数量。 在这些版本中，我们提供了自己的APK加载器来启动附加类的正确加载。dex文件。 从版本17.2.0开始，我们支持描述的官方工作流程 [这里](https://developer.android.com/studio/build/multidex.html).

### 如何从1.11开始通过Java对Android使用Aspose.Words

以前，Aspose.Words for Android via Java 的一个 JAR 包含 47,000 多种方法，这使得旧版本在大型 Android 应用程序中使用起来有些不切实际。现在从此版本开始，我们已开始减少 Aspose.Words for Android via Java 库的大小。我们现在的主要关注点是在不损失功能的情况下减少方法数量。我们一直在努力提高 Aspose.Words for Android via Java 的质量和可用性。

### Aspose.WordsforAndroidviaJava库分为两部分

我们把图书馆分为以下两个档案:

- aspose-words-1.11-android-jdk15.jar：第一个包括publicAPI及其辅助方法。 目前，它有32395种方法。
- aspose-words-1.11-libs-android-jdk15.apk：第二个包括第三方jar，基本类和资源。 目前，它有18296种方法。

### 从1.11起通过Java对Android使用Aspose词

要通过Java将Aspose.WordsforAndroid包含到项目中，您可以使用以下任何方法:

- 将"aspose-words-1.11-android-jdk15.jar"放在项目的文件夹"libs"中，并将"aspose-words-1.11-libs-android-jdk15.apk"存档到文件夹"资产"中。 表明你将使用AsposeWordsApplication作为基本的。

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

以启动负载。apk文件在onCreate()方法，如果你不想使用android:name="com.阿斯波斯。话。AsposeWordsApplication"在AndroidManifest.xml

**活动Java文件**

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

### 在Android测试应用程序中通过Java对Android使用Aspose.Words

要在测试项目中通过Java对Android使用Aspose.Words，可以应用相同的方法:

- 在测试项目的AndroidManifest.xml中指明AsposeWordsTestRunner。

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

在IDE中，可能需要在配置窗口中指示AsposeWordsTestRunner，如下所示:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- 或者启动负载。apk使用getTargetContext()方法。

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## 如何从17.2.0开始通过Java将Aspose.Words用于Android

1. 下载最新版本的 [阿斯波斯。Words对于Android通过Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. 将aspose-words-18.3-android.via.java.jar复制到项目的*libs/*文件夹中
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### 从Maven存储库通过Java为Android安装Aspose.Words

1. 将maven存储库添加到构建中。格雷德尔
1. 通过Java'JAR为Android添加'Aspose.Words作为依赖项
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
