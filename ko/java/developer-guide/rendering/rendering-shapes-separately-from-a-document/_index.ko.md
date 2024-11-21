---
title: Rendering 모양 문서에서 분리
second_title: Aspose.Words 제품정보 Java
articleTitle: Rendering 모양 문서에서 분리
linktitle: Rendering 모양 문서에서 분리
description: "이미지, 단락, 또는 화살표 모양을 포함하는 텍스트 상자와 같은 다양한 그래픽 개체를 추출, 문서 처리 할 때, 외부 위치에 수출 Java·"
type: docs
weight: 40
url: /ko/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

문서 처리를 할 때, 일반적인 작업은 문서에서 발견 된 모든 이미지를 추출하고 외부 위치에 수출하는 것입니다. 이 작업은 간단합니다. Aspose.Words API, 이미 이미지를 추출하고 저장하는 기능을 제공합니다. 그러나 때로는 다른 유형의 그림 물체로 표현되는 그래픽 콘텐츠의 다른 유형을 유사한 추출 할 수 있습니다. 예를 들어, 단락, 화살표 모양 및 작은 이미지를 포함하는 텍스트 상자. 이 객체를 렌더링하는 방법은 다음과 같습니다. 콘텐츠가 단일 이미지처럼 보이는 객체로 함께 그룹화될 때도 발생할 수 있습니다.

Aspose.Words 이 유형의 콘텐츠를 같은 방법으로 추출할 수 있는 기능을 제공합니다. 이 문서는 문서의 독립적으로 모양을 렌더링하는이 기능을 사용하는 방법을 설명합니다.

## 모양 유형에 Aspose.Words

문서 도면 레이어의 모든 내용이 표현됩니다. [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 또는 [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) 노드에서 Aspose.Words Document 개체 모듈 (DOM). 그런 내용은 텍스트 상자, 이미지, AutoShapes, OLE 목표, 등일 수 있습니다. 몇몇 분야는 또한 모양으로, 예를 들면, 수입됩니다 `INCLUDEPICTURE` 이름 *

간단한 이미지는 **Shape** 노드의 [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE)· 이 형태 노드에는 아이 노드가 없지만 이 형태 노드 내에서 포함된 이미지 데이터는 액세스할 수 있습니다. [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) 호텔 위치 다른 한편, 모양도 많은 아이 노드로 만들 수 있습니다. 예를 들어, 텍스트 상자 모양, 즉, [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) 속성은 많은 노드로 만들 수 있습니다. [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) · [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)· 대부분의 모양은 포함될 수 있습니다 **Paragraph** · **Table** 블록 레벨 노드. 이것은 주체에 나타나는 것과 동일한 노드입니다. 모양은 어떤 단락의 항상 부분, 직접 인라인 또는 닻을 포함하 **관련 기사** 그러나 문서 페이지에서 "floating".

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

문서는 함께 그룹화 된 모양을 포함 할 수 있습니다. Grouping을 사용할 수 있습니다 Microsoft Word 여러 개체를 선택 하 고 클릭 "Group오른쪽 클릭 메뉴에서 ".

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

내 계정 Aspose.Words, 모양의 이 그룹은 대표됩니다. [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) 노드. 또한 이미지 전체 그룹을 렌더링하는 것과 같은 방식으로 호출 할 수 있습니다.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

DOCX 형식은 도표 또는 도표와 같은 이미지의 특별한 유형을 포함할 수 있습니다. 이 모양은 또한 대표됩니다 **Shape** 노드에서 Aspose.Words, 또한 이미지로 렌더링하는 유사한 방법을 제공합니다. 디자인에 의해 모양은 아이로 다른 모양을 포함할 수 없습니다, 그 모양은 이미지 (**ShapeType.Image**). 예를 들어, Microsoft Word 다른 텍스트 상자에 텍스트 상자를 삽입 할 수 없습니다.

위에 설명 된 모양 유형은 특수 방법을 제공하여 모양을 렌더링합니다. [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) 수업. 인스턴스의 **ShapeRenderer** 클래스는 검색 **Shape** 또는 **GroupShape** 을 통해 **GetShapeRenderer** 방법 또는 통과 **Shape** 구성자에 **ShapeRenderer** 수업. 이 클래스는 다음과 같은 형태로 렌더링 할 수있는 구성원에 대한 액세스를 제공합니다:

- 디스크에 파일 [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) 방법 하중 초과
- 스트림 사용 [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) 방법 하중 초과
- 그래픽 Object를 사용하여 [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) · [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) 제품 설명

{{% alert color="primary" %}}

렌더링 할 때 <span notrans="<span notrans=" **Shape**"=""></span>· 문서 hierarchy의 일부가 있어야합니다. 이름 * **Shape** 문서 트리의 일부가 아니라 렌더링 된 출력은 invoking 후에 공백이 될 것입니다. **ShapeRenderer** 방법.

{{% /alert %}}

## 파일 또는 스트림에 렌더링

더 보기 [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) 방법은 파일이나 스트림에 직접 모양을 렌더링하는 하중을 제공합니다. 과부하 모두는 인스턴스를 허용합니다. [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) 스타일 렌더링 옵션 정의 할 수있는 클래스. 같은 방법으로 작동합니다. [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) 방법. 이 매개 변수가 요구되었더라도, null 값을 전달할 수 있으므로 사용자 정의 옵션이 없다는 것을 지정할 수 있습니다.

모양은 지정된 어떤 이미지 체재에서 수출될 수 있습니다 [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) 관련 기사 예를 들어, 이미지는 JPEG와 같은 래스터 이미지로 렌더링 될 수 있습니다. [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) enumeration, 또는 EMF와 같은 벡터 이미지로 지정 [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF)·

아래 코드 예제는 문서에서 EMF 이미지로 형상을 렌더링하고 디스크에 저장:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

아래 코드 예제는 문서에서 JPEG 이미지로 모양을 렌더링하고 스트림에 저장:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

더 보기 **ImageSaveOptions** 클래스는 이미지를 렌더링하는 방법을 제어하는 다양한 옵션을 지정할 수 있습니다. 위에서 설명한 기능은 동일한 방식으로 적용될 수 있습니다 **GroupShape** · **Shape** 노드.

## 더 알아보기 `Graphics` 기타

직접 렌더링 **Graphics** 객체를 사용하면 자신의 설정과 상태를 정의 할 수 있습니다. **Graphics** 이름 * 일반적인 시나리오는 직접 모양을 렌더링합니다. **Graphics** 객체는 retrieved Windows 양식 또는 비트맵. 을 때 **Shape** 노드가 렌더링됩니다. 설정은 모양에 영향을 미칩니다. 예를 들어, 회전 또는 스케일을 사용하여 모양을 늘릴 수 있습니다. **RotateTransform** 또는 **ScaleTransform** 자주 묻는 질문 **Graphics** 이름 *

아래 예제는 모양을 렌더링하는 방법을 보여줍니다. **Graphics** 문서에서 별도의 객체와 렌더링 된 이미지로 교체를 적용합니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

마찬가지로, [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) 방법, [제품 크기](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)위에서 상속되는 방법 [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) 문서 내용의 썸네일 만들기에 유용합니다. 모양 크기는 constructor를 통해 지정됩니다. 더 보기 **RenderToSize** 방법 수락 **Graphics** 객체, 이미지 위치의 X 및 Y 좌표, 이미지의 크기 (폭 및 높이)에 그려질 것이다 **Graphics** 이름 *

더 보기 **Shape** 특정 스케일로 렌더링 할 수 있습니다. [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) 위에서 상속되는 방법 [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) 수업. 이것은 유사합니다 [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) 같은 주요 매개 변수를 수용하는 방법. 이 두 가지 방법의 차이점은 다음과 같습니다. **ShapeRenderer.RenderToScale** 방법, 리터 크기 대신, 당신은 그것의 연출 도중 모양을 가늠자하는 float 가치를 선택합니다. float 값이 1.0과 동일하면 원래 크기의 100 %에서 렌더링 된 모양이 발생합니다. 0.5의 float 값은 이미지 크기를 절반으로 줄입니다.

## 모양 이미지 렌더링

더 보기 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 클래스는 AutoShape, 텍스트 상자, 프리폼, OLE 객체, ActiveX 컨트롤 또는 그림과 같은 도면 층의 개체를 나타냅니다. 사용 방법 **Shape** 클래스를 만들거나 수정할 수 있습니다. Microsoft Word 문서. 모양의 중요한 속성은 그것의 [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)· 다른 유형의 모양은 Word 문서에 다른 기능을 가질 수 있습니다. 예를 들어, 단지 이미지와 OLE 모양은 모양의 대부분이 텍스트를 가질 수 있는 동안 그 안에 이미지를 가질 수 있습니다.

다음 예제는 문서에서 JPEG 이미지로 모양 이미지를 렌더링하고 디스크에 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## 모양 크기를 retrieving

더 보기 [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) 클래스는 픽셀의 크기를 검색하는 기능을 제공합니다. [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) 방법. 이 방법은 두 개의 float (Single) 매개 변수를 수락 – 형상이 렌더링 될 때 모양 크기의 계산에 사용되는 스케일과 DPI. 방법 반환 [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) 계산된 크기의 너비와 높이를 포함하는 객체. 렌더링 된 모양의 크기를 사전에 알아야 할 때 유용합니다. 예를 들어 렌더링 된 출력에서 새로운 비트 맵을 만들 때.

아래 예제는 새로운 비트 맵과 그래픽 객체를 만드는 방법을 보여줍니다. 모양의 너비와 높이는 렌더링됩니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

사용시 **RenderToSize** 또는 **RenderToScale** 방법, 렌더링 된 이미지 크기는 또한 반환에 [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) 이름 * 이 변수에 할당 될 수 있고 필요한 경우 사용.

더 보기 **SizeInPoints** 속성은 포인트에서 측정 된 모양 크기를 반환합니다 (see [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). 결과가 `SizeF` 폭과 고도를 포함하는 목표.
