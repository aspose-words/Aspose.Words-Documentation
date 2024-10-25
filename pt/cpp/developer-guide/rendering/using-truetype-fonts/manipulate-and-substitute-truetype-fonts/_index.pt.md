---
title: Manipular e substituir fontes TrueType Em C++
second_title: Aspose.Words para C++
articleTitle: Manipular e substituir fontes TrueType
linktitle: Manipular e substituir fontes TrueType
description: "Aspose.Words para C++ pode incorporar as fontes TrueType corretas no documento resultante para garantir que ele seja exibido com precisão. Se uma fonte ou um caractere específico não estiver disponível, Aspose.Words procura uma substituição de fonte adequada ou usa o mecanismo de fallback de fonte."
type: docs
weight: 10
url: /pt/cpp/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words requer TrueType fontes para uma variedade de tarefas, incluindo a renderização de documentos em formatos de página fixa, por exemplo, PDF ou XPS. Quando Aspose.Words renderiza um documento, ele precisa realizar a incorporação e a incorporação de subconjuntos de fontes TrueType no documento resultante, o que é uma prática normal durante a geração de um documento, incluindo os formatos populares PDF ou XPS. Isso garante que o documento apareça da mesma forma para qualquer visualizador. Além disso, a especificação XPS exige que as fontes sejam sempre incorporadas no documento.

Para garantir que Aspose.Words mede com precisão os caracteres e incorpora com sucesso fontes relevantes, as seguintes condições devem ser atendidas:

1. Aspose.Words deve ser capaz de encontrar e acessar TrueType arquivos de fonte no sistema.
1. Deve haver fontes TrueType suficientes disponíveis para Aspose.Words, de preferência com os mesmos nomes de família de fontes que os utilizados no documento.

Observe que a fonte no documento representa uma entidade, como nome de família, estilo, tamanho, cor, que é diferente da entidade `TrueType` Fonte (Fonte física). Aspose.Words resolve a fonte no documento para uma fonte física em algum estágio do processamento. Isso permite certas tarefas, mais comumente a tarefa de calcular o tamanho do texto durante a construção do layout e a incorporação/subconjunto em formatos de página fixa. Uma série de outras tarefas menos populares, como resolução e substituição de fontes durante o carregamento HTML ou incorporação/subconjunto em alguns formatos de fluxo, também estão habilitadas.

## Onde Aspose.Words procura fontes

Aspose.Words tenta encontrar fontes TrueType no sistema de ficheiros automaticamente. Normalmente, você pode confiar no comportamento padrão de Aspose.Words para encontrar as fontes `TrueType`, mas às vezes você precisa especificar suas próprias pastas contendo fontes TrueType. O [Especificar TrueType Localização Das Fontes](/words/cpp/specify-truetype-fonts-location/) o tópico descreve como e onde Aspose.Words procura fontes, bem como como especificar as suas próprias localizações de fontes.

## Diferenças no processamento dos formatos de fonte em Aspose.Words e Microsoft Word

Existem algumas diferenças no processamento dos formatos de fonte em Aspose.Words e Microsoft Word, conforme mostrado na tabela abaixo:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType fontes e OpenType fontes com TrueType contornos | Apoiado. | Apoiado. |
| OpenType fontes com PostScript contornos | Suportado para a maioria dos cenários. A incorporação em formatos de página fixa, como PDF e XPS, não é suportada. O texto é substituído por imagens bitmap. | Suportado para a maioria dos cenários, incluindo a incorporação em formatos de página fixa. |
| OpenType Variações De Fonte | Apenas instâncias nomeadas são suportadas. Variações contínuas não suportadas. | Suportado para a única instância padrão. Instâncias nomeadas e variações contínuas não são suportadas. |
| Fontes Type1 | Suportado em Windows versões anteriores a 2013 e em versões do MacOS. O suporte é descartado em Windows versões a partir de 2013. | Não suportado. |


