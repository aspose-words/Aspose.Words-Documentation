---
title: Trabalhar com listas em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com listas
linktitle: Trabalhar com listas
description: "Introdução ao recurso de formatação de numeração em Aspose.Words para Java."
type: docs
weight: 200
url: /pt/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Uma lista em um documento Microsoft Word é um conjunto de propriedades de formatação de lista. As listas podem ser usadas em seus documentos para formatar, organizar e enfatizar o texto. As listas são uma ótima maneira de organizar dados em documentos e facilitam a compreensão dos pontos-chave pelos leitores.

Cada lista pode ter até 9 níveis e as propriedades de formatação, como estilo numérico, valor inicial, recuo, posição da guia e outras são definidas separadamente para cada nível.

Este artigo descreve o trabalho programático com listas utilizando Aspose.Words.

## Criando listas aplicando formatação de Lista

Aspose.Words permite a fácil criação de listas através da aplicação de formatação de listas. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) fornece a propriedade [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) que retorna um objeto **ListFormat**. Este objecto tem vários métodos para iniciar e terminar uma lista e para aumentar/diminuir o travessão. Existem dois tipos gerais de listas em Microsoft Word: com marcadores e numeradas:

- Para iniciar uma lista com marcadores, chame [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Para iniciar uma lista numerada, ligue para [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

O marcador ou o número e a formatação são adicionados ao parágrafo atual e todos os parágrafos adicionais criados usando **DocumentBuilder** até [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) serem chamados para interromper a formatação da lista com marcadores.

Nos documentos do Word, as listas podem consistir em até nove níveis. A formatação da lista para cada nível especifica qual marcador ou número é usado, recuo à esquerda, espaço entre o marcador e o texto, etc. Os métodos a seguir alteram o nível da lista e aplicam as propriedades de formatação do novo nível:

- Para aumentar o nível de lista do parágrafo atual em um nível, chame [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Para diminuir o nível de lista do parágrafo atual em um nível, chame [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Os métodos alteram o nível da lista e aplicam as propriedades de formatação do novo nível.

{{% alert color="primary" %}}

Você também pode usar a propriedade [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) para obter ou definir o nível da lista para o parágrafo. Os níveis da lista são numerados de 0 a 8.

{{% /alert %}}

O exemplo de código a seguir mostra como construir uma lista de vários níveis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Especificar a formatação de um nível de Lista

Os objetos de nível de lista são criados automaticamente quando uma lista é criada. Use as propriedades e métodos da classe [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) para controlar a formatação de níveis individuais de uma lista.

## Reiniciar a lista para cada secção

Você pode reiniciar uma lista para cada seção Usando a propriedade [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection). Note que esta opção é suportada apenas nos formatos de Documento RTF, DOC e DOCX. Esta opção será gravada em DOCX apenas se OoxmlCompliance for superior a Ecma376.

O exemplo de código a seguir mostra como criar uma lista e reiniciá-la para cada seção:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

