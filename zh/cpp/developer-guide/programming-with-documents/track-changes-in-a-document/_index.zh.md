---
title: 在C++中跟踪文档中的更改
second_title: Aspose.Words对于C++
articleTitle: 跟踪文档中的更改
linktitle: 跟踪文档中的更改
description: "跟踪您或其他人使用C++对内容和格式所做的更改。 访问文档中的各个修订并对其应用各种属性。"
type: docs
weight: 270
url: /zh/cpp/track-changes-in-a-document/
---

跟踪更改（也称为审阅）的功能允许您跟踪您或其他用户对内容和格式所做的更改。 此带有Aspose.Words的跟踪更改功能支持Microsoft Word中的跟踪更改。 使用此功能，您可以访问文档中的各个修订版并对其应用不同的属性。

启用"跟踪更改"功能后，文档的所有插入、删除和修改元素都将以可视化方式突出显示，其中包含有关更改对象、更改时间和更改内容的信息。 携带有关更改内容的信息的对象称为"跟踪更改"。 例如，假设您要查看文档并进行重要更改–这可能意味着您需要进行修订。 此外，您可能需要插入注释来讨论一些更改。 这就是跟踪文档更改的作用所在。

本文介绍如何管理和跟踪多个审阅者在同一文档上创建的更改，以及跟踪更改的属性。

{{% alert color="primary" %}}

请注意，Aspose.Words和Microsoft Word中的注释功能可以与跟踪更改相关联。 但是，请记住，注释完全独立于跟踪更改。

{{% /alert %}}

## 什么是修订

在深入研究修订之前，让我们解释修订的含义。 [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/)是在文档的一个节点中发生的更改，而由[RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/)类表示的修订组是在文档的许多节点中发生的一组顺序修订。 基本上，修订是跟踪更改的工具。

修订在跟踪更改功能和比较文档功能中使用，其中修订显示为比较的结果。 因此，跟踪更改功能中的修订会显示更改的对象和内容。

{{% alert color="primary" %}}

请注意，Microsoft Word不允许您查看单个修订，它只允许您将顺序修订作为单个实体查看。 但是Aspose.Words用**RevisionGroup**类解决了这个限制。

{{% /alert %}}

Aspose.Words支持不同的修订类型，以及在Microsoft Word中，如插入，删除，FormatChange，StyleDefinitionChange和移动。 所有修订类型都用[RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/)枚举表示。

{{% alert color="primary" %}}

请注意，修订版具有类似于Microsoft Word的结果，但Aspose.Words在跟踪更改期间不会检测到格式。

{{% /alert %}}

## 启动和停止跟踪更改

编辑文档通常不算作修订，直到您开始跟踪它。 Aspose.Words允许您通过简单的步骤自动跟踪文档中的所有更改。 您可以使用[StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/)方法轻松启动跟踪更改的过程。 如果您需要停止跟踪更改的过程，以便将来的任何编辑都不被视为修订，则需要使用[StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/)方法。

{{% alert color="primary" %}}

请注意，`StartTrackingRevisions`方法不会更改[TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/)属性的状态，也不会将其值用于修订跟踪。 此外，如果节点在跟踪文档内从一个位置移动到另一个位置，则将创建移动修订，包括从移动和移动到范围。

{{% /alert %}}

在文档中的跟踪更改过程结束时，您甚至可以接受所有修订或拒绝它们以将文档恢复为原始形式。 这可以通过使用[AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/)或[RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/)方法来实现。 此外，您可以使用[Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/)或[Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/)方法分别接受或拒绝每个修订。

从您开始流程到停止流程的那一刻，所有更改都将被跟踪一次迭代。 不同迭代之间的联系表示为以下场景：您完成跟踪过程，然后进行一些更改，并重新开始跟踪更改。 在这种情况下，您未接受或拒绝的所有更改将再次显示。

{{% alert color="primary" %}}

请注意，`AcceptAllRevisions`方法类似于Microsoft Word中的"接受所有更改"。

{{% /alert %}}

下面的代码示例演示如何处理跟踪更改:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

下面的代码示例演示在跟踪文档中移动节点时如何生成修订:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## 将更改管理并存储为修订

使用以前的跟踪更改功能，您可以了解在文档中进行了哪些更改以及谁进行了这些更改。 使用[TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/)功能时，您强制将文档中的任何更改存储为修订版本。

Aspose.Words允许您使用[HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/)属性检查文档是否有修订。 如果您不需要通过StartTrackRevisions和StopTrackRevisions方法自动跟踪文档中的更改，那么您可以使用`TrackRevisions`属性检查在Microsoft Word中编辑文档并存储为修订版本时是否跟踪了更改。

`TrackRevisions`功能进行修订而不是真正的DOM更改。 但修订本身是分开的。 例如，如果删除任何段落，Aspose.Words将其作为修订，将其标记为删除，而不是删除它。

此外，Aspose.Words允许您使用[IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), 和[IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/)属性。

{{% alert color="primary" %}}

请注意，修订版本本身与`TrackRevisions`属性之间没有连接。 此外，无论跟踪更改功能如何，您都可以接受/拒绝修订。

{{% /alert %}}

下面的代码示例演示如何使用修订应用不同的属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
