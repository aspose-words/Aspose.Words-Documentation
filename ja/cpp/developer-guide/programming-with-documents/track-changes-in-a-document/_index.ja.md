---
title: C++で文書の変更を追跡する
second_title: C++の場合Aspose.Words
articleTitle: 文書内の変更を追跡する
linktitle: 文書内の変更を追跡する
description: "C++を使用して、自分や他の人が行ったコンテンツや書式設定の変更を追跡します。 ドキュメント内の個々のリビジョンにアクセスし、さまざまなプロパティを適用します。"
type: docs
weight: 270
url: /ja/cpp/track-changes-in-a-document/
---

変更履歴の機能(レビューとも呼ばれます)を使用すると、自分や他のユーザーが行ったコンテンツや書式設定の変更を追跡できます。 Aspose.Wordsのこのトラック変更機能はMicrosoft Wordのトラック変更をサポートします。 この機能を使用すると、ドキュメント内の個々のリビジョンにアクセスし、それらに異なるプロパティを適用できます。

変更の追跡機能を有効にすると、文書の挿入、削除、および変更されたすべての要素が、誰が、いつ、何が変更されたかに関する情報で視覚的に強調表示さ 何が変更されたかに関する情報を保持するオブジェクトは、"変更の追跡"と呼ばれます。 たとえば、文書を確認して重要な変更を加えるとします。 また、いくつかの変更について議論するためにコメントを挿入する必要がある場合があります。 ここで、文書の変更を追跡することができます。

この記事では、同じ文書で多くの査読者が作成した変更を管理および追跡する方法と、変更を追跡するためのプロパティについて説明します。

{{% alert color="primary" %}}

Aspose.WordsとMicrosoft Wordのコメント機能は、変更の追跡に関連付けることができることに注意してください。 ただし、コメントは変更の追跡とは完全に独立していることに注意してください。

{{% /alert %}}

## リビジョンとは何ですか

リビジョンに飛び込む前に、リビジョンの意味を説明しましょう。 [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/)はドキュメントの1つのノードで発生する変更ですが、[RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/)クラスで表されるリビジョングループは、ドキュメントの多くのノードで発生する連続した 基本的に、リビジョンは変更を追跡するためのツールです。

リビジョンは、変更の追跡機能およびドキュメントの比較機能内で使用され、比較の結果としてリビジョンが表示されます。 そのため、変更の追跡機能内のリビジョンには、誰が何を変更したかが表示されます。

{{% alert color="primary" %}}

Microsoft Wordでは個々のリビジョンを表示することはできず、連続したリビジョンを単一のエンティティとして表示するだけであることに注意してくださ しかし、Aspose.Wordsは**RevisionGroup**クラスでこの制限を解決します。

{{% /alert %}}

Aspose.Wordsは、挿入、削除、FormatChange、StyleDefinitionChange、移動など、Microsoft Wordと同様に、さまざまなリビジョンタイプをサポートします。 すべてのリビジョンの種類は[RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/)列挙体で表されます。

{{% alert color="primary" %}}

リビジョンの結果はMicrosoft Wordに似ていますが、Aspose.Wordsは変更の追跡中に書式設定を検出しないことに注意してください。

{{% /alert %}}

## 変更の追跡の開始と停止

通常、文書を編集しても、追跡を開始するまではリビジョンとしてカウントされません。 Aspose.Words簡単な手順で文書内のすべての変更を自動的に追跡できます。 [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/)メソッドを使用すると、変更を追跡するプロセスを簡単に開始できます。 今後の編集がリビジョンと見なされないように変更の追跡プロセスを停止する必要がある場合は、[StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/)メソッドを使用する必要があります。

{{% alert color="primary" %}}

`StartTrackingRevisions`メソッドは[TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/)プロパティのステータスを変更せず、リビジョン追跡の目的でその値を使用しないことに注意してください。 さらに、ノードが追跡されたドキュメント内のある場所から別の場所に移動された場合、移動元と移動先の範囲を含む移動リビジョンが作成されます。

{{% /alert %}}

文書の変更の追跡プロセスの最後に、すべてのリビジョンを承認したり、文書を元の形式に戻すために拒否したりすることもできます。 これは、[AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/)または[RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/)メソッドを使用することで実現できます。 また、[Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/)または[Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/)メソッドを使用して、各リビジョンを個別に承認または拒否することができます。

すべての変更は、プロセスを開始した瞬間から停止した瞬間まで、1回の反復で追跡されます。 追跡プロセスを完了し、いくつかの変更を加えてから、変更の追跡を再度開始します。 このシナリオでは、受け入れなかった、または拒否しなかったすべての変更が再び表示されます。

{{% alert color="primary" %}}

`AcceptAllRevisions`メソッドはMicrosoft Wordの"すべての変更を受け入れる"に似ていることに注意してください。

{{% /alert %}}

次のコード例は、変更の追跡を操作する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

次のコード例は、追跡されたドキュメント内でノードが移動されたときにリビジョンが生成される方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## 変更をリビジョンとして管理および保存する

以前の変更の追跡機能を使用すると、ドキュメントで行われた変更と、それらの変更を行ったユーザーを理解できます。 [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/)機能を使用している間は、ドキュメント内の変更を強制的にリビジョンとして保存します。

Aspose.Wordsは、[HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/)プロパティを使用して、文書にリビジョンがあるかどうかを確認できます。 StartTrackRevisionsおよびStopTrackRevisionsメソッドを使用して文書の変更を自動的に追跡する必要がない場合は、`TrackRevisions`プロパティを使用して、Microsoft Word内の文書の編集中に変更が追跡され、リビジョンとして保存されているかどうかを確認できます。

`TrackRevisions`機能は、実際のDOMの変更の代わりにリビジョンを作成します。 しかし、改訂自体は別々です。 たとえば、段落を削除した場合、Aspose.Wordsはその段落を削除するのではなく、リビジョンとして作成し、削除としてマークします。

さらに、Aspose.Wordsを使用すると、オブジェクトが挿入、削除、または書式設定の変更されたかどうかを確認できます。[IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), と[IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/)プロパティ。

{{% alert color="primary" %}}

リビジョン自体と`TrackRevisions`プロパティとの間には関係がないことに注意してください。 また、変更の追跡機能に関係なく、リビジョンを承認/拒否することができます。

{{% /alert %}}

次のコード例は、リビジョンでさまざまなプロパティを適用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
