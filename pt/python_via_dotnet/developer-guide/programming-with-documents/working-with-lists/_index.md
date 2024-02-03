---
title: Trabalhando com listas em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com listas
linktitle: Trabalhando com listas
description: "Crie, especifique a formatação e reinicie listas em um documento usando Python."
type: docs
weight: 200
url: /pt/python-net/working-with-lists/
---

Uma lista em um documento Microsoft Word é um conjunto de propriedades de formatação de lista. As listas podem ser usadas em seus documentos para formatar, organizar e enfatizar o texto. As listas são uma ótima maneira de organizar dados em documentos e facilitam a compreensão dos pontos principais pelos leitores

Cada lista pode ter até 9 níveis e propriedades de formatação, como estilo de número, valor inicial, recuo, posição de tabulação, etc., são definidas separadamente para cada nível.

No Aspose.Words, o trabalho com listas é representado pelo módulo [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/). Contudo, o objeto [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) sempre pertence à coleção [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/).

Este tópico descreve como trabalhar programaticamente com listas usando Aspose.Words

## Criando listas aplicando formatação de lista

Aspose.Words permite a fácil criação de listas aplicando formatação de lista. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) fornece a propriedade [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) que retorna um objeto [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/). Este objeto possui vários métodos para iniciar e terminar uma lista e para aumentar/diminuir o recuo. Existem dois tipos gerais de listas em Microsoft Word: com marcadores e numeradas.

- Para iniciar uma lista com marcadores, ligue para [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Para iniciar uma lista numerada, ligue para [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

O marcador ou número e a formatação são adicionados ao parágrafo atual e a todos os parágrafos adicionais criados usando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) até que [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) seja chamado para interromper a formatação da lista com marcadores.

Nos documentos do Word, as listas podem consistir em até nove níveis. A formatação da lista para cada nível especifica qual marcador ou número é usado, recuo à esquerda, espaço entre o marcador e o texto, etc. Os métodos a seguir alteram o nível da lista e aplicam as propriedades de formatação do novo nível:

- Para aumentar o nível da lista do parágrafo atual em um nível, chame [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Para diminuir o nível da lista do parágrafo atual em um nível, chame [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Os métodos alteram o nível da lista e aplicam as propriedades de formatação do novo nível.

{{% alert color="primary" %}}

Você também pode usar a propriedade [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) para obter ou definir o nível de lista do parágrafo. Os níveis da lista são numerados de 0 a 8.

{{% /alert %}}

O exemplo abaixo mostra como construir uma lista multinível.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Especifique a formatação para um nível de lista

Os objetos no nível da lista são criados automaticamente quando uma lista é criada. Use as propriedades e métodos da classe [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) para controlar a formatação de níveis individuais de uma lista.

## Lista de reinicialização para cada seção

Você pode reiniciar uma lista para cada seção usando a propriedade [Propriedade is_restart_at_each_section](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/). Observe que esta opção é suportada apenas nos formatos de documento RTF, DOC e DOCX. Esta opção será gravada em DOCX somente se OoxmlCompliance for superior a Ecma376.

O exemplo de código a seguir mostra como criar uma lista e reiniciá-la para cada seção:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
