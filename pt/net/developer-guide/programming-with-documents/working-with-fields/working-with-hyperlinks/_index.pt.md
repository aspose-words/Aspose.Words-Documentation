---
title: Trabalhando com hiperlinks em C#
second_title: Aspose.Words para .NET
articleTitle: Adicionar ou modificar hiperlinks
linktitle: Adicionar ou modificar hiperlinks
description: "Como adicionar um hiperlink ao seu documento em C# usando Aspose.Words para .NET."
type: docs
weight: 50
url: /pt/net/working-with-hyperlinks/
---

Um hiperlink em documentos Microsoft Word é o campo `HYPERLINK`. Em Aspose.Words, os hiperlinks são implementados por meio da classe [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/).

## Insira um hiperlink

Use o método [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) para inserir um hiperlink no documento. Este método aceita três parâmetros:

1. Texto do link a ser exibido no documento
2. Destino do link (URL ou nome de um favorito dentro do documento)
3. Parâmetro booleano que deve ser true se o `URL` for o nome de um marcador dentro de um documento

O método **InsertHyperlink** sempre adiciona apóstrofos no início e no final da URL

{{% alert color="primary" %}}

Observe que você precisa especificar explicitamente a formatação da fonte para o texto de exibição do hiperlink usando a propriedade `Font`.

{{% /alert %}}

O exemplo de código a seguir mostra como inserir um hiperlink em um documento usando [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Substitua ou modifique hiperlinks

O hiperlink em documentos Microsoft Word é um campo. Um campo em um documento do Word, como dissemos anteriormente, é uma estrutura complexa que consiste em vários nós que incluem início do campo, código do campo, separador de campo, resultado do campo e final do campo. Os campos podem ser aninhados, conter conteúdo rico e abranger vários parágrafos ou seções em um documento.

Para substituir ou modificar hiperlinks, é necessário localizar os hiperlinks no documento e substituir seu texto, URLs ou ambos.

O exemplo de código a seguir mostra como localizar todos os hiperlinks em um documento do Word e alterar seu `URL` e nome de exibição:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
