---
title: 문서와 별도로 모양 렌더링
second_title: .NET용 Aspose.Words
articleTitle: 문서와 별도로 모양 렌더링
linktitle: 문서와 별도로 모양 렌더링
description: "문서 처리 시 이미지, 문단이 포함된 텍스트 상자, 화살표 모양 등 다양한 그래픽 객체를 추출하고, C#를 이용하여 외부 위치로 내보낼 수 있습니다."
type: docs
weight: 40
url: /ko/net/rendering-shapes-separately-from-a-document/
---

문서를 처리할 때 일반적인 작업은 문서에 있는 모든 이미지를 추출하여 외부 위치로 내보내는 것입니다. 이 작업은 이미 이미지 데이터 추출 및 저장 기능을 제공하는 Aspose.Words API를 사용하면 간단해집니다. 그러나 때로는 다른 유형의 그리기 개체(예: 단락이 포함된 텍스트 상자, 화살표 모양 및 작은 이미지)로 표시되는 다른 유형의 그래픽 콘텐츠를 유사하게 추출하려는 경우도 있습니다. 이 개체는 개별 콘텐츠 요소의 조합이므로 렌더링하는 간단한 방법은 없습니다. 내용이 하나의 이미지처럼 보이는 객체로 그룹화되어 있는 경우도 있을 수 있습니다.

Aspose.Words는 렌더링된 콘텐츠로 모양에서 간단한 이미지를 추출할 수 있는 것과 동일한 방식으로 이러한 유형의 콘텐츠를 추출하는 기능을 제공합니다. 이 문서에서는 이 기능을 활용하여 문서와 관계없이 모양을 렌더링하는 방법을 설명합니다.

## Aspose.Words의 모양 유형

문서 그리기 레이어의 모든 콘텐츠는 Aspose.Words DOM(문서 개체 모듈)의 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 또는 [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) 노드로 표시됩니다. 이러한 콘텐츠는 텍스트 상자, 이미지, 도형, OLE 개체 등이 될 수 있습니다. 일부 필드(예: `INCLUDEPICTURE` 필드)도 모양으로 가져옵니다.

간단한 이미지는 [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/)의 **Shape** 노드로 표현됩니다. 이 모양 노드에는 하위 노드가 없지만 이 모양 노드에 포함된 이미지 데이터는 [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) 속성을 통해 액세스할 수 있습니다. 반면에 모양은 많은 하위 노드로 구성될 수도 있습니다. 예를 들어 [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) 속성으로 표현되는 텍스트 상자 모양은 [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) 등 여러 노드로 구성될 수 있습니다. 대부분의 셰이프에는 **Paragraph** 및 **Table** 블록 수준 노드가 포함될 수 있습니다. 본체에 등장하는 노드와 동일한 노드입니다. 도형은 항상 인라인으로 직접 포함되거나 **절,**에 고정되지만 문서 페이지의 어느 곳에나 "떠다니는" 일부 단락의 일부입니다.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

문서에는 함께 그룹화된 모양이 포함될 수도 있습니다. 여러 개체를 선택하고 마우스 오른쪽 버튼 클릭 메뉴에서 "Group"를 클릭하면 Microsoft Word에서 Grouping을 활성화할 수 있습니다.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Aspose.Words에서 이러한 모양 그룹은 [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) 노드로 표시됩니다. 전체 그룹을 이미지로 렌더링하는 것과 동일한 방식으로 호출할 수도 있습니다.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

DOCX 형식에는 다이어그램이나 차트와 같은 특수한 유형의 이미지가 포함될 수 있습니다. 이러한 모양은 Aspose.Words의 **Shape** 노드를 통해서도 표현되며, 이는 이미지로 렌더링하는 유사한 방법도 제공합니다. 설계상 해당 모양이 이미지(**ShapeType.Image**)가 아닌 한 모양은 다른 모양을 하위로 포함할 수 없습니다. 예를 들어 Microsoft Word에서는 다른 텍스트 상자 안에 텍스트 상자를 삽입하는 것을 허용하지 않습니다.

위에서 설명한 모양 유형은 [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) 클래스를 통해 모양을 렌더링하는 특별한 방법을 제공합니다. **ShapeRenderer** 클래스의 인스턴스는 **GetShapeRenderer** 메서드를 통해 또는 **Shape**을 **ShapeRenderer** 클래스의 생성자에 전달하여 **Shape** 또는 **GroupShape**에 대해 검색됩니다. 이 클래스는 다음에 대한 모양을 렌더링할 수 있는 멤버에 대한 액세스를 제공합니다

- [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) 메소드 오버로드를 사용하는 디스크의 파일
- [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) 메서드 오버로드를 사용한 스트리밍
- [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) 및 [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) 방식을 사용하는 .NET 그래픽 개체

{{% alert color="primary" %}}

**Shape**를 렌더링할 때 문서 계층 구조의 일부여야 합니다. **Shape**가 문서 트리의 일부가 아닌 경우 **ShapeRenderer** 메서드를 호출한 후 렌더링된 출력은 공백이 됩니다.

{{% /alert %}}

## 파일 또는 스트림으로 렌더링

[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) 메서드는 셰이프를 파일이나 스트림에 직접 렌더링하는 오버로드를 제공합니다. 두 오버로드 모두 모양 렌더링을 위한 옵션을 정의할 수 있는 [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) 클래스의 인스턴스를 허용합니다. 이는 [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) 메서드와 동일한 방식으로 작동합니다. 이 매개변수가 필수이더라도 사용자 정의 옵션이 없음을 지정하여 null 값을 전달할 수 있습니다.

모양은 [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) 열거에 지정된 모든 이미지 형식으로 내보낼 수 있습니다. 예를 들어 이미지는 [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/) 열거를 지정하여 JPEG와 같은 래스터 이미지로 렌더링하거나 [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/)을 지정하여 EMF와 같은 벡터 이미지로 렌더링할 수 있습니다.

아래 코드 예제에서는 문서와 별도로 모양을 EMF 이미지로 렌더링하고 디스크에 저장하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

아래 코드 예제에서는 문서와 별도로 모양을 JPEG 이미지로 렌더링하고 스트림에 저장하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

**ImageSaveOptions** 클래스를 사용하면 이미지 렌더링 방법을 제어하는 다양한 옵션을 지정할 수 있습니다. 위에서 설명한 기능은 **GroupShape** 및 **Shape** 노드에도 동일한 방식으로 적용될 수 있습니다.

## .NET 그래픽 개체로 렌더링

**Graphics** 개체에 직접 렌더링하면 **Graphics** 개체에 대한 고유한 설정과 상태를 정의할 수 있습니다. 일반적인 시나리오에는 Windows 양식 또는 비트맵에서 검색된 **Graphics** 개체에 직접 모양을 렌더링하는 작업이 포함됩니다. **Shape** 노드가 렌더링되면 설정이 모양 모양에 영향을 미칩니다. 예를 들어 **Graphics** 개체에 대해 **RotateTransform** 또는 **ScaleTransform** 메서드를 사용하여 모양을 회전하거나 크기를 조정할 수 있습니다.

아래 예에서는 문서와 별도로 모양을 .**NET Graphics** 개체로 렌더링하고 렌더링된 이미지에 회전을 적용하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

마찬가지로 [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/) 메서드와 마찬가지로 [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/)에서 상속된 [렌더 크기](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) 메서드는 문서 콘텐츠의 축소판을 만드는 데 유용합니다. 모양 크기는 생성자를 통해 지정됩니다. **RenderToSize** 메서드는 **Graphics** 개체, 이미지 위치의 X 및 Y 좌표, **Graphics** 개체에 그려질 이미지의 크기(너비 및 높이)를 허용합니다.

**Shape**는 [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) 클래스에서 상속된 [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) 메서드를 사용하여 특정 규모로 렌더링할 수 있습니다. 이는 동일한 주요 매개변수를 허용하는 [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) 방법과 유사합니다. 이 두 가지 방법의 차이점은 **ShapeRenderer.RenderToScale** 방법을 사용하면 리터럴 크기 대신 렌더링 중에 모양의 크기를 조정하는 부동 소수점 값을 선택한다는 것입니다. float 값이 1.0이면 모양이 원래 크기의 100%로 렌더링됩니다. float 값이 0.5이면 이미지 크기가 절반으로 줄어듭니다.

## 모양 이미지 렌더링

[Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 클래스는 도형, 텍스트 상자, 자유형, OLE 개체, ActiveX 컨트롤 또는 그림과 같은 그리기 레이어의 개체를 나타냅니다. **Shape** 클래스를 사용하면 Microsoft Word 문서에서 모양을 만들거나 수정할 수 있습니다. 모양의 중요한 속성은 [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype)입니다. 다양한 유형의 도형은 Word 문서에서 다양한 기능을 가질 수 있습니다. 예를 들어, 이미지와 OLE 셰이프에만 이미지가 포함될 수 있고 대부분의 셰이프에는 텍스트만 포함될 수 있습니다.

다음 예에서는 문서와 별도로 Shape 이미지를 JPEG 이미지로 렌더링하고 디스크에 저장하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## 모양 크기 검색

[ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) 클래스는 [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) 메서드를 통해 모양의 크기를 픽셀 단위로 검색하는 기능도 제공합니다. 이 방법은 모양이 렌더링될 때 모양 크기를 계산하는 데 사용되는 두 개의 부동(단일) 매개변수인 배율과 DPI를 허용합니다. 이 메서드는 계산된 크기의 너비와 높이가 포함된 [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) 객체를 반환합니다. 이는 렌더링된 출력에서 새 비트맵을 생성할 때와 같이 렌더링된 모양의 크기를 미리 알아야 할 때 유용합니다.

아래 예에서는 렌더링할 모양의 너비와 높이를 사용하여 새 비트맵 및 그래픽 개체를 만드는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

**RenderToSize** 또는 **RenderToScale** 메소드를 사용하는 경우 렌더링된 이미지 크기도 [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) 객체로 반환됩니다. 이는 변수에 할당되어 필요한 경우 사용할 수 있습니다.

**SizeInPoints** 속성은 포인트 단위로 측정된 모양 크기를 반환합니다([ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) 참조). 결과는 너비와 높이를 포함하는 `SizeF` 객체입니다.
