---
title: Tratamento de metarquivos Windows em C#
second_title: Aspose.Words para .NET
articleTitle: Tratamento de metarquivos Windows
linktitle: Tratamento de metarquivos Windows
description: "Aspose.Words para .NET implementa seu próprio reprodutor de metarquivo Windows para reproduzir o formato Metarquivo em todas as plataformas e suporta o manuseio dos recursos básicos de metarquivo e pode executar fallback para um tipo diferente de reprodutor de metarquivo usando C#."
type: docs
weight: 30
url: /pt/net/handling-windows-metafiles/
timestamp: 2024-07-10-14-38-57
---

O formato Windows Metafile é um formato de arquivo de imagem que pode conter gráficos vetoriais e raster. Este formato é usado para armazenar dados gráficos na memória ou em arquivos em disco. Um metarquivo armazena uma lista de chamadas de função na interface de dispositivo gráfico Windows (GDI) que devem ser executadas para exibir a imagem na tela. O sistema interpreta e executa esses comandos no contexto de exibição.

Anteriormente, Windows Metafile era o único formato de imagem vetorial suportado pelo Microsoft Word. Microsoft Word agora também suporta o formato SVG, mas o formato metarquivo ainda é comumente usado em documentos Word. Além disso, Metafile pode ser um formato de intercâmbio para alguns outros aplicativos, como Microsoft Visio. Essencialmente, o objetivo principal do Metafile é garantir a troca de informações gráficas entre aplicações Windows.

Existem 3 versões do metarquivo Windows:

- WMF – armazena chamadas para GDI de 16 bits.
- EMF – armazena chamadas para Win32/GDI.
- EMF+ Metafile armazena chamadas para GDI+. EMF+ Metafile também pode ser duplo, descrevendo os mesmos gráficos com partes EMF e EMF+.

O problema existente com o Windows Metafile é que ele não é compatível com a maioria dos formatos que não são do Word, nos quais os documentos geralmente são salvos. Portanto, é necessário converter o formato Metafile para outros formatos raster ou vetoriais. É fácil converter metarquivo Windows em imagem raster em .NET simplesmente passando-o para GDI+, mas não é possível em outras plataformas, pois mesmo GDI+ não fornece a funcionalidade para extrair os gráficos vetoriais do metarquivo. Para resolver esses problemas, o Aspose.Words implementa seu próprio reprodutor Windows Metafile, que é capaz de reproduzir no formato Metafile gráficos vetoriais e raster em todas as plataformas.

## Controlando o reprodutor de metarquivo Aspose.Words

A classe [MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/) permite controlar o reprodutor de metarquivo. Por exemplo, você pode determinar como as imagens de metarquivo devem ser renderizadas usando a propriedade [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/), que tem um significado especial ao converter para bitmaps (consulte também a propriedade [MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/)).

Salvar em um bitmap funciona de maneira diferente em plataformas diferentes de .NET. Embora a renderização .NET GDI+ seja uma referência que funciona quase perfeitamente mesmo para o formato de metarquivo mais complexo, em outras plataformas ela pode causar problemas ou não ter suporte.

## Suporte a operações raster

As operações raster são um recurso de metarquivo complexo, que atualmente tem suporte limitado. As operações raster estão disponíveis nos formatos de metarquivo WMF e EMF. O formato de metarquivo EMF+ não usa operações raster diretamente, mas pode conter partes EMF, WMF incorporado ou metarquivos EMF.

Existem operações raster binárias e ternárias:

- As operações raster binárias são aplicadas a comandos de desenho com caneta, como desenhar linhas e curvas. Ao desenhar uma linha, a cor da caneta é combinada com a cor do bitmap de destino (a cor do pixel correspondente na superfície do dispositivo) usando operações lógicas bit a bit especificadas com valores de cores hexadecimais. O exemplo de imagem abaixo ilustra o efeito de todas as 16 operações raster binárias aplicadas a 20 barras de cores diferentes. As barras coloridas verticais são desenhadas primeiro, as barras horizontais são desenhadas após cada operação de varredura binária ser aplicada. Para os casos simples, R2_BLACK desenha preto, R2_NOT inverte a cor, R2_NOP não altera o fundo e R2_WHITE desenha branco.

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="manipulação-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- As operações raster ternárias são aplicadas ao desenhar imagens bitmap. Eles combinam cores dos pixels da imagem bitmap correspondentes, do pincel e do bitmap de destino usando operações lógicas bit a bit com valores de cores hexadecimais especificados. Um dos propósitos mais comuns do uso de operações raster ternárias é a emulação de transparência. A imagem fornecida no exemplo abaixo demonstra como a transparência do ícone pode ser emulada. Existem dois tipos de bitmaps: o bitmap de máscara em preto e branco e o bitmap colorido. Primeiro, o bitmap da máscara é desenhado com a operação raster SRCAND. Ele altera a região opaca do ícone para preto e branco, deixando a região transparente inalterada. Em seguida, o segundo bitmap é desenhado com a operação raster SRCINVERT. Ele exibe os pixels coloridos na região preta, deixando a região transparente inalterada.

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="manipulação de windows-metafiles-aspose-words-net-2" style="width:650px"/>

As operações raster não podem ser convertidas diretamente em gráficos vetoriais. Aspose.Words emula operações rasterizando parcialmente a superfície do dispositivo afetada pelas operações raster. Para tanto, é utilizada a propriedade [EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/).

{{% alert color="primary" %}}

Embora as operações raster binárias não sejam atualmente suportadas e o número limitado de operações raster ternárias seja suportado pelo Aspose.Words, ele pode lidar diretamente com os casos básicos de conversão para gráficos vetoriais, por exemplo, R2_BLACK, R2_WHITE, R2_NOP. Além disso, a rasterização da superfície do dispositivo afeta significativamente o desempenho, especialmente quando um número significativo de registros de operação raster está envolvido.

{{% /alert %}}

O exemplo mostrado abaixo demonstra como Aspose.Words renderiza um metarquivo em um bitmap quando não é possível renderizar corretamente alguns registros de metarquivo em gráficos vetoriais:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cs" >}}

## Configurações de fallback de metarquivo

Aspose.Words não oferece suporte a vários recursos de metarquivo que são mais complexos ou raros. Os usuários podem implementar a interface [IWarningCallBack](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) e receber mensagens de aviso. Se o Aspose.Words encontrar recursos não suportados em um metarquivo, ele emitirá uma mensagem de aviso com [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/).**Metafile**. Nesse caso, o Aspose.Words pode executar fallback para um tipo diferente de reprodutor de metarquivo. A mensagem de aviso sobre fallback também é emitida.

Em primeiro lugar, o Aspose.Words executa fallback do reprodutor de metarquivo vetorial para raster, que é controlado pela propriedade [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/). Se o recurso de fallback estiver desabilitado, o Aspose.Words tentará renderizar alguns gráficos de substituição em vez dos recursos que não são suportados.

Aspose.Words reproduz metarquivo em raster com êxito usando GDI+ em .NET, o que torna essa opção de retorno de chamada segura.

Em segundo lugar, há uma opção para o metarquivo EMF+ Dual retornar da reprodução da parte EMF+ para a parte EMF. É controlado pelo [EmfPlusDualRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emfplusdualrenderingmode/). Se ocorrerem alguns problemas ao reproduzir a parte EMF, o fallback para raster também poderá ser executado.

Quanto às operações raster, se o [EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) estiver desabilitado, as operações raster serão consideradas como não suportadas, o que aciona o substituto para o reprodutor de metarquivos de bitmap, se estiver habilitado. Portanto, se você possui um metarquivo com operações raster, mas não deseja usar a emulação de operações raster e ainda deseja obter a saída vetorial com gráficos de substituição, selecione [MetafileRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingmode/).**Vector**.
