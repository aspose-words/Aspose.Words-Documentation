---
title: Criar Código de Barra em Java
second_title: Aspose.Words para Java
articleTitle: Gerar uma Imagem de Código de Barras Personalizada
linktitle: Gerar uma Imagem de Código de Barras Personalizada
description: "Exemplo de geração de forma de código de barras usando Java."
type: docs
weight: 350
url: /pt/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Um código de barras é uma representação visual de dados na forma de linhas paralelas ou padrões. Os códigos de barras são amplamente utilizados em vários setores, como varejo, logística, saúde, bancos e muitos outros.

Microsoft Word permite que os usuários incorporem códigos de barras diretamente em documentos usando campos. Os usuários podem inserir um tipo específico de código de barras, como um código QR ou um código de barras linear, usando o campo [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

Neste artigo, veremos como o campo BARCODE é implementado em Aspose.Words e como Aspose.Words permite aos usuários trabalhar com documentos do Word para os quais já foi adicionado um código de barras.

## Tipos de Código de Barras Comuns no Aspose.Words

Aspose.Words suporta vários tipos de códigos de barras. O tipo de código de barras é passado como um valor de string na propriedade [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Como o trabalho com códigos de barras dentro da funcionalidade do Aspose.Words é limitado, o usuário pode usar qualquer biblioteca, incluindo Aspose.Barcode, ou escrever seu próprio renderização para trabalhar com códigos de barras. Você pode aprender mais sobre os tipos de códigos de barras [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Quando salvando em formatos do Word que suportam códigos de barras, você pode usar qualquer tipo de código de barras que seja [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Se um tipo incorreto de código de barras foi passado, o Word exibirá uma mensagem de erro.

Quando for salvar em outros formatos, tais como PDF, Aspose.Words delega renderização de código de barras para o código do usuário, então o usuário é limitado aos tipos de código de barras de sua implementação ou biblioteca usada.

## Inserir um Código de Barras em um Documento ou Carregar um Documento com um Código de Barras Adicionado

Aspose.Words fornece a capacidade de:

1. Insira programaticamente um código de barras em um documento usando o [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) e [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) códigos de campo
2. Ou carregar um documento do Word com códigos de barras já inseridos nele para mais trabalhos

Aspose.Words tem uma interface para gerar códigos de barras personalizados que torna fácil usar [Aspose.Words](https://products.aspose.com/words/java/) e [Aspose.BarCode](https://products.aspose.com/barcode/java/) juntos para renderizar imagens de código de barras em documentos de saída. Por exemplo, você pode criar um documento DOC, OOXML ou RTF e adicionar o campo DISPLAYBARCODE a ele usando Aspose.Words. Ou você pode carregar um documento DOC, OOXML ou RTF com o campo DISPLAYBARCODE já existente nele e fornecer sua implementação do gerador de código de barras personalizado.

Um campo tipícO de DISPLAYBARCODE tem a seguinte sintaxe:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Abaixo está um exemplo de código gerador usando o Aspose.Words e Aspose.BarCode APIs. Este exemplo mostra como inserir imagens de códigos de barras na posição de campo DISPLAYBARCODE em um documento do Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Você também pode salvar o documento com os códigos de barras carregados ou inseridos recém no formato de página fixa como PDF, XPS, etc. O seguinte exemplo de código mostra como salvar um documento do Word para o formato PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Para mais informações sobre como converter documentos de um formato para outro, veja a seção documentação do [Convert a Document](/words/java/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Você também pode usar a interface [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) para converter códigos de barras incorporados em documentos do Word em imagens. As imagens resultantes podem ser extraídas do documento - veja o artigo "Trabalhando com imagens" para obter mais detalhes.

{{% /alert %}}

## Especifique Opções do Código de Barra

Ao trabalhar com códigos de barras, você pode definir algumas propriedades adicionais. Aspose.Words fornece a classe [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) - classe para parâmetros de código de barra para passar para o BarcodeGenerator.

Aspose.Words suporta resolução embutida de 96 ppi para imagens geradas com [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), o que limita o tamanho mínimo de uma imagem de código de barras. Para resolver isso, os desenvolvedores podem inserir manualmente imagens de código de barras com a resolução alvo em um documento do Word e salvá-los no formato necessário. Para mais detalhes e exemplos sobre como trabalhar com códigos de barras, consulte o artigo [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
