---
title: Renderização Java
second_title: Aspose.Words para Java
articleTitle: Renderização
linktitle: Renderização
description: "Uso Aspose.Words para Java renderização recurso para formatar um documento de eliminação de fluxo em páginas e converter tal documento ou páginas selecionadas para outro documento (PDF, HTML, XPS, etc.) ou formatos de imagem (TIFF, PNG, SVG, etc.) para visualização, mais conversões ou impressão."
type: docs
weight: 30
url: /pt/java/rendering/
---

Usamos o termo "renderização" em Aspose.Words para descrever o processo de conversão de um documento em um formato de arquivo ou um meio que é paginado ou tem o conceito de páginas. Estamos falando sobre a renderização de um documento em páginas. O seguinte diagrama mostra em que renderização Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

As características de renderização Aspose.Words permitir que você execute o seguinte:

- Converta um documento ou páginas selecionadas para PDF, XPS, formatos HTML, XAML, PostScript e PCL.
- Converta um documento em um documento TIFF multipágina, ou converta qualquer página em uma imagem raster e salve-o como BMP, PNG ou JPEG.
- Converta uma página de documento em uma imagem Scalable Vector Graphics (SVG), ou converta em uma imagem vetorial e salve-a como EMF.
- Render (draw) uma página de documento em um tamanho ou escala específica no `Graphics` objeto para criar miniaturas, imagens de tamanho completo ou dimensionadas de páginas de documentos.
- Render um [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objeto separadamente do documento para qualquer formato de imagem ou para um `Graphics` objeto.
- Exibir qualquer página de um documento em um Componente de Swing.
- Imprimir ou visualizar páginas de documentos usando o padrão Java infraestrutura de impressão.

## Flow-layout ou Fix-layout Formatos de documentos {#flow-layout-or-fixed-layout-document-formats}

A maioria dos formatos de documentos que podem ser carregados Aspose.Words são conhecidos como formatos "flow-layout". Os formatos Flow-layout incluem DOC, OOXML, RTF, ODT e HTML. Os documentos nestes formatos consistem em vários elementos, tais como parágrafos, tabelas, cabeçalhos, rodapés, imagens, campos e sua formatação, por exemplo, negrito, itálico, fonte, tamanho. No entanto, os formatos de eliminação de fluxo não contêm informações sobre a posição em que cada parágrafo ou caractere específico é exibido em uma página.

Em contraste, os formatos "fixed-layout" (também conhecidos como "página fixa") como PDF e XPS conter informações de posicionamento exatas para todos os elementos do documento. Estes formatos preservam a aparência original de um documento depois que foi estabelecido em páginas, fornecendo maior precisão das informações exibidas.

## Página Layout Motor {#page-layout-engine}

Aspose.Words implementa seu próprio motor de layout de página que formata um documento de fluxo-layout em páginas. Aspose.Words implementa um número de renderizadores que produzem um documento fixo como PDF ou XPS, ou páginas de saída em outro meio, como impressão ou desenho. Note que a exportação também pode ser paginada para HTML e XAML. Isso significa que um documento pode ser salvo como HTML regular ou XAML (formato de preenchimento de fluxo), ou como HTML "paginado" e XAML que apresentam posições absolutas de elementos.

A vantagem mais importante de usar Aspose.Words motor de layout de página é que imita o caminho Microsoft Word’s page layout engine works. Portanto, quando você converter um Microsoft Word documento em PDF, XPS, ou imprimi-lo usando Aspose.Words, a saída aparecerá quase exatamente como se fosse feito por Microsoft Word. Note que Aspose.Words não utilizar Microsoft Word.
