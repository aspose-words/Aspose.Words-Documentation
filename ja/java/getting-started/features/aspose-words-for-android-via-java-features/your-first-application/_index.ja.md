---
title: あなたの最初のアプリケーション Android お問い合わせ Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 最初のアプリケーション
linktitle: 最初のアプリケーション
description: "インストール Aspose.Words お問い合わせ Android お問い合わせ Javaお問い合わせ"
type: docs
weight: 30
url: /ja/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

この記事は、あなたが始めることのアイデアを与えます Aspose.Words お問い合わせ Android お問い合わせ Javaお問い合わせ 新しく設定する方法を実証します。 Android スクラッチからのプロジェクト、参照を Aspose.Words JAR DOCX形式のディスクに保存された新しいドキュメントを作成します。 この例では、 [Android スタジオ](https://developer.android.com/studio/index.html) 開発とアプリケーションは、 Android エミュレータ. はじめに Aspose.Words お問い合わせ Android お問い合わせ Javaこのステップバイステップのチュートリアルに従って、使用するアプリを作成してください Aspose.Words お問い合わせ Android お問い合わせ Java:::

1。 ダウンロードとダウンロード [Android スタジオ](https://developer.android.com/studio/index.html) あらゆる場所に取付けて下さい。
1。 実行する Android スタジオ。
1。 新規作成 Android アプリケーションプロジェクト。<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. プロジェクトのlibs/folderにaspose-words-17.5-android.via.java.jarをコピー<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1。 [プロジェクト]セクションを選択します(ファイルメニューから、[依存関係]タブをクリックします。
   1. 「+」ボタンをクリックし、ファイル依存オプションを選択します。
   1. 選択 Aspose.Words libs フォルダーからライブラリをクリックし、[OK] をクリックします。<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1。 必要に応じてプロジェクトをGradleファイルと同期させる<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1。 SDcardの特別許可にアクセスするには、追加する必要があります。 クリックしてください。 Androidマニフェスト.xml ファイルを選択し、XML ビューを選択します。 ファイルに次の行を追加します。 <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1。 アプリのコードセクションに戻り、次のインポートを追加します。<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
次に、onCreateメソッドのボディに次のコードを入力して、新しいドキュメントをゼロから作成します。 Aspose.Words,
テキストを入力し、DOCX 形式の SDCard に保存します。<br/>
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
{{< /highlight >}}<br/>
完全なコードはこのようになります。<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1。 再びアプリケーションを実行します。 今回は Aspose.Words コードはバックグラウンドで実行され、SDカードに保存されているドキュメントを生成します。<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1。 作成したドキュメントを表示するには、[ツール] メニューに移動し、選択します。 Android 選択して下さい Android デバイスモニター<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1。 デフォルトビューアを使用してドキュメントを開きます。 ほんの数行のコードを持つアプリで生成された出力はこのようになります。<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
