---
title: Java経由でAndroidのAspose.Wordsをインストールする
second_title: Aspose.WordsのためのJava
articleTitle: Java経由でAndroidのAspose.Wordsをインストールする
linktitle: Java経由でAndroidのAspose.Wordsをインストールする
description: "Javaを介してAndroidにAspose.Wordsをインストールします。"
type: docs
weight: 20
url: /ja/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

2017年以降、Javaを介したAndroidのAspose.WordsのバージョニングはJavaのAspose.Wordsに準拠しています。

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## インストール

以前は、AndroidviaJavaのAspose.Wordsは、JARファイル、デモ、およびAndroidviaJavaのAspose.Wordsのドキュメントを含む単一のZIPファイルとして配布されていました。

1. Aspose.Wordsより前のバージョンをJava1.11経由でAndroidに使用する場合は、Aspose.Words.Android.zipの任意のバージョンを選択したディレクトリに解凍するだけです。Aspose.Words.Android.zipのバージョンをAspose.Wordsより前のバージョンをJava1.11経由でAndroidに
1. アプリケーションのビルドパス構成を使用して、抽出されたJarファイルをアプリケーションに含めます。

バージョン1.11と1.12は、DEXファイル内のメソッドの数を制限するために、手動でJARとAPKの二つの部分に分割されました。 これらのバージョンでは、追加のクラスの正しいロードを開始するために独自のAPKローダーを提供しました。dexファイル。 バージョン17.2.0から、説明されている公式のワークフローをサポートします [ここに](https://developer.android.com/studio/build/multidex.html).

### 1.11からJavaを経由してAndroidにAspose.Wordsを使用する方法

以前は、Javaを介してAndroidのAspose.Wordsの単一のJARには47千以上のメソッドが含まれていたため、古いバージョンを巨大なandroidアプリケーションで使用するのは少し非実 このリリースから、Javaライブラリを介してAndroidのAspose.Wordsのサイズを縮小し始めました。 現在の私たちの主な関心事は、機能を失うことなくメソッドの数を減らすことです。 私たちはJavaを介してAndroidのAspose.Wordsの品質と使いやすさの向上に常に取り組んでいます。

### Javaライブラリを介してAndroidのAspose.Wordsは二つの部分に分かれています

私たちは図書館を次の二つのアーカイブに分けていました:

- aspose-words-1.11-android-jdk15.jar:最初のものにはpublicAPIとその補助メソッドが含まれています。 現在、それは32395メソッドを持っています。
- aspose-words-1.11-libs-android-jdk15.apk:第二のものには、サードパーティのjar、基本クラス、およびリソースが含まれています。 現在、それは18296メソッドを持っています。

### 1.11以降のJavaを介してAndroidのためのAspose単語を使用する

Javaを介してAndroidのAspose.Wordsをプロジェクトに含めるには、次のいずれかの方法を使用できます:

- プロジェクトのフォルダ"libs"に"aspose-words-1.11-android-jdk15.jar"を配置し、アーカイブ"aspose-words-1.11-libs-android-jdk15.apk"をフォルダ"assets"に配置します。 基本的なものとしてAsposeWordsApplicationを使用することを示します。

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

の負荷を開始する。onCreate()メソッド内のapkファイルで、android:name="comを使用したくない場合は、onCreate()メソッドを使用してください。アスポーズ言葉だAsposeWordsApplication"でAndroidManifest.xml

**アクティビティJavaファイル**

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

### AndroidテストアプリケーションでJavaを介してAndroidにAspose.Wordsを使用する

テストプロジェクトでJavaを介してAndroidにAspose.Wordsを使用するには、同じアプローチを適用できます:

- テストプロジェクトのAndroidManifest.xmlにAsposeWordsTestRunnerを指定します。

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

IDEでは、次のように構成ウィンドウでAsposeWordsTestRunnerを指定する必要がある場合があります:

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- またはの負荷を開始する。getTargetContext()メソッドを使用したapk。

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## 17.2.0からJavaを介してAndroidにAspose.Wordsを使用する方法

1. の最新バージョンをダウンロード [アスポーズWordsはAndroidのためにJavaを経由してAspose.言葉の意味-意味-意味-意味-意味-意味](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. Aspose-words-18.3-android.via.java.jarをプロジェクトの*libs/*フォルダにコピーします
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### MavenリポジトリからJava経由でAndroidのAspose.Wordsをインストールします

1. ビルドにmavenリポジトリを追加します。グラドル
1. 依存関係としてJava'JARを介してAndroidに'Aspose.Wordsを追加します
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
