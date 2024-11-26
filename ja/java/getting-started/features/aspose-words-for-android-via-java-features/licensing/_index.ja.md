---
title: ライセンス
second_title: Aspose.WordsのためのJava
articleTitle: ライセンス
linktitle: ライセンス
description: "Javaを介してAndroidのAspose.Wordsのライセンスを取得します。"
type: docs
weight: 60
url: /ja/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

場合によっては、システムをよりよく研究するために、できるだけ早くコードに飛び込みたいと思うことがあります。 これを容易にするために、Aspose.Wordsは購入のための異なる計画を提供するか、または評価のための無料試用版と30日間の一時的なライセンスを提供します。

{{% alert color="primary" %}}

当社の製品の評価、適切なライセンス供与、および購入方法については、多くの一般的な方針および慣行があることに注意してください。 あなたはそれらを見つけることができます [購入ポリシーとFAQ](https://purchase.aspose.com/policies/) セクション。

{{% /alert %}}

## 無料試用版または一時ライセンス

Aspose.Wordsは、開発者が購入する前に試すことができる信じられないほどのソフトウェアです。 Javaの場合はAspose.Words、Androidの場合はAspose.WordsをJava経由で簡単にダウンロード/インストールできます [ダウンロードページから](https://releases.aspose.com/words/androidjava/) 評価のために。

試用版は、ライセンスを適用するために数行のコードを追加すると、単にライセンスされます–

{{% alert color="primary" %}}

Aspose.WordsforAndroidの無料トライアルまたは一時的なライセンスの詳細については、Javaonを介して確認してください [ライセンスとサブスクリプションのページ](/words/java/licensing/).

{{% /alert %}}

## 購入したライセンス

購入後、ライセンスファイルを適用するか、ライセンスファイルを埋め込みリソースとして含める必要があります。 このセクションでは、これをどのように行うかのオプションについて説明し、いくつかの一般的な質問にもコメントします。

{{% alert color="primary" %}}

ライセンスは、製品名、ライセンスされた開発者の数、サブスクリプションの有効期限などの詳細を含むプレーンテキストXMLファイルです。

ファイルはデジタル署名されているため、ファイルを変更しないでください。 ファイルに余分な改行を不注意に追加しても、ファイルは無効になります。

{{% /alert %}}

{{% alert color="primary" %}}

ライセンスを設定する必要があります:

* アプリケーションドメインごとに一度だけ
* 他のAspose.Wordsクラスを使用する前に

{{% /alert %}}

{{% alert color="primary" %}}

あなたは上の価格情報を見つけることができます [価格情報](https://purchase.aspose.com/pricing/words/family/) ページ。

{{% /alert %}}

### 購入したライセンスの保護

ライセンスを購入した後は、ページの情報を注意深く読む必要があります [購入したライセンスの保護](https://purchase.aspose.com/orders/protecting-your-license-file) ライセンスファイルを保護するため。 このページは、有料ライセンスをお持ちの場合にのみ表示できます。

### ライセンス適用オプション

ライセンスはさまざまな場所から適用できます:

* 明示的なパス
* 埋め込みリソース
* 従量制ライセンスとして-新しいライセンスメカニズム

#### ライセンスファイルの読み込み

Aspose.WordsでAndroidをJava経由で使用すると、ライセンスは次のようになります [リソースとして埋め込まれている](/words/java/licensing/)、またはストリームからロードされます:

1. ライセンスファイルを**/mnt/sdcard/**の任意の場所に配置します。
1. ファイルを参照するストリームを作成します。
1. ストリーム(ライセンスファイルを含む)を`SetLicense`メソッドに渡します。

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

埋め込みリソースからライセンスを適用する。 Androidパッケージファイルから名前でリソースとしてライセンスにアクセスするには:

1. ライセンスファイルをリソースとしてアプリケーションの**res/raw**フォルダに追加します。
   ライセンスファイルは**res/raw**フォルダに表示されます。
1. 次のコードサンプルを使用して、リソースからライセンスにアクセス/ロードします。

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### 従量制ライセンスを適用する

Aspose.Wordsは、開発者が従量制課金キーを適用できるようにします。 これは新しいライセンスメカニズムです。 新しいライセンスメカニズムは、既存のライセンス方法と一緒に使用されます。 API機能の使用量に基づいて請求されたいお客様は、従量制ライセンスを使用できます。

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

ライセンスファイル名は'Aspose.Wordsである必要はありません。Android.Java.lic'。 名前を好きな名前に変更し、`License.SetLicense`を呼び出すときにその名前を使用できます。

### 例外-ライセンスファイル名が見つかりません

購入したライセンスをダウンロードすると、ライセンスファイルの名前はデフォルトで**Aspose.Words.Android.Java.lic**になります。 ライセンスファイルはブラウザからダウンロードされ、一部のブラウザではライセンスファイルをXMLとして認識し、aを追加します。名前へのxml拡張子。 ダウンロードしたファイルは**Aspose.Words.Android.Java.lic.XML**になります。

Microsoft Windows が既知のファイル タイプの拡張子を非表示にするように構成されている場合 (残念ながら、ほとんどの Windows インストールではこれがデフォルトです)、ライセンス ファイルは Windows Explorer で **Aspose.Words.Android.Java.lic** としてリストされます。これは予想されるファイル名のように見えます。`License.SetLicense` を呼び出して 'Aspose.Words.Android.Java.lic' を渡すと、そのようなファイルは存在しないため例外が表示されます。

この問題を解決するには、ファイルの名前を変更して目に見えないものを削除します。xml拡張子。 Microsoft Windowsの"拡張機能を非表示"オプションを無効にすることをお勧めします。

## 複数のAspose製品の使用

Aspose.Wordsや`Aspose.Cells`など、アプリケーションで複数のAspose製品を使用する場合は、以下のヒントを参考にしてください。

- Aspose製品ごとにライセンスを個別に設定します。
  たとえば'Aspose.Totalのように、すべてのコンポーネントに対して単一のライセンスファイルがある場合であっても。Android.Java.Lic'を使用する場合でも、Aspose製品ごとに`License.SetLicense`メソッドを個別に呼び出す必要があります。
- 完全修飾ライセンスクラス名を使用します。
  各Aspose製品には、その名前空間に`License`クラスがあります。 たとえば、Aspose.Wordsにはcomがあります。アスポーズ言葉だライセンスと`Aspose.Cells`にはcomがあります。アスポーズ細胞だライセンスクラス。 Fullyqualifiedクラス名を使用すると、どのライセンスがどの製品に適用されるかについての混乱を避けることができます。
