---
title: ドキュメント内の変更を追跡する Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 文書の変更を追跡する
linktitle: 文書の変更を追跡する
description: "内容の変更を追跡し、お客様や他者によるフォーマットを行います。 ドキュメント内の個々のリビジョンにアクセスし、さまざまなプロパティをそれらに適用する Javaお問い合わせ"
type: docs
weight: 270
url: /ja/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

また、レビューとして知られる変化を追跡する機能は、あなたまたは他のユーザーによって作られたコンテンツやフォーマットの変更を追跡することができます。 このトラックの変更機能と Aspose.Words トラック変更をサポート Microsoft Wordお問い合わせ この機能により、文書内の個々のリビジョンにアクセスし、異なるプロパティをそれらに適用することができます。

トラック変更機能を有効にすると、ドキュメントのすべてのインサート、削除、および変更された要素が、誰、いつ、何が変更されたかに関する情報を視覚的に強調表示されます。 変更された内容に関する情報を運ぶオブジェクトは「変更の追跡」と呼ばれます。 たとえば、ドキュメントを見直し、重要な変更をしたいと仮定します。これは、修正を行う必要があることを意味します。 また、変更の一部についてコメントを差し込む必要があります。 文書の変更を追跡するところです。

この記事では、同じ文書で多くの査読者によって作成された変更の管理と追跡方法、および変更を追跡するためのプロパティについて説明します。

{{% alert color="primary" %}}

コメント機能に注意してください。 Aspose.Words, だけでなく、 Microsoft Word, 追跡の変更に関連付けられることができます。 しかし、コメントは完全に変更を追跡することに依存しています。

{{% /alert %}}

## 改定とは

ダイビング前にリビジョンの意味を説明しましょう。 ツイート [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) ドキュメントの1つのノードで、リビジョングループが表す変更です。 [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) クラスは、ドキュメントの多くのノードで起こるシーケンシャルリビジョンのグループです。 修正は変更を追跡するためのツールです。

修正は、トラッキング変更機能および比較文書機能内で使用され、リビジョンは比較の結果に表示されます。 そのため、トラッキング変更機能内のリビジョンは、誰と何が変更されたかによって表示されます。

{{% alert color="primary" %}}

注意: Microsoft Word 個々のリビジョンを表示することはできません。それは、シーケンシャルリビジョンを単一のエンティティとして表示することができます。 しかし、 Aspose.Words この制限を解決する **RevisionGroup** クラス。

{{% /alert %}}

Aspose.Words 異なったリビジョンのタイプ、また Microsoft Word, インサート、削除、フォーマットなど 変更、スタイル定義 変更、移動。 すべてのリビジョンタイプは、 [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) パンフレット

{{% alert color="primary" %}}

修正の結果が似ていることに注意してください Microsoft Word しかし、 Aspose.Words トラッキング変更時にフォーマットを検知しません。

{{% /alert %}}

## トラッキング変更の開始と停止

ドキュメントの編集は通常、トラッキングを開始するまでのリビジョンとしてカウントされません。 Aspose.Words ドキュメントのすべての変更を簡単な手順で自動的に追跡できます。 変更を追跡するプロセスを簡単に始めることができます。 [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) メソッド。 変更を追跡するプロセスを停止する必要がある場合は、将来の編集はリビジョンとは見なされないため、使用する必要があります [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) メソッド。

{{% alert color="primary" %}}

注意: `StartTrackingRevisions` メソッドはステータスを変更しません [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) プロパティはリビジョントラッキングの目的に値を使用しません。 また、ノードが1つの場所から別の場所に移動して追跡されたドキュメントに移動すると、リビジョンが作成されます。

{{% /alert %}}

文書の追跡変更プロセスの最後に、すべてのリビジョンを受け入れるか、元のフォームに文書を反転させるために拒否する機能があります。 どちらでも実現できます。 [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) または [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) メソッド。 また、別途各リビジョンを承諾または拒否することができます。 [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) または [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) メソッド。

すべての変更は、プロセスを開始した瞬間から1つの反復のために追跡されます。 異なる反復との間の接続は、次のシナリオとして表されます。トラッキングプロセスを完了し、いくつかの変更を行い、再び変更の追跡を開始します。 このシナリオでは、受け入れなかったり拒否したすべての変更が再び表示されます。

{{% alert color="primary" %}}

注意: `AcceptAllRevisions` メソッドは「すべての変更を受け入れる」と似ています。 Microsoft Wordお問い合わせ

{{% /alert %}}

次のコードの例では、変更を追跡する方法を示します。
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

以下のコードの例では、ノードが追跡されたドキュメント内で移動したときにリビジョンが生成される方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## 変更を改訂として管理・保存

以前のトラッキング変更機能では、ドキュメントで変更された変更内容や、変更した変更内容を理解できます。 しばらくの間、 [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) 機能、文書内の変更をリビジョンとして保存するように強制します。

Aspose.Words ドキュメントがリビジョンを持っているかどうか、または使用して確認することができます [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) 宿泊施設 StartTrackRevisions と StopTrackRevisions メソッドを使用して文書の変更を自動的に追跡する必要がない場合、 `TrackRevisions` ドキュメントの編集中に変更が追跡されているかどうかを確認するプロパティ Microsoft Word リビジョンとして保存します。

ザ・オブ・ザ・ `TrackRevisions` 機能は、実際の代わりにリビジョンを作る DOM 変更。 しかし、リビジョン自体は別です。 例えば、 任意の段落を削除した場合, Aspose.Words 削除ではなく、リビジョンとしてマークし、削除します。

その他、 Aspose.Words オブジェクトがインサートされたり、削除されたり、フォーマット変更されたりするかどうかを確認できます。 [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), そして、 [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) プロパティ。

{{% alert color="primary" %}}

リビジョンとリビジョンの関係がないことに注意してください。 `TrackRevisions` 宿泊施設 また、トラッキング変更機能に関係なく、リビジョンを受け入れる/拒否することができます。

{{% /alert %}}

次のコードの例では、異なるプロパティをリビジョンで適用する方法を示します。
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
