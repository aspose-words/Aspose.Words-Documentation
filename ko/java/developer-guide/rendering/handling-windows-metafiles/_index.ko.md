---
title: 제품정보 Windows 메타파일 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 제품정보 Windows 메타파일
linktitle: 제품정보 Windows 메타파일
description: "Aspose.Words 제품정보 Java 자체 구현 Windows Metafile 플레이어는 모든 플랫폼에서 Metafile 형식을 재생하고 기본 메타 파일 기능의 취급을 지원하며 메타 파일 플레이어의 다른 유형으로 fallback을 수행 할 수 있습니다."
type: docs
weight: 30
url: /ko/java/handling-windows-metafiles/
---

Windows Metafile 형식은 벡터와 래스터 그래픽을 포함 할 수있는 이미지 파일 형식입니다. 이 형식은 메모리 또는 on-disk 파일에서 그래픽 데이터를 저장하는 데 사용됩니다. metafile은 함수 호출 목록을 저장합니다. Windows 그래픽 장치 인터페이스 (GDI)는 화면에 이미지를 표시하기 위해 실행되어야한다. 시스템은 해석하고 디스플레이 컨텍스트에서 이러한 명령을 실행합니다.

이전, Windows Metafile은 지원되는 유일한 벡터 이미지 형식이었습니다 Microsoft Word· Microsoft Word 이제 SVG 형식을 지원하지만, 메타 파일 형식은 여전히 Word 문서에서 사용됩니다. 또한, Metafile은 다른 어떤 신청을 위한 교환 체재일 수 있었습니다 Microsoft 비오. 필수, Metafile의 주요 목적은 그래프 정보의 교환을 보장하는 것입니다. Windows 신청.

3 버전이 있습니다. Windows 메타 파일:

- WMF - 16bit GDI 매장
- EMF - Win32/GDI에 저장 통화.
- EMF+ 메타파일 매장은 GDI+로 전화합니다. EMF + Metafile은 듀얼, EMF 및 EMF + 부품과 같은 그래픽을 설명 할 수 있습니다.

기존 문제 Windows Metafile은 대부분의 non-Word 형식에 의해 지원되지 않습니다. 문서는 일반적으로 저장됩니다. 따라서 Metafile 형식을 다른 래스터 또는 벡터 형식으로 변환해야합니다. 변환이 쉽습니다 Windows Metafile에서 래스터 이미지 .NET GDI+로 간단히 전달하지만, GDI+는 Metafile에서 벡터 그래픽을 추출하는 기능을 제공하지 않습니다. 이 문제를 해결하기 위해, Aspose.Words 자체 구현 Windows Metafile 플레이어는 모든 플랫폼에서 벡터와 래스터 그래픽을 모두 플레이 할 수 있습니다.

## 연결하기 Aspose.Words Metafile 플레이어

더 보기 [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) 클래스는 metafile 플레이어를 제어 할 수 있습니다. 예를 들어, metafile 이미지가 렌더링되는 방법을 결정할 수 있습니다. [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) bitmaps로 변환 할 때 특별한 의미를 가진 재산 (see also [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) 사이트 맵

## Raster 작업 지원

Raster 작업은 현재 제한된 지원이 있는 복잡한 메타 파일 기능입니다. Raster 작업은 WMF 및 EMF 메타 파일 형식으로 제공됩니다. EMF + 메타 파일 형식은 래스터 작업을 직접 사용하지 않지만 EMF 부품, 임베디드 WMF 또는 EMF 메타 파일을 포함 할 수 있습니다.

바이너리 및 ternary 래스터 작업이 있다:

- Binary raster 작업은 그림 선과 곡선과 같은 펜 그림 명령에 적용됩니다. 선을 그릴 때, 펜 색상은 지정된 비트 방향 논리 조작을 사용하여 대상 비트 맵 색상 (장치 표면에 해당 픽셀의 색상)과 결합됩니다. 아래 이미지 예제는 20 가지 색상 막대에 적용되는 모든 16 바이너리 래스터 작업의 효과를 보여줍니다. 수직 색깔 막대기는 첫째로 그려집니다, 수평한 막대기는 각 이진 래스터 가동이 적용됩니다 후에 그려집니다. 간단한 경우, R2_BLACK 그릴 검정, R2_NOT는 색깔을 반전합니다, R2_NOP 배경을 변경하지 않고 R2_WHITE 흰색을 그립니다.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Ternary raster 작업은 bitmap 이미지를 그리는 때 적용됩니다. 해당 비트맵 이미지 픽셀의 색상, 브러시 및 지정된 헥스 색상 값으로 비트 방향 논리 작업을 사용하여 대상 비트맵을 결합합니다. ternary raster 작업의 가장 일반적인 목적 중 하나는 투명성의 에뮬레이션입니다. 아래 예에서 제공되는 이미지는 아이콘 투명성가 에뮬레이션될 수 있는 방법을 보여줍니다. 비트 맵의 두 가지 유형이 있습니다: b / w 마스크 비트 맵과 색상 비트 맵. 첫째, 마스크 비트맵은 SRCAND 래스터 작업으로 그려집니다. 흰색과 흰색으로 불투명한 아이콘 지역을 변경합니다. 그런 다음 두 번째 비트맵은 SRCINVERT 래스터 작업으로 그려집니다. 그것은 검은 지역에 색상 픽셀을 표시, 투명 지역 변경을 떠나.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Raster 작업은 벡터 그래픽으로 직접 변환 할 수 없습니다. Aspose.Words 부분적으로 rasterizing에 의해 raster 가동을 자극합니다 raster 가동에 의하여. 이 목적을 위해, [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) 이용안내

{{% alert color="primary" %}}

이진 래스터 작업이 현재 지원되지 않는 동안 및 제한된 수의 ternary 래스터 작업이 지원됩니다 Aspose.Words, 그것은 벡터 도표에 직접 변환의 기본적인 케이스를 취급할 수 있습니다, 예를 들면, R2_BLACK, R2_WHITE, R2_NOP· 또한, 장치 표면의 rasterizing 크게 성능에 영향을 미치는, 특히 래스터 작업 레코드의 상당한 수가 참여할 때.

{{% /alert %}}

아래 예제는 다음과 같습니다. Aspose.Words 제대로 벡터 그래픽에 메타 파일 레코드의 일부를 렌더링 할 수 없을 때 비트 맵에 메타 파일을 렌더링:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
