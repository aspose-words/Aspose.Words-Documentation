---
title: マージされていないリージョンにカスタムロジックを適用する方法
second_title: Aspose.WordsのためのJava
articleTitle: マージされていないリージョンにカスタムロジックを適用する方法
linktitle: マージされていないリージョンにカスタムロジックを適用する方法
type: docs
description: "Javaを使用してMail Merge操作中にマージされていない領域にカスタムロジックを適用します。"
weight: 70
url: /ja/java/how-to-apply-custom-logic-to-unmerged-regions/
timestamp: 2024-01-27-14-07-04
---

Mail Merge中に文書からマージされていない領域を完全に削除することが望ましくない場合や、文書が不完全に見える場合があります。 これは、領域が完全に削除されるのではなく、入力データがないことをメッセージの形でユーザーに表示する必要がある場合に発生する可能性があります。

また、領域の前にタイトルが付いている場合や、領域がテーブルに含まれている場合など、未使用の領域を単独で削除するだけでは不十分な場合もあ この領域が使用されていない場合、領域が削除された後もタイトルとテーブルは残り、ドキュメント内で場違いに見えます。

この記事では、ドキュメント内の未使用領域の処理方法を手動で定義するための解決策を提供します。 この機能の基本コードが提供されており、別のプロジェクトで簡単に再利用できます。

各領域に適用されるロジックは、[IFieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/)インターフェイスを実装するクラス内で定義されます。 同様に、Mail Mergeハンドラを設定して各フィールドのマージ方法を制御することができ、このハンドラを設定して、未使用のリージョン内の各フィールドまたはリージョン全体に対してアクションを実行することができます。 このハンドラー内で、領域のテキストを変更したり、ノードを削除したり、空の行やセルなどを削除したりするコードを設定できます。

このサンプルでは、以下に表示されるドキュメントを使用します。 これには、ネストされた領域と、テーブル内に含まれる領域が含まれます。

![apply-custom-logic-to-unmerged-regions-aspose-words-java](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-1.png)

簡単なデモとして、[MailMergeCleanupOptions.REMOVE_UNUSED_REGIONS](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/)フラグを有効にしてサンプルドキュメント上でサンプルデータベースを実行できます。 このプロパティは、mail merge中に文書からマージされていない領域を自動的に削除します。

データソースには**StoreDetails**領域の2つのレコードが含まれていますが、意図的には、いずれかのレコードの子**ContactDetails**領域のデータがあります。 さらに、**Suppliers**領域にはデータ行もありません。 これにより、未使用の領域がドキュメントに残ります。 このデータソースとドキュメントをマージした後の結果は以下のとおりです。

![merged-regions-aspose-words-java](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-2.png)

画像に記載されているように、2番目のレコードの**ContactDetails**領域と**Suppliers**領域はデータがないため、Mail Mergeエンジンによって自動的に削除されていることがわかります。 ただし、この出力ドキュメントが不完全に見えるいくつかの問題があります:

- **ContactDetails**領域には、"連絡先の詳細"というテキストが含まれた段落が残ります。
- 同じケースでは、電話番号がないことを示すものではなく、混乱につながる可能性のある空白のみがあります。
- **Suppliers**領域に関連するテーブルとタイトルは、テーブル内の領域が削除された後も残ります。

この記事で提供される手法は、これらの問題を回避するために、マージされていない各リージョンにカスタムロジックを適用する方法を示しています。

**解決策**

ドキュメント内の未使用の各リージョンに手動でロジックを適用するには、Aspose.Wordsで既に利用可能な機能を利用します。

Mail Mergeエンジンは、**MailMergeCleanupOptions.RemoveUnusedRegions**フラグを使用して未使用領域を削除するプロパティを提供します。 これは、mail merge中にそのような領域がそのまま残されるように無効にすることができます。 これにより、マージされていない領域をドキュメントに残して、代わりに手動で処理することができます。

次に、**IFieldMergingCallback** インターフェースを実装するハンドラー クラスを使用して、Mail Merge 中にこれらのマージされていない領域に独自のカスタム ロジックを適用する手段として、**MailMerge.FieldMergingCallback** プロパティを利用できます。

Handlerクラス内のこのコードは、マージされていない領域に適用されるロジックを制御するために変更する必要がある唯一のクラスです。 このサンプルの他のコードは、どのプロジェクトでも変更せずに再利用できます。

このサンプルプロジェクトは、この手法を示しています。 これには、次の手順が含まれます。:

1. データソースを使用してドキュメントに対してMail Mergeを実行します。 **MailMergeCleanupOptions.RemoveUnusedRegions**フラグは無効になっています今のところ、領域を手動で処理できるようにしたいと考えています。 データのないリージョンは、ドキュメント内でマージされません。
1. **ExecuteCustomLogicOnEmptyRegions**メソッドを呼び出します。 この方法は、このサンプルで提供されています。 マージされていない領域ごとに指定されたハンドラを呼び出すことを可能にするアクションを実行します。 このメソッドは再利用可能であり、それを必要とする任意のプロジェクトに変更されずにコピーできます（依存するメソッドとともに）。このメソッドは、次の手順を実行します:
   1. ユーザーが指定したハンドラーを**MailMerge.FieldMergingCallback**プロパティに設定します。
   1. 地域名を含むユーザーの**Document**と**ArrayList**を受け入れる**CreateDataSourceFromDocumentRegions**メソッドを呼び出します。 このメソッドは、ドキュメント内のマージされていない各領域のテーブルを含むダミーデータソースを作成します。
   1. ダミーデータソースを使用してドキュメント上でMail Mergeを実行します。 このデータソースでMail Mergeを実行すると、アンマージ領域と適用されるカスタムロジックごとにユーザー指定のハンドラーを呼び出すことができます

**コード**

**ExecuteCustomLogicOnEmptyRegions**メソッドの実装は以下の通りです。 このメソッドは、いくつかのパラメータを受け入れます:

1. 渡されたハンドラーによって処理されるマージされていない領域を含む[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)オブジェクト。
1. マージされていない領域に適用するロジックを定義するhandlerクラス。 このハンドラーは、以下を実装する必要があります [IFieldMergingCallback](https://www.aspose.com/api/java/words/com.aspose.words/interfaces/IFieldMergingCallback) インターフェイス。
1. 適切なオーバーロードを使用することで、このメソッドは3番目のパラメーター、つまり文字列としての領域名のリストを受け入れることもできます。 これが指定された場合、リストに指定された文書に残っている地域名のみが手動で処理されます。 見つかった他のリージョンはハンドラから呼び出されず、自動的に削除されません。 パラメータが2つだけのオーバーロードを指定すると、ドキュメント内の残りのすべての領域が手動で処理されるメソッドに含まれます。

**例を示します。**

指定されたハンドラーを使用して、未使用領域でカスタムロジックを実行する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ExecuteCustomLogicOnUnusedRegions.java" >}}

{{% alert color="primary" %}}

異なるハンドラーで**ExecuteCustomLogicOnEmptyRegions**メソッドを連続して実行することを検討している場合（たとえば、各ハンドラーは特定のフィールドにロジックを適用します）、未使

{{% /alert %}}

**例を示します。**

マージされていない領域を手動で処理するために使用されるメソッドを定義します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ManuallyHandleUnmergedRegions.java" >}}

この方法では、文書内のすべてのマージされていない領域を検索します。 これは**MailMerge.GetFieldNames**メソッドを使用して実行されます。 このメソッドは、リージョンの開始マーカーと終了マーカー(接頭辞*TableStart*または*TableEnd*の差し込み項目で表されます)を含む、ドキュメント内のすべての差し込み項目を返します。

`TableStart`差し込み項目が検出されると、これは新しい**DataTable**として**DataSet**に追加されます。 リージョンは複数回表示される可能性があるため(たとえば、親リージョンが複数のレコードとマージされたネストされたリージョンであるため)、テーブルは**DataSet**にまだ存在しない場合にのみ作成および追加されます。

適切なリージョンの開始が見つかってデータベースに追加されると、次のフィールド(リージョン内の最初のフィールドに対応)が**DataTable**に追加されます。 マージされてハンドラーに渡されるリージョン内の各フィールドには、最初のフィールドのみを追加する必要があります。

また、リージョン内の最初のフィールドまたは他のフィールドにロジックを適用しやすくするために、最初のフィールドのフィールド値を"FirstField"に設定します。 これを含めることで、最初のフィールドの名前をハードコードする必要がないことを意味したり、現在のフィールドがハンドラーコードの最初であるかどうかを確認するための追加のコードを実装したりします。

以下のコードは、このシステムがどのように機能するかを示しています。 この記事の冒頭に示されているドキュメントは、同じデータソースで再マージされますが、今回は、未使用の領域はカスタムコードによって処理されます。

**例を示します。**

Mail Mergeの後のマージされていない領域をユーザー定義コードで処理する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-HandleUnmergedRegionsAfterMailMerge.java" >}}


このコードは、**FieldMergingArgs.TableName**プロパティを使用して取得された領域の名前に基づいて異なる操作を実行します。 ドキュメントとリージョンに応じて、ドキュメント内のマージされていないすべてのリージョンまたは両方の組み合わせに適用される各リージョンまたはコードに依存してロジックを実行するようにハンドラーをコーディングできます。

**ContactDetails**領域のロジックには、**ContactDetails**領域の各フィールドのテキストを、データがないことを示す適切なメッセージで変更することが含まれます。 各フィールドの名前は、**FieldMergingArgs.FieldName**プロパティを使用してハンドラー内で照合されます。

同様のプロセスが**Suppliers**領域に適用され、領域を含むテーブルを処理するための余分なコードが追加されます。 コードは、領域がテーブル内に含まれているかどうかをチェックします（すでに削除されている可能性があるため）。 そうであれば、"Heading 1"などの見出しスタイルで書式設定されている限り、文書からテーブル全体とその前の段落が削除されます。

**例を示します。**

ドキュメント内のマージされていない領域に対して実行されるIFieldMergingCallbackを実装するハンドラーでカスタムロジックを定義する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-EmptyRegionsHandler.java" >}}

上記のコードの結果を以下に示します。 最初の領域内のマージされていないフィールドは有益なテキストに置き換えられ、テーブルと見出しを削除すると文書が完全に見えるようになります。

![apply-custom-logic-to-unmerged-regions-aspose-words-java-2](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-3.png)


親テーブルを削除するコードは、テーブル名のチェックを削除することで、特定の領域ではなく、すべての未使用領域で実行するようにすることもできま この場合、テーブル内のいずれかの領域がデータとマージされていない場合、領域とコンテナテーブルの両方も自動的に削除されます。

ハンドラーに別のコードを挿入して、マージされていない領域の処理方法を制御できます。 代わりにハンドラーで以下のコードを使用すると、リージョンの最初の段落のテキストが有用なメッセージに変更され、リージョンの後続の段落は削除されま これらの他の段落は、メッセージをマージした後も地域に残るため、削除されます。

置換テキストは、指定されたテキストを**FieldMergingArgs.Text**プロパティに設定することにより、最初のフィールドにマージされます。 このプロパティのテキストはMail Mergeエンジンによってフィールドにマージされます。

このコードでは、**FieldMergingArgs.FieldValue**プロパティをチェックすることにより、地域の最初のフィールドにのみこれが適用されます。 リージョンの最初のフィールドのフィールド値は"FirstField"でマークされています。 これにより、余分なコードを必要としないため、このタイプのロジックを多くのリージョンで実装しやすくなります。

**例を示します。**

未使用の領域をメッセージに置き換え、余分な段落を削除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ReplaceAnUnusedRegionWithAMessage.java" >}}

上記のコードが実行された後の結果のドキュメントを以下に示します。 未使用領域は、表示するレコードがないことを示すメッセージに置き換えられます。

![apply-custom-logic-to-unmerged-regions-aspose-words-java-3](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-4.png)


別の例として、最初に**SuppliersRegion**を処理していたコードの代わりに、以下のコードを挿入できます。 これにより、テーブル内にメッセージが表示され、ドキュメントからテーブルを削除する代わりにセルがマージされます。 領域は複数のセルを持つテーブル内にあるため、テーブルのセルをマージしてメッセージを中央に配置する方が見栄えが良くなります。

**例を示します。**

未使用領域のすべての親セルをマージし、テーブル内にメッセージを表示する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-MergeAllTheParentCellsOfAnUnusedRegion.java" >}}

上記のコードが実行された後の結果のドキュメントを以下に示します。

![apply-custom-logic-to-unmerged-regions-aspose-words-java-4](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-5.png)


最後に、**ExecuteCustomLogicOnEmptyRegions**メソッドを呼び出し、handlerメソッド内で処理するテーブル名を指定し、他のテーブルを自動的に削除するように指定することができます。

**例を示します。**

Handlerクラスを介して処理される`ContactDetails`領域のみを指定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-HandleTheContactDetailsRegion.java" >}}

指定されたArrayListを使用してこのオーバーロードを呼び出すと、指定された領域のデータ行のみを含むデータソースが作成されます。 `ContactDetails`領域以外の領域は処理されず、代わりにMail Mergeエンジンによって自動的に削除されます。 元のハンドラーのコードを使用した上記の呼び出しの結果を以下に示します。

![apply-custom-logic-to-unmerged-regions-aspose-words-java-5](/words/java/how-to-apply-custom-logic-to-unmerged-regions/how-to-apply-custom-logic-to-unmerged-regions-6.png)
