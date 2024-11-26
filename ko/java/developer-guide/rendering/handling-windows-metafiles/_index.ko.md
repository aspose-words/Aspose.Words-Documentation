---
title: Java에서Windows메타 파일 처리
second_title: Aspose.WordsJava
articleTitle: Windows메타 파일 처리
linktitle: Windows메타 파일 처리
description: "Aspose.Words에 대한Java는 모든 플랫폼에서 메타 파일 형식을 재생하기 위해 자체Windows메타 파일 플레이어를 구현하고 기본 메타 파일 기능의 처리를 지원하며 다른 유형의 메타 파일 플레이어로 대체를 수행 할 수 있습니다."
type: docs
weight: 30
url: /ko/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows메타 파일 형식은 벡터 및 래스터 그래픽을 모두 포함할 수 있는 이미지 파일 형식입니다. 이 형식은 그래픽 데이터를 메모리 또는 디스크 파일에 저장하는 데 사용됩니다. 메타파일은 화면에 이미지를 표시하기 위해 실행되어야 하는Windows그래픽 장치 인터페이스(GDI)에 함수 호출 목록을 저장합니다. 시스템은 디스플레이 컨텍스트에서 이러한 명령을 해석하고 실행합니다.

이전에는Windows메타파일이Microsoft Word이 지원하는 유일한 벡터 이미지 형식이었습니다. Microsoft Word이제SVG형식을 지원하지만 메타 파일 형식은 여전히 워드 문서에서 일반적으로 사용됩니다. 또한 메타파일은Microsoft비시오와 같은 다른 응용 프로그램의 교환 형식일 수 있습니다. 기본적으로 메타파일의 주요 목적은Windows응용 프로그램 간의 그래픽 정보 교환을 보장하는 것입니다.

Windows메타파일의 3 가지 버전이 있습니다:

- WMF–상점은 16 비트GDI로 호출합니다.
- EMF–상점은/GDI를 호출합니다.
- EMF+메타파일 저장소는GDI+를 호출합니다. EMF+메타파일은 또한EMF과EMF+부분으로 동일한 그래픽을 설명하는 이중일 수 있습니다.

Windows메타파일의 기존 문제는 문서가 일반적으로 저장되는 대부분의 비 단어 형식에서 지원되지 않는다는 것입니다. 따라서 메타 파일 형식을 다른 래스터 또는 벡터 형식으로 변환해야합니다. Windows메타파일을GDI+로 전달하는 것만으로.NET에서 라스터 이미지로 변환하는 것은 쉽지만,GDI+도 메타파일에서 벡터 그래픽을 추출하는 기능을 제공하지 않기 때문에 다른 플랫폼에서는 불가능합니다. 이러한 문제를 해결하기 위해Aspose.Words은 모든 플랫폼에서 벡터 및 래스터 그래픽을 모두 메타 파일 형식으로 재생할 수있는 자체Windows메타 파일 플레이어를 구현합니다.

## Aspose.Words메타파일 플레이어 제어

[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/)클래스를 사용하면 메타파일 플레이어를 제어할 수 있습니다. 예를 들어 비트맵으로 변환할 때 특별한 의미를 갖는[RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/)속성을 사용하여 메타파일 이미지를 렌더링하는 방법을 결정할 수 있습니다([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions)속성 참조).

## 래스터 작업 지원

래스터 작업은 복잡한 메타 파일 기능으로 현재 지원이 제한되어 있습니다. 래스터 작업은WMF및EMF메타 파일 형식으로 사용할 수 있습니다. EMF+메타파일 형식은 래스터 연산을 직접 사용하지 않지만EMF파트,포함된WMF또는EMF메타파일을 포함할 수 있습니다.

이진 및 삼진 래스터 연산이 있습니다:

- 이진 래스터 작업은 선 및 곡선 그리기와 같은 펜 그리기 명령에 적용됩니다. 선을 그릴 때 펜 색상은 16 진수 색상 값을 사용하여 지정된 비트 논리 연산을 사용하여 대상 비트맵 색상(장치 표면의 해당 픽셀의 색상)과 결합됩니다. 아래 이미지 예는 20 개의 다른 색상 막대에 적용된 16 개의 이진 래스터 연산의 효과를 보여줍니다. 수직 색상 막대가 먼저 그려지고 각 이진 래스터 작업이 적용된 후에 수평 막대가 그려집니다. 간단한 경우,R2_BLACK은 검은색을 그리고,R2_NOT은 색을 역으로 하고,R2_NOP은 배경을 바꾸지 않고,R2_WHITE은 흰색을 그립니다.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- 삼항 래스터 연산은 비트맵 이미지를 그릴 때 적용됩니다. 지정된 16 진수 색상 값을 사용하여 비트 단위 논리 연산을 사용하여 해당 비트 맵 이미지 픽셀,브러시 및 대상 비트 맵의 색상을 결합합니다. 삼진 라스터 연산을 사용하는 가장 일반적인 목적 중 하나는 투명성을 에뮬레이션하는 것입니다. 아래 예제에 제공된 이미지는 아이콘 투명도를 에뮬레이션하는 방법을 보여줍니다. 비트맵에는 흑백 마스크 비트맵과 컬러 비트맵의 두 가지 유형이 있습니다. 먼저,마스크 비트맵은SRCAND래스터 연산으로 그려집니다. 불투명 아이콘 영역을 흑백으로 변경하여 투명 영역을 변경하지 않습니다. 그런 다음SRCINVERT래스터 연산으로 두 번째 비트맵을 그립니다. 검은 색 영역에 컬러 픽셀을 표시하여 투명 영역을 변경하지 않습니다.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

래스터 작업은 벡터 그래픽으로 직접 변환 할 수 없습니다. Aspose.Words래스터 작업의 영향을 받는 장치 표면을 부분적으로 래스터화하여 래스터 작업을 에뮬레이트합니다. 이를 위해[EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations)속성이 사용됩니다.

{{% alert color="primary" %}}

이진 래스터 연산은 현재 지원되지 않으며 제한된 수의 삼진 래스터 연산은Aspose.Words에 의해 지원되지만,예를 들어 벡터 그래픽으로의 변환의 기본 사례를 직접 처리 할 수 있습니다., R2_BLACK, R2_WHITE, R2_NOP. 또한,장치 표면의 래스터화는 특히 상당한 수의 래스터 작동 레코드가 관련된 경우 성능에 상당한 영향을 미칩니다.

{{% /alert %}}

아래 예제에서는 메타파일 레코드 중 일부를 벡터 그래픽으로 올바르게 렌더링할 수 없는 경우Aspose.Words이 메타파일을 비트맵으로 렌더링하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
