---
title: Trabalhando com listas em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com listas
linktitle: Trabalhando com listas
description: "Introdução ao recurso de formatação de numeração em Aspose.Words para .NET."
type: docs
weight: 200
url: /pt/net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Uma lista em um documento Microsoft Word é um conjunto de propriedades de formatação de parágrafo. As listas podem ser usadas em documentos para estruturar, organizar e destacar texto. As listas são uma ótima maneira de organizar dados em documentos de uma forma que facilita a absorção e a compreensão dos pontos-chave pelos leitores.

Cada lista pode ter até 9 níveis, e propriedades de formatação como estilo de número, valor inicial, recuo, posição de tabulação e outras são definidas separadamente para cada nível.

No Aspose.Words, trabalhar com listas é representado pelo namespace [Lists](https://reference.aspose.com/words/net/aspose.words.lists/). Porém, o objeto [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) sempre pertence ao [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/).

Este artigo descreve como trabalhar programaticamente com listas usando Aspose.Words.

## Crie listas aplicando formatação de lista

Aspose.Words permite a fácil criação de listas aplicando formatação de lista. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) fornece a propriedade [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) que retorna um objeto **ListFormat**. Este objeto possui vários métodos para iniciar e terminar uma lista e para aumentar/diminuir o recuo. Existem dois tipos gerais de listas em Microsoft Word: com marcadores e numeradas:

- Para iniciar uma lista com marcadores, ligue para [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- Para iniciar uma lista numerada, ligue para [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

O marcador ou número e a formatação são adicionados ao parágrafo atual e a todos os parágrafos adicionais criados usando **DocumentBuilder** até que [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) seja chamado para interromper a formatação da lista com marcadores.

Nos documentos do Word, as listas podem consistir em até nove níveis. A formatação da lista para cada nível especifica qual marcador ou número é usado, recuo à esquerda, espaço entre o marcador e o texto, etc. Os métodos a seguir alteram o nível da lista e aplicam as propriedades de formatação do novo nível:

- Para aumentar o nível da lista do parágrafo atual em um nível, chame [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- Para diminuir o nível da lista do parágrafo atual em um nível, chame [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

Você também pode usar a propriedade [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) para obter ou definir o nível de lista do parágrafo.

{{% alert color="primary" %}}

Os níveis da lista são numerados de 0 a 8.

{{% /alert %}}

O exemplo de código a seguir mostra como construir uma lista multinível:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Especifique a formatação para um nível de lista

Os objetos no nível da lista são criados automaticamente quando uma lista é criada. Use as propriedades e métodos da classe [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) para controlar a formatação de níveis individuais de uma lista.

## Lista de reinicialização para cada seção

Você pode reiniciar uma lista para cada seção usando a propriedade [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/). Observe que esta opção é suportada apenas nos formatos de documento RTF, DOC e DOCX. Esta opção será gravada em DOCX somente se OoxmlCompliance for superior a Ecma376.

O exemplo de código a seguir mostra como criar uma lista e reiniciá-la para cada seção:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
