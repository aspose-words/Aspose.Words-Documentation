---
title: Como criar código de barras
second_title: Aspose.Words para .NET
articleTitle: Gere uma imagem de código de barras personalizada
linktitle: Gere uma imagem de código de barras personalizada
description: "Exemplo de geração de formato de código de barras usando C#."
type: docs
weight: 350
url: /pt/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words possui uma interface para geração de códigos de barras personalizados, o que torna muito fácil usar Aspose.Words e [Aspose.BarCode](https://products.aspose.com/barcode/net/) juntos para renderizar imagens de códigos de barras em documentos de saída. Por exemplo, você pode carregar um documento DOC, OOXML ou RTF contendo campo `DISPLAYBARCODE` em Aspose.Words, fornecer sua implementação de gerador de código de barras personalizado e salvar em formatos de página fixos, como PDF, XPS etc.

Um campo `DISPLAYBARCODE` típico tem a seguinte sintaxe:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Abaixo está um exemplo de gerador de código que aproveita o `Aspose.BarCode` API. Este exemplo mostra como inserir imagens de código de barras na posição do campo `DISPLAYBARCODE` em um documento Word usando Aspose.Words e `Aspose.BarCode` APIs:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
