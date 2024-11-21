---
title: インストール Aspose.Words お問い合わせ Android お問い合わせ Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: インストール Aspose.Words お問い合わせ Android お問い合わせ Java
linktitle: インストール Aspose.Words お問い合わせ Android お問い合わせ Java
description: "インストール Aspose.Words お問い合わせ Android お問い合わせ Javaお問い合わせ"
type: docs
weight: 20
url: /ja/java/install-aspose-words-for-android-via-java/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

2017年10月30日 バージョン Aspose.Words お問い合わせ Android お問い合わせ Java お問い合わせ Aspose.Words お問い合わせ Javaお問い合わせ

[aspose-words-20.2-android.via.java.jar](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.2/aspose-words-20.2-android.via.java.jar)

{{% /alert %}}

## 導入事例

以前は、 Aspose.Words お問い合わせ Android お問い合わせ Java 単一のZIPファイルとして配布されました。 JAR ファイル、デモ、ドキュメント Aspose.Words お問い合わせ Android お問い合わせ Javaお問い合わせ

1。 以前のバージョンを使用したい場合 Aspose.Words お問い合わせ Android お問い合わせ Java 1.11、あなたはちょうど任意のバージョンの解凍する必要があります Aspose.Wordsお問い合わせAndroid.zip を選択したディレクトリに
1。 アプリケーションに抽出されたJarファイルをビルドパスの設定を使用して、アプリケーションに含めます。

バージョン1.11と1.12は手動で2つの部分に分けられました。 JAR DEXファイル内のメソッドの数を制限するためにAPK. これらのバージョンでは、追加のクラスの正しい読み込みを開始するために、独自のAPK loader を提供しました。 バージョン17.2.0以降、公式のワークフローをサポート [詳しくはこちら](https://developer.android.com/studio/build/multidex.html)お問い合わせ

### 使用方法 Aspose.Words お問い合わせ Android お問い合わせ Java 1.11以降

以前、シングル JAR インフォメーション Aspose.Words お問い合わせ Android お問い合わせ Java 巨大なAndroidアプリケーションで使用するために、古いバージョンを少し非現実的にした47 +千のメソッドが含まれています。 このリリースから始まり、サイズを小さくしはじめました。 Aspose.Words お問い合わせ Android お問い合わせ Java ライブラリ。 当社の大きな懸念は、機能性を損なうことなく方法の数を減らすことです。 私たちは、常に品質と使いやすさの向上に取り組んでいます。 Aspose.Words お問い合わせ Android お問い合わせ Javaお問い合わせ

### Aspose.Words お問い合わせ Android お問い合わせ Java 図書館は2つの部品に分けました

ライブラリを次の2つのアーカイブに分割しました。

- aspose-words-1.11-android-jdk15.jar: 最初の1つはパブリックを含んでいます API そして補助方法。 現在は32395の3メソッドがあります。
- aspose-words-1.11-libs-android-jdk15.apk: 第2弾には、第3回パーティジャー、基本クラス、リソースが含まれます。 現在、18296のメソッドがあります。

### Aspose ワードの使用 Android お問い合わせ Java から 1.11

お問い合わせ Aspose.Words お問い合わせ Android お問い合わせ Java 以下のいずれかの方法で使用できるプロジェクトに:

- プロジェクトのフォルダ「libs」に「aspose-words-1.11-android-jdk15.jar」を配置し、アーカイブ「aspose-words-1.11-libs-android-jdk15.apk」をフォルダ「assets」に置きます。 AsposeWordsApplicationを基本として使用しようとしていることを示す。

**Androidマニフェスト.xml**

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

onCreate() メソッドの .apk ファイルの読み込みを開始し、android:name="com.aspose.words.AsposeWordsApplication" を使用したくない場合は Androidマニフェスト.xml

**活動内容 Java ファイル**

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

### 使用方法 Aspose.Words お問い合わせ Android お問い合わせ Java お問い合わせ Android 試験アプリケーション

ご利用にあたって Aspose.Words お問い合わせ Android お問い合わせ Java テストプロジェクトでは、同じアプローチを適用することができます。

- AsposeWordsTestRunner の指示 AndroidテストプロジェクトのManifest.xml。

**Androidマニフェスト.xml**

{{< highlight csharp >}}
...
...
<instrumentation
    android:name="com.aspose.words.AsposeWordsTestRunner"    
    android:targetPackage="com.aspose.releaseapp" />
...
...
{{< /highlight >}}

IDE では、設定ウィンドウの AsposeWordsTestRunner を以下のように表示する必要があります。

![install-aspose-words-for-android-via-java-1](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-1.png)

- または getTargetContext() メソッドを使用して .apk の読み込みを開始します。

{{< highlight csharp >}}
@Override
public void onStart() {
    new AsposeWordsApplication().loadLibs(getTargetContext());
 // <-- Pass getTargetContext() because aspose-words-1.11-libs-android-jdk15.apk is in the main application's asset folder
    super.onStart();
}
{{< /highlight >}}

## 使用方法 Aspose.Words お問い合わせ Android お問い合わせ Java 17.2.0以降

1。 最新のバージョンをダウンロード [Aspose.Words お問い合わせ Android お問い合わせ Java](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/)
1. プロジェクトの*libs/*folderにaspose-words-18.3-android.via.java.jarをコピー
![install-aspose-words-for-android-via-java-2](/words/java/install-aspose-words-for-android-via-java/install-aspose-words-for-android-via-java-2.jpg)

### インストール Aspose.Words お問い合わせ Android お問い合わせ Java から Maven リポジトリ

1。 追加する maven リポジトリをビルドします。 グラドル
1。 追加 'Aspose.Words お問い合わせ Android お問い合わせ Javaお問い合わせ JAR 依存症として
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
