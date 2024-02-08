---
title: 跟踪 C# 文档中的更改
second_title: .NET 格式的 Aspose.Words
articleTitle: 跟踪文档中的更改
linktitle: 跟踪文档中的更改
description: "跟踪您或其他人使用 C# 对内容和格式所做的更改。访问文档中的各个修订并对其应用各种属性。"
type: docs
weight: 270
url: /zh/net/track-changes-in-a-document/
---

跟踪更改功能（也称为审阅）允许您跟踪您或其他用户对内容和格式所做的更改。 Aspose.Words 的跟踪更改功能支持 Microsoft Word 中的跟踪更改。通过此功能，您可以访问文档中的各个修订版本并对它们应用不同的属性。

当您启用跟踪更改功能时，文档中所有插入、删除和修改的元素都将在视觉上突出显示，并包含有关更改者、更改时间和更改内容的信息。携带有关更改内容的信息的对象称为"跟踪更改"。例如，假设您想要审阅一份文档并进行重要更改 - 这可能意味着您需要进行修订。此外，您可能需要插入评论来讨论某些更改。这就是跟踪文档更改的用武之地。

本文介绍如何管理和跟踪多个审阅者对同一文档创建的更改，以及用于跟踪更改的属性。

{{% alert color="primary" %}}

请注意，Aspose.Words 以及 Microsoft Word 中的注释功能可以与跟踪更改相关联。但是，请记住，评论完全独立于跟踪更改。

{{% /alert %}}

## 什么是修订

在深入讨论修订之前，我们先解释一下修订的含义。 [revision](https://reference.aspose.com/words/net/aspose.words/revision/) 是在文档的一个节点中发生的更改，而由 [RevisionGroup](https://reference.aspose.com/words/net/aspose.words/revision/group/) 类表示的修订组是在文档的许多节点中发生的一组连续修订。基本上，修订是跟踪更改的工具。

修订用于跟踪更改功能和比较文档功能，其中修订作为比较的结果出现。因此，跟踪更改功能中的修订会显示更改者和内容。

{{% alert color="primary" %}}

请注意，Microsoft Word 不允许您查看单个修订，它只允许您将连续修订作为单个实体查看。但 Aspose.Words 通过 **RevisionGroup** 类解决了这个限制。

{{% /alert %}}

Aspose.Words 支持不同的修订类型以及 Microsoft Word，例如插入、删除、格式更改、样式定义更改和移动。所有修订类型均用 [RevisionType](https://reference.aspose.com/words/net/aspose.words/revisiontype/) 枚举表示。

{{% alert color="primary" %}}

请注意，修订版的结果与 Microsoft Word 类似，但 Aspose.Words 在跟踪更改期间不会检测格式。

{{% /alert %}}

## 开始和停止跟踪更改

在您开始跟踪文档之前，编辑文档通常不算作修订。 Aspose.Words 允许您通过简单的步骤自动跟踪文档中的所有更改。您可以使用 [StartTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/) 方法轻松开始跟踪更改的过程。如果您需要停止跟踪更改的过程，以便将来的任何编辑都不会被视为修订，则需要使用 [StopTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/stoptrackrevisions/) 方法。

{{% alert color="primary" %}}

请注意，`StartTrackingRevisions` 方法不会更改 [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) 属性的状态，并且不会将其值用于修订跟踪的目的。此外，如果节点在跟踪文档内从一个位置移动到另一个位置，则将创建移动修订，包括移自和移至范围。

{{% /alert %}}

在文档中的跟踪更改过程结束时，您甚至可以接受所有修订或拒绝它们以将文档恢复为其原始形式。这可以通过使用 [AcceptAllRevisions](https://reference.aspose.com/words/net/aspose.words/document/acceptallrevisions/) 或 [RejectAll](https://reference.aspose.com/words/net/aspose.words/revisioncollection/rejectall/) 方法来实现。此外，您可以使用 [Accept](https://reference.aspose.com/words/net/aspose.words/revision/accept/) 或 [Reject](https://reference.aspose.com/words/net/aspose.words/revision/reject/) 方法分别接受或拒绝每个修订。

从您开始流程的那一刻到您停止流程的那一刻，所有更改都将被跟踪一次迭代。不同迭代之间的联系表示为以下场景：您完成跟踪过程，然后进行一些更改，然后再次开始跟踪更改。在这种情况下，您未接受或拒绝的所有更改都将再次显示。

{{% alert color="primary" %}}

请注意，`AcceptAllRevisions` 方法类似于 Microsoft Word 中的"接受所有更改"。

{{% /alert %}}

以下代码示例展示了如何跟踪更改：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

以下代码示例显示了在跟踪文档中移动节点时如何生成修订：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## 管理更改并将其存储为修订

通过以前的跟踪更改功能，您可以了解文档中进行了哪些更改以及谁进行了这些更改。使用 [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) 功能时，您可以强制将文档中的任何更改存储为修订版本。

Aspose.Words 允许您使用 [HasRevision](https://reference.aspose.com/words/net/aspose.words/document/hasrevisions/) 属性检查文档是否有修订。如果不需要通过 StartTrackRevisions 和 StopTrackRevisions 方法自动跟踪文档中的更改，则可以使用 `TrackRevisions` 属性来检查在以 Microsoft Word 格式编辑文档时是否跟踪更改并将其存储为修订版本。

`TrackRevisions` 功能进行修订而不是真正的 DOM 更改。但修订本身是分开的。例如，如果删除任何段落，Aspose.Words 会将其作为修订，将其标记为删除，而不是删除它。

此外，Aspose.Words 允许您使用 [IsDeleteRevision](https://reference.aspose.com/words/net/aspose.words/inline/isdeleterevision/)、[IsFormatRevision](https://reference.aspose.com/words/net/aspose.words/inline/isformatrevision/)、[IsInsertRevision](https://reference.aspose.com/words/net/aspose.words/inline/isinsertrevision/)、[IsMoveFromRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovefromrevision/) 和 [IsMoveToRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovetorevision/) 属性检查对象是否被插入、删除或更改格式。

{{% alert color="primary" %}}

请注意，修订本身与 `TrackRevisions` 属性之间没有任何联系。此外，无论跟踪更改功能如何，您都可以接受/拒绝修订。

{{% /alert %}}

以下代码示例展示了如何应用不同的属性和修订版：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
