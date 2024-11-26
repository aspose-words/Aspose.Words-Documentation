---
title: ライセンスとサブスクリプション
second_title: Python via .NET用Aspose.Words
articleTitle: ライセンスとサブスクリプション
linktitle: ライセンスとサブスクリプション
description: "Aspose.Words for Python via .NET は、さまざまな購入プランを提供するか、ライセンスとサブスクリプション ポリシーを使用して評価用の無料トライアルと 30 日間の一時ライセンスを提供します。"
type: docs
weight: 40
url: /ja/python-net/licensing/
timestamp: 2024-01-31-14-23-37
---

システムをよりよく研究するために、できるだけ早くコードを詳しく調べたい場合があります。これを容易にするために、Aspose.Words ではさまざまな購入プランを提供したり、評価用の無料トライアルと 30 日間の一時ライセンスを提供したりできます。

{{% alert color="primary" %}}

当社の製品を評価し、適切にライセンスを取得し、購入する方法については、一般的なポリシーや慣例が多数あることに注意してください。これらは [購入ポリシーとよくある質問](https://purchase.aspose.com/policies/) セクションで見つけることができます。

{{% /alert %}}

## 無料トライアルまたは一時ライセンス

Aspose.Words は、開発者が購入前に試せる素晴らしいソフトウェアです。

### 無料トライアル

評価版は購入したものと同じです。試用版は、ライセンスを適用するコードを数行追加するだけでライセンスが付与されます。

指定されたライセンスのない Aspose.Words の試用版では、製品のすべての機能が提供されますが、ロードおよび保存時にドキュメントの先頭に評価用の透かしが挿入され、ドキュメントの最大サイズが数百段落に制限されます。

### 仮免許

試用版の制限なしで Aspose.Words をテストしたい場合は、30 日間の一時ライセンスをリクエストすることもできます。詳しくは[仮免許を取得する](https://purchase.aspose.com/temporary-license/)のページをご覧ください。

## 購入したライセンス

購入後、ライセンス ファイルまたはストリームを適用する必要があります。このセクションでは、これを行う方法のオプションについて説明し、いくつかの一般的な質問についても説明します。

{{% alert color="primary" %}}

ライセンスを設定する必要があります。

* アプリケーション ドメインごとに 1 回のみ

* 他の Aspose.Words クラスを使用する前に

{{% /alert %}}

{{% alert color="primary" %}}

価格情報は [価格情報](https://purchase.aspose.com/pricing/words/family/) ページでご覧いただけます。

{{% /alert %}}

### 購入したライセンスを保護する

ライセンスを購入した後、[購入したライセンスを保護する](https://purchase.aspose.com/orders/protecting-your-license-file) ページの情報をよく読んでライセンス ファイルを保護する必要があります。このページは、有料ライセンスをお持ちの場合にのみ表示されることに注意してください。

### ライセンス適用オプション

ライセンスはさまざまな場所から適用できます。

* 明示的なパス
* Python via .NET に対して Aspose.Words を呼び出す Python スクリプトが含まれるフォルダー
* ストリーム
* 従量制ライセンスとして - 新しいライセンス メカニズム

{{% alert color="primary" %}}

[set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) メソッドを使用してコンポーネントにライセンスを付与します。

[set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) を複数回呼び出すことは有害ではなく、プロセッサ時間を無駄にするだけです。

[set_metered_key](https://reference.aspose.com/words/python-net/aspose.words/metered/set_metered_key/#str_str) を複数回呼び出しても害はありませんが、プロセッサ時間を浪費するだけであり、消費量が不適切に蓄積される可能性があります。

{{% /alert %}}

#### ファイルまたはストリーム オブジェクトを使用してライセンスを適用する

アプリケーションを開発するときは、Aspose.Words クラスを使用する前にスタートアップ コードで [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) を呼び出します。

##### ファイルからライセンスをロードする

[set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) メソッドを使用すると、埋め込みリソースまたはアセンブリ フォルダーでライセンス ファイルを見つけて、さらに使用することができます。

次のコード例は、フォルダーからライセンスを初期化する方法を示しています。

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-file.py" >}}

##### `Stream` オブジェクトからライセンスをロードする

次のコード例は、別の [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) メソッドを使用してストリームからライセンスを初期化する方法を示しています。

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-license-from-stream.py" >}}

#### 従量制ライセンスを適用する

Aspose.Words を使用すると、開発者は従量制キーを適用できます。これは新しいライセンスメカニズムです。

新しいライセンス メカニズムは、既存のライセンス方式と併用されます。 API 機能の使用に基づいて請求されることを希望する顧客は、従量制ライセンスを使用できます。

このタイプのライセンスを取得するために必要な手順をすべて完了すると、ライセンス ファイルではなくキーを受け取ります。この従量制キーは、この目的のために特別に導入された [Metered](https://reference.aspose.com/words/python-net/aspose.words/metered/) クラスを使用して適用できます。

このライセンス メソッドが消費量を適切に蓄積し、それを当社に報告するために、**SetMeteredKey** メソッドを頻繁に呼び出さないでください。 Aspose.Words ライブラリをインスタンス化し、**SetMeteredKey** を 1 回呼び出してから、ライブラリをインスタンス化したままにして再利用するだけです。

次のコード例は、従量制の公開キーと秘密キーを設定する方法を示しています。

{{< gist "aspose-words-gists" "45c97d37bef13067c82e741b922a2d4f" "apply-metered-license.py" >}}

{{% alert color="primary" %}}

従量制ライセンスの正しい使用には、安定したインターネット接続が必要であることに注意してください。従量制メカニズムでは、正しい計算のためにサービスとの継続的な対話が必要です。詳細については、[従量制ライセンスに関するよくある質問](https://purchase.aspose.com/faqs/licensing/metered/) セクションを参照してください。

{{% /alert %}}

### ライセンスファイル名の変更

ライセンスファイル名は「Aspose.Words.Python.NET.lic」である必要はありません。好みに応じて名前を変更し、アプリケーションでライセンスを設定するときにその名前を使用できます。

### 「ライセンスファイル名が見つかりません」例外

ライセンスを購入してダウンロードすると、Aspose Web サイトではライセンス ファイルに *「Aspose.Words.Python.NET.lic」* という名前が付けられます。ブラウザを使用してライセンス ファイルをダウンロードします。この場合、一部のブラウザはライセンス ファイルを XML として認識し、それに .xml 拡張子を追加するため、コンピュータ上の完全なファイル名は *"Aspose.Words.Python.NET.lic.XML"* になります。

既知のファイル タイプの拡張子を非表示にするように Microsoft Windows が設定されている場合 (残念ながら、これがほとんどの Windows インストールのデフォルトです)、ライセンス ファイルは Windows エクスプローラーで *"Aspose.Words.Python.NET.lic"* として表示されます。おそらくこれが実際のファイル名であると考え、[set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) を呼び出して *"Aspose.Words.Python.NET.lic"* を渡しますが、そのようなファイルは存在しないため、例外が発生します。

この問題を解決するには、ファイルの名前を変更して、目に見えない .xml 拡張子を削除します。また、Microsoft Windows の「拡張機能を非表示」オプションを無効にすることをお勧めします。

## 複数の Aspose 製品の使用

アプリケーションで Aspose.Words や `Aspose.Cells` などの複数の Aspose 製品を使用する場合、役立つヒントがいくつかあります。

※Aspose 製品ごとにライセンスを個別に設定します。すべてのコンポーネントに対して 1 つのライセンス ファイル (たとえば、「Aspose.Total.lic」) がある場合でも、アプリケーションで使用する Aspose 製品ごとに [set_license](https://reference.aspose.com/words/python-net/aspose.words/license/set_license/) を個別に呼び出す必要があります。
* 完全修飾ライセンス クラス名を使用します。各 Aspose 製品には、独自の名前空間に **License** クラスがあります。たとえば、Aspose.Words には [aspose.words.License](https://reference.aspose.com/words/python-net/aspose.words/license/) クラスがあり、`Aspose.Cells` には **aspose.cells.ライセンス** クラスがあります。完全修飾クラス名を使用すると、どのライセンスがどの製品に適用されるかについての混乱を避けることができます。
