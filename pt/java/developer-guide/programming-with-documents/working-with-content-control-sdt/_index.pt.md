---
title: Trabalhando com controle de Conteúdo SDT em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com controle de Conteúdo SDT
linktitle: Trabalhando com controle de Conteúdo SDT
type: docs
description: "Gerenciamento avançado de conteúdo de documentos, como criar e manipular controles de conteúdo (Tags de documentos estruturados) usando Java."
weight: 390
url: /pt/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Em Microsoft Word, você pode criar um formulário começando com um modelo e adicionando controles de conteúdo, incluindo checkboxes, caixas de texto, selecionadores de data e listas suspensas. Em Aspose.Words, uma Tag de documento estruturado ou controle de conteúdo de qualquer documento carregado em Aspose.Words é importado como um nó StructuredDocumentTag. As etiquetas de documentos estruturados (SDT ou controlo de conteúdos) permitem incorporar a semântica definida pelo cliente, bem como o seu comportamento e aparência num documento.

StructuredDocumentTag pode ocorrer num documento nos seguintes locais:

- Nível de bloco - entre parágrafos e tabelas, como filho de um corpo, HeaderFooter, comentário, nota de rodapé ou um nó de forma.
- Nível de linha-entre linhas em uma tabela, como filho de um nó de tabela.
- Cell-level-entre células em uma linha de tabela, como filho de um nó de linha.
- Inline-level-entre o conteúdo inline dentro, como filho de um parágrafo.
- Aninhado dentro de outro StructuredDocumentTag.

## Inserir controlos de conteúdo num documento

Nesta versão de Aspose.Words, os seguintes tipos de SDT ou controle de conteúdo podem ser criados:

- Checkbox
- DropDownList
- ComboBox
- Data
- BuildingBlockGallery
- Grupo
- `Picture`
- RichText
- PlainText

O exemplo de código a seguir mostra como criar o controle de conteúdo do tipo checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

O exemplo de código a seguir mostra como criar Controle de conteúdo do tipo rich text box:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

O exemplo de código a seguir mostra como criar o controle de conteúdo do tipo caixa de combinação:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Como atualizar os controlos de conteúdo

Esta seção explica como atualizar os valores de SDT ou controle de conteúdo programaticamente.

O exemplo de código a seguir mostra como definir o estado atual do checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

O exemplo de código a seguir mostra como modificar os controles de conteúdo do tipo caixa de texto simples, lista suspensa e imagem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Pode transferir o ficheiro de exemplo destes exemplos a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Vinculando o Controle de conteúdo a partes personalizadas XML

Você pode vincular controles de conteúdo com dados XML (*custom XML part*) em documentos do Word.

O exemplo de código a seguir mostra como vincular o controle de conteúdo a partes personalizadas XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Limpar conteúdo de um controlo de conteúdo

Você pode limpar o conteúdo de um controle de conteúdo exibindo um espaço reservado. **StructuredDocumentTag.clear()** método limpa o conteúdo desta etiqueta de documento estruturado e exibe um espaço reservado se estiver definido. No entanto, não é possível limpar o conteúdo de um controlo de conteúdo se este tiver revisões. Se um controlo de conteúdo não tiver espaço reservado, são inseridos cinco espaços como em MS Word (excepto secções repetidas, itens de secção repetidos, Grupos, Caixas de verificação, citações). Se um controle de conteúdo for mapeado para custom XML, o nó XML referenciado será limpo.

O exemplo de código a seguir mostra como limpar o conteúdo do controle de conteúdo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Alterar cores de fundo e borda do controle de conteúdo

A propriedade `StructuredDocumentTag.Color` permite obter ou definir a cor do controlo de conteúdo. A cor afeta o controle de conteúdo em duas situações:

1. MS o Word realça o fundo do controlo de conteúdo quando o rato se move sobre o controlo de conteúdo. Isso ajuda a identificar o controle de conteúdo. A cor do realce é um pouco" mais suave " do que o *Color*. Por exemplo, MS Word realça o fundo com a cor Rosa, quando *Color* é vermelho.
2. Quando você interage (editando, escolhendo etc.) com o controle de conteúdo, a borda do controle de conteúdo é colorida com o *Color*.

O exemplo de código a seguir mostra como alterar a cor do controle de conteúdo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Como definir o estilo para formatar o texto digitado no controle de conteúdo

Se pretender definir o estilo de controlo de conteúdo, pode utilizar as Propriedades `StructuredDocumentTag.Style` ou `StructuredDocumentTag.StyleName`. Quando você digita o texto no controle de conteúdo no documento de saída, o texto digitado terá o estilo "citação".

{{% alert color="primary" %}}

Observe que apenas estilos de Link e caracteres podem ser aplicados ao controle de conteúdo. Um InvalidOperationException ("não é possível aplicar este estilo ao SDT") é lançado quando um estilo que existe, mas não está vinculado ou o estilo de caractere está sendo aplicado.

{{% /alert %}}

O exemplo de código a seguir mostra como definir o estilo do controle de conteúdo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Trabalhando com controle de conteúdo de seção repetida

O controlo de conteúdo da secção de repetição permite repetir o conteúdo nele contido. Usando Aspose.Words, os nós de tag de documento estruturado da seção de repetição e os tipos de item de seção de repetição podem ser criados e, para esse fim, [SdtType Tipo de enumeração](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) fornece REPEATING_SECTION_ITEM membro.

O exemplo de código a seguir mostra como vincular um controle de conteúdo de seção repetida a uma tabela:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

