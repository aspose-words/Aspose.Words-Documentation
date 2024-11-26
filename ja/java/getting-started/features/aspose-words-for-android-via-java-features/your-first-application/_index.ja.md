---
title: Javaを介してAndroidの最初のアプリケーション
second_title: Aspose.WordsのためのJava
articleTitle: あなたの最初のアプリケーション
linktitle: あなたの最初のアプリケーション
description: "Javaを介してAndroidにAspose.Wordsをインストールします。"
type: docs
weight: 30
url: /ja/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

この記事では、Javaを介してAndroidのAspose.Wordsを開始するアイデアを提供します。 新しいAndroidプロジェクトを最初からセットアップし、Aspose.WordsJARへの参照を追加し、DOCX形式でディスクに保存される新しい文書を作成する方法を示します。 この例では、 [Androidスタジオ](https://developer.android.com/studio/index.html) 開発のために、アプリケーションはAndroidエミュレータ上で実行されます。 Javaを介してAndroidのAspose.Wordsを開始するには、このステップバイステップのチュートリアルに従って、Javaを介してAndroidのAspose.Wordsを使用するアプリを作成してください:

1. ダウンロードと [Androidスタジオ](https://developer.android.com/studio/index.html) そしてそれを任意の場所にインストールします。
1. Androidスタジオを実行します。
1. 新しいAndroidアプリケーションプロジェクトを作成します。<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. プロジェクトのlibs/フォルダにaspose-words-17.5-android.via.java.jarをコピーします<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. [プロジェクト]セクションを選択します([ファイル]メニューから[依存関係]タブをクリックします。
   1. "+"ボタンをクリックし、[ファイルの依存関係]オプションを選択します。
   1. LibsフォルダからAspose.Wordsライブラリを選択し、OKをクリックします。<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. 必要に応じて、プロジェクトをGradleファイルと同期します<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. SDcardにアクセスするには、特別な権限を追加する必要があります。 AndroidManifest.xmlファイルをクリックし、XMLビューを選択します。 ファイルに次の行を追加します <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. アプリのコードセクションに戻り、次のインポートを追加します:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
次に、onCreateメソッドの本文に次のコードを挿入して、Aspose.Wordsを使用して最初から新しいドキュメントを作成します,
いくつかのテキストを挿入し、DOCX形式でSDCardに保存します。<br>
{{< highlight csharp >}}
try
{
   Document doc = new Document();
   DocumentBuilder builder = new DocumentBuilder(doc);
   builder.writeln("Hello World!");
   String sdCardPath = Environment.getExternalStorageDirectory().getPath() + File.separator;
   doc.save(sdCardPath + "Document Out.docx");
}
catch (Exception e)
{
   e.printStackTrace();
}
{{< /highlight >}}<br>
完全なコードは次のようになります:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. 次に、アプリケーションを再度実行します。 今回はAspose.Wordsコードがバックグラウンドで実行され、SDcardに保存される文書が生成されます。<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. 作成されたドキュメントを表示するには、ツールメニューに移動し、Androidを選択し、Androidデバイスモニタを選択します<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. 既定のビューアを使用してドキュメントを開きます。 わずか数行のコードでアプリによって生成された出力は次のようになります:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
