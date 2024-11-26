---
title: Como Criar Código de Barras
second_title: Aspose.Words por .NET
articleTitle: Gerar uma Imagem de Código de Barras Personalizada
linktitle: Gerar uma Imagem de Código de Barras Personalizada
description: "Um exemplo de geração de forma de código de barras usando C#."
type: docs
weight: 350
url: /pt/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Um código de barras é uma representação visual dos dados na forma de linhas paralelas ou padrões. Os códigos de barras são amplamente utilizados em vários setores, como varejo, logística, saúde, bancos e muitos outros.

Microsoft Word permite aos usuários inserir códigos de barras diretamente em documentos usando campos. Os usuários podem inserir um tipo específico de código de barras, como um código QR ou um código de barras linear, usando o campo [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

Neste artigo, veremos como o campo BARCODE é implementado em Aspose.Words e como Aspose.Words permite que os usuários trabalhem com documentos do Word aos quais um código de barras já foi adicionado.

## Tipos de Código de Barra Suportados por Aspose.Words

Aspose.Words suporta vários tipos de código de barras. O tipo de código de barras é passado como um valor de string na propriedade [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/).

{{% alert color="primary" %}}

Como o trabalho com códigos de barras dentro da funcionalidade de Aspose.Words é limitado, o usuário pode usar qualquer biblioteca, incluindo Aspose.Barcode, ou escrever sua própria renderização para trabalhar com códigos de barras. Você pode aprender mais sobre os tipos de códigos de barras [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

Ao salvar em formatos do Word que suportam códigos de barras, você pode usar qualquer tipo de código de barras que é [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Se um tipo incorreto de código de barras foi passado, o Word exibirá um erro.

Ao salvar em outros formatos, como PDF, Aspose.Words delega a renderização do código de barras ao código do usuário, então o usuário é limitado aos tipos de código de barras de sua implementação ou biblioteca usada.

## Inserir um Código de Barras em um Documento ou Carregar um Documento com um Código de Barras Adicionado

Aspose.Words fornece a capacidade de:

1. Insira programaticamente um código de barras em um documento usando o [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) e [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) códigos de campo
2. Ou carregar um documento do Word com códigos de barras já inseridos nele para mais trabalhos

Aspose.Words possui uma interface para geração de códigos de barras personalizados que facilita o uso de [Aspose.Words](https://products.aspose.com/words/net/) e [Aspose.BarCode](https://products.aspose.com/barcode/net/) juntos para renderizar imagens de código de barras em documentos de saída. Por exemplo, você pode criar um documento DOC, OOXML ou RTF e adicionar o campo DISPLAYBARCODE a ele usando Aspose.Words. Ou você pode carregar um documento DOC, OOXML ou RTF com o campo DISPLAYBARCODE já existente nele e fornecer sua implementação do gerador de código de barras personalizado.

Um campo tipíco de DISPLAYBARCODE tem a seguinte sintaxe:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Abaixo está um exemplo de código gerador usando Aspose.Words e Aspose.BarCode API. Este exemplo mostra como inserir imagens de códigos de barras na posição de campo DISPLAYBARCODE em um documento do Word:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

Você também pode salvar o documento com os códigos de barras carregados ou inseridos recém em formatos de página fixos, como PDF, XPS, etc. O seguinte exemplo de código mostra como salvar um documento do Word no formato PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Para mais informações sobre a conversão de documentos de um formato para outro, veja o [Convert a Document](/words/net/convert-a-document/) documentação.

{{% /alert %}}

{{% alert color="primary" %}}

Você também pode usar a interface [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) para converter códigos de barras incorporados em documentos do Word em imagens. As imagens resultantes podem ser extraídas do documento - veja o artigo "Trabalhando com Imagens" para obter detalhes.

{{% /alert %}}

## Especificar Opções do Código de Barras

Ao trabalhar com códigos de barras, você pode definir algumas propriedades adicionais. Aspose.Words fornece a classe [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) - classe para parâmetros de código de barra para passar para o Gerador de Código de Barras.

O Aspose.Words oferece suporte para resolução embutida de 96 ppi para imagens geradas com [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), o que limita o tamanho mínimo de uma imagem de código de barras. Para resolver esse problema, os desenvolvedores podem inserir manualmente as imagens de código de barras com a resolução alvo em um documento do Word e salvá-las no formato necessário. Para mais detalhes e exemplos sobre como trabalhar com códigos de barras, veja o artigo [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).
