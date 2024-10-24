---
title: 도형을 문서와 별도로 렌더링
second_title: Aspose.Words 에 대한 C++
articleTitle: 도형을 문서와 별도로 렌더링
linktitle: 도형을 문서와 별도로 렌더링
description: "문서를 처리 할 때 이미지,단락이 포함 된 텍스트 상자 또는 화살표 모양과 같은 다양한 그래픽 개체를 추출하여 외부 위치로 내보냅니다."
type: docs
weight: 40
url: /ko/cpp/rendering-shapes-separately-from-a-document/
---

문서를 처리할 때 일반적인 작업은 문서에 있는 모든 이미지를 추출하여 외부 위치로 내보내는 것입니다. 이 작업은 Aspose.Words API,이미 이미지 데이터를 추출하고 저장하는 기능을 제공합니다. 그러나 때로는 단락,화살표 모양 및 작은 이미지가 포함 된 텍스트 상자와 같이 다른 유형의 그리기 개체로 표시되는 다른 유형의 그래픽 콘텐츠를 유사하게 추출 할 수 있습니다. 이 객체는 개별 콘텐츠 요소의 조합이기 때문에 이 객체를 렌더링하는 간단한 방법은 없습니다. 또한 콘텐츠가 하나의 이미지처럼 보이는 개체로 그룹화 된 경우가 발생할 수 있습니다.

Aspose.Words 렌더링된 콘텐츠와 같이 셰이프에서 간단한 이미지를 추출하는 것과 같은 방식으로 이 유형의 콘텐츠를 추출하는 기능을 제공합니다. 이 문서에서는 이 기능을 사용하여 도형을 문서와 독립적으로 렌더링하는 방법을 설명합니다.

## 모양 유형 Aspose.Words

문서 도면 레이어의 모든 내용은 [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) 또는 [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) 노드 Aspose.Words 문서 객체 모듈(DOM). 이러한 내용은 텍스트 상자,이미지 일 수 있습니다, AutoShapes, OLE 물체 등 일부 필드는 도형으로 가져오기도 합니다. `INCLUDEPICTURE` 필드

간단한 이미지는 **Shape** 노드 [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). 이 모양 노드에는 자식 노드가 없지만이 모양 노드 내에 포함 된 이미지 데이터에 액세스 할 수 있습니다. [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/) 재산. 반면에,모양은 또한 많은 자식 노드로 구성될 수 있습니다. 예를 들어,텍스트 상자 모양은 [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/) 속성은 다음과 같은 많은 노드로 구성 될 수 있습니다 [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) 그리고 [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/). 대부분의 모양은 **Paragraph** 그리고 **Table** 블록 레벨 노드. 이것들은 본체에 나타나는 것과 같은 노드입니다. 모양은 항상 어떤 단락의 일부이며,직접 인라인으로 포함되거나 **Paragraph,** 그러나 문서 페이지의 아무 곳이나"부동"합니다.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

문서에는 그룹화된 도형도 포함될 수 있습니다. 그룹화는 다음에서 활성화할 수 있습니다 Microsoft Word 여러 개체를 선택하고 오른쪽 클릭 메뉴에서"그룹"을 클릭하십시오.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

그 안에 Aspose.Words,이 모양 그룹은 `GroupShape` 노드 이 또한 전체 그룹을 이미지에 렌더링하기 위해 동일한 방식으로 호출 될 수 있습니다.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

그 DOCX 형식은 다이어그램 또는 차트와 같은 특수 유형의 이미지를 포함 할 수 있습니다. 이 모양들은 또한 **Shape** 노드 Aspose.Words,또한 이미지로 렌더링하는 비슷한 방법을 제공합니다. 디자인 상,모양이 이미지 인 경우가 아니면 모양이 다른 모양을 자식으로 포함 할 수 없습니다.**ShapeType.Image**). 예를 들어, Microsoft Word 다른 텍스트 상자 안에 텍스트 상자를 삽입할 수 없습니다.

위에서 설명한 모양 유형은 모양을 통해 렌더링하는 특별한 방법을 제공합니다. [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) 수업 의 인스턴스 **ShapeRenderer** 클래스는 **Shape** 또는 **GroupShape** 을 통해 **GetShapeRenderer** 방법 또는 **Shape** 의 생성자에게 **ShapeRenderer** 수업 이 클래스는 멤버에 대한 액세스를 제공하여 셰이프를 다음과 같이 렌더링할 수 있습니다:

- 파일을 사용하여 디스크에 [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) 방법 과부하
- 스트림 사용 [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) 방법 과부하
- 그 `Graphics` 개체를 사용하여 [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) 그리고 [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) 방법

{{% alert color="primary" %}}

렌더링 할 때 **Shape**,문서 계층 구조의 일부여야 합니다. 만약 **Shape** 문서 트리의 일부가 아닌 경우 렌더링 된 출력은 호출 후 비어 있습니다 **ShapeRenderer** 방법.

{{% /alert %}}

## 파일 또는 스트림으로 렌더링

그 [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) 메서드는 모양을 파일이나 스트림에 직접 렌더링하는 오버로드를 제공합니다. 두 오버로드 모두 [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) 셰이프를 렌더링하기 위한 옵션을 정의할 수 있는 클래스입니다. 이것은 다음과 같은 방식으로 작동합니다. [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) 방법 이 매개 변수가 필요하더라도 사용자 지정 옵션이 없음을 지정하여 널 값을 전달할 수 있습니다.

도형에 지정된 모든 이미지 형식으로 내보낼 수 있습니다 [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) 열거 예를 들어,이미지는 다음과 같이 래스터 이미지로 렌더링 될 수 있습니다 JPEG 를 지정하여 `SaveFormat.Jpeg` 열거형 또는 벡터 이미지로,예를 들어 EMF 를 지정하여 `SaveFormat.Emf`.

아래 코드 예제에서는 셰이프를 다음과 같이 렌더링하는 방법을 보여 줍니다 EMF 문서와 별도로 이미지 및 디스크에 저장:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

아래 코드 예제에서는 셰이프를 다음과 같이 렌더링하는 방법을 보여 줍니다 JPEG 문서와 별도로 이미지 및 스트림에 저장:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

그 **ImageSaveOptions** 클래스를 사용하면 이미지가 렌더링되는 방식을 제어하는 다양한 옵션을 지정할 수 있습니다. 위에서 설명한 기능은 동일한 방식으로 적용 할 수 있습니다. **GroupShape** 그리고 **Shape** 노드

## 렌더링 .NET 그래픽 개체

직접 렌더링 **Graphics** 개체는 당신이 당신의 자신의 설정 및 상태에 대한 정의 할 수 있습니다 **Graphics** 객체 일반적인 시나리오는 모양을 직접 **Graphics** 에서 검색된 객체 Windows 양식 또는 비트 맵. 때 **Shape** 노드가 렌더링되면 설정이 모양 모양에 영향을 미칩니다. 예를 들어,다음을 사용하여 도형을 회전하거나 크기를 조정할 수 있습니다 **RotateTransform** 또는 **ScaleTransform** 에 대한 방법 **Graphics** 객체

아래의 예는 모양을 렌더링하는 방법을 보여줍니다.**NET Graphics** 문서와 별도로 개체를 지정하고 렌더링된 이미지에 회전을 적용합니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

마찬가지로, [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/) 방법, [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)에서 상속 된 방법 [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) 문서 콘텐츠의 축소판을 만드는 데 유용합니다. 도형 크기는 생성자를 통해 지정됩니다. 그 **RenderToSize** 메소드는 **Graphics** 개체,엑스 과 와이 이미지 위치의 좌표,그리고 위에 그려 질 이미지의 크기(너비 및 높이) **Graphics** 객체

그 **Shape** 특정 규모로 렌더링할 수 있습니다. [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) 에서 상속 된 방법 [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) 수업 이것은 [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/) 동일한 주요 매개 변수를 허용하는 메서드입니다. 이 두 가지 방법의 차이점은 **ShapeRenderer.RenderToScale** 메서드,리터럴 크기 대신 렌더링 중에 셰이프의 크기를 조정하는 부동 소수점 값을 선택합니다. 플로트 값이 같으면 1.0 모양이 렌더링되는 원인 100 원래 크기의%. 의 플로트 값 0.5 이미지 크기를 절반으로 줄일 수 있습니다.

## 모양 이미지 렌더링

그 [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) 클래스는 도면 계층의 객체를 나타냅니다. AutoShape,텍스트 상자,자유 형식, OLE 개체,액티브 컨트롤 또는 그림. 를 사용하여 **Shape** 클래스,당신은 만들거나 모양을 수정할 수 있습니다 Microsoft Word 문서 모양의 중요한 속성은 [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). 다른 유형의 모양은 단어 문서에서 다른 기능을 가질 수 있습니다. 예를 들어,이미지 및 OLE 도형은 그 안에 이미지를 가질 수 있지만 대부분의 도형은 텍스트만 가질 수 있습니다.

다음 예제에서는 모양 이미지를 렌더링하는 방법을 보여 줍니다 JPEG 문서와 별도로 이미지 및 디스크에 저장:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## 모양 크기 검색

그 [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) 클래스는 또한 픽셀로 모양의 크기를 검색하는 기능을 제공합니다. [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/) 방법 이 방법은 두 개의 부동 유형(단일)매개 변수를 허용합니다. DPI,모양이 렌더링될 때 모양 크기를 계산하는 데 사용됩니다. 이 메서드는 `Size` 계산된 크기의 너비와 높이를 포함하는 개체입니다. 예를 들어 렌더링된 출력에서 새 비트맵을 만들 때 렌더링된 셰이프의 크기를 미리 알아야 할 때 유용합니다.

아래 예제에서는 렌더링할 모양의 너비와 높이를 사용하여 새 비트맵 및 그래픽 개체를 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

사용할 경우 **RenderToSize** 또는 **RenderToScale** 메서드,렌더링 된 이미지 크기도 반환됩니다 [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) 객체 이 변수는 변수에 할당하고 필요한 경우 사용할 수 있습니다.

그 **SizeInPoints** 속성은 점으로 측정된 모양 크기를 반환합니다(참조 [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). 그 결과 `SizeF` 너비와 높이를 포함하는 개체.
