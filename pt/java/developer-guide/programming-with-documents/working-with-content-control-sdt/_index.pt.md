---
title: Trabalhando com o controle de conteúdo SDT em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com o controle de conteúdo SDT
linktitle: Trabalhando com o controle de conteúdo SDT
type: docs
description: "Gerenciamento avançado de conteúdo de documentos, como criar e manipular controles de conteúdo (Texto de documento) usando Java."
weight: 390
url: /pt/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Em Microsoft Word, você pode criar um formulário iniciando com um modelo e adicionando controles de conteúdo, incluindo caixas de seleção, caixas de texto, data pickers e listas suspensas. Em Aspose.Words, um documento estruturado Tag ou controle de conteúdo de qualquer documento carregado em Aspose.Words é importado como um nó StructuredDocumentTag. As tags de documentos estruturadas (SDT ou controle de conteúdo) permitem incorporar semântica definida pelo cliente, bem como seu comportamento e aparência em um documento.

Documento estruturado Tag pode ocorrer em um documento nos seguintes lugares:

- Nível do bloco - Entre parágrafos e tabelas, como uma criança de um corpo, HeaderFooter, Comentário, Nota de rodapé ou um nó de forma.
- Nível de linha - Entre linhas em uma tabela, como uma criança de um nó de tabela.
- Nível celular - Entre células em uma linha de tabela, como uma criança de um nó de linha.
- Nível inline - Entre conteúdo inline dentro, como uma criança de um Parágrafo.
- Aninhado dentro de outra estruturadaDocumentTag.

## Inserindo controles de conteúdo em um documento

Nesta versão de Aspose.Words, os seguintes tipos de SDT ou controle de conteúdo podem ser criados:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

O exemplo a seguir mostra como criar o controle de conteúdo da caixa de seleção do tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

O exemplo a seguir mostra como criar o controle de conteúdo da caixa de texto rica do tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

O exemplo a seguir mostra como criar o controle de conteúdo da caixa de combinação tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Como Atualizar Controles de Conteúdo

Esta seção explica como atualizar os valores do SDT ou controle de conteúdo programaticamente.

O exemplo de código a seguir mostra como definir o estado atual da caixa de seleção:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

O exemplo de código a seguir mostra como modificar controles de conteúdo de tipo caixa de texto simples, lista suspensa e imagem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra desses exemplos de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Controle de conteúdo de vinculação para peças XML personalizadas

Você pode vincular controles de conteúdo com dados XML (* parte XML personalizada*) em documentos do Word

O exemplo de código a seguir mostra como vincular o controle de conteúdo a peças XML personalizadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Limpar conteúdo de um controle de conteúdo

Você pode limpar o conteúdo de um controle de conteúdo com a exibição de um placeholder. **Documento estruturadoTag.clear()** método limpa o conteúdo desta tag de documento estruturado e exibe um placeholder se for definido. No entanto, Não é possível limpar o conteúdo de um controle de conteúdo se tiver revisões. Se um controle de conteúdo não tiver placeholder, cinco espaços são inseridos como no MS Word (exceto seções repetidas, itens de seção repetindo, grupos, caixas de seleção, citações). Se um controle de conteúdo for mapeado para XML personalizado, o nó XML referenciado é limpo.

O exemplo de código a seguir mostra como limpar o conteúdo do controle de conteúdo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Alterar o fundo de controle de conteúdo e cores de fronteira

O `StructuredDocumentTag.Color` propriedade permite que você obtenha ou defina a cor do controle de conteúdo. A cor afeta o controle de conteúdo em duas situações:

1. MS Word destaca o fundo do controle de conteúdo quando o mouse se move sobre o controle de conteúdo. Isso ajuda a identificar o controle de conteúdo. A cor do destaque é um pouco "mais suave" do que a *Color*. Por exemplo, o MS Word destaca o fundo com a cor rosa, quando *Color* É o Red.
2. Quando você interage (edição, escolha etc) com o controle de conteúdo, a borda do controle de conteúdo é colorida com o *Color*.

O exemplo de código a seguir mostra como alterar a cor do controle de conteúdo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Como definir estilo para formatar texto digitado no controle de conteúdo

Se você quiser definir o estilo de controle de conteúdo, você pode usar `StructuredDocumentTag.Style` ou `StructuredDocumentTag.StyleName` propriedades. Quando você digita o texto no controle de conteúdo no documento de saída, o texto digitado terá o estilo "Quote".

{{% alert color="primary" %}}

Note que apenas estilos Linked e Character podem ser aplicados ao controle de conteúdo. Um InvalidOperationException ("Não é possível aplicar este estilo ao SDT") é jogado quando um estilo que existe, mas não é Linked ou estilo de personagem está sendo aplicado.

{{% /alert %}}

O exemplo de código a seguir mostra como definir o estilo de controle de conteúdo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Trabalhando com controle de conteúdo de seção de repetição

O controle de conteúdo da seção de repetição permite repetir o conteúdo contido dentro dele. Usando Aspose.Words, os nós de etiqueta de documentos estruturados da seção de repetição e tipos de itens de seção de repetição podem ser criados e com esta finalidade, [Tipo de enumeração SdtType](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) fornece membro REPEATING_SECTION_ITEM.

O exemplo a seguir mostra como vincular um controle de conteúdo de seção repetindo a uma tabela:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

