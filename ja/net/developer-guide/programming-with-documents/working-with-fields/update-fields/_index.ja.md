---
title: フィールドの更新 C#
second_title: .NET用Aspose.Words
articleTitle: フィールドを更新する
linktitle: フィールドを更新する
description: "C# でフィールドを更新する方法を学びます。フィールドをプログラムで更新するか、.NET API を使用した自動フィールド更新を使用します。"
type: docs
weight: 30
url: /ja/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

通常、Microsoft Word に挿入されたフィールドには、すでに最新の値が含まれています。たとえば、フィールドが数式またはページ番号である場合、そのフィールドには、ドキュメントの特定のバージョンで正しく計算された値が含まれます。ただし、2 つのドキュメントを結合したり、データを入力したりするなど、フィールドを含むドキュメントを生成または変更するアプリケーションがある場合は、ドキュメントを有効に使用するには、すべてのフィールドを更新する必要があるのが理想的です。

## フィールドを更新する方法

ドキュメントがロードされると、Aspose.Words は Microsoft Word の動作を模倣し、フィールドを自動的に更新するオプションがオフになります。この動作は次のように要約できます。

- ドキュメントを開いたり保存したりしても、フィールドはそのまま残ります
- 必要な場合は、`TOC` を再構築するなど、ドキュメント内のすべてのフィールドを明示的に更新できます。
- PDF または XPS に印刷/レンダリングすると、ヘッダー/フッターのページ番号に関連するフィールドが更新されます。
- Mail Merge を実行すると、すべてのフィールドが自動的に更新されます

### プログラムによるフィールドの更新

ドキュメント全体のフィールドを明示的に更新するには、[UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) メソッドを呼び出すだけです。ドキュメントの一部に含まれるフィールドを更新するには、[Range](https://reference.aspose.com/words/net/aspose.words/range/) オブジェクトを取得し、[UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/) メソッドを呼び出します。 Aspose.Words では、[Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) プロパティを使用して、[Section](https://reference.aspose.com/words/net/aspose.words/section/)、[HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/)、[Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) などのドキュメント ツリー内の任意のノードの **Range** を取得できます。 [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/) メソッドを呼び出して、単一フィールドの結果を更新できます。

### レンダリング中のページ関連フィールドの自動更新

ドキュメントを PDF や XPS などの固定ページ形式に変換すると、Aspose.Words はドキュメントのヘッダー/フッターにあるページ レイアウト関連のフィールド `PAGE`、`PAGEREF` を自動的に更新します。この動作は、ドキュメントを印刷するときの Microsoft Word の動作を模倣します。

ドキュメント内の他のすべてのフィールドを更新する場合は、ドキュメントをレンダリングする前に [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) を呼び出す必要があります。

次のコード例は、ドキュメントをレンダリングする前にすべてのフィールドを更新する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

### Mail Merge中の自動フィールド更新

mail merge を実行すると、ドキュメント内のすべてのフィールドが自動的に更新されます。これは、mail merge がフィールド更新のケースであるためです。プログラムは Mail Merge フィールドを検出し、その結果を更新する必要があります。これには、データ ソースから値を取得してフィールドに挿入することが含まれます。もちろん、ロジックはさらに複雑になります。たとえば、ドキュメント/mail merge 領域の終わりに達したが、マージするデータがまだある場合、領域を複製して新しいフィールドのセットを更新する必要があります。

## ダーティ属性を持つフィールドを更新する

w:dirty は、ドキュメントを開いたときに指定したフィールドのみを更新するフィールド レベルの属性です。これは、次回文書を開いたときにのみこのフィールドを更新するように MS Word に指示します。 [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) プロパティを使用して、フィールドをダーティ属性で更新するかどうかを指定できます。 **UpdateDirtyFields** の値が *true* に設定されている場合、[Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) または [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) プロパティの *true* 値を持つすべてのフィールドがドキュメントのロード時に更新されます。

次のコード例は、ダーティ属性を持つフィールドを更新する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## 保存する前に LastSavedTime プロパティを更新する

[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) プロパティを使用すると、ドキュメントを保存するときに、対応する組み込みドキュメント プロパティ [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) を更新するかどうかを指定できます。

次のコード例は、このプロパティを更新する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
