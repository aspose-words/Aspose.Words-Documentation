---
title: Criar BarCode em Java
second_title: Aspose.Words para Java
articleTitle: Gerar uma imagem personalizada BarCode
linktitle: Gerar uma imagem personalizada BarCode
description: "Exemplo de geração de forma de código de barras usando Java."
type: docs
weight: 350
url: /pt/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Um código de barras é uma representação visual de dados na forma de linhas ou padrões paralelos. Os códigos de barras são amplamente utilizados em vários setores, como varejo, logística, Saúde, Bancos e muitos outros.

Microsoft Word permite aos utilizadores incorporar códigos de barras directamente em documentos utilizando campos. Os utilizadores podem inserir um tipo específico de código de barras, como um código QR ou um código de barras linear, utilizando [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) campo.

Neste artigo, veremos como o campo BARCODE é implementado em Aspose.Words e como Aspose.Words permite que os usuários trabalhem com documentos do Word aos quais um código de barras já foi adicionado.

## Tipos de código de barras suportados por Aspose.Words

Aspose.Words Suporta vários tipos de códigos de barras. O tipo de código de barras é passado como um valor de cadeia de caracteres na propriedade [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Como o trabalho com códigos de barras dentro da funcionalidade de Aspose.Words é limitado, o usuário pode usar qualquer biblioteca, incluindo Aspose.Código de barras, ou escrever sua própria renderização para trabalhar com códigos de barras. Saiba mais sobre os tipos de códigos de barras [apoiado pela Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Ao salvar em formatos do Word que suportam códigos de barras, você pode usar qualquer tipo de código de barras que seja [apoiado por Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Se um tipo incorreto de código de barras foi passado, o Word exibirá um erro.

Ao salvar em outros formatos, como PDF, Aspose.Words delega a renderização do código de barras ao código do usuário, de modo que o usuário está limitado aos tipos de código de barras de sua implementação ou biblioteca usada.

## Inserir um código de barras num documento ou carregar um documento com um código de barras adicionado

Aspose.Words fornece a capacidade de:

1. Inserir programaticamente um código de barras em um documento usando o [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) e [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) códigos de campo
2. Ou carregue um documento do Word com códigos de barras já inseridos para trabalhos futuros

Aspose.Words tem uma interface para gerar códigos de barras personalizados que o torna fácil de usar [Aspose.Words](https://products.aspose.com/words/java/) e [Aspose.BarCode](https://products.aspose.com/barcode/java/) juntos para renderizar imagens de código de barras em documentos de saída. Por exemplo, você pode criar um documento DOC, OOXML ou RTF e adicionar o campo DISPLAYBARCODE a ele usando Aspose.Words. Ou você pode carregar um documento DOC, OOXML ou RTF com o campo DISPLAYBARCODE já existente e fornecer sua implementação do gerador de código de barras personalizado.

Um campo DISPLAYBARCODE típico tem a seguinte sintaxe:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Abaixo está um exemplo de gerador de código usando o Aspose.Words e Aspose.BarCode APIs. Este exemplo mostra como inserir imagens de código de barras na posição do campo DISPLAYBARCODE num documento do Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Você também pode salvar o documento com o código de barras carregado ou inserido recentemente em formatos de página fixa, como PDF, XPS, etc. O exemplo de código a seguir mostra como salvar um documento do Word no formato PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Para obter mais informações sobre a conversão de documentos de um formato para outro, consulte o [Conversor um documento](/words/java/convert-a-document/) secção de documentação.

{{% /alert %}}

{{% alert color="primary" %}}

Você também pode usar a interface [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) para converter códigos de barras incorporados em documentos do Word em imagens. As imagens resultantes podem ser extraídas do documento – consulte o artigo trabalhando com imagens para obter detalhes.

{{% /alert %}}

## Especificar Opções De Código De Barras

Ao trabalhar com códigos de barras, você pode definir algumas propriedades adicionais. Aspose.Words fornece a classe [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) - class para que os parâmetros de código de barras passem para BarcodeGenerator.

Aspose.Words suporta resolução incorporada de 96 ppi para imagens geradas com [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), o que limita o tamanho mínimo de uma imagem de código de barras. Para resolver isso, os desenvolvedores podem inserir manualmente imagens de código de barras com a resolução de destino em um documento do Word e salvá-las no formato necessário. Para mais detalhes e exemplos sobre como trabalhar com códigos de barras, consulte o artigo [Ler c princípiodigos de barras de documentos do Word](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
