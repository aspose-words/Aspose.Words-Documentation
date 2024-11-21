---
title: ライセンス
second_title: Aspose.Words お問い合わせ Java
articleTitle: ライセンス
linktitle: ライセンス
description: "ライセンス Aspose.Words お問い合わせ Android お問い合わせ Javaお問い合わせ"
type: docs
weight: 60
url: /ja/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

時々、システムをより良く勉強するために、できるだけ速くコードに飛び込みたい。 これを簡単にするために、 Aspose.Words 購入または無料トライアルと30日間の暫定ライセンスを付与するためのさまざまなプランを提供しています。

{{% alert color="primary" %}}

当社の製品を評価し、適切にライセンスし、購入する方法をガイドする一般的なポリシーと慣行の数があります。 あなたはそれらを見つけることができる [購買方針・FAQ](https://purchase.aspose.com/policies/) セクション。

{{% /alert %}}

## 無料トライアルまたは仮ライセンス

Aspose.Words 開発者が購入する前に試すことができます信じられないほどのソフトウェアです。 簡単にダウンロード/インストールできます Aspose.Words お問い合わせ Java そして、 Aspose.Words お問い合わせ Android お問い合わせ Java [ダウンロードページから](https://releases.aspose.com/words/androidjava/) 評価のため。

評価版は、購入したものと同じです。ライセンスを適用するコードの数行を追加すると、試用版がライセンスされます。

{{% alert color="primary" %}}

無料トライアルまたは仮ライセンスの詳細については、こちらをご覧ください。 Aspose.Words お問い合わせ Android お問い合わせ Java お問い合わせ [ライセンスとサブスクリプション](/words/ja/java/licensing/)お問い合わせ

{{% /alert %}}

## ライセンスの購入

購入後、ライセンスファイルを適用するか、ライセンスファイルを埋め込まれたリソースに含める必要があります。 このセクションでは、この方法の選択肢と一般的な質問に関するコメントについて説明します。

{{% alert color="primary" %}}

ライセンスは、製品名、ライセンスされた開発者数、サブスクリプション有効期限などの詳細は、XML のテキストファイルです。

ファイルがデジタルで署名されているので、ファイルを変更しないでください。 余計な行の改行の追加がファイルに切れても無効になります。

{{% /alert %}}

{{% alert color="primary" %}}

ライセンスを設定する必要があります。

* ※申請ドメイン1回のみ
* ※その他のご利用前に Aspose.Words クラス

{{% /alert %}}

{{% alert color="primary" %}}

価格設定情報を見つける [価格情報](https://purchase.aspose.com/pricing/words/family/) サイトマップ

{{% /alert %}}

### 購入したライセンスを保護する

ライセンス購入後、ページの情報をよく読む必要があります。 [購入したライセンスを保護する](https://purchase.aspose.com/orders/protecting-your-license-file) ライセンスファイルを保護します。 有料のライセンスをお持ちの方は、こちらのページをご覧ください。

### ライセンス適用オプション

ライセンスは、さまざまな場所から適用できます。

* 明示的なパス
* 必須 埋め込まれた資源
* 必須 メーターライセンスとして - 新しいライセンスメカニズム

#### ライセンスファイルを読み込む

インスタグラム Aspose.Words お問い合わせ Android お問い合わせ Java, ライセンスは [ライセンスとサブスクリプション](/words/ja/java/licensing/), ストリームから読み込まれる:

1。 ライセンスファイルを任意の場所に置く **/mnt/sd カード/**お問い合わせ
1。 ファイルを参照するストリームを作成します。
1。 ストリームを渡す(ライセンスファイルを含む) `SetLicense` メソッド。

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

組み込みリソースからライセンスを適用します。 ライセンスをリソースとしてアクセスするには、 Android パッケージファイル:

1。 ライセンスファイルをアプリケーションにリソースとして追加 **res/raw(再描画)** フォルダ。
   ライセンスファイルは、 **res/raw(再描画)** フォルダ。
1。 以下のコードサンプルでリソースからライセンスにアクセス/ロードします。

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### メーターで計られた免許証を適用して下さい

Aspose.Words 開発者がメーターキーを適用できるようにします。 新しいライセンス機構です。 既存のライセンス方法とともに、新しいライセンスメカニズムが使用されます。 ご利用者様の利用状況に基づいてご請求したい方 API 特徴はメーターで計られたライセンスを使用することができます。

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### ライセンスファイル名の変更

ライセンスファイル名は 'Aspose.Wordsお問い合わせAndroidお問い合わせJava.lic' 。 好きな名前に名前を変更して、呼び出し時にその名前を使うことができます。 `License.SetLicense`お問い合わせ

### 例外 - ライセンスファイル名が見つかりません

購入したライセンスをダウンロードすると、ライセンスファイルが名前付けられます。 **Aspose.Wordsお問い合わせAndroidお問い合わせJavaログイン** デフォルトで。 お使いのブラウザと一部のブラウザでは、ライセンスファイルをXMLとして認識し、.xml拡張子を名前に付けます。 ダウンロードしたファイルは **Aspose.Wordsお問い合わせAndroidお問い合わせJava.lic.XMLの**お問い合わせ

いつか Microsoft Windows 既知のファイルタイプの拡張子を非表示にするように設定されています(残念ながら、これはデフォルトでほとんどの Windows インストール)、ライセンスファイルは、 **Aspose.Wordsお問い合わせAndroidお問い合わせJavaログイン** お問い合わせ Windows エクスプローラー 想定したファイル名のように見えます。 お電話の場合 `License.SetLicense` ' を渡して下さいAspose.Wordsお問い合わせAndroidお問い合わせJava.lic' は、そのようなファイルがないため、例外と表示されます。

問題を解決するには、ファイルの名前を変更して、見えない .xml 拡張子を削除します。 "hide extensions" オプションを無効にすることをお勧めします。 Microsoft Windowsお問い合わせ

## 複数のAsposeプロダクトを使用して

アプリケーションで複数のAspose製品を使用する場合、例えば Aspose.Words そして、 `Aspose.Cells`, いくつかの便利なヒントがあります。

- 各Aspose製品のライセンスを別々に設定します。
  すべてのコンポーネントに単一のライセンスファイルがある場合でも、例えば 'Aspose. 合計。Androidお問い合わせJava.lic' は、まだ呼び出す必要があります。 `License.SetLicense` Aspose製品ごとに個別に方法。
- 十分に資格のあるライセンスクラス名を使用してください。
  詳しくはこちら Aspose製品には `License` 名前空間のクラス。 例えば、 Aspose.Words com.aspose.words を持っています。 ライセンスとライセンス `Aspose.Cells` com.aspose.cells を持っています。 ライセンスクラス 完全に修飾されたクラス名を使用すると、どのライセンスがどの製品に適用されているかについての混乱を避けることができます。
