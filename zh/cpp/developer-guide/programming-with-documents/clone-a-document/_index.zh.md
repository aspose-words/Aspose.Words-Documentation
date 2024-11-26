---
title: 在C++中克隆文档
second_title: Aspose.Words对于C++
articleTitle: 克隆文档
linktitle: 克隆文档
type: docs
description: "使用C++克隆文档以获取其相同的副本。 创建副本时，将克隆原始文档的节点和属性。"
weight: 70
url: /zh/cpp/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

克隆文档是创建原始文档的相同副本的过程，这可以提高性能并避免潜在的内存泄漏。

本文将解释克隆文档的主要用例以及如何使用Aspose.Words创建文档克隆。

## 使用克隆文档的操作

克隆操作允许您更快地创建文档，因为您不需要每次都从文件中加载和解析文档。

创建文档的克隆后，您将能够对其进行编辑并对其执行不同的操作，例如，将其与原始文档进行比较，将其追加或插入到另一个文档中。 您还可以在将克隆的元素或其内容插入到另一个文档之前修改它们。

## 创建文档克隆

Aspose.Words允许您使用[Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/)方法克隆文档，该方法执行文档的深度副本并返回它。 换句话说，它将获得DOM的完整副本。 `Clone`方法加快了文档的生成速度，您只需要一行代码就可以获得文档的副本。

克隆生成一个新文档，其内容与原始文档相同，但每个原始文档的[nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node)的唯一副本。 您还可以使用node[Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/)方法将克隆操作应用于文档节点，该方法允许您使用和不使用其子节点复制复合文档节点。

{{% alert color="primary" %}}

请注意，应用克隆方法时，将克隆所有文档属性。

{{% /alert %}}

下面的代码示例演示如何克隆文档并在该文档中创建部分的副本:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}
