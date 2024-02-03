---
title: Renderizando em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Renderização
linktitle: Renderização
description: "Use o recurso de renderização Aspose.Words para Python via .NET para formatar um documento de layout de fluxo em páginas e converter esse documento ou páginas selecionadas em outros formatos de documentos (PDF, HTML, XPS, etc.) ou imagens (TIFF, PNG, SVG, etc.) para visualização, conversões adicionais ou impressão."
type: docs
weight: 20
url: /pt/python-net/rendering/
---

Usamos o termo "renderização" em Aspose.Words para descrever o processo de conversão de um documento em um formato de arquivo ou mídia paginada ou que tenha o conceito de páginas. Estamos falando sobre a renderização de um documento em páginas. O diagrama a seguir mostra o que é renderização em Aspose.Words.

![rendering_aspose-words](/words/python-net/rendering/rendering-1.png)

Os recursos de renderização do Aspose.Words permitem realizar o seguinte:

- Converta um documento ou páginas selecionadas nos formatos PDF, XPS, HTML, XAML, PostScript e PCL.
- Converta um documento em um documento TIFF de várias páginas ou converta qualquer página em uma imagem raster e salve-a como BMP, PNG ou JPEG.
- Converta uma página de documento em uma imagem SVG (Scalable Vector Graphics) ou converta em uma imagem vetorial e salve-a como EMF.
- Renderize um objeto [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) separadamente do documento para qualquer formato de imagem.

## Formatos de documento de layout de fluxo ou layout fixo

A maioria dos formatos de documentos que podem ser carregados em Aspose.Words são conhecidos como formatos de "layout de fluxo". Os formatos de layout de fluxo incluem DOC, OOXML, RTF, ODT e HTML. Os documentos nesses formatos são compostos por diversos elementos como parágrafos, tabelas, cabeçalhos, rodapés, imagens, campos e sua formatação, por exemplo, negrito, itálico, fonte, tamanho. No entanto, os formatos de layout de fluxo não contêm informações sobre a posição onde cada parágrafo ou caractere específico é exibido em uma página.

Por outro lado, os formatos de "layout fixo" (também conhecidos como "página fixa"), como PDF e XPS, contêm informações de posicionamento exatas para todos os elementos do documento. Esses formatos preservam a aparência original de um documento depois de dividido em páginas, proporcionando maior precisão nas informações exibidas.

## Mecanismo de layout de página

Aspose.Words implementa seu próprio mecanismo de layout de página que formata um documento de layout de fluxo em páginas. Aspose.Words implementa vários renderizadores que produzem um documento de layout fixo, como PDF ou XPS, ou geram páginas em outro meio, como impressão ou desenho. Observe que a exportação também pode ser paginada para HTML e XAML. Isso significa que um documento pode ser salvo como HTML ou XAML normal (formato de layout de fluxo) ou como HTML e XAML "paginados" que apresentam posições absolutas de elementos.

A vantagem mais importante de usar o mecanismo de layout de página Aspose.Words é que ele imita a forma como o mecanismo de layout de página do Microsoft Word funciona. Portanto, ao converter um documento Microsoft Word em PDF, XPS ou imprimi-lo usando Aspose.Words, a saída aparecerá quase exatamente como se tivesse sido feita por Microsoft Word. Observe que Aspose.Words não utiliza Microsoft Word.
