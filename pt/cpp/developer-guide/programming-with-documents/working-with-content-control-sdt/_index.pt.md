---
title: Trabalhando com controle de Conteúdo SDT
second_title: Aspose.Words para C++
articleTitle: Trabalhando com controle de Conteúdo SDT
linktitle: Trabalhando com controle de Conteúdo SDT
type: docs
description: "Gerenciamento avançado de conteúdo de documentos, como criar e manipular controles de conteúdo (Tags de documentos estruturados) usando C++."
weight: 390
url: /pt/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

Em Microsoft Word, você pode criar um formulário começando com um modelo e adicionando controles de conteúdo, incluindo caixas de seleção, caixas de texto, selecionadores de data e listas suspensas. Em Aspose.Words, uma Tag de documento estruturado ou controle de conteúdo de qualquer documento carregado em Aspose.Words é importado como um nó StructuredDocumentTag. As etiquetas de documentos estruturados (SDT ou controlo de conteúdo) permitem incorporar a semântica definida pelo cliente, bem como o seu comportamento e aparência num documento. StructuredDocumentTag pode ocorrer num documento nos seguintes locais:

- Nível de bloco - entre parágrafos e tabelas, como filho de um corpo, HeaderFooter, comentário, nota de rodapé ou um nó de forma
- Row-level-entre linhas em uma tabela, como filho de um nó de tabela
- Cell-level-entre células em uma linha de tabela, como filho de um nó de linha
- Inline-level-entre o conteúdo inline dentro, como filho de um parágrafo
- Aninhado dentro de outro StructuredDocumentTag

## Como definir o estilo para formatar o texto digitado no controle de conteúdo

Se pretender definir o estilo de controlo de conteúdo, pode utilizar as Propriedades `StructuredDocumentTag.Style` ou `StructuredDocumentTag.StyleName`. Quando você digita o texto no controle de conteúdo no documento de saída, o texto digitado terá o estilo "citação".

{{% alert color="primary" %}}

Observe que apenas estilos de Link e caracteres podem ser aplicados ao controle de conteúdo. Um InvalidOperationException ("não é possível aplicar este estilo ao SDT") é lançado quando um estilo que existe, mas não está vinculado ou o estilo de caractere está sendo aplicado.

{{% /alert %}}

O exemplo de código a seguir mostra como definir o estilo do controle de conteúdo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Trabalhando com controle de conteúdo de seção repetida

O controlo de conteúdo da secção de repetição permite repetir o conteúdo nele contido. Usando Aspose.Words, os nós de tag de documento estruturado da seção de repetição e os tipos de item de seção de repetição podem ser criados e, para esse fim, o tipo de enumeração SdtType fornece a propriedade **RepeatingSectionItem**.

O exemplo de código a seguir mostra como vincular um controle de conteúdo de seção repetida a uma tabela:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
