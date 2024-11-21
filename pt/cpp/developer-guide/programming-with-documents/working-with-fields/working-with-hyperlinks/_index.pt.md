---
title: Trabalhando com hiperlinks em C++
second_title: Aspose.Words para C++
articleTitle: Adicionar ou modificar hiperligações
linktitle: Adicionar ou modificar hiperligações
description: "Como adicionar um hiperlink ao seu documento usando Aspose.Words para C++."
type: docs
weight: 180
url: /pt/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Um hiperlink em Microsoft Word documentos é o campo `HYPERLINK`. Em Aspose.Words, os hiperlinks são implementados através da classe [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## Inserir uma hiperligação

Utilize o método [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) para inserir uma hiperligação no documento. Este método Aceita três parâmetros:

1. Texto da ligação a apresentar no documento
2. Destino do Link (URL ou o nome de um marcador dentro do documento)
3. Parâmetro booleano que deve ser verdadeiro se `URL` for o nome de um marcador dentro do documento

O método **InsertHyperlink** sempre adiciona apóstrofos no início e no final do URL.

{{% alert color="primary" %}}

Observe que você precisa especificar a formatação da fonte para o texto de exibição do hiperlink explicitamente usando a propriedade `Font`.

{{% /alert %}}

O exemplo de código a seguir mostra como inserir um hiperlink em um documento usando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Substituir ou modificar hiperligações

Hiperligação em Microsoft Word documentos é um campo. Um campo em um documento do Word é uma estrutura complexa que consiste em vários nós que incluem início de campo, Código de campo, separador de campo, Resultado de campo e fim de campo. Os campos podem ser aninhados, conter conteúdo rico e abranger vários parágrafos ou seções em um documento.

A classe `FieldHyperlink` implementa o campo `HYPERLINK`.

O exemplo de código a seguir mostra como encontrar todos os hiperlinks no documento do Word e altera seu `URL` e nome de exibição:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
