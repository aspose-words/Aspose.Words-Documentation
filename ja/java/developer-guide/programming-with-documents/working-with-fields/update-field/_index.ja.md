---
title: Javaのフィールドを更新する
second_title: Aspose.WordsのためのJava
articleTitle: フィールドの更新
linktitle: フィールドの更新
description: "Javaのフィールドを更新する方法を学習します。 プログラムでフィールドを更新するか、JavaAPIを使用して自動フィールド更新を使用します"
type: docs
weight: 30
url: /ja/java/update-field/
timestamp: 2024-01-27-14-07-04
---

通常、Microsoft Wordに挿入されたフィールドには、すでに最新の値が含まれています。 たとえば、フィールドが数式またはページ番号の場合、ドキュメントの指定されたバージョンの正しい計算値が含まれます。 しかし、2つのドキュメントをマージしたり、データを入力したりするようなフィールドを持つドキュメントを生成または変更するアプリケーションがある場合、理想的には、ドキュメントが有用であるためにはすべてのフィールドを更新する必要があります。

## フィールドを更新する方法

ドキュメントが読み込まれると、Aspose.WordsはMicrosoft Wordの動作を模倣し、フィールドを自動的に更新するオプションがオフになります。 動作は次のように要約できます:

- ドキュメントを開いたり保存したりすると、フィールドはそのまま残ります
- 文書内のすべてのフィールドを明示的に更新することができます(たとえば、必要に応じて`TOC`を再構築するなど)。
- PDFまたはXPSに印刷/レンダリングすると、ヘッダー/フッターのページ番号付けに関連するフィールドが更新されます
- Mail Mergeを実行すると、すべてのフィールドが自動的に更新されます

### プログラムによるフィールドの更新

文書全体のフィールドを明示的に更新するには、[UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields)メソッドを呼び出すだけです。 文書の一部に含まれるフィールドを更新するには、[Range](https://reference.aspose.com/words/java/com.aspose.words/range/)オブジェクトを取得し、[UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields)メソッドを呼び出します。 Aspose.Wordsでは、次のようなドキュメントツリー内の任意のノードに対して**Range**を取得できます[Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), など。 [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange)プロパティを使用します。 [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update)メソッドを呼び出すことで、単一のフィールドの結果を更新できます。

### レンダリング中のページ関連フィールドの自動更新

文書をPDFやXPSなどの固定ページ形式に変換すると、Aspose.Wordsは文書のヘッダー/フッターにあるページレイアウト関連フィールド`PAGE`、`PAGEREF`を自動的に更新します。 この動作は、文書を印刷するときのMicrosoft Wordの動作を模倣しています。

ドキュメント内の他のすべてのフィールドを更新する場合は、ドキュメントをレンダリングする前に[UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields)を呼び出す必要があります。

次の例は、ドキュメントを表示する前にすべてのフィールドを更新する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Mail Merge中の自動フィールド更新

Mail mergeを実行すると、文書内のすべてのフィールドが自動的に更新されます。 これは、Mail Mergeがフィールド更新の場合であるためです。 プログラムはMail Mergeフィールドに遭遇し、データソースから値を取得してフィールドに挿入することを含む結果を更新する必要があります。 論理は、もちろん、例えば、文書/mail merge領域の終わりに達したが、マージされるデータがまだある場合、領域を複製し、新しいフィールドのセットを更新する必要があ

## Dirty属性を持つフィールドを更新する

W:dirtyは、ドキュメントを開いたときに指定したフィールドのみを更新するフィールドレベルの属性です。 次に文書を開いたときにのみこのフィールドを更新するようにMSWordに指示します。 LoadOptionsを使用できます。setUpdateDirtyFields()プロパティは、dirty属性でフィールドを更新するかどうかを指定します。 ときにLoadOptionsの値。setUpdateDirtyFields()は*true*に設定され、`Field.IsDirty`または`FieldChar.IsDirty`プロパティの*true*値を持つすべてのフィールドは、ドキュメントのロード時に更新されます。

Dirty属性を持つフィールドを更新する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## 保存する前にLastSavedTimeプロパティを更新します

ドキュメントを保存するときに、対応する組み込みドキュメントプロパティ[LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime)を更新するかどうかを[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty)プロパティを使用できます。

次のコード例は、このプロパティを更新する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
