---
title: 在文档中跟踪更改 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 文档中的音轨变化
linktitle: 文档中的音轨变化
description: "跟踪您或其他人对内容和格式的修改。 访问文档中的单个修改,并使用 Java。 。 。 。"
type: docs
weight: 270
url: /zh/java/track-changes-in-a-document/
---

音轨变化的功能,又称审查功能,可以跟踪您或其他用户对内容和格式的修改. 此音轨更改的特性为 Aspose.Words 支持音轨变化 Microsoft Word。 。 。 使用此功能,您可以访问文档中的单个修改并应用不同的属性。

当启用音轨更改功能时,文档中所有插入、删除和修改的元素都将在视觉上突出显示,并显示由谁、何时和哪些内容更改。 载有更改内容的信息的物体称为"跟踪更改"。 例如,假设您想要审查一个文档并作出重要的修改 - - 这可能意味着您需要修改。 另外,你可能需要插入评论来讨论一些修改。 这就是追踪文件变化的地方。

本篇文章解释了如何管理和跟踪许多审查人员在同一文档上创建的更改,以及用于跟踪更改的属性.

{{% alert color="primary" %}}

注意: Aspose.Words, 以及国内 Microsoft Word, 可用于跟踪变化。 然而,记住,评论完全独立于跟踪变化。

{{% /alert %}}

## 什么是修订

在修改前, 页:1 [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) 是一个在文档的一个节点中发生的变化,而修改组则以 [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) class,是一组在文档的许多节点中发生的顺序修改。 修订是跟踪变化的工具.

在跟踪变化特征和比较文件特征中使用了修订,其中修订是比较的结果。 因此,在跟踪变化功能中所做的修改显示了由谁和什么被修改.

{{% alert color="primary" %}}

请注意: Microsoft Word 它只允许您将顺序修改视为单一实体。 不过 Aspose.Words 用 **RevisionGroup** 课。

{{% /alert %}}

Aspose.Words 支持不同的修订类型,以及 Microsoft Word, 例如插入、 删除、 格式 更改、 样式定义 改变和移动。 所有订正类型均与 [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) 计数.

{{% alert color="primary" %}}

请注意,修订的结果类似于 Microsoft Word 不过 Aspose.Words 跟踪更改时不检测格式。

{{% /alert %}}

## 开始和停止跟踪更改

编辑文档通常不会算作修订,直到您开始跟踪它。 Aspose.Words 允许您以简单的步骤自动跟踪文档中的所有变化。 通过使用 [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) 方法。 如果您需要停止跟踪更改的过程,以使任何未来的编辑不被视为修订,则您需要使用 [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) 方法。

{{% alert color="primary" %}}

注意到 `StartTrackingRevisions` 方法不会改变 [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) 属性,不使用其值进行修订跟踪。 此外,如果一个节点在履带文档中从一个位置移到另一个位置,则会创建移动修改,包括从移动到移动到范围.

{{% /alert %}}

在文档的跟踪更改过程结束时,您甚至可以接受所有修改或拒绝修改,以恢复文档的原始形式。 可通过使用 [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) 或 [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) 方法。 此外,您还可以使用 [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) 或 [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) 方法。

从开始过程到停止过程,所有的变化都会被跟踪到一个迭代。 不同迭代之间的连接表现为以下情景: 你完成跟踪过程,然后做一些修改,然后重新开始跟踪修改. 在此情况下, 您不接受或拒绝的所有更改都会再次显示 。

{{% alert color="primary" %}}

注意到 `AcceptAllRevisions` 方法与"接受所有更改"中的"接受所有更改"相似。 Microsoft Word。 。 。 。

{{% /alert %}}

以下代码示例显示如何与跟踪变化配合:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

以下代码示例显示一个节点在履带文档中移动时如何生成修改: 1

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## 管理和存储更改为修订版

使用之前的跟踪更改功能,您可以了解文档中做了哪些更改,以及是谁做了这些更改。 在与 [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) 特性,您强制将文档中的任何更改作为修改存储。

Aspose.Words 允许您使用 [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) 属性。 如果您不需要通过 StartTrack 修改和 StopTrack 修改方法自动跟踪文档中的修改, 您可以使用 `TrackRevisions` 属性以检查是否在编辑文档时跟踪到更改 Microsoft Word 并作订正。

那个 `TrackRevisions` 特性使修改而非真实 DOM 变化。 但修订本身是分开的。 举例来说, 如果删除任何段落, Aspose.Words 将其改为修订,将其标为删除,而不是删除。

临Τ Aspose.Words 允许您检查对象是否被插入、删除或使用 [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), 和 [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) 属性。

{{% alert color="primary" %}}

请注意,这些修订本身与《公约》和《任择议定书》之间没有任何联系。 `TrackRevisions` 属性。 此外,无论跟踪变化特性如何,都可以接受/拒绝修改.

{{% /alert %}}

以下代码示例显示如何通过修改应用不同的属性:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
