---
title: Manuseamento Windows Metafiles em Java
second_title: Aspose.Words para Java
articleTitle: Manuseamento Windows Metafiles
linktitle: Manuseamento Windows Metafiles
description: "Aspose.Words para Java implementa seu próprio Windows Metafile player para reproduzir o formato Metafile em todas as plataformas e suporta o manuseio das características básicas do metafile e pode executar a desvantagem para um tipo diferente de metafile player."
type: docs
weight: 30
url: /pt/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows O formato Metafile é um formato de arquivo de imagem que pode conter gráficos vetoriais e raster. Este formato é usado para armazenar dados gráficos em memória ou arquivos no disco. Um metafile armazena uma lista de chamadas de função no Windows Interface de dispositivo gráfico (GDI) que deve ser executada para exibir a imagem na tela. O sistema interpreta e executa esses comandos no contexto de exibição.

Anteriormente, Windows Metafile foi o único formato de imagem vetorial suportado por Microsoft Word. Microsoft Word agora também suporta o formato SVG, mas o formato metafile ainda é comumente usado em documentos do Word. Além disso, Metafile poderia ser um formato de troca para algumas outras aplicações, como Microsoft Visio. Essencialmente, o principal objetivo do Metafile é garantir a troca de informações gráficas entre Windows aplicações.

Existem 3 versões de Windows Metafile:

- WMF – as lojas chamam a 16bit GDI.
- EMF – lojas chamada para Win32/GDI.
- As lojas EMF+ Metafile chamam GDI+. EMF+ Metafile também pode ser dual, descrevendo os mesmos gráficos com partes EMF e EMF+.

A questão existente com Windows Metafile é que não é suportado pela maioria dos formatos não-Word, aos quais os documentos são normalmente salvos. Portanto, é necessário converter o formato Metafile para outros formatos de raster ou vetor. É fácil converter Windows Metafile para uma imagem raster em .NET simplesmente passando para GDI+, mas não é possível em outras plataformas, pois mesmo GDI+ não fornece a funcionalidade para extrair os gráficos vetoriais do Metafile. Para resolver esses problemas, Aspose.Words implementa seu próprio Windows Metafile player, que é capaz de jogar Metafile formato tanto vetor e gráficos raster em todas as plataformas.

## Controlando o Aspose.Words Jogador de Metafile

O [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) classe permite que você controle o metafile player. Por exemplo, você pode determinar como as imagens metafile devem ser renderizadas usando o [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) propriedade, que tem um significado especial ao converter para bitmaps (veja também o [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) propriedade).

## Apoiando operações de Raster

Operações raster é um recurso complexo metafile, que atualmente tem suporte limitado. Operações raster estão disponíveis em formatos de metafile WMF e EMF. O formato metafile EMF+ não usa operações raster diretamente, mas pode conter peças EMF, metafiles WMF ou EMF incorporados.

Existem operações de raster binário e ternary:

- As operações de raster binário são aplicadas aos comandos de desenho de canetas, como linhas de desenho e curvas. Ao desenhar uma linha, a cor da caneta é combinada com a cor bitmap de destino (a cor do pixel correspondente na superfície do dispositivo) usando operações lógicas bitwise especificadas com valores de cor hexagonal. O exemplo de imagem abaixo ilustra o efeito de todas as 16 operações de raster binário aplicadas a 20 barras de cores diferentes. As barras de cor vertical são desenhadas primeiro, as barras horizontais são desenhadas após cada operação de raster binário é aplicada. Para os casos simples, R2_BLACK desenha preto, R2_NOT inversa a cor, R2_NOP não muda o fundo, e R2_WHITE desenha branco.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- As operações de raster Ternary são aplicadas ao desenhar imagens bitmap. Eles combinam cores de pixels de imagem bitmap correspondentes, o pincel e o bitmap de destino usando operações lógicas bitwise com valores de cor hex especificados. Um dos objetivos mais comuns de usar operações de raster ternary é a emulação da transparência. A imagem fornecida no exemplo abaixo mostra como a transparência do ícone pode ser emulada. Existem dois tipos de bitmaps: o bitmap de máscara b/w e o bitmap de cor. Primeiro, o bitmap máscara é desenhado com a operação raster SRCAND. Ele muda a região do ícone opaco para preto e branco, deixando a região transparente inalterada. Em seguida, o segundo bitmap é desenhado com a operação raster SRCINVERT. Ele exibe os pixels de cor na região negra, deixando a região transparente inalterada.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

As operações raster não podem ser convertidas em gráficos vetoriais diretamente. Aspose.Words emula as operações de raster por rasterizar parcialmente a superfície do dispositivo afetada pelas operações de raster. Com esta finalidade, o [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) propriedade é usada.

{{% alert color="primary" %}}

Enquanto as operações de raster binários não são atualmente suportadas e o número limitado de operações de raster ternary são suportados por Aspose.Words, ele pode lidar com os casos básicos de conversão para gráficos vetoriais diretamente, por exemplo, R2_BLACK, R2_WHITE, R2_NOP. Além disso, a rasterização da superfície do dispositivo afeta significativamente o desempenho, especialmente quando o número significativo de registros de operação raster estão envolvidos.

{{% /alert %}}

O exemplo mostrado abaixo mostra como Aspose.Words renderiza um metafile para um bitmap quando não é possível renderizar corretamente alguns dos registros metafile para gráficos vetoriais:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
