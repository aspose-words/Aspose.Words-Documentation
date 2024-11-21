---
title: C#에서 이미지 작업하기
second_title: .NET용 Aspose.Words
articleTitle: 이미지 작업
linktitle: 이미지 작업
description: ".NET용 Aspose.Words에서 제공하는 세부적인 이미지 모양과 고급 기능입니다."
type: docs
weight: 300
url: /ko/net/working-with-images/
timestamp: 2024-05-02-11-51-44
---

Aspose.Words를 사용하면 사용자는 매우 유연한 방식으로 이미지 작업을 할 수 있습니다. 이 기사에서는 이미지 작업의 가능성 중 일부만 살펴보겠습니다.

## 이미지 {#insert-an-image}를 삽입하는 방법

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)는 인라인 또는 플로팅 이미지를 삽입할 수 있는 [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) 메서드의 여러 오버로드를 제공합니다. 이미지가 EMF 또는 WMF 메타파일인 경우 메타파일 형식으로 문서에 삽입됩니다. 다른 모든 이미지는 PNG 형식으로 저장됩니다. **InsertImage** 메서드는 다양한 소스의 이미지를 사용할 수 있습니다

- `String` 매개변수 [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)을 전달하여 파일 또는 `URL`에서
- `Stream` 매개변수 **InsertImage**를 전달하여 스트림에서
- Image 매개변수 **InsertImage**를 전달하여 Image 객체에서
- 바이트 배열 매개변수 **InsertImage**를 전달하여 바이트 배열에서

각 **InsertImage** 메서드에는 다음 옵션을 사용하여 이미지를 삽입할 수 있는 추가 오버로드가 있습니다
- 특정 위치에서 인라인 또는 플로팅(예: **InsertImage**)
- 백분율 크기 또는 사용자 정의 크기(예: **InsertImage**) 또한 **InsertImage** 메서드는 방금 생성되어 삽입된 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 개체를 반환하므로 Shape의 속성을 추가로 수정할 수 있습니다

### 인라인 이미지 {#insert-an-inline-image}를 삽입하는 방법

이미지가 포함된 파일을 나타내는 단일 문자열을 **InsertImage**에 전달하여 이미지를 인라인 그래픽으로 문서에 삽입합니다

다음 코드 예제에서는 문서의 커서 위치에 인라인 이미지를 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### 플로팅 이미지 {#insert-a-floating-image}를 삽입하는 방법

다음 코드 예제에서는 파일이나 `URL`의 부동 이미지를 지정된 위치와 크기에 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## 문서 {#how-to-extract-images-from-a-document}에서 이미지를 추출하는 방법

모든 이미지는 [Document](https://reference.aspose.com/words/net/aspose.words/document/)의 **Shape** 노드 내부에 저장됩니다. 문서에서 모든 이미지 또는 특정 유형의 이미지를 추출하려면 다음 단계를 따르십시오

- 모든 **Shape** 노드를 선택하려면 [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) 방법을 사용하십시오.
- 결과 노드 컬렉션을 반복합니다.
- [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/) 부울 속성을 확인하세요.
- [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) 속성을 이용하여 이미지 데이터를 추출합니다.
- 이미지 데이터를 파일로 저장합니다.

다음 코드 예제에서는 문서에서 이미지를 추출하여 파일로 저장하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 각 문서 페이지에 바코드를 삽입하는 방법 {#how-to-insert-barcode-on-each-documen-page}

이 예에서는 Word 문서의 전체 또는 특정 페이지에 동일하거나 다른 바코드를 추가하는 방법을 보여줍니다. 문서의 모든 페이지에 바코드를 직접 추가할 수 있는 방법은 없지만 다음 코드에서 볼 수 있듯이 **MoveToSection**, **MoveToHeaderFooter** 및 **InsertImage** 방법을 사용하여 섹션이나 머리글/바닥글로 이동하고 바코드 이미지를 삽입할 수 있습니다.

다음 코드 예제에서는 문서의 각 페이지에 바코드 이미지를 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## 이미지 {#lock-aspect-ratio-of-image}의 종횡비 잠금

기하학적 모양의 종횡비는 다양한 치수의 크기 비율입니다. [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/)를 사용하여 이미지의 가로 세로 비율을 잠글 수 있습니다. 모양의 종횡비 기본값은 [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/)에 따라 다릅니다. `ShapeType.Image`의 경우 *true*이고 다른 모양 유형의 경우 *false*입니다.

다음 코드 예제에서는 종횡비 작업 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## 점 {#how-to-get-actual-bounds-of-shape-in-points}에서 실제 모양 경계를 얻는 방법

페이지에 렌더링된 모양의 실제 경계 상자를 원하는 경우 [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/) 속성을 사용하여 이를 달성할 수 있습니다.

다음 코드 예제에서는 이 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## 이미지 자르기 {#crop-images}

이미지 자르기는 일반적으로 프레임을 개선하는 데 도움이 되도록 이미지에서 원하지 않는 외부 부분을 제거하는 것을 의미합니다. 또한 특정 영역에 대한 초점을 높이기 위해 이미지의 일부 부분을 제거하는 데에도 사용됩니다.

다음 코드 예제는 Aspose.Words API를 사용하여 이를 달성하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## 이미지를 WMF {#save-images-as-wmf}로 저장

Aspose.Words는 DOCX를 RTF로 변환하는 동안 문서에서 사용 가능한 모든 이미지를 [WMF](https://docs.fileformat.com/image/wmf/) 형식으로 저장하는 기능을 제공합니다.

다음 코드 예제에서는 RTF 저장 옵션을 사용하여 이미지를 WMF로 저장하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
