---
title: Renderização em Java
second_title: Aspose.Words para Java
articleTitle: Renderização
linktitle: Renderização
description: "Use Aspose.Words para Java recurso de renderização para formatar um documento de layout de fluxo em páginas e converter esse documento ou páginas selecionadas em outro documento (PDF, HTML, XPS, etc.) ou imagem (TIFF, PNG, SVG, etc.) formatos para visualização, outras conversões ou impressão."
type: docs
weight: 30
url: /pt/java/rendering/
timestamp: 2024-01-27-14-07-04
---

Usamos o termo "renderização" em Aspose.Words para descrever o processo de conversão de um documento em um formato de arquivo ou um meio que é paginado ou tem o conceito de páginas. Estamos a falar da transformação de um documento em páginas. O diagrama a seguir mostra qual renderização está em Aspose.Words.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Os recursos de renderização de Aspose.Words permitem que você execute o seguinte:

- Converter um documento ou páginas selecionadas em PDF, XPS, HTML, XAML, PostScript, e PCL formatos.
- Converta um documento em um documento TIFF de várias páginas ou converta qualquer página em uma imagem rasterizada e salve-a como BMP, PNG ou JPEG.
- Converta uma página de documento em uma imagem gráfica vetorial escalável (SVG) ou converta em uma imagem vetorial e salve-a como EMF.
- Renderizar (desenhar) uma página de documento em um tamanho ou escala específica no objeto `Graphics` para criar miniaturas, imagens em tamanho real ou dimensionadas de páginas de documentos.
- Renderize um objeto [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) separadamente do documento para qualquer formato de imagem ou para um objeto `Graphics`.
- Exibir qualquer página de um documento em um componente Swing.
- Imprima ou visualize páginas de documentos usando a infraestrutura de impressão padrão Java.

## Formatos de documentos de esquema de fluxo ou de esquema Fixo {#flow-layout-or-fixed-layout-document-formats}

A maioria dos formatos de documentos que podem ser carregados em Aspose.Words são conhecidos como formatos "flow-layout". Os formatos de layout de fluxo incluem DOC, OOXML, RTF, ODT, e HTML. Os documentos nesses formatos consistem em vários elementos, como parágrafos, tabelas, cabeçalhos, rodapés, imagens, Campos e sua formatação, por exemplo, negrito, itálico, fonte, tamanho. No entanto, os formatos de esquema de fluxo não contêm informações sobre a posição em que cada parágrafo ou caractere específico é exibido em uma página.

Em contraste, os formatos de" layout fixo "(também conhecidos como" Página fixa"), como PDF e XPS, contêm informações de posicionamento exatas para todos os elementos do documento. Esses formatos preservam a aparência original de um documento depois que ele foi organizado em páginas, proporcionando maior precisão das informações exibidas.

## Mecanismo De Disposição Da Página {#page-layout-engine}

Aspose.Words implementa seu próprio mecanismo de layout de página que formata um documento de layout de fluxo em páginas. Aspose.Words implementa vários renderizadores que produzem um documento de layout fixo, como PDF ou XPS, ou produzem páginas em outro meio, como impressão ou desenho. Observe que a exportação também pode ser paginada para HTML e XAML. Isso significa que um documento pode ser salvo como regular HTML ou XAML (formato de layout de fluxo), ou como "paginado" HTML e XAML que apresentam posições absolutas de elementos.

A vantagem mais importante de usar o mecanismo de layout de página Aspose.Words é que ele imita a maneira como o mecanismo de layout de página de Microsoft Word funciona. Portanto, quando você converte um documento Microsoft Word em PDF, XPS ou o imprime usando Aspose.Words, a saída aparecerá quase exatamente como se fosse feita por Microsoft Word. Observe que Aspose.Words não utiliza Microsoft Word.
