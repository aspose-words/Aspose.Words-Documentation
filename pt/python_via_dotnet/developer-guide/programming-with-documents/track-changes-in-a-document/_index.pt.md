---
title: Rastrear alterações em um documento
second_title: Aspose.Words para Python via .NET
articleTitle: Rastrear alterações em um documento
linktitle: Rastrear alterações em um documento
description: "Rastreie alterações no conteúdo e na formatação feitas por você ou por outras pessoas usando Python. Acesse revisões individuais em um documento e aplique diversas propriedades a elas."
type: docs
weight: 270
url: /pt/python-net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

A funcionalidade de rastrear alterações, também conhecida como revisão, permite rastrear alterações no conteúdo e na formatação feitas por você ou por outros usuários. Este recurso de controle de alterações com Aspose.Words suporta alterações de controle em Microsoft Word. Com esta funcionalidade, você pode acessar revisões individuais em seu documento e aplicar propriedades diferentes a elas.

Quando você ativa o recurso de controle de alterações, todos os elementos inseridos, excluídos e modificados do documento serão destacados visualmente com informações sobre quem, quando e o que foi alterado. Os objetos que carregam as informações sobre o que foi alterado são chamados de "rastreamento de alterações". Por exemplo, suponha que você queira revisar um documento e fazer alterações importantes – isso pode significar que você precisa fazer revisões. Além disso, pode ser necessário inserir comentários para discutir algumas das alterações. É aí que entra o rastreamento de alterações nos documentos.

Este artigo explica como gerenciar e rastrear alterações criadas por vários revisores no mesmo documento, bem como as propriedades para rastrear alterações.

{{% alert color="primary" %}}

Observe que o recurso de comentários em Aspose.Words, assim como em Microsoft Word, pode ser associado ao rastreamento de alterações. No entanto, lembre-se de que os comentários são completamente independentes do rastreamento de alterações.

{{% /alert %}}

## O que é uma revisão

Antes de mergulhar nas revisões, vamos explicar o significado das revisões. Um [Revision](https://reference.aspose.com/words/python-net/aspose.words/revision/) é uma alteração que ocorre em um nó de um documento, enquanto um grupo de revisões, representado pela classe [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/), é um grupo de revisões sequenciais que ocorrem em vários nós de um documento. Basicamente, a revisão é uma ferramenta para rastrear alterações.

As revisões são usadas no recurso de controle de alterações e no recurso de comparação de documentos, onde as revisões aparecem como resultado da comparação. Portanto, as revisões no recurso de rastreamento de alterações mostram quem e o que foi alterado.

{{% alert color="primary" %}}

Observe que Microsoft Word não permite visualizar revisões individuais, apenas permite visualizar revisões sequenciais como uma única entidade. Mas o Aspose.Words resolve essa limitação com a classe [RevisionGroup](https://reference.aspose.com/words/python-net/aspose.words/revisiongroup/).

{{% /alert %}}

Aspose.Words oferece suporte a diferentes tipos de revisão, bem como em Microsoft Word, como inserção, exclusão, FormatChange, StyleDefinitionChange e movimentação. Todos os tipos de revisão são representados com a enumeração [RevisionType](https://reference.aspose.com/words/python-net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Observe que as revisões têm um resultado semelhante ao Microsoft Word, mas o Aspose.Words não detecta a formatação durante o rastreamento das alterações.

{{% /alert %}}

## Iniciar e parar de monitorar alterações

A edição de um documento geralmente não conta como uma revisão até que você comece a rastreá-lo. Aspose.Words permite rastrear automaticamente todas as alterações em seu documento com etapas simples. Você pode iniciar facilmente o processo de rastreamento de alterações usando o método [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/). Se precisar interromper o processo de rastreamento de alterações para que quaisquer edições futuras não sejam consideradas revisões, você precisará usar o método [stop_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/stop_track_revisions/).

{{% alert color="primary" %}}

Observe que o método [start_track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/start_track_revisions/) não altera o status da propriedade [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) e não utiliza seu valor para fins de rastreamento de revisões. Além disso, se um nó foi movido de um local para outro dentro do documento rastreado, serão criadas revisões de movimentação, incluindo intervalo de movimentação de e movimentação para.

{{% /alert %}}

Ao final do processo de rastreamento de alterações em seu documento, você poderá até mesmo aceitar todas as revisões ou rejeitá-las para reverter o documento à sua forma original. Isso pode ser conseguido usando o método [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) ou [reject_all](https://reference.aspose.com/words/python-net/aspose.words/revisioncollection/reject_all/). Além disso, você pode aceitar ou rejeitar cada revisão separadamente usando o método [accept](https://reference.aspose.com/words/python-net/aspose.words/revision/accept/) ou [reject](https://reference.aspose.com/words/python-net/aspose.words/revision/reject/).

Todas as alterações serão rastreadas em uma iteração, desde o momento em que você inicia o processo até o momento em que o interrompe. A conexão entre diferentes iterações é representada no seguinte cenário: você conclui o processo de rastreamento, depois faz algumas alterações e começa a rastrear as alterações novamente. Neste cenário, todas as alterações que você não aceitou ou rejeitou serão exibidas novamente.

{{% alert color="primary" %}}

Observe que o método [accept_all_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/accept_all_revisions/) é semelhante a "Aceitar todas as alterações" em Microsoft Word.

{{% /alert %}}

O exemplo de código a seguir mostra como trabalhar com o rastreamento de alterações:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-AcceptAllRevisions.py" >}}

O exemplo de código a seguir mostra como as revisões são geradas quando um nó é movido em um documento controlado:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-MoveNodeInTrackedDocument.py" >}}

## Gerenciar e armazenar alterações como revisões

Com o recurso de rastreamento de alterações anterior, você pode entender quais alterações foram feitas em seu documento e quem as fez. Enquanto estiver usando o recurso [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/), você forçará o armazenamento de quaisquer alterações em seu documento como revisões.

Aspose.Words permite verificar se um documento possui revisão ou não através da propriedade [has_revision](https://reference.aspose.com/words/python-net/aspose.words/document/has_revisions/). Se você não precisar rastrear automaticamente as alterações em seu documento por meio dos métodos start_track_revisions e stop_track_revisions, poderá usar a propriedade [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) para verificar se as alterações são rastreadas durante a edição de um documento em Microsoft Word e armazenadas como revisões.

O recurso [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/) faz revisões em vez de alterações reais no DOM. Mas as próprias revisões são separadas. Por exemplo, se você excluir qualquer parágrafo, o Aspose.Words o tornará uma revisão, marcando-o como exclusão, em vez de excluí-lo.

Além disso, Aspose.Words permite verificar se um objeto foi inserido, excluído ou alterado de formatação usando as propriedades [is_delete_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_delete_revision/), [is_format_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_format_revision/), [is_insert_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_insert_revision/), [is_move_from_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_from_revision/) e [is_move_to_revision](https://reference.aspose.com/words/python-net/aspose.words/inline/is_move_to_revision/).

{{% alert color="primary" %}}

Observe que não há conexão entre as próprias revisões e a propriedade [track_revisions](https://reference.aspose.com/words/python-net/aspose.words/document/track_revisions/). Além disso, você pode aceitar/rejeitar revisões independentemente do recurso de rastreamento de alterações.

{{% /alert %}}

O exemplo de código a seguir mostra como aplicar diferentes propriedades com revisões:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShapeRevision.py" >}}
