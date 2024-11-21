---
title: フィールドの更新 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 更新フィールド
linktitle: 更新フィールド
description: "フィールドを更新する方法を学ぶ Javaお問い合わせ フィールドをプログラム的に更新するか、自動フィールド更新を使用する Java API"
type: docs
weight: 30
url: /ja/java/update-field/
timestamp: 2024-01-27-14-07-04
---

典型的には、フィールドを入力 Microsoft Word すでに最新の値を含む。 例えば、フィールドが式やページ番号の場合、指定されたバージョンのドキュメントの正しい計算値が格納されます。 しかし、2つの文書をマージしたり、データをポップアップしたりするなどのフィールドでドキュメントを生成したり変更したりするアプリケーションがある場合は、理想的にはすべてのフィールドがドキュメントに有用なものでなければなりません。

## フィールドの更新方法

文書が読み込まれるとき、 Aspose.Words 行動を模倣する Microsoft Word フィールドを自動的に更新するオプションがオフになります。 挙動は以下のようにまとめられます。

- フィールドがそのまま残っている文書を開く/保存するとき
- ドキュメントのすべてのフィールドを明示的に更新することができます。例えば、再構築 `TOC` 必要なとき
- 印刷/レンダリングをPDFにするか、 XPS ヘッダー/フッター内のページ番号に関するフィールドを更新
- 実行時に mail merge すべてのフィールドが自動的に更新されます

### フィールドの更新プログラム

ドキュメント全体でフィールドを明示的に更新するには、単に呼び出します [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) メソッド。 文書の一部に含まれているフィールドを更新するには、 [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) オブジェクトと呼び出し [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) メソッド。 インスタグラム Aspose.Words, あなたが得ることができる **Range** ドキュメントツリー内のどのノードでも、 [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), 等。使用して [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) プロパティ. 単一のフィールドの結果を呼び出して更新することができます [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) メソッド。

### レンダリング中のページ関連フィールドの自動更新

ドキュメントの変換を PDF や PDF などの固定ページ形式に実行する場合 XPS, それから Aspose.Words ページレイアウト関連フィールドを自動的に更新します `PAGE`, `PAGEREF` ドキュメントのヘッダ/フッターで見つかった。 この振る舞いは行動を模倣します Microsoft Word 文書を印刷するとき。

ドキュメント内の他のすべてのフィールドを更新したい場合は、呼び出しする必要があります [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) ドキュメントをレンダリングする前に。

次の例では、ドキュメントをレンダリングする前に、すべてのフィールドを更新する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### 自動フィールドの更新 Mail Merge

実行時に <span notrans="<span notrans=" mail merge"=""></span>????? ドキュメント内のすべてのフィールドが自動的に更新されます。 これは、 mail merge フィールドの更新の場合です。 プログラムが遭遇する mail merge フィールドと結果を更新する必要があります。これは、データソースから値をつかみ、フィールドに投入することを含みます。 ロジックは、もちろん複雑で、例えば文書の終端時/mail merge 地域は到達していますが、まだ合併するデータがまだあります。この領域は重複し、更新されたフィールドの新しいセットである必要があります。

## 汚い属性を持つフィールドを更新する

w:dirty は、ドキュメントが開いたときに指定したフィールドだけをリフレッシュするフィールドレベルの属性です。 ドキュメントが開いたら、このフィールドだけをリフレッシュするために、MS Word を指示します。 LoadOptions.setUpdateDirtyFields() プロパティを使用して、汚れた属性でフィールドを更新するかどうかを指定できます。 LoadOptions.setUpdateDirtyFields() の値がセットされるとき <span notrans="<span notrans=" *true*"=""></span>????? すべてのフィールド *true* バリュー `Field.IsDirty` または `FieldChar.IsDirty` ドキュメントの読み込みにプロパティが更新されます。

次のコードの例では、汚れた属性を持つフィールドを更新する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## 保存する前にLastSavedTimeプロパティを更新する

使うことができます。 [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) 組み込みのドキュメントプロパティを更新するかどうか [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) 文書を保存するとき。

次のコードの例では、このプロパティを更新する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
