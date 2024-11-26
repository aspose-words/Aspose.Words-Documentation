---
title: C# でドキュメントの変更を追跡する
second_title: .NET用Aspose.Words
articleTitle: ドキュメント内の変更を追跡する
linktitle: ドキュメント内の変更を追跡する
description: "C# を使用して自分または他の人が行ったコンテンツとフォーマットの変更を追跡します。ドキュメント内の個々のリビジョンにアクセスし、さまざまなプロパティをそれらに適用します。"
type: docs
weight: 270
url: /ja/net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

変更の追跡機能 (レビューとも呼ばれます) を使用すると、自分または他のユーザーが行ったコンテンツおよび書式設定の変更を追跡できます。 Aspose.Words によるこのトラック変更機能は、Microsoft Word でのトラック変更をサポートします。この機能を使用すると、ドキュメント内の個々のリビジョンにアクセスし、それらにさまざまなプロパティを適用できます。

変更の追跡機能を有効にすると、文書の挿入、削除、および変更されたすべての要素が、誰が、いつ、何を変更したかに関する情報とともに視覚的に強調表示されます。何が変更されたかに関する情報を保持するオブジェクトは、「変更の追跡」と呼ばれます。たとえば、ドキュメントをレビューして重要な変更を加えたいとします。これは、改訂が必要になることを意味する場合があります。また、一部の変更について説明するためにコメントを挿入する必要がある場合もあります。そこで重要になるのが、ドキュメントの変更の追跡です。

この記事では、同じ文書に対して多数のレビュー担当者によって作成された変更を管理および追跡する方法と、変更を追跡するためのプロパティについて説明します。

{{% alert color="primary" %}}

Aspose.Words および Microsoft Word のコメント機能は、変更の追跡に関連付けることができることに注意してください。ただし、コメントは変更の追跡とは完全に独立していることに注意してください。

{{% /alert %}}

## リビジョンとは

リビジョンに入る前に、リビジョンの意味を説明しましょう。 [revision](https://reference.aspose.com/words/net/aspose.words/revision/) はドキュメントの 1 つのノードで発生する変更ですが、[RevisionGroup](https://reference.aspose.com/words/net/aspose.words/revision/group/) クラスで表されるリビジョン グループはドキュメントの多くのノードで発生する連続したリビジョンのグループです。基本的に、リビジョンは変更を追跡するためのツールです。

リビジョンは、変更の追跡機能およびドキュメントの比較機能内で使用され、比較の結果としてリビジョンが表示されます。したがって、変更追跡機能内のリビジョンには、誰が何を変更したかが表示されます。

{{% alert color="primary" %}}

Microsoft Word では個々のリビジョンを表示することはできず、連続したリビジョンを 1 つのエンティティとして表示することしかできないことに注意してください。しかし、Aspose.Words は **RevisionGroup** クラスを使用してこの制限を解決します。

{{% /alert %}}

Aspose.Words は、Microsoft Word だけでなく、挿入、削除、FormatChange、StyleDefinitionChange、Moving などのさまざまなリビジョン タイプをサポートしています。すべてのリビジョン タイプは [RevisionType](https://reference.aspose.com/words/net/aspose.words/revisiontype/) 列挙で表されます。

{{% alert color="primary" %}}

リビジョンの結果は Microsoft Word と同様ですが、Aspose.Words は変更の追跡中にフォーマットを検出しないことに注意してください。

{{% /alert %}}

## 変更の追跡を開始および停止する

通常、ドキュメントの編集は、追跡を開始するまでリビジョンとしてカウントされません。 Aspose.Words を使用すると、簡単な手順でドキュメント内のすべての変更を自動的に追跡できます。 [StartTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/) メソッドを使用すると、変更を追跡するプロセスを簡単に開始できます。今後の編集がリビジョンとみなされないように変更の追跡プロセスを停止する必要がある場合は、[StopTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/stoptrackrevisions/) メソッドを使用する必要があります。

{{% alert color="primary" %}}

`StartTrackingRevisions` メソッドは [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) プロパティのステータスを変更せず、リビジョン追跡の目的でその値を使用しないことに注意してください。さらに、追跡されているドキュメント内でノードが 1 つの場所から別の場所に移動された場合は、移動元範囲と移動先範囲を含む移動リビジョンが作成されます。

{{% /alert %}}

文書の変更追跡プロセスの最後には、すべての改訂を受け入れるか、拒否して文書を元の形式に戻すこともできます。これは、[AcceptAllRevisions](https://reference.aspose.com/words/net/aspose.words/document/acceptallrevisions/) または [RejectAll](https://reference.aspose.com/words/net/aspose.words/revisioncollection/rejectall/) 方式のいずれかを使用して実現できます。さらに、[Accept](https://reference.aspose.com/words/net/aspose.words/revision/accept/) または [Reject](https://reference.aspose.com/words/net/aspose.words/revision/reject/) 方式を使用して、各リビジョンを個別に承認または拒否できます。

すべての変更は、プロセスを開始した瞬間からプロセスを停止する瞬間まで、1 回の反復で追跡されます。異なる反復間の関係は、次のシナリオで表されます。追跡プロセスを完了し、いくつかの変更を加え、再び変更の追跡を開始します。このシナリオでは、承認または拒否しなかったすべての変更が再度表示されます。

{{% alert color="primary" %}}

`AcceptAllRevisions` メソッドは、Microsoft Word の「すべての変更を受け入れる」に似ていることに注意してください。

{{% /alert %}}

次のコード例は、変更の追跡を操作する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

次のコード例は、追跡対象ドキュメント内でノードが移動されたときにリビジョンがどのように生成されるかを示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## 変更をリビジョンとして管理および保存

以前の変更追跡機能を使用すると、文書にどのような変更が加えられたか、およびそれらの変更を誰が行ったかを把握できます。 [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) 機能を使用すると、ドキュメント内の変更は強制的にリビジョンとして保存されます。

Aspose.Words では、[HasRevision](https://reference.aspose.com/words/net/aspose.words/document/hasrevisions/) プロパティを使用してドキュメントにリビジョンがあるかどうかを確認できます。 StartTrackRevisions メソッドと StopTrackRevisions メソッドを使用してドキュメント内の変更を自動的に追跡する必要がない場合は、`TrackRevisions` プロパティを使用して、Microsoft Word でドキュメントを編集しているときに変更が追跡され、リビジョンとして保存されているかどうかを確認できます。

`TrackRevisions` 機能は、実際の DOM 変更ではなく、リビジョンを作成します。ただし、リビジョン自体は別のものです。たとえば、段落を削除すると、Aspose.Words はそれを削除するのではなく、削除としてマークしてリビジョンとして作成します。

さらに、Aspose.Words では、[IsDeleteRevision](https://reference.aspose.com/words/net/aspose.words/inline/isdeleterevision/)、[IsFormatRevision](https://reference.aspose.com/words/net/aspose.words/inline/isformatrevision/)、[IsInsertRevision](https://reference.aspose.com/words/net/aspose.words/inline/isinsertrevision/)、[IsMoveFromRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovefromrevision/)、および [IsMoveToRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovetorevision/) プロパティを使用して、オブジェクトが挿入、削除、またはフォーマット変更されたかどうかを確認できます。

{{% alert color="primary" %}}

リビジョン自体と `TrackRevisions` プロパティの間には関連性がないことに注意してください。さらに、変更の追跡機能に関係なく、リビジョンを承認/拒否できます。

{{% /alert %}}

次のコード例は、リビジョンに応じてさまざまなプロパティを適用する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
