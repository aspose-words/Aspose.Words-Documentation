---
title: Rastrear alterações em um documento em C++
second_title: Aspose.Words para C++
articleTitle: Acompanhar alterações num documento
linktitle: Acompanhar alterações num documento
description: "Acompanhe as alterações de Conteúdo e formatação feitas por você ou por outras pessoas usando C++. Aceder a revisões individuais num documento e aplicar-lhes várias propriedades."
type: docs
weight: 270
url: /pt/cpp/track-changes-in-a-document/
timestamp: 2024-01-30-16-22-34
---

A funcionalidade de rastrear alterações, também conhecida como revisão, permite que você rastreie alterações no conteúdo e na formatação feitas por você ou por outros usuários. Este recurso de alterações de faixa com Aspose.Words suporta alterações de faixa em Microsoft Word. Com essa funcionalidade, você pode acessar revisões individuais em seu documento e aplicar propriedades diferentes a elas.

Ao ativar o recurso rastrear alterações, todos os elementos inseridos, excluídos e modificados do documento serão destacados visualmente com informações sobre por quem, quando e o que foi alterado. Objetos que carregam as informações sobre o que foi alterado são chamados de"rastreamento de alterações". Por exemplo, suponha que você deseja revisar um documento e fazer alterações importantes – isso pode significar que você precisa fazer revisões. Além disso, pode ser necessário inserir comentários para discutir algumas das alterações. É aí que entra o acompanhamento das alterações nos documentos.

Este artigo explica como gerir e acompanhar as alterações criadas por muitos revisores no mesmo documento, bem como as propriedades para acompanhar as alterações.

{{% alert color="primary" %}}

Observe que o recurso de comentário em Aspose.Words, bem como em Microsoft Word, pode ser associado a alterações de rastreamento. No entanto, lembre-se de que os comentários são completamente independentes das alterações de acompanhamento.

{{% /alert %}}

## O que é uma revisão

Antes de mergulhar nas revisões, vamos explicar o significado das revisões. A [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) é uma alteração que ocorre em um nó de um documento, enquanto um grupo de revisão, representado pela classe [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/), é um grupo de revisões sequenciais que ocorrem em muitos nós de um documento. Basicamente, a revisão é uma ferramenta para acompanhar as alterações.

As revisões são utilizadas na funcionalidade acompanhar alterações e na funcionalidade comparar documentos, em que as revisões aparecem como resultado da comparação. Portanto, as revisões no recurso de rastreamento de alterações mostram por quem e o que foi alterado.

{{% alert color="primary" %}}

Observe que Microsoft Word não permite visualizar revisões individuais, apenas permite visualizar revisões sequenciais como uma única entidade. Mas Aspose.Words resolve essa limitação com a classe **RevisionGroup**.

{{% /alert %}}

Aspose.Words suporta diferentes tipos de revisão, bem como em Microsoft Word, Como inserção, exclusão, FormatChange, StyleDefinitionChange e movimentação. Todos os tipos de revisão são representados com a enumeração [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Observe que as revisões têm um resultado semelhante a Microsoft Word, mas Aspose.Words não detecta formatação durante o rastreamento de alterações.

{{% /alert %}}

## Iniciar e parar o acompanhamento das alterações

A edição de um documento geralmente não conta como uma revisão até que você comece a rastreá-lo. Aspose.Words permite-lhe controlar automaticamente todas as alterações no seu documento com passos simples. Você pode facilmente iniciar o processo de rastreamento de alterações usando o método [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/). Se você precisar interromper o processo de rastreamento de alterações para que quaisquer edições futuras não sejam consideradas revisões, você precisará usar o método [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Observe que o método `StartTrackingRevisions` não altera o status da propriedade [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) e não usa seu valor para o objetivo de rastreamento de revisão. Além disso, se um nó foi movido de um local para outro dentro do documento rastreado, as revisões de movimentação serão criadas, incluindo o intervalo de mudança de e de mudança para.

{{% /alert %}}

No final do processo de acompanhamento de alterações no seu documento, terá a capacidade de aceitar todas as revisões ou rejeitá-las para reverter o documento para a sua forma original. Isto pode ser conseguido utilizando o método [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) ou [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/). Além disso, você pode aceitar ou rejeitar cada revisão separadamente usando o método [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) ou [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/).

Todas as alterações serão rastreadas para uma iteração, desde o momento em que você inicia o processo até o momento em que o interrompe. A conexão entre diferentes iterações é representada como o seguinte cenário: você conclui o processo de Rastreamento, faz algumas alterações e começa a rastrear as alterações novamente. Com esse cenário, todas as alterações que você não aceitou ou rejeitou serão exibidas novamente.

{{% alert color="primary" %}}

Observe que o método `AcceptAllRevisions` é semelhante ao" aceitar todas as alterações " em Microsoft Word.

{{% /alert %}}

O exemplo de código a seguir mostra como trabalhar com o rastreamento de alterações:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

O exemplo de código a seguir mostra como as revisões são geradas quando um nó é movido dentro de um documento rastreado:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## Gerir e armazenar alterações como revisões

Com o recurso de rastreamento de alterações anterior, você pode entender quais alterações foram feitas em seu documento e quem as fez. Enquanto com o recurso [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/), Você força quaisquer alterações em seu documento a serem armazenadas como revisões.

Aspose.Words permite verificar se um documento tem uma revisão ou não utilizando a propriedade [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/). Se você não precisar rastrear automaticamente as alterações em seu documento por meio dos métodos StartTrackRevisions e StopTrackRevisions, poderá usar a propriedade `TrackRevisions` para verificar se as alterações são rastreadas durante a edição de um documento em Microsoft Word e armazenadas como revisões.

O recurso `TrackRevisions` faz revisões em vez de alterações reais DOM. Mas as revisões em si são separadas. Por exemplo, se você excluir qualquer parágrafo, Aspose.Words Faça-o como uma revisão, marcando-o como exclusão, em vez de excluí-lo.

Além disso, Aspose.Words permite verificar se um objeto foi inserido, excluído ou alterado [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), e [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) propriedades.

{{% alert color="primary" %}}

Observe que não há conexão entre as próprias revisões e a propriedade `TrackRevisions`. Além disso, você pode aceitar/rejeitar revisões, independentemente do recurso de rastreamento de alterações.

{{% /alert %}}

O exemplo de código a seguir mostra como aplicar propriedades diferentes com revisões:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
