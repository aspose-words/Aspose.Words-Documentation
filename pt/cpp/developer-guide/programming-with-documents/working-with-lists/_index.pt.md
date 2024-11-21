---
title: Trabalhar com listas em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar Com Listas
linktitle: Trabalhar Com Listas
description: "Introdução ao recurso de formatação de numeração em Aspose.Words para C++."
type: docs
weight: 200
url: /pt/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

Uma lista em um documento Microsoft Word é um conjunto de propriedades de formatação de lista. As listas podem ser usadas em seus documentos para formatar, organizar e enfatizar o texto. As listas são uma ótima maneira de organizar dados em documentos e facilitam a compreensão dos pontos-chave pelos leitores.

Cada lista pode ter até 9 níveis e as propriedades de formatação, como estilo numérico, valor inicial, recuo, posição da tabulação, etc., são definidas separadamente para cada nível.

Em Aspose.Words, trabalhar com listas é representado pelo namespace [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/). No entanto, o objecto [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) pertence sempre à colecção [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

Este tópico descreve como trabalhar programaticamente com listas usando Aspose.Words.

## Especificar a formatação de um nível de Lista

Os objetos de nível de lista são criados automaticamente quando uma lista é criada. Use as propriedades e métodos da classe [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) para controlar a formatação de níveis individuais de uma lista.

## Reiniciar a lista para cada secção

Você pode reiniciar uma lista para cada seção Usando a propriedade [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Note que esta opção é suportada apenas nos formatos de Documento RTF, DOC e DOCX. Esta opção será gravada em DOCX apenas se OoxmlCompliance for superior a Ecma376.

O exemplo de código a seguir mostra como criar uma lista e reiniciá-la para cada seção:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
