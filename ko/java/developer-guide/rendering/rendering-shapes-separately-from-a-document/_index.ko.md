---
title: 도형을 문서와 별도로 렌더링
second_title: Aspose.WordsJava
articleTitle: 도형을 문서와 별도로 렌더링
linktitle: 도형을 문서와 별도로 렌더링
description: "문서를 처리 할 때 이미지,단락이 포함 된 텍스트 상자 또는 화살표 모양과 같은 다양한 그래픽 개체를 추출하고Java을 사용하여 외부 위치로 내보냅니다."
type: docs
weight: 40
url: /ko/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

문서를 처리할 때 일반적인 작업은 문서에 있는 모든 이미지를 추출하여 외부 위치로 내보내는 것입니다. 이 작업은 이미 이미지 데이터를 추출하고 저장하는 기능을 제공하는Aspose.WordsAPI로 간단 해집니다. 그러나 때로는 단락,화살표 모양 및 작은 이미지가 포함 된 텍스트 상자와 같이 다른 유형의 그리기 개체로 표시되는 다른 유형의 그래픽 콘텐츠를 유사하게 추출 할 수 있습니다. 이 객체는 개별 콘텐츠 요소의 조합이기 때문에 이 객체를 렌더링하는 간단한 방법은 없습니다. 또한 콘텐츠가 하나의 이미지처럼 보이는 개체로 그룹화 된 경우가 발생할 수 있습니다.

Aspose.Words은 렌더링된 콘텐츠와 같이 셰이프에서 간단한 이미지를 추출하는 것과 같은 방식으로 이 유형의 콘텐츠를 추출하는 기능을 제공합니다. 이 문서에서는 이 기능을 사용하여 도형을 문서와 독립적으로 렌더링하는 방법을 설명합니다.

## Aspose.Words의 모양 유형

문서 도면 레이어의 모든 콘텐츠는Aspose.Words문서 개체 모듈(DOM)의[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)또는[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)노드로 표시됩니다. 이러한 내용은 텍스트 상자,이미지,AutoShapes,OLE개체 등이 될 수 있습니다. 일부 필드는`INCLUDEPICTURE`필드와 같이 도형으로 가져오기도 합니다.

간단한 이미지는[ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE)의**Shape**노드로 표현됩니다. 이 셰이프 노드에는 자식 노드가 없지만 이 셰이프 노드 내에 포함된 이미지 데이터는[Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData)속성으로 액세스할 수 있습니다. 반면에,모양은 또한 많은 자식 노드로 구성될 수 있습니다. 예를 들어[ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX)속성으로 표시되는 텍스트 상자 모양은[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)및[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)와 같은 많은 노드로 구성될 수 있습니다. 대부분의 도형에는**Paragraph**및**Table**블록 수준 노드가 포함될 수 있습니다. 이것들은 본체에 나타나는 것과 같은 노드입니다. 모양은 항상 어떤 단락의 일부이며,직접 인라인으로 포함되거나**Paragraph,**에 고정되어 있지만 문서 페이지의 어느 곳에서나"부동"합니다.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

문서에는 그룹화된 도형도 포함될 수 있습니다. 여러 개체를 선택하고 오른쪽 클릭 메뉴에서"그룹"을 클릭하여Microsoft Word에서 그룹화를 활성화할 수 있습니다.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Aspose.Words에서 이러한 도형 그룹은[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)노드로 표시됩니다. 이 또한 전체 그룹을 이미지에 렌더링하기 위해 동일한 방식으로 호출 될 수 있습니다.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

DOCX형식에는 다이어그램 또는 차트와 같은 특수 유형의 이미지가 포함될 수 있습니다. 이 모양들은 또한Aspose.Words의**Shape**노드를 통해 표현되며,이는 또한 그것들을 이미지로 렌더링하는 유사한 방법을 제공합니다. 디자인 상,모양은 이미지(**ShapeType.Image**)가 아닌 한 다른 모양을 자식으로 포함 할 수 없습니다. 예를 들어Microsoft Word에서는 다른 텍스트 상자 안에 텍스트 상자를 삽입할 수 없습니다.

위에서 설명한 모양 유형은[ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)클래스를 통해 모양을 렌더링하는 특별한 방법을 제공합니다. **ShapeRenderer**클래스의 인스턴스는**GetShapeRenderer**메소드를 통해 또는**Shape**를**ShapeRenderer**클래스의 생성자에게 전달하여**Shape**또는**GroupShape**에 대해 검색됩니다. 이 클래스는 멤버에 대한 액세스를 제공하여 셰이프를 다음과 같이 렌더링할 수 있습니다:

- [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions)메서드 오버로드를 사용하여 디스크의 파일
- [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions)메서드 오버로드를 사용하여 스트림
- [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float)및[RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)메서드를 사용하여 그래픽 개체

{{% alert color="primary" %}}

**Shape**을 렌더링할 때는 문서 계층 구조의 일부여야 합니다. **Shape**이 문서 트리의 일부가 아닌 경우**ShapeRenderer**메서드를 호출한 후 렌더링된 출력이 비어 있습니다.

{{% /alert %}}

## 파일 또는 스트림으로 렌더링

[Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions)메서드는 셰이프를 파일이나 스트림에 직접 렌더링하는 오버로드를 제공합니다. 두 오버로드 모두[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)클래스의 인스턴스를 허용하므로 셰이프를 렌더링하기 위한 옵션을 정의할 수 있습니다. 이것은[Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions)방법과 같은 방식으로 작동합니다. 이 매개 변수가 필요하더라도 사용자 지정 옵션이 없음을 지정하여 널 값을 전달할 수 있습니다.

셰이프는[SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)열거형에 지정된 모든 이미지 형식으로 내보낼 수 있습니다. 예를 들어,이미지는[SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG)열거형을 지정하여JPEG과 같은 래스터 이미지로 렌더링되거나[SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF)을 지정하여EMF과 같은 벡터 이미지로 렌더링될 수 있습니다.

아래 코드 예제에서는 도형을 문서와 별도로EMF이미지로 렌더링하고 디스크에 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

아래 코드 예제에서는 도형을 문서와 별도로JPEG이미지로 렌더링하고 스트림에 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

**ImageSaveOptions**클래스를 사용하면 이미지가 렌더링되는 방식을 제어하는 다양한 옵션을 지정할 수 있습니다. 위에서 설명한 기능은**GroupShape**및**Shape**노드에 동일한 방식으로 적용될 수 있습니다.

## `Graphics`개체로 렌더링

**Graphics**개체에 직접 렌더링하면**Graphics**개체에 대한 고유한 설정과 상태를 정의할 수 있습니다. 일반적인 시나리오는Windows양식이나 비트맵에서 검색된**Graphics**객체에 직접 모양을 렌더링하는 것을 포함합니다. **Shape**노드가 렌더링되면 설정이 모양 모양에 영향을 줍니다. 예를 들어**Graphics**개체에 대해**RotateTransform**또는**ScaleTransform**메서드를 사용하여 도형을 회전하거나 크기를 조정할 수 있습니다.

아래 예제에서는 도형을 문서와 별도로**Graphics**개체에 렌더링하고 렌더링된 이미지에 회전을 적용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

마찬가지로[RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)메서드와 마찬가지로[NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/)에서 상속된[RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)메서드는 문서 콘텐츠의 축소판을 만드는 데 유용합니다. 도형 크기는 생성자를 통해 지정됩니다. **RenderToSize**메서드는**Graphics**개체,엑스 및 와이 이미지 위치의 좌표 및**Graphics**개체에 그려질 이미지 크기(너비 및 높이)를 허용합니다.

**Shape**는[NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/)클래스에서 상속된[ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)메서드를 사용하여 특정 스케일로 렌더링할 수 있습니다. 이것은 동일한 주요 매개 변수를 받아들이는[Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)방법과 유사합니다. 이 두 메서드의 차이점은**ShapeRenderer.RenderToScale**메서드에서 리터럴 크기 대신 렌더링 중에 셰이프의 크기를 조정하는 부동 소수점 값을 선택한다는 것입니다. 부동 소수점 값이1.0같으면 모양이 원래 크기의 100%로 렌더링됩니다. 0.5의 플로트 값은 이미지 크기를 절반으로 줄입니다.

## 모양 이미지 렌더링

[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)클래스는AutoShape,텍스트 상자,자유형,OLE개체,액티브 컨트롤 또는 그림과 같은 도면 레이어의 개체를 나타냅니다. **Shape**클래스를 사용하여Microsoft Word문서에서 도형을 만들거나 수정할 수 있습니다. 모양의 중요한 속성은[ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)입니다. 다른 유형의 모양은 단어 문서에서 다른 기능을 가질 수 있습니다. 예를 들어,이미지와OLE도형만 내부에 이미지를 가질 수 있지만 대부분의 도형에는 텍스트만 있을 수 있습니다.

다음 예제에서는 도형 이미지를 문서와 별도로JPEG이미지로 렌더링하고 디스크에 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## 모양 크기 검색

[ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)클래스는[GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float)메서드를 통해 도형의 크기를 픽셀 단위로 검색하는 기능도 제공합니다. 이 메서드는 셰이프가 렌더링될 때 셰이프 크기 계산에 사용되는 두 개의 부동(단일)매개 변수(눈금 및DPI)를 허용합니다. 이 메서드는 계산된 크기의 너비와 높이를 포함하는[Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float)개체를 반환합니다. 예를 들어 렌더링된 출력에서 새 비트맵을 만들 때 렌더링된 셰이프의 크기를 미리 알아야 할 때 유용합니다.

아래 예제에서는 렌더링할 모양의 너비와 높이를 사용하여 새 비트맵 및 그래픽 개체를 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

**RenderToSize**또는**RenderToScale**메서드를 사용할 때 렌더링된 이미지 크기도[SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float)개체에서 반환됩니다. 이 변수는 변수에 할당하고 필요한 경우 사용할 수 있습니다.

**SizeInPoints**속성은 점으로 측정된 모양 크기를 반환합니다([ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)참조). 그 결과`SizeF`개체가 너비와 높이를 포함합니다.
