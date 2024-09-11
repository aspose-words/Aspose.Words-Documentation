---
title: Java에서 바코드 생성
second_title: Aspose.Words를 위해 Java
articleTitle: 사용자 지정 바코드 이미지 생성하기
linktitle: 사용자 지정 바코드 이미지 생성하기
description: "바코드 모양 생성 예시 Java 사용."
type: docs
weight: 350
url: /ko/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

바코드는 데이터를 병렬 선이나 패턴으로 표시하는 시각적 표현입니다. 바코드는 소매업, 물류, 의료, 금융 등 다양한 산업에서 널리 사용되고 있습니다.

Microsoft Word은 사용자가 필드를 사용하여 문서에 바코드를 직접 삽입할 수 있도록 허용합니다. 사용자는 QR 코드 또는 선형 바코드와 같은 특정 유형의 바코드를 [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) 필드를 사용하여 삽입할 수 있습니다.

이 글에서 우리는 BARCODE 필드가 Aspose.Words에서 어떻게 구현되는지 그리고 Aspose.Words이 바코드가 이미 추가된 워드 문서와 사용자들이 어떻게 작업하는지에 대해 살펴보겠습니다.

## 바코드 유형 지원 Aspose.Words

Aspose.Words는 다양한 유형의 바코드를 지원합니다. 바코드 유형은 [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType) 속성에서 문자열 값으로 전달됩니다.

{{% alert color="primary" %}}

바코드를 Aspose.Words 함수에서 작업하는 기능이 제한적이므로 사용자는 Aspose.Barcode와 같은 라이브러리 또는 바코드를 작업하기 위한 사용자 정의 렌더링을 포함하여 필요한 모든 라이브러리를 사용할 수 있습니다. 바코드 유형에 대해 자세히 알아보려면 [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/)을 참조하세요.

{{% /alert %}}

워드 형식 중 바코드를 지원하는 파일을 저장할 때, [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) 타입의 바코드를 사용할 수 있습니다. 잘못된 타입의 바코드가 전달되면 워드는 오류를 표시합니다.

다른 형식(예: PDF)으로 저장할 때, Aspose.Words 바코드 렌더링을 사용자 코드에 위임하므로, 사용자는 구현 또는 사용하는 라이브러리에 따라 바코드 유형이 제한됩니다.

## 문서에 바코드 삽입 또는 추가된 바코드가 있는 문서 로드

Aspose.Words는 가능성을 제공합니다.:

1. [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) 및 [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) 필드 코드를 사용하여 문서에 바코드를 프로그래밍 방식으로 삽입합니다
2. 또는 바코드가 이미 삽입된 워드 문서로 더 작업하기 위해 로드

Aspose.Words은 사용자 정의 바코드를 생성하는 인터페이스를 가지고 있어 [Aspose.Words](https://products.aspose.com/words/java/)과 [Aspose.BarCode](https://products.aspose.com/barcode/java/)을 함께 사용하여 출력 문서에 바코드 이미지를 렌더링하기 쉽게 합니다. 예를 들어, 여러분은 DOC, OOXML 또는 RTF 문서를 만들고 그 안에 DISPLAYBARCODE 필드를 추가하여 Aspose.Words를 사용할 수 있습니다. 또는 여러분은 이미 DISPLAYBARCODE 필드가 있는 DOC, OOXML 또는 RTF 문서를 로드하고 사용자 정의 바코드 생성기에 대한 구현을 제공할 수 있습니다.

전형적인 DISPLAYBARCODE 필드는 다음과 같은 문법을 갖는다:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

아래는 Aspose.Words 및 Aspose.Barcode API를 사용하는 예제 코드 생성기입니다. 이 예에서는 Word 문서에서 DISPLAYBARCODE 필드 위치에 바코드 이미지를 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

또한 PDF, XPS, 등 고정 페이지 포맷으로 로드된 바코드나 새로 삽입된 바코드를 가진 문서에 저장할 수 있습니다. 다음 코드는 Word 문서를 PDF 포맷으로 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

한 형식에서 다른 형식으로 문서를 변환하는 방법에 대한 자세한 정보는 [Convert a Document](/words/java/convert-a-document/) 문서 참조하세요.

{{% /alert %}}

{{% alert color="primary" %}}

워드 문서에 포함된 바코드를 이미지로 변환하는 방법에도 [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) 인터페이스를 사용할 수 있습니다. 생성된 이미지는 문서에서 추출할 수 있습니다 - "이미지 작업 방법" 기사를 자세한 내용을 참조하세요.

{{% /alert %}}

## 바코드 옵션 지정

바코드를 작업할 때 추가 속성을 설정할 수 있습니다. Aspose.Words은 [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) 클래스를 제공합니다. – 바코드 생성기로 전달되는 바코드 매개변수 클래스입니다.

Aspose.Words는 [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)로 생성된 이미지에 대한 임베드된 96 ppi 해상도를 지원하며 이는 바코드 이미지의 최소 크기를 제한합니다. 이를 해결하기 위해 개발자는 워드 문서에 대상 해상도 이미지들을 수동으로 삽입하고 필요한 형식으로 저장할 수 있습니다. 더 자세한 정보와 예제는 [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/) 기사를 참조하세요.
