---
title: 취급 Windows 메타파일 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 취급 Windows 메타파일
linktitle: 취급 Windows 메타파일
description: "Aspose.Words 에 대한 C++ 자체 구현 Windows 메타 파일 플레이어는 모든 플랫폼에서 메타 파일 형식을 재생하고 기본 메타 파일 기능의 처리를 지원하고 메타 파일 플레이어의 다른 유형에 대체를 수행 할 수 있습니다."
type: docs
weight: 30
url: /ko/cpp/handling-windows-metafiles/
timestamp: 2024-01-30-16-22-34
---

Windows 메타 파일 형식은 벡터 및 래스터 그래픽을 모두 포함할 수 있는 이미지 파일 형식입니다. 이 형식은 그래픽 데이터를 메모리 또는 디스크 파일에 저장하는 데 사용됩니다. 메타파일은 함수 호출 목록을 저장합니다. Windows 그래픽 장치 인터페이스(GDI)를 실행하여 화면에 이미지를 표시해야 합니다. 시스템은 디스플레이 컨텍스트에서 이러한 명령을 해석하고 실행합니다.

이전, Windows 메타파일은 Microsoft Word. Microsoft Word 이제 지원 SVG 형식이지만 메타 파일 형식은 여전히 워드 문서에서 일반적으로 사용됩니다. 또한 메타 파일은 다음과 같은 일부 다른 응용 프로그램의 교환 형식 일 수 있습니다 Microsoft 비시오 기본적으로 메타파일의 주요 목적은 Windows 응용 프로그램.

여기 있습니다. 3 버전 Windows 메타파일:

- WMF -상점은 16 비트에 전화 GDI.
- EMF -상점은 윈 32 에 전화/GDI.
- EMF+메타 파일 저장소에 전화 GDI+. EMF+메타 파일은 둘 다 동일한 그래픽을 설명하는 이중 일 수도 있습니다 EMF 그리고 EMF+부품.

기존 문제 Windows 메타 파일은 문서가 일반적으로 저장되는 대부분의 비 단어 형식에서 지원되지 않는다는 것입니다. 따라서 메타 파일 형식을 다른 래스터 또는 벡터 형식으로 변환해야합니다. 그것은 쉽게 변환 할 수 있습니다 Windows 메타파일에서 래스터 이미지 켜기 .NET 단순히 그것을 전달함으로써 GDI+,하지만 다른 플랫폼에서는 불가능합니다. GDI+는 메타파일에서 벡터 그래픽을 추출하는 기능을 제공하지 않습니다. 이러한 문제를 해결하려면, Aspose.Words 자체 구현 Windows 모든 플랫폼에서 메타 파일 형식 벡터 및 래스터 그래픽을 모두 재생할 수있는 메타 파일 플레이어.

## 제어 Aspose.Words 메타 파일 플레이어

그 [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) 클래스는 메타 파일 플레이어를 제어 할 수 있습니다. 예를 들어 메타 파일 이미지를 사용하여 렌더링하는 방법을 결정할 수 있습니다. [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/) 비트맵으로 변환할 때 특별한 의미를 갖는 속성(또한 [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/) 재산).

비트맵에 저장하는 것은 다른 플랫폼에서는 다르게 작동합니다. .NET. 동안 .NET GDI+렌더링은 가장 복잡한 메타 파일 형식에서도 거의 완벽하게 작동하는 참조입니다.다른 플랫폼에서는 문제가 발생하거나 전혀 지원되지 않을 수 있습니다.

## 래스터 작업 지원

래스터 작업은 복잡한 메타 파일 기능으로 현재 지원이 제한되어 있습니다. 라스터 작업은 WMF 그리고 EMF 메타 파일 형식. 그 EMF+메타 파일 형식은 래스터 작업을 직접 사용하지 않지만 다음을 포함 할 수 있습니다 EMF 부품,임베디드 WMF 또는 EMF 메타파일

이진 및 삼진 래스터 연산이 있습니다:

- 이진 래스터 작업은 선 및 곡선 그리기와 같은 펜 그리기 명령에 적용됩니다. 선을 그릴 때 펜 색상은 16 진수 색상 값을 사용하여 지정된 비트 논리 연산을 사용하여 대상 비트맵 색상(장치 표면의 해당 픽셀의 색상)과 결합됩니다. 아래 이미지 예는 20 개의 다른 색상 막대에 적용된 16 개의 이진 래스터 연산의 효과를 보여줍니다. 수직 색상 막대가 먼저 그려지고 각 이진 래스터 작업이 적용된 후에 수평 막대가 그려집니다. 간단한 경우를 위해, R2_BLACK 검은 색을 그립니다, R2_NOT 색의 역, R2_NOP 배경을 변경하지 않으며, R2_WHITE 흰색을 그립니다.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- 삼항 래스터 연산은 비트맵 이미지를 그릴 때 적용됩니다. 지정된 16 진수 색상 값을 사용하여 비트 단위 논리 연산을 사용하여 해당 비트 맵 이미지 픽셀,브러시 및 대상 비트 맵의 색상을 결합합니다. 삼진 라스터 연산을 사용하는 가장 일반적인 목적 중 하나는 투명성을 에뮬레이션하는 것입니다. 아래 예제에 제공된 이미지는 아이콘 투명도를 에뮬레이션하는 방법을 보여줍니다. 비트맵에는 흑백 마스크 비트맵과 컬러 비트맵의 두 가지 유형이 있습니다. 먼저,마스크 비트맵은 SRCAND 래스터 작동. 불투명 아이콘 영역을 흑백으로 변경하여 투명 영역을 변경하지 않습니다. 두 번째 비트맵은 SRCINVERT 래스터 작동. 검은 색 영역에 컬러 픽셀을 표시하여 투명 영역을 변경하지 않습니다.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

래스터 작업은 벡터 그래픽으로 직접 변환 할 수 없습니다. Aspose.Words 래스터 작업의 영향을 받는 장치 표면을 부분적으로 래스터화하여 래스터 작업을 에뮬레이트합니다. 이 목적을 위해, [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) 재산이 사용됩니다.

{{% alert color="primary" %}}

이진 래스터 연산은 현재 지원되지 않으며 제한된 수의 삼진 래스터 연산은 Aspose.Words,예를 들어 벡터 그래픽으로의 변환의 기본 사례를 직접 처리 할 수 있습니다., R2_BLACK, R2_WHITE, R2_NOP. 또한,장치 표면의 래스터화는 특히 상당한 수의 래스터 작동 레코드가 관련된 경우 성능에 상당한 영향을 미칩니다.

{{% /alert %}}

아래 예는 방법을 보여줍니다 Aspose.Words 메타 파일 레코드 중 일부를 벡터 그래픽으로 올바르게 렌더링할 수 없는 경우 메타 파일을 비트맵으로 렌더링합니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## 메타 파일 대체 설정

Aspose.Words 가장 복잡하거나 드문 메타 파일 기능을 지원하지 않습니다. 사용자는 다음을 구현할 수 있습니다 [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) 인터페이스 및 경고 메시지를받을 수 있습니다. 만약 Aspose.Words 메타파일에서 지원되지 않는 기능을 만나면 다음과 같은 경고 메시지가 표시됩니다 [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. 이 경우 Aspose.Words 다른 유형의 메타 파일 플레이어로 대체를 수행 할 수 있습니다. 대체에 관한 경고 메시지도 발행됩니다.

첫째, Aspose.Words 벡터 메타 파일 플레이어에서 래스터로 대체를 수행합니다. [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/) 재산. 대체 기능이 비활성화된 경우, Aspose.Words 지원되지 않는 기능 대신 일부 대체 그래픽을 렌더링하려고 시도합니다.

Aspose.Words 다음을 사용하여 메타 파일을 래스터로 성공적으로 재생합니다 GDI+에 .NET,이 콜백 옵션을 안전하게 만듭니다.

둘째,에 대한 옵션이 있습니다 EMF+재생에서 대체 할 듀얼 메타 파일 EMF+부분 EMF 부분 그것은에 의해 통제됩니다 [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). 이 경우 재생할 때 몇 가지 문제가 발생합니다 EMF 부분,다음 래스터 폴백도 수행 할 수 있습니다.

라스터 작업에 관해서는,만약 [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) 이 활성화 된 경우 비트 맵 메타 파일 플레이어에 대체를 트리거하는 지원되지 않는 것으로 간주됩니다. 따라서 래스터 연산이 있는 메타파일이 있지만 래스터 연산 에뮬레이션을 사용하지 않으려면 대체 그래픽으로 벡터 출력을 가져오려면 다음을 선택합니다. [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.
