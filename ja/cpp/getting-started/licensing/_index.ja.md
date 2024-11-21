---
title: ライセンスとサブスクリプション
second_title: C++の場合Aspose.Words
articleTitle: ライセンスとサブスクリプション
linktitle: ライセンスとサブスクリプション
description: "Aspose.WordsFor С++は、購入のためのさまざまなプランを提供するか、ライセンスとサブスクリプションポリシーを使用して評価のための無料試用版と30日間の一時的なライセンスを提供しています。"
type: docs
weight: 60
url: /ja/cpp/licensing/
timestamp: 2024-10-24-11-44-28
---

場合によっては、システムをよりよく研究するために、できるだけ早くコードに飛び込みたいと思うことがあります。 これを容易にするために、Aspose.Wordsは購入のための異なる計画を提供するか、または評価のための無料試用版と30日間の一時的なライセンスを提供します。

{{% alert color="primary" %}}

当社の製品の評価、適切なライセンス供与、および購入方法については、多くの一般的な方針および慣行があることに注意してください。 あなたはそれらを見つけることができます [購入方針とよくある質問](https://purchase.aspose.com/policies/) セクション。

{{% /alert %}}

## 無料試用版または一時ライセンス

Aspose.Wordsは、開発者が購入する前に試すことができる信じられないほどのソフトウェアです。

### 無料体験版

評価版は購入したものと同じです- [体験版](https://releases.aspose.com/words/) ライセンスを適用するために数行のコードを追加すると、単にライセンスされます。

指定されたライセンスのないAspose.Wordsの試用版は、完全な製品機能を提供しますが、ロードと保存時に文書の上部に評価用の透かしを挿入し、最大文書サイ

### 臨時免許

試用版の制限なしでAspose.Wordsをテストする場合は、30日間の一時ライセンスを要求することもできます。 詳細については、以下を参照してください。 [一時的なライセンスを取得する](https://purchase.aspose.com/temporary-license/) ページ。

## 購入したライセンス

購入後、ライセンスファイルを適用するか、ライセンスファイルを埋め込みリソースとして含める必要があります。 このセクションでは、これをどのように行うかのオプションについて説明し、いくつかの一般的な質問にもコメントします。

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
* `Aspose.Words_\*.dll`ファイルを含むフォルダ
* `Aspose.Words_\*.dll`を呼び出したアセンブリを含むフォルダー
* エントリアセンブリを含むフォルダ(your*.exe*)
* アセンブリ内の埋め込みリソースは`Aspose.Words_\*.dll`と呼ばれます

多くの場合、ライセンスを設定する最も簡単な方法は、ライセンスファイルを`Aspose.Words_\*.dll`と同じフォルダに配置し、パスなしでファイル名だけを指定するこ

{{% alert color="primary" %}}

コンポーネントのライセンスを取得するには、[SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/)メソッドを使用します。

**SetLicense**を複数回呼び出すことは有害ではなく、プロセッサ時間を無駄にするだけです。

{{% /alert %}}

#### ファイルまたはストリームオブジェクトを使用したライセンスの適用

アプリケーションを開発するときは、Aspose.Wordsクラスを使用する前に起動コードで**SetLicense**を呼び出します。

##### ファイルからライセンスをロードする

[SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/)メソッドを使用すると、埋め込みリソースまたはアセンブリフォルダーでライセンスファイルを検索して、さらに使用できます。

次のコード例は、フォルダーからライセンスを初期化する方法を示しています:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### Streamオブジェクトからライセンスをロードする

次のコード例は、別の[SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/)メソッドを使用してストリームからライセンスを初期化する方法を示しています:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### ライセンスファイルを埋め込みリソースとして含める

ライセンスをアプリケーションにパッケージ化し、それが失われないようにするためのきちんとした方法は、組み込みリソースとして含めることです。 リソースの埋め込みと使用方法は、ターゲットプラットフォームによって異なります。

##### Windows

以下に示すように、ライセンスをリソースとして追加したとします。

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

上のリソースファイルを操作する方法について読むことができます [リソースファイルの操作](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) ページ。

{{% /alert %}}

次のコード例は、[SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/)メソッドを使用して埋め込みリソースからライセンスを初期化する方法を示しています:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

Linuxのリソースを実行可能ファイルに埋め込むのと同様の方法があります。

{{% alert color="primary" %}}

詳細については、以下を参照してください [GCCを使用して実行可能ファイルにリソースを埋め込む](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

次のコードコード例は、[SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/)メソッドを使用して埋め込みリソースからライセンスを初期化する方法を示しています:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### ライセンスファイル名の変更

ライセンスファイル名は"Aspose.Words.LIC"である必要はありません。 お好みに合わせて名前を変更し、アプリケーションでライセンスを設定するときにその名前を使用できます。

### 「ライセンスファイル名が見つかりません」例外

ライセンスを購入してダウンロードすると、Aspose webサイトはライセンスファイル*"Aspose.Words.LIC"*に名前を付けます。 ブラウザを使用してライセンスファイルをダウンロードします。 この場合、一部のブラウザはライセンスファイルをXMLとして認識し、追加します。xml拡張子を持つため、コンピュータ上の完全なファイル名は*"Aspose.Words.lic.XML"*になります。

Microsoft Windows が既知のファイル タイプの拡張子を非表示にするように構成されている場合 (残念ながら、ほとんどの Windows インストールではこれがデフォルトです)、ライセンス ファイルは Windows Explorer で *"Aspose.Words. LIC"* として表示されます。おそらく、これが実際のファイル名であると考えて、*"Aspose.Words.LIC"* を渡して **SetLicense** を呼び出しますが、そのようなファイルは存在しないため、例外が発生します。

この問題を解決するには、ファイルの名前を変更して目に見えないものを削除します。xml拡張子。 また、Microsoft Windowsの"拡張機能を非表示"オプションを無効にすることをお勧めします。

## 複数のAspose製品の使用

Aspose.Wordsや`Aspose.Cells`など、アプリケーションで複数のAspose製品を使用する場合、以下にいくつかの便利なヒントを示します:

* Aspose製品ごとにライセンスを個別に設定します。 すべてのコンポーネントに対して単一のライセンスファイル(たとえば「Aspose.Total.lic」)がある場合でも、アプリケーションで使用するAspose製品ごとに**SetLicense**を個別に呼び出
* 完全修飾ライセンスクラス名を使用します。 各Aspose製品には、独自の名前空間に**License**クラスがあります。 たとえば、Aspose.Wordsには[Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/)があり、`Aspose.Cells`には`Aspose.Cells`があります。ライセンスクラス。 完全修飾クラス名を使用すると、どのライセンスがどの製品に適用されるかについての混乱を避けることができます。
