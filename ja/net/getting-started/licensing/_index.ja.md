---
title: ライセンスとサブスクリプション
second_title: .NET用Aspose.Words
articleTitle: ライセンスとサブスクリプション
linktitle: ライセンスとサブスクリプション
description: "Aspose.Words for .NET は、さまざまな購入プランを提供するか、C# のライセンスおよびサブスクリプション ポリシーを使用した評価用の無料トライアルと 30 日間の一時ライセンスを提供します。"
type: docs
weight: 55
url: /ja/net/licensing/
timestamp: 2024-10-24-11-44-28
---

システムをよりよく研究するために、できるだけ早くコードを詳しく調べたい場合があります。これを容易にするために、Aspose.Words ではさまざまな購入プランを提供したり、評価用の無料トライアルと 30 日間の一時ライセンスを提供したりできます。

{{% alert color="primary" %}}

当社の製品を評価し、適切にライセンスを取得し、購入する方法については、一般的なポリシーや慣例が多数あることに注意してください。これらは [購入ポリシーとよくある質問](https://purchase.aspose.com/policies/) セクションで見つけることができます。

{{% /alert %}}

## 無料トライアルまたは一時ライセンス

Aspose.Words は、開発者が購入前に試せる素晴らしいソフトウェアです。

### 無料トライアル

評価版は購入したものと同じです。[体験版](https://releases.aspose.com/words/) は、ライセンスを適用するコードを数行追加するだけでライセンスが付与されます。

指定されたライセンスのない Aspose.Words の試用版では、製品のすべての機能が提供されますが、ロードおよび保存時にドキュメントの先頭に評価用の透かしが挿入され、ドキュメントの最大サイズが数百段落に制限されます。

### 仮免許

試用版の制限なしで Aspose.Words をテストしたい場合は、30 日間の一時ライセンスをリクエストすることもできます。詳しくは[仮免許を取得する](https://purchase.aspose.com/temporary-license/)のページをご覧ください。

## 購入したライセンス

購入後、ライセンス ファイルを適用するか、ライセンス ファイルを埋め込みリソースとして含める必要があります。このセクションでは、これを行う方法のオプションについて説明し、いくつかの一般的な質問についても説明します。

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
※*Aspose.Words.dll*ファイルが入っているフォルダ
* `Aspose.Words.dll` を呼び出したアセンブリを含むフォルダー
* エントリ アセンブリ (`.exe`) が含まれるフォルダー
* アセンブリ内の埋め込みリソースは `Aspose.Words.dll` と呼ばれます
* 従量制ライセンスとして - 新しいライセンス メカニズム

アプリケーションで `Aspose.Words.dll` を参照すると、ライブラリは出力ディレクトリにコピーされます (そのエントリのプロパティの *Copy Local* が false に設定されている場合を除く)。多くの場合、ライセンスを設定する最も簡単な方法は、ライセンス ファイルを `Aspose.Words.dll` と同じフォルダーに配置し、パスを指定せずにファイル名だけを指定することです。

{{% alert color="primary" %}}

[SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/#setlicense) メソッドを使用してコンポーネントにライセンスを付与します。

**SetLicense** を複数回呼び出すことは有害ではなく、プロセッサ時間を無駄にするだけです。

[SetMeteredKey](https://reference.aspose.com/words/net/aspose.words/metered/setmeteredkey/) を複数回呼び出しても害はありませんが、プロセッサ時間を浪費するだけであり、消費量が不適切に蓄積される可能性があります。

{{% /alert %}}

#### ファイルまたはストリーム オブジェクトを使用してライセンスを適用する

アプリケーションを開発するときは、Aspose.Words クラスを使用する前にスタートアップ コードで **SetLicense** を呼び出します。

##### ファイルからライセンスをロードする

[SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) メソッドを使用すると、埋め込みリソースまたはアセンブリ フォルダーでライセンス ファイルを見つけて、さらに使用することができます。

次のコード例は、フォルダーからライセンスを初期化する方法を示しています。

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### ストリームオブジェクトからライセンスをロードする

次のコード例は、別の [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) メソッドを使用してストリームからライセンスを初期化する方法を示しています。

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### ライセンス ファイルを埋め込みリソースとして含める

ライセンスをアプリケーションにパッケージ化し、ライセンスが失われないようにするための優れた方法は、Aspose.Words を呼び出すアセンブリの 1 つに埋め込みリソースとしてライセンスを含めることです。ファイルを埋め込みリソースとして含めるには、次の手順に従います。

1. Visual Studio で、「**ファイル | 既存のアイテムを追加…**」メニューを使用して .lic ファイルをプロジェクトに組み込みます。
2. ソリューション エクスプローラーでファイルを選択し、プロパティ ウィンドウで「**埋め込みリソースへのアクションのビルド」**」を設定します。
3. コード内で、リソース ファイルの短縮名のみを渡す **SetLicense** を呼び出します。

#### 従量制ライセンスを適用する

Aspose.Words を使用すると、開発者は従量制キーを適用できます。これは新しいライセンスメカニズムです。

新しいライセンス メカニズムは、既存のライセンス方式と併用されます。 API 機能の使用に基づいて請求されることを希望する顧客は、従量制ライセンスを使用できます。

このタイプのライセンスを取得するために必要な手順をすべて完了すると、ライセンス ファイルではなくキーを受け取ります。この従量制キーは、この目的のために特別に導入された [Metered](https://reference.aspose.com/words/net/aspose.words/metered/) クラスを使用して適用できます。

このライセンス メソッドが消費量を適切に蓄積し、それを当社に報告するために、**SetMeteredKey** メソッドを頻繁に呼び出さないでください。 Aspose.Words ライブラリをインスタンス化し、**SetMeteredKey** を 1 回呼び出してから、ライブラリをインスタンス化したままにして再利用するだけです。

次のコード例は、限定された公開キーと秘密キーを設定する方法を示しています。

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

通常は、アプリケーションの起動時に従量制ライセンスを 1 回適用するだけで十分です。ただし、従量制ライセンス メカニズムが 24 時間にわたって Aspose サーバーと通信できない場合、Aspose.Words はライセンス モードを終了し、評価モードに切り替わります。このようなケースを回避するには、ライセンスのステータスを定期的に確認する必要があります。Aspose.Words が評価モードになった場合は、従量制ライセンスを再度適用してください。

{{% alert color="primary" %}}

従量制ライセンスの正しい使用には、安定したインターネット接続が必要であることに注意してください。従量制メカニズムでは、正しい計算のためにサービスとの継続的な対話が必要です。詳細については、[従量制ライセンスに関するよくある質問](https://purchase.aspose.com/faqs/licensing/metered/) セクションを参照してください。

{{% /alert %}}

### ライセンスファイル名の変更

ライセンスファイル名は「Aspose.Words.LIC」である必要はありません。好みに応じて名前を変更し、アプリケーションでライセンスを設定するときにその名前を使用できます。

### 「ライセンスファイル名が見つかりません」例外

ライセンスを購入してダウンロードすると、Aspose Web サイトではライセンス ファイルに *「Aspose.Words.LIC」* という名前が付けられます。ブラウザを使用してライセンス ファイルをダウンロードします。この場合、一部のブラウザはライセンス ファイルを XML として認識し、それに .xml 拡張子を追加するため、コンピュータ上の完全なファイル名は *"Aspose.Words.lic.XML"* になります。

既知のファイル タイプの拡張子を非表示にするように Microsoft Windows が設定されている場合 (残念ながら、これがほとんどの Windows インストールのデフォルトです)、ライセンス ファイルは Windows エクスプローラーで *"Aspose.Words.LIC"* として表示されます。おそらくこれが実際のファイル名であると考え、**SetLicense** を呼び出して *"Aspose.Words.LIC"* を渡しますが、そのようなファイルは存在しないため、例外が発生します。

この問題を解決するには、ファイルの名前を変更して、目に見えない .xml 拡張子を削除します。また、Microsoft Windows の「拡張機能を非表示」オプションを無効にすることをお勧めします。

## 複数の Aspose 製品の使用

アプリケーションで Aspose.Words や `Aspose.Cells` などの複数の Aspose 製品を使用する場合、役立つヒントがいくつかあります。

※Aspose 製品ごとにライセンスを個別に設定します。すべてのコンポーネントに対して 1 つのライセンス ファイル (たとえば、「Aspose.Total.lic」) がある場合でも、アプリケーションで使用する Aspose 製品ごとに **SetLicense** を個別に呼び出す必要があります。
* 完全修飾ライセンス クラス名を使用します。各 Aspose 製品には、独自の名前空間に **License** クラスがあります。たとえば、Aspose.Words には [Aspose.Words.License](https://reference.aspose.com/words/net/aspose.words/license/) があり、`Aspose.Cells` には `Aspose.Cells`.License クラスがあります。完全修飾クラス名を使用すると、どのライセンスがどの製品に適用されるかについての混乱を避けることができます。
