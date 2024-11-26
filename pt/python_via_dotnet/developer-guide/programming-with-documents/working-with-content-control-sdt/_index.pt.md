---
title: Trabalhando com SDT de controle de conteúdo
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com SDT de controle de conteúdo
linktitle: Trabalhando com SDT de controle de conteúdo
description: "Usando python você pode incorporar a semântica definida pelo cliente, bem como seu comportamento e aparência em um documento."
type: docs
weight: 390
url: /pt/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

No Microsoft Word, você pode criar um formulário começando com um modelo e adicionando controles de conteúdo, incluindo caixas de seleção, caixas de texto, seletores de data e listas suspensas. No Aspose.Words, uma tag de documento estruturado ou controle de conteúdo de qualquer documento carregado no Aspose.Words é importado como um nó [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/). Tags estruturadas de documentos (SDT ou controle de conteúdo) permitem incorporar a semântica definida pelo cliente, bem como seu comportamento e aparência em um documento. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) pode ocorrer em um documento nos seguintes locais:

- Nível de bloco - Entre parágrafos e tabelas, como filho de um nó [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) ou [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- Nível de linha - Entre as linhas de uma tabela, como filho de um nó [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- Nível de célula - Entre células em uma linha da tabela, como filho de um nó [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- Nível inline - Entre o conteúdo inline interno, como filho de um [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Aninhado dentro de outro [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

## Inserindo controles de conteúdo em um documento

Nesta versão do Aspose.Words, os seguintes tipos de SDT ou controle de conteúdo podem ser criados:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

O exemplo de código a seguir demonstra como criar um controle de conteúdo do tipo checkbox.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

O exemplo de código a seguir demonstra como criar controle de conteúdo do tipo caixa de rich text.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

O exemplo de código a seguir demonstra como criar controle de conteúdo da caixa de combinação de tipo.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Como atualizar os controles de conteúdo

Esta seção explica como atualizar os valores de SDT ou controle de conteúdo de forma programática

O exemplo de código a seguir mostra como definir o estado atual da caixa de seleção:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

O exemplo de código a seguir mostra como modificar controles de conteúdo do tipo caixa de texto simples, lista suspensa e imagem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra desses exemplos em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Vinculando controle de conteúdo a partes XML personalizadas

Você pode vincular controles de conteúdo a dados XML (*parte XML personalizada*) em documentos do Word.

O exemplo de código a seguir mostra como vincular o controle de conteúdo a partes XML personalizadas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## Mapeamento XML do intervalo de tags de documentos estruturados

Você pode obter o mapeamento desse intervalo de tags de documento estruturado para dados XML em uma parte XML personalizada do documento atual usando a propriedade [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/). No entanto, o método [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) pode ser usado para mapear um intervalo de tags de documento estruturado para dados XML.

O exemplo de código a seguir mostra como definir o mapeamento XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Limpar conteúdo de um controle de conteúdo

Você pode limpar o conteúdo de um controle de conteúdo exibindo um espaço reservado. O método [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) limpa o conteúdo desta tag de documento estruturado e exibe um espaço reservado, se estiver definido. Porém, não é possível limpar o conteúdo de um controle de conteúdo se ele tiver revisões. Se um controle de conteúdo não tiver espaço reservado, cinco espaços serão inseridos como no MS Word (exceto seções repetidas, itens de seção repetidos, grupos, caixas de seleção, citações). Se um controle de conteúdo for mapeado para XML customizado, o nó XML referenciado será limpo.

O exemplo de código a seguir mostra como limpar o conteúdo do controle de conteúdo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Alterar cores de fundo e borda do controle de conteúdo

A propriedade [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) permite obter ou definir a cor do controle de conteúdo. A cor afeta o controle de conteúdo em duas situações:

1. O MS Word destaca o plano de fundo do controle de conteúdo quando o mouse passa sobre o controle de conteúdo. Isso ajuda a identificar o controle de conteúdo. A cor do realce é um pouco mais "suave" que a do *color*. Por exemplo, o MS Word destaca o fundo com a cor rosa, quando *color* está vermelho.
2. Quando você interage (edição, seleção, etc.) com o controle de conteúdo, a borda do controle de conteúdo é colorida com o *color*.

O exemplo de código a seguir mostra como alterar a cor do controle de conteúdo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Como definir o estilo para formatar o texto digitado no controle de conteúdo

Se quiser definir o estilo do controle de conteúdo, você pode usar as propriedades [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) ou [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/). Ao digitar o texto no controle de conteúdo do documento de saída, o texto digitado terá o estilo "Citação".

{{% alert color="primary" %}}

Observe que apenas os estilos Vinculado e Caractere podem ser aplicados ao controle de conteúdo. Uma exceção ("Não é possível aplicar este estilo ao SDT") é lançada quando um estilo que existe, mas não é Linked ou Character, está sendo aplicado.

{{% /alert %}}

O exemplo de código a seguir mostra como definir o estilo do controle de conteúdo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Trabalhando com controle de conteúdo de seção repetida

O controle de conteúdo da seção de repetição permite repetir o conteúdo contido nela. Usando Aspose.Words, os nós de tag de documento estruturado da seção de repetição e dos tipos de item de seção de repetição podem ser criados e, para esse propósito, o tipo de enumeração [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) fornece propriedade [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item).

O exemplo de código a seguir mostra como vincular um controle de conteúdo de seção repetida a uma tabela:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
