---
title: C++でのフィールドの更新
second_title: C++の場合Aspose.Words
articleTitle: フィールドの更新
linktitle: フィールドの更新
description: "C++でフィールドを更新する方法について説明します。 プログラムで項目を更新するか、C++APIを使用して自動項目更新を使用します。"
type: docs
weight: 30
url: /ja/cpp/update-fields/
---

通常、Microsoft Wordに挿入されたフィールドには、すでに最新の値が含まれています。 たとえば、フィールドが数式またはページ番号の場合、ドキュメントの指定されたバージョンの正しい計算値が含まれます。 しかし、2つのドキュメントをマージしたり、データを入力したりするようなフィールドを持つドキュメントを生成または変更するアプリケーションがある場合、理想的には、ドキュメントが有用であるためにはすべてのフィールドを更新する必要があります。

## フィールドを更新する方法

ドキュメントが読み込まれると、Aspose.WordsはMicrosoft Wordの動作を模倣し、フィールドを自動的に更新するオプションがオフになります。 動作は次のように要約できます:

- ドキュメントを開いたり保存したりすると、フィールドはそのまま残ります
- ドキュメント内のすべてのフィールドを明示的に更新することができます（たとえば、`TOC`を再構築する必要がある場合）。
- PDFまたはXPSにレンダリングすると、ヘッダー/フッターのページ番号付けに関連するフィールドが更新されます
- mail mergeを実行すると、すべてのフィールドが自動的に更新されます

### プログラムによるフィールドの更新

文書全体のフィールドを明示的に更新するには、[UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/)メソッドを呼び出すだけです。 文書の一部に含まれるフィールドを更新するには、[Range](https://reference.aspose.com/words/cpp/aspose.words/range/)オブジェクトを取得し、[UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/)メソッドを呼び出します。 Aspose.Wordsでは、次のようなドキュメントツリー内の任意のノードに対して**Range**を取得できます[Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), など。 [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/)プロパティを使用します。[Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/)メソッドを呼び出すことで、単一のフィールドの結果を更新できます。

### レンダリング中のページ関連フィールドの自動更新

文書をPDFやXPSなどの固定ページ形式に変換すると、Aspose.Wordsは文書のヘッダー/フッターにあるページレイアウト関連のフィールド`PAGE`,`PAGEREF`を自動的に更新します。`PAGE`,`PAGE`,`PAGE`,`PAGE`,`PAGE`,`PAGE`,`PAGE`,`PAGE`,`PAGE`,`PAGE`,`PAGE`,`PAGE`,`PAGE`,`PAGE`,`PAGE`,{ この動作は、文書を印刷するときのMicrosoft Wordの動作を模倣しています。

ドキュメント内の他のすべてのフィールドを更新する場合は、ドキュメントをレンダリングする前に[UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/)を呼び出す必要があります。

次のコード例は、ドキュメントを表示する前にすべてのフィールドを更新する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Mail Merge中の自動フィールド更新

Mail mergeを実行すると、文書内のすべてのフィールドが自動的に更新されます。 これは、mail mergeがフィールド更新の場合であるためです。 プログラムはmail mergeフィールドに遭遇し、データソースから値を取得してフィールドに挿入することを含む結果を更新する必要があります。 ロジックはもちろん、文書/mail merge領域の終わりに達したが、マージするデータがまだある場合、領域を複製し、新しいフィールドセットを更新する必要があります。

## 保存する前にLastSavedTimeプロパティを更新します

ドキュメントを保存するときに、対応する組み込みドキュメントプロパティ[LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/)を更新するかどうかを[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/)プロパティを使用できます。

次のコード例は、このプロパティを更新する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


