---
title: ライセンスとサブスクリプション
second_title: Aspose.WordsのためのJava
articleTitle: ライセンスとサブスクリプション
linktitle: ライセンスとサブスクリプション
description: "Aspose.WordsforJavaは、購入のための異なるプランを提供するか、ライセンスおよびサブスクリプションポリシーを使用して評価のための無料試用版と30日間の仮"
type: docs
weight: 60
url: /ja/java/licensing/
timestamp: 2024-01-31-14-23-37
---

場合によっては、システムをよりよく研究するために、できるだけ早くコードに飛び込みたいと思うことがあります。 これを容易にするために、Aspose.Wordsは購入のための異なる計画を提供するか、または評価のための無料試用版と30日間の一時的なライセンスを提供します。

{{% alert color="primary" %}}

当社の製品の評価、適切なライセンス供与、および購入方法については、多くの一般的な方針および慣行があることに注意してください。 あなたはそれらを見つけることができます [購入ポリシーとFAQ](https://purchase.aspose.com/policies/) セクション。

{{% /alert %}}

## 無料試用版または一時ライセンス

Aspose.Wordsは、開発者が購入する前に試すことができる信じられないほどのソフトウェアです。 Javaの場合はAspose.Words、Androidの場合はAspose.WordsをJava経由で簡単にダウンロード/インストールできます [からMaven](https://releases.aspose.com/words/java/) 評価のために。

### 無料体験版

試用版は、ライセンスを適用するために数行のコードを追加すると、単にライセンスされます–

指定されたライセンスなしでJavaを介してJavaのAspose.WordsとAndroidのAspose.Wordsの試用版は、完全な製品機能を提供しますが、ロードと保存時に文書の上部に評価用透かしを挿入し、最大文書サイズを数百段落に制限します。

### 臨時免許

試用版の制限なしにJavaを介してAspose.WordsをJava、Aspose.WordsをAndroidでテストしたい場合は、30日間の一時ライセンスを要求することもできます。 詳細については、以下を参照してください。 [一時的なライセンスを取得する](https://purchase.aspose.com/temporary-license/) ページ。

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
* *Aspose.Words JAR*ファイルを含むフォルダ
* JARに埋め込まれたリソースは*Aspose.Words JAR*と呼ばれます
* 従量制ライセンスとして-新しいライセンスメカニズム

多くの場合、ライセンスを設定する最も簡単な方法は、ライセンスファイルを*Aspose.Words JAR*と同じフォルダに配置し、パスなしでファイル名だけを指定するこ

{{% alert color="primary" %}}

コンポーネントのライセンスを取得するには、[SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream)メソッドを使用します。

**SetLicense**を複数回呼び出すことは有害ではなく、プロセッサ時間を無駄にするだけです。

[SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String)を複数回呼び出すことも有害ではありませんが、プロセッサ時間を無駄にし、消費を不適切に蓄積する可能性があります。

{{% /alert %}}

#### ファイルまたはストリームオブジェクトを使用したライセンスの適用

{{% alert color="primary" %}}

Aspose.Wordsクラスを使用する前に、スタートアップコードで**SetLicense**を呼び出します。

{{% /alert %}}

クラスライブラリを開発するときは、Aspose.Wordsを使用するクラスの静的コンストラクタから**SetLicense**を呼び出すことができます。 静的コンストラクタは、Aspose.Wordsライセンスが正しくインストールされていることを確認するために、クラスをインスタンス化する前に実行されます。

##### ファイルからライセンスをロードする

[SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String)メソッドを使用すると、アプリケーションのJARsを含む埋め込みリソースまたはフォルダ内のライセンスファイルを検索して、さらに使用できます。

次のコード例は、フォルダーからライセンスを初期化する方法を示しています:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### `Stream`オブジェクトからライセンスをロードする

次のコード例は、別の[SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream)メソッドを使用してストリームからライセンスを初期化する方法を示しています:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### ライセンスファイルを埋め込みリソースとして含める

ライセンスをアプリケーションにパッケージ化し、それが失われないようにするためのきちんとした方法は、組み込みリソースとして含めることです。 LICファイルをプロジェクトのリソースフォルダにコピーするだけです。

プロジェクトを再構築するには、を埋め込む必要があります。アプリケーションへのlicファイル。jarファイル。 その後、次のコードを使用してライセンスを申請できます:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### 従量制ライセンスを適用する

Aspose.Wordsは、開発者が従量制課金キーを適用できるようにします。 これは新しいライセンスメカニズムです。

新しいライセンスメカニズムは、既存のライセンス方法と一緒に使用されます。 API機能の使用に基づいて請求されたいお客様は、従量制ライセンスを使用できます。

このタイプのライセンスを取得するために必要なすべての手順を完了すると、ライセンスファイルではなくキーが届きます。 この計量キーは、この目的のために特別に導入された[Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/)クラスを使用して適用できます。

このライセンスメソッドが適切に消費を蓄積し、それを私たちに報告するように、**SetMeteredKey**メソッドを頻繁に呼び出さないでください。 Aspose.Wordsライブラリをインスタンス化し、**SetMeteredKey**を一度呼び出してから、ライブラリをインスタンス化したままにして再利用します。

次のコード例は、従量制公開キーと秘密キーを設定する方法を示しています:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

計量されたメカニズムは正しい計算のために私たちのサービスとの絶え間ない相互作用を必要とするので、計量されたライセンスを正しく使用するためには安定したインターネット接続が必要であることに注意してください。

詳細については、以下を参照してください。 [従量制ライセンスFAQ](https://purchase.aspose.com/faqs/licensing/metered/) セクション。

{{% /alert %}}

### ライセンスファイル名の変更

ライセンスファイル名は"Aspose.Words.LIC"である必要はありません。 お好みに合わせて名前を変更し、アプリケーションでライセンスを設定するときにその名前を使用できます。

### 「ライセンスファイル名が見つかりません」例外

ライセンスを購入してダウンロードすると、Aspose webサイトはライセンスファイル*"Aspose.Words.LIC"*に名前を付けます。 ブラウザを使用してライセンスファイルをダウンロードします。 この場合、一部のブラウザはライセンスファイルをXMLとして認識し、追加します。xml拡張子を持つため、コンピュータ上の完全なファイル名は*"Aspose.Words.lic.XML"*になります。

Microsoft Windows が既知のファイル タイプの拡張子を非表示にするように構成されている場合 (残念ながら、ほとんどの Windows インストールではこれがデフォルトです)、ライセンス ファイルは Windows Explorer で *"Aspose.Words. LIC"* として表示されます。おそらく、これが実際のファイル名であると考えて、*"Aspose.Words.LIC"* を渡して **SetLicense** を呼び出しますが、そのようなファイルは存在しないため、例外が発生します。

この問題を解決するには、ファイルの名前を変更して目に見えないものを削除します。xml拡張子。 また、Microsoft Windowsの"拡張機能を非表示"オプションを無効にすることをお勧めします。

## 複数のAspose製品の使用

Aspose.Wordsや`Aspose.Cells`など、アプリケーションで複数のAspose製品を使用する場合、以下にいくつかの便利なヒントを示します:

* Aspose製品ごとにライセンスを個別に設定します。 すべてのコンポーネントに対して単一のライセンスファイル(たとえば「Aspose.Total.lic」)がある場合でも、アプリケーションで使用するAspose製品ごとに**SetLicense**を個別に呼び出
* 完全修飾ライセンスクラス名を使用します。 各Aspose製品には、独自の名前空間に`License`クラスがあります。 たとえば、Aspose.Wordsには**com.aspose.words.License**があり、`Aspose.Cells`にはcomがあります。アスポーズ細胞だライセンスクラス。 完全修飾クラス名を使用すると、どのライセンスがどの製品に適用されるかについての混乱を避けることができます。
