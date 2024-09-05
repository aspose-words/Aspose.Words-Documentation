---
title: 바코드 생성법
second_title: Aspose.Words를 위한 .NET
articleTitle: 사용자 정의 바코드 이미지 생성하기
linktitle: 사용자 정의 바코드 이미지 생성하기
description: "다음은 C#을 이용한 바코드 모양 생성 예시입니다."
type: docs
weight: 350
url: /ko/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

바코드는 데이터의 시각적 표현으로 병렬선이나 패턴 형태로 되어 있습니다. 바코드는 소매업, 물류, 의료, 은행업 등 다양한 산업 분야에서 널리 사용됩니다.

Microsoft Word 사용자는 필드를 사용하여 문서에 바코드를 직접 삽입할 수 있습니다. 사용자는 QR 코드나 선형 바코드 같은 특정 유형의 바코드를 [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) 필드에 삽입할 수 있습니다.

이 기사에서 우리는 BARCODE 필드가 Aspose.Words에 어떻게 구현되는지 그리고 Aspose.Words가 사용자들이 이미 바코드가 추가된 워드 문서로 작업할 수 있는 방법을 살펴보겠습니다.

## 바코드 타입 Aspose.Words 지원

Aspose.Words은 다양한 유형의 바코드를 지원합니다. 바코드 유형은 [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/) 속성에서 문자열 값으로 전달됩니다.

{{% alert color="primary" %}}

바코드 기능을 Aspose.Words 내에서 사용하면 제한적이므로 사용자는 Aspose.Barcode와 같은 라이브러리나 자신의 렌더링 코드를 작성하여 바코드를 사용할 수 있습니다. 바코드의 종류에 대해 더 자세히 알아보려면 [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/)을 참조하세요.

{{% /alert %}}

바코드 지원 워드 형식에 저장할 때, 어떤 바코드 타입이라도 [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3)을 사용할 수 있습니다. 잘못된 타입의 바코드가 전달되면 워드는 오류를 표시합니다.

다른 형식으로 저장할 때, 예를 들면 PDF로 저장할 때, Aspose.Words은 바코드 렌더링을 사용자 코드로 위임합니다. 그러므로 사용자는 구현하거나 사용하는 라이브러리에서 제공하는 바코드 타입에 제한됩니다.

## 문서에 바코드 삽입 혹은 추가된 바코드가 있는 문서 로드

Aspose.Words 기능을 제공합니다

1. 바코드를 문서에 프로그래밍 방식으로 삽입합니다. [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) 및 [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) 필드 코드를 사용하세요
2. 또는 바코드가 이미 삽입된 워드 문서를 추가 작업하기 위해 로드합니다

Aspose.Words은 사용자 지정 바코드를 생성하기 위한 인터페이스를 가지고 있어서, [Aspose.Words](https://products.aspose.com/words/net/)과 [Aspose.BarCode](https://products.aspose.com/barcode/net/)을 함께 사용하여 출력 문서에 바코드 이미지를 렌더링하는 것이 쉽습니다. 예를 들어, 여러분은 DOC, OOXML, 또는 RTF 문서를 만들고 Aspose.Words로 DISPLAYBARCODE 필드를 추가할 수 있습니다. 아니면, 이미 DISPLAYBARCODE 필드가 있는 DOC, OOXML, 또는 RTF 문서의 로드하고, 사용자 지정 바코드 생성기의 구현을 제공할 수 있습니다.

일반적인 DISPLAYBARCODE 필드는 다음과 같은 구문을 갖는다:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

다음은 Aspose.Words 및 Aspose.BarCode API를 사용하는 예제 코드 생성기입니다. 이 예에서는 Word 문서의 DISPLAYBARCODE 필드 위치에 바코드 이미지를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

로드되거나 새로 삽입된 바코드가 있는 문서도 PDF, XPS 등의 고정 페이지 형식으로 저장할 수 있습니다. 다음 코드 예제는 Word 문서를 PDF 형식으로 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

한 형식에서 다른 형식으로 변환하는 문서에 대한 자세한 내용은 [Convert a Document](/words/net/convert-a-document/) 설명서를 참조하세요.

{{% /alert %}}

{{% alert color="primary" %}}

또한 Word 문서에 포함된 바코드를 이미지 변환할 수 있는 [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) 인터페이스도 사용할 수 있습니다. 그 결과 이미지는 문서에서 추출할 수 있습니다 - 이미지 작업 기사를 자세한 내용으로 참조하세요.

{{% /alert %}}

## 바코드 옵션 지정

바코드와 함께 일할 때 추가 속성을 설정할 수 있습니다. Aspose.Words은 [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) 클래스를 제공합니다 - 바코드 매개변수를 BarcodeGenerator로 전달하기 위한 클래스입니다.

Aspose.Words은 [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/)으로 생성된 이미지용 내장된 96 ppi 해상도 지원을 지원하며 이는 바코드 이미지의 최소 크기를 제한합니다. 이를 해결하기 위해 개발자는 타겟 해상도를 가진 바코드 이미지를 워드 문서에 수동으로 삽입하고 필요한 형식으로 저장할 수 있습니다. 더 자세한 내용과 예제는 기사 [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/)을 참조하세요.