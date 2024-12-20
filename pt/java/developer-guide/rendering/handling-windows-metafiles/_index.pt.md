﻿---
title: Manipulação de Windows metarquivos em Java
second_title: Aspose.Words para Java
articleTitle: Manipulação De Windows Metarquivos
linktitle: Manipulação De Windows Metarquivos
description: "Aspose.Words for Java implementa o seu próprio leitor de metarquivo Windows para reproduzir o formato de metarquivo em todas as plataformas e suporta o tratamento das características básicas do metarquivo e pode executar fallback para um tipo diferente de leitor de metarquivo."
type: docs
weight: 30
url: /pt/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows formato de metarquivo é um formato de arquivo de imagem que pode conter gráficos vetoriais e rasterizados. Este formato é utilizado para armazenar dados Gráficos na memória ou em ficheiros em disco. Um metarquivo armazena uma lista de chamadas de função na interface do dispositivo gráfico Windows (GDI) que devem ser executadas para exibir a imagem na tela. O sistema interpreta e executa esses comandos no contexto de exibição.

Anteriormente, Windows metarquivo era o único formato de imagem vetorial suportado por Microsoft Word. Microsoft Word agora também suporta o formato SVG, mas o formato de metarquivo ainda é comumente usado em documentos do Word. Além disso, o metarquivo pode ser um formato de intercâmbio para algumas outras aplicações, como Microsoft Visio. Essencialmente, o principal objectivo do metarquivo é assegurar o intercâmbio de informações gráficas entre Windows aplicações.

Existem 3 versões do metarquivo Windows:

- WMF - armazena a chamada a 16bit GDI.
- EMF - armazena a chamada para Win32 / GDI.
- EMF + Metafile armazena a chamada para GDI+. EMF+ metarquivo também pode ser dual, descrevendo os mesmos gráficos com EMF e EMF+ partes.

O problema existente com o metarquivo Windows é que ele não é suportado pela maioria dos formatos que não são do Word, nos quais os documentos geralmente são salvos. Portanto, é necessário converter o formato de metarquivo para outros formatos raster ou vetoriais. É fácil converter Windows metarquivo em uma imagem rasterizada em .NET simplesmente passando-o para GDI+, mas não é possível em outras plataformas, pois mesmo GDI+ não fornece a funcionalidade para extrair os gráficos vetoriais do metarquivo. Para resolver esses problemas, Aspose.Words implementa seu próprio Reprodutor de metarquivo Windows, que é capaz de reproduzir o formato de metarquivo tanto vetorial quanto gráfico raster em todas as plataformas.

## Controlo do leitor de metarquivo Aspose.Words

A classe [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) permite-lhe controlar o leitor de metarquivo. Por exemplo, você pode determinar como as imagens de metarquivo devem ser renderizadas usando a propriedade [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/), que tem um significado especial ao converter em bitmaps (consulte também a propriedade [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions)).

## Apoio Às Operações Raster

Operações Raster é um recurso de metarquivo complexo, que atualmente tem suporte limitado. As operações Raster estão disponíveis nos formatos de metarquivo WMF e EMF. O formato de metarquivo EMF+ não usa operações raster diretamente, mas pode conter partes EMF, metarquivos WMF ou EMF incorporados.

Existem operações raster binárias e ternárias:

- As operações de varredura binária são aplicadas a comandos de desenho com caneta, como linhas e curvas de desenho. Ao desenhar uma linha, a cor da caneta é combinada com a cor do bitmap de destino (a cor do pixel correspondente na superfície do dispositivo) usando operações lógicas bit a bit especificadas com valores de cor hexadecimal. O exemplo de imagem abaixo ilustra o efeito de todas as 16 operações de varredura binária aplicadas a 20 barras de cores diferentes. As barras de cores verticais são desenhadas primeiro, as barras horizontais são desenhadas após cada operação de varredura binária ser aplicada. Para os casos simples, R2_BLACK desenha preto, R2_NOT inverte a cor, R2_NOP não altera o fundo e R2_WHITE desenha branco.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- As operações raster ternárias são aplicadas ao desenhar imagens bitmap. Eles combinam cores de pixels de imagem de bitmap correspondentes, o pincel e o bitmap de destino usando operações lógicas bit a bit com valores de cor hexadecimal especificados. Um dos propósitos mais comuns do uso de operações raster ternárias é a emulação da transparência. A imagem fornecida no exemplo abaixo demonstra como a transparência dos ícones pode ser emulada. Existem dois tipos de bitmaps: o bitmap de máscara b/w e o bitmap de cor. Primeiro, o bitmap da máscara é desenhado com a operação raster SRCAND. Ele altera a região do ícone opaco para preto e branco, deixando a região transparente inalterada. Em seguida, o segundo bitmap é desenhado com a operação raster SRCINVERT. Ele exibe os pixels de cor na região preta, deixando a região transparente inalterada.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

As operações de varredura não podem ser convertidas em gráficos vetoriais diretamente. Aspose.Words emula operações rasterizadas, rasterizando parcialmente a superfície do dispositivo afectada por operações rasterizadas. Para este efeito, é utilizada a propriedade [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations).

{{% alert color="primary" %}}

Embora as operações de varredura binária não sejam atualmente suportadas e o número limitado de operações de varredura ternária seja suportado por Aspose.Words, ele pode lidar com os casos básicos de conversão para gráficos vetoriais diretamente, por exemplo, R2_BLACK, R2_WHITE, R2_NOP. Além disso, a rasterização da superfície do dispositivo afeta significativamente o desempenho, especialmente quando o número significativo de registros de operação raster estão envolvidos.

{{% /alert %}}

O exemplo mostrado abaixo demonstra como Aspose.Words renderiza um metarquivo em um bitmap quando não é possível renderizar corretamente alguns dos registros do metarquivo em gráficos vetoriais:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
