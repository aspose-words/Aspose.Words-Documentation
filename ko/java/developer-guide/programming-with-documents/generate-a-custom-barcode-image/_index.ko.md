---
title: Java에서BarCode만들기
second_title: Aspose.WordsJava
articleTitle: 사용자 정의BarCode이미지 생성
linktitle: 사용자 정의BarCode이미지 생성
description: "Java을 사용한 바코드 모양 생성의 예."
type: docs
weight: 350
url: /ko/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

바코드는 평행선이나 패턴의 형태로 데이터를 시각적으로 표현하는 것입니다. 바코드는 소매,물류,의료,은행 및 기타 여러 산업 분야에서 널리 사용됩니다.

Microsoft Word사용자가 필드를 사용하여 문서에 직접 바코드를 포함 할 수 있습니다. 사용자는 다음을 사용하여QR코드 또는 선형 바코드와 같은 특정 유형의 바코드를 삽입할 수 있습니다 [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) 필드

이 문서에서는BARCODE필드가Aspose.Words에서 구현되는 방법과Aspose.Words사용자가 바코드가 이미 추가 된 워드 문서를 사용하여 작업 할 수있는 방법을 살펴 보겠습니다.

## Aspose.Words에서 지원하는 바코드 유형

Aspose.Words다양한 유형의 바코드를 지원합니다. 바코드 유형은[BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType)속성에서 문자열 값으로 전달됩니다.

{{% alert color="primary" %}}

Aspose.Words의 기능 내에서 바코드로 작업하는 것은 제한되어 있기 때문에 사용자는 아스포스를 포함한 모든 라이브러리를 사용할 수 있습니다.바코드,또는 바코드와 함께 작동하도록 자신의 렌더링을 작성합니다. 바코드 유형에 대해 자세히 알아볼 수 있습니다 [에 의해 지원됩니다.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

바코드를 지원하는 단어 형식으로 저장할 때,당신은 바코드의 모든 유형을 사용할 수 있습니다 [지원Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). 바코드의 잘못된 유형이 전달 된 경우,워드 오류가 표시됩니다.

PDF와 같은 다른 형식으로 저장할 때Aspose.Words은 바코드 렌더링을 사용자 코드에 위임하므로 사용자는 사용 된 구현 또는 라이브러리의 바코드 유형으로 제한됩니다.

## 바코드를 문서에 삽입하거나 바코드가 추가된 문서를 로드합니다

Aspose.Words은:

1. 프로그래밍 방식으로 바코드를 사용하여 문서에 삽입 [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) 그리고 [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) 필드 코드
2. 또는 추가 작업을 위해 바코드가 이미 삽입 된 단어 문서를로드하십시오

Aspose.Words는 사용하기 쉬운 사용자 정의 바코드를 생성하기위한 인터페이스를 가지고 [Aspose.Words](https://products.aspose.com/words/java/) 그리고 [아스포스BarCode](https://products.aspose.com/barcode/java/) 함께 출력 문서에 바코드 이미지를 렌더링합니다. 예를 들어DOC,OOXML또는RTF문서를 만들고Aspose.Words를 사용하여DISPLAYBARCODE필드를 추가할 수 있습니다. 또는DISPLAYBARCODE필드가 이미 존재하는DOC,OOXML또는RTF문서를로드하고 사용자 정의 바코드 생성기의 구현을 제공 할 수 있습니다.

일반적인DISPLAYBARCODE필드에는 다음과 같은 구문이 있습니다:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

아래는Aspose.Words과 아스포스를 사용하는 예제 코드 생성기입니다.BarCode APIs. 이 예제에서는 워드 문서의DISPLAYBARCODE필드 위치에 바코드 이미지를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

PDF,XPS등과 같은 고정 페이지 형식으로 로드되거나 새로 삽입된 바코드로 문서를 저장할 수도 있습니다. 다음 코드 예제에서는 단어 문서를PDF형식으로 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

한 형식에서 다른 형식으로 문서를 변환하는 방법에 대한 자세한 내용은 다음을 참조하십시오 [문서 변환](/words/java/convert-a-document/) 문서 섹션.

{{% /alert %}}

{{% alert color="primary" %}}

[IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)인터페이스를 사용하여 워드 문서에 포함된 바코드를 이미지로 변환할 수도 있습니다. 결과 이미지는 문서에서 추출할 수 있습니다.자세한 내용은 이미지 작업 문서를 참조하십시오.

{{% /alert %}}

## 바코드 옵션 지정

바코드 작업 시 추가 속성을 설정할 수 있습니다. Aspose.Words는 [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) 클래스를 제공합니다. 이 클래스는 바코드 매개변수가 BarcodeGenerator로 전달될 수 있는 클래스입니다.

Aspose.Words는[IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)로 생성된 이미지에 대해 임베디드 96 피피 해상도를 지원하며,이는 바코드 이미지의 최소 크기를 제한합니다. 이를 해결하기 위해 개발자는 대상 해상도의 바코드 이미지를 워드 문서에 수동으로 삽입하고 필요한 형식으로 저장할 수 있습니다. 바코드 작업에 대한 자세한 내용 및 예제는 문서를 참조하십시오 [워드 문서에서 바코드 읽기](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
