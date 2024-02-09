---
title: 바코드를 만드는 방법
second_title: .NET용 Aspose.Words
articleTitle: 맞춤형 바코드 이미지 생성
linktitle: 맞춤형 바코드 이미지 생성
description: "C#를 이용한 바코드 모양 생성의 예."
type: docs
weight: 350
url: /ko/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words에는 사용자 정의 바코드를 생성하기 위한 인터페이스가 있어 Aspose.Words와 [Aspose.BarCode](https://products.aspose.com/barcode/net/)를 함께 사용하여 출력 문서에서 바코드 이미지를 렌더링하는 것이 매우 쉽습니다. 예를 들어 `DISPLAYBARCODE` 필드가 포함된 DOC, OOXML 또는 RTF 문서를 Aspose.Words에 로드하고 사용자 정의 바코드 생성기 구현을 제공하고 PDF, XPS 등과 같은 고정 페이지 형식으로 저장할 수 있습니다.

일반적인 `DISPLAYBARCODE` 필드의 구문은 다음과 같습니다

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

다음은 `Aspose.BarCode` API를 활용하는 샘플 코드 생성기입니다. 이 예에서는 Aspose.Words 및 `Aspose.BarCode` API를 사용하여 Word 문서의 `DISPLAYBARCODE` 필드 위치에 바코드 이미지를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
