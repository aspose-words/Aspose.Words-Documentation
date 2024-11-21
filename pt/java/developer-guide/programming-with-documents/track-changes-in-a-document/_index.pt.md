---
title: Rastrear mudanças em um documento em Java
second_title: Aspose.Words para Java
articleTitle: Rastrear mudanças em um documento
linktitle: Rastrear mudanças em um documento
description: "Rastrear mudanças no conteúdo e formatação feitas por você ou por outros. Acesse revisões individuais em um documento e aplique várias propriedades a elas usando Java."
type: docs
weight: 270
url: /pt/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

A funcionalidade de mudanças de faixa, também conhecida como revisão, permite que você rastreie mudanças no conteúdo e formatação feitas por você ou outros usuários. Este recurso de alterações de faixa com Aspose.Words suporta mudanças de faixa em Microsoft Word. Com essa funcionalidade, você pode acessar revisões individuais em seu documento e aplicar diferentes propriedades a elas.

Quando você ativar o recurso de alterações de faixa, todos os elementos inseridos, excluídos e modificados do documento serão visualmente destacados com informações sobre quem, quando e o que foi alterado. Objetos que carregam informações sobre o que foi alterado são chamados de "mudanças de rastreamento". Por exemplo, assuma que você deseja rever um documento e fazer mudanças importantes – isso pode significar que você precisa fazer revisões. Além disso, você pode precisar inserir comentários para discutir algumas das mudanças. É aí que entram as mudanças de rastreamento nos documentos.

Este artigo explica como gerenciar e rastrear mudanças criadas por muitos revisores no mesmo documento, bem como as propriedades para rastreamento de mudanças.

{{% alert color="primary" %}}

Note que o recurso de comentário em Aspose.Words, bem como em Microsoft Word, pode estar associado a mudanças de rastreamento. No entanto, lembre-se de que os comentários são completamente independentes das mudanças de rastreamento.

{{% /alert %}}

## O que é uma revisão

Antes de mergulhar em revisões, vamos explicar o significado de revisões. A [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) é uma mudança que ocorre em um nó de um documento enquanto um grupo de revisão, representado pelo [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) classe, é um grupo de revisões sequenciais que ocorrem em muitos nós de um documento. A revisão é uma ferramenta para rastrear mudanças.

As revisões são usadas no recurso de alterações de rastreamento e dentro do recurso de documentos de comparação, onde as revisões aparecem como resultado da comparação. Assim, as revisões dentro do recurso de alterações de rastreamento mostram por quem e o que foi alterado.

{{% alert color="primary" %}}

Note que Microsoft Word não permite que você visualize revisões individuais, ele só permite que você veja revisões sequenciais como uma única entidade. Mas... Aspose.Words resolve esta limitação com a **RevisionGroup** classe.

{{% /alert %}}

Aspose.Words suporta diferentes tipos de revisão, bem como em Microsoft Word, como inserção, exclusão, formato Mudança, definição de estilo Mudar e mover. Todos os tipos de revisão são representados com [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) enumeração.

{{% alert color="primary" %}}

Note que as revisões têm um resultado semelhante ao Microsoft Word mas... Aspose.Words não detecta formatação durante as mudanças de rastreamento.

{{% /alert %}}

## Comece e pare de rastrear mudanças

Editar um documento normalmente não conta como uma revisão até começar a rastreá-lo. Aspose.Words permite rastrear automaticamente todas as alterações no seu documento com passos simples. Você pode facilmente iniciar o processo de rastreamento de alterações usando o [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) método. Se você precisar parar o processo de rastreamento de alterações para que quaisquer edições futuras não sejam consideradas revisões, você precisará usar o [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) método.

{{% alert color="primary" %}}

Note que o `StartTrackingRevisions` método não altera o status do [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) propriedade e não usa seu valor para o objetivo de rastreamento de revisão. Além disso, se um nó foi movido de um local para outro dentro do documento rastreado, então as revisões serão criadas, incluindo mover-de e mover-para o intervalo.

{{% /alert %}}

No final do processo de rastreamento de alterações em seu documento, você terá a capacidade de até aceitar todas as revisões ou rejeitá-las para reverter o documento para sua forma original. Isso pode ser alcançado usando o [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) ou [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) método. Além disso, você pode aceitar ou rejeitar cada revisão separadamente usando o [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) ou [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) método.

Todas as mudanças serão rastreadas para uma iteração desde o momento em que você iniciar o processo até o momento em que você parar. A conexão entre diferentes iterações é representada como o seguinte cenário: você completa o processo de rastreamento, em seguida, fazer algumas mudanças e começar a rastrear mudanças novamente. Com este cenário, todas as mudanças que você não aceitou ou rejeitar serão exibidas novamente.

{{% alert color="primary" %}}

Note que o `AcceptAllRevisions` método é semelhante ao "Aceitar todas as mudanças" em Microsoft Word.

{{% /alert %}}

O exemplo a seguir mostra como trabalhar com mudanças de rastreamento:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

O exemplo de código a seguir mostra como as revisões são geradas quando um nó é movido dentro de um documento rastreado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Gerenciar e armazenar alterações como Revisões

Com o recurso de alterações de rastreamento anterior, você pode entender quais mudanças foram feitas em seu documento e quem fez essas mudanças. Enquanto com o [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) recurso, você força quaisquer alterações dentro do seu documento a serem armazenadas como revisões.

Aspose.Words permite verificar se um documento tem uma revisão ou não usando o [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) propriedade. Se você não precisa rastrear automaticamente as alterações em seu documento através dos métodos StartTrackRevisions e StopTrackRevisions, então você pode usar o `TrackRevisions` propriedade para verificar se as alterações são rastreadas ao editar um documento Microsoft Word e armazenado como revisões.

O `TrackRevisions` recurso faz revisões em vez de real DOM mudanças. Mas as próprias revisões são separadas. Por exemplo, Se você excluir qualquer parágrafo, Aspose.Words torná-lo como uma revisão, marcando-o como exclusão, em vez de deletá-lo.

Além disso, Aspose.Words permite verificar se um objeto foi inserido, excluído ou alterado formatação usando o [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), e [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) propriedades.

{{% alert color="primary" %}}

Note que não há conexão entre as próprias revisões e as `TrackRevisions` propriedade. Além disso, você pode aceitar / rejeitar revisões, independentemente do recurso de alterações de rastreamento.

{{% /alert %}}

O exemplo de código a seguir mostra como aplicar diferentes propriedades com revisões:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
