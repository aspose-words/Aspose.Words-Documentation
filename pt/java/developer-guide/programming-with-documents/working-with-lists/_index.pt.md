---
title: Trabalhando com Listas em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com listas
linktitle: Trabalhando com listas
description: "Introdução ao recurso de formatação de numeração em Aspose.Words para Java."
type: docs
weight: 200
url: /pt/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Uma lista em uma Microsoft Word documento é um conjunto de propriedades de formatação de lista. Listas podem ser usadas em seus documentos para formatar, organizar e enfatizar texto. As listas são uma ótima maneira de organizar dados em documentos, e facilitam que os leitores compreendam pontos-chave.

Cada lista pode ter até 9 níveis e propriedades de formatação, tais como o estilo do número, o valor de início, o recuo, a posição da guia e outros são definidos separadamente para cada nível.

Este artigo descreve programaticamente trabalhando com listas usando Aspose.Words.

## Criando listas aplicando formatação de lista

Aspose.Words permite a criação fácil de listas aplicando a formatação da lista. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) fornece o [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) propriedade que retorna uma **ListFormat** objeto. Este objeto tem vários métodos para iniciar e terminar uma lista e aumentar/diminuir o recuo. Existem dois tipos gerais de listas em Microsoft Word: balada e numerada:

- Para iniciar uma lista, ligue [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Para iniciar uma lista numerada, ligue [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

A bala ou número e formatação são adicionados ao parágrafo atual e todos os outros parágrafos criados usando **DocumentBuilder** até [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) é chamado para parar a formatação da lista com marcadores.

Em documentos do Word, as listas podem consistir em até nove níveis. A formatação da lista para cada nível especifica o que a bala ou o número é usado, o recuo esquerdo, o espaço entre a bala e o texto etc. Os seguintes métodos mudam o nível de lista e aplicam as propriedades de formatação do novo nível:

- Não. Para aumentar o nível de lista do parágrafo atual por um nível, ligue [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Não. Para diminuir o nível de lista do parágrafo atual por um nível, ligue [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Os métodos mudam o nível de lista e aplicam as propriedades de formatação do novo nível.

{{% alert color="primary" %}}

Você também pode usar o [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) propriedade para obter ou definir o nível de lista para o parágrafo. Os níveis de lista são numerados de 0 a 8.

{{% /alert %}}

O exemplo de código a seguir mostra como construir uma lista multinível:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Especificar formatação para um nível de lista

Os objetos de nível de lista são criados automaticamente quando uma lista é criada. Use as propriedades e métodos do [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) classe para controlar a formatação de níveis individuais de uma lista.

## Lista de reinício para cada seção

Você pode reiniciar uma lista para cada seção usando o [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) propriedade. Note que esta opção é suportada apenas em formatos de documento RTF, DOC e DOCX. Esta opção será escrita apenas para DOCX se OoxmlCompliance é maior, então Ecma376.

O exemplo de código a seguir mostra como criar uma lista e reiniciá-la para cada seção:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

