---
title: Windows 메타파일 처리
second_title: Python via .NET용 Aspose.Words
articleTitle: Windows 메타파일 처리
linktitle: Windows 메타파일 처리
description: "Python via .NET용 Aspose.Words는 자체 Windows 메타파일 플레이어를 구현하여 모든 플랫폼에서 메타파일 형식을 재생하고 기본 메타파일 기능 처리를 지원하며 다른 유형의 메타파일 플레이어로 대체를 수행할 수 있습니다."
type: docs
weight: 30
url: /ko/python-net/handling-windows-metafiles/
---

Windows 메타파일 형식은 벡터 그래픽과 래스터 그래픽을 모두 포함할 수 있는 이미지 파일 형식입니다. 이 형식은 그래픽 데이터를 메모리나 디스크 파일에 저장하는 데 사용됩니다. 메타파일은 화면에 이미지를 표시하기 위해 실행해야 하는 Windows GDI(그래픽 장치 인터페이스)에 함수 호출 목록을 저장합니다. 시스템은 디스플레이 컨텍스트에서 이러한 명령을 해석하고 실행합니다.

이전에는 Windows 메타파일이 Microsoft Word에서 지원되는 유일한 벡터 이미지 형식이었습니다. Microsoft Word는 이제 SVG 형식도 지원하지만 메타파일 형식은 여전히 Word 문서에서 일반적으로 사용됩니다. 또한 메타파일은 Microsoft Visio와 같은 일부 다른 응용 프로그램에 대한 교환 형식일 수 있습니다. 본질적으로 메타파일의 주요 목적은 Windows 응용 프로그램 간의 그래픽 정보 교환을 보장하는 것입니다.

Windows 메타파일에는 3가지 버전이 있습니다

- WMF – 16비트 GDI에 대한 호출을 저장합니다.
- EMF – Win32/GDI에 대한 호출을 저장합니다.
- EMF+ 메타파일은 GDI+에 대한 호출을 저장합니다. EMF+ 메타파일은 EMF와 EMF+ 부분 모두를 사용하여 동일한 그래픽을 설명하는 이중 파일일 수도 있습니다.

Windows 메타파일의 기존 문제는 문서가 일반적으로 저장되는 대부분의 Word 이외의 형식에서는 지원되지 않는다는 것입니다. 따라서 메타파일 형식을 다른 래스터 또는 벡터 형식으로 변환해야 합니다. Windows 메타파일을 GDI+에 전달하기만 하면 .NET에서 래스터 이미지로 쉽게 변환할 수 있지만, GDI+조차도 메타파일에서 벡터 그래픽을 추출하는 기능을 제공하지 않기 때문에 다른 플랫폼에서는 불가능합니다. 이러한 문제를 해결하기 위해 Aspose.Words은 모든 플랫폼에서 벡터 및 래스터 그래픽 모두의 메타파일 형식을 재생할 수 있는 자체 Windows 메타파일 플레이어를 구현합니다.

## Aspose.Words 메타파일 플레이어 제어

[MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) 클래스를 사용하면 메타파일 플레이어를 제어할 수 있습니다. 예를 들어 비트맵으로 변환할 때 특별한 의미가 있는 [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) 속성을 사용하여 메타파일 이미지를 렌더링하는 방법을 결정할 수 있습니다([ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/) 속성도 참조).

비트맵에 저장하는 작업은 .NET 이외의 플랫폼에서 다르게 작동합니다. .NET GDI+ 렌더링은 가장 복잡한 메타파일 형식에서도 거의 완벽하게 작동하는 참조이지만, 다른 플랫폼에서는 문제가 발생하거나 전혀 지원되지 않을 수 있습니다.

## 래스터 작업 지원

래스터 작업은 현재 제한적으로 지원되는 복잡한 메타파일 기능입니다. 래스터 작업은 WMF 및 EMF 메타파일 형식으로 사용할 수 있습니다. EMF+ 메타파일 형식은 래스터 작업을 직접 사용하지 않지만 EMF 부분, 내장된 WMF 또는 EMF 메타파일을 포함할 수 있습니다.

이진 및 삼진 래스터 작업이 있습니다

- 선 그리기, 곡선 그리기 등 펜 그리기 명령에 바이너리 래스터 작업이 적용됩니다. 선을 그릴 때 펜 색상은 16진수 색상 값과 함께 지정된 비트 논리 연산을 사용하여 대상 비트맵 색상(장치 표면의 해당 픽셀 색상)과 결합됩니다. 아래 이미지 예는 20개의 서로 다른 색상 막대에 적용된 16개의 이진 래스터 작업 모두의 효과를 보여줍니다. 수직 색상 막대가 먼저 그려지고, 각 이진 래스터 작업이 적용된 후에 수평 막대가 그려집니다. 간단한 경우 R2_BLACK은 검정색을 그리고 R2_NOT은 색상을 반전시키며 R2_NOP는 배경을 변경하지 않고 R2_WHITE는 흰색을 그립니다.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="처리-windows-메타파일-aspose-words-net-1" style="width:650px"/>

- 비트맵 이미지를 그릴 때 삼항 래스터 작업이 적용됩니다. 지정된 16진수 색상 값과 함께 비트 논리 연산을 사용하여 해당 비트맵 이미지 픽셀, 브러시 및 대상 비트맵의 색상을 결합합니다. 삼항 래스터 작업을 사용하는 가장 일반적인 목적 중 하나는 투명성을 에뮬레이션하는 것입니다. 아래 예에 제공된 이미지는 아이콘 투명도를 에뮬레이션하는 방법을 보여줍니다. 비트맵에는 흑백 마스크 비트맵과 컬러 비트맵의 두 가지 유형이 있습니다. 먼저 SRCAND 래스터 작업을 통해 마스크 비트맵을 그립니다. 불투명 아이콘 영역을 흑백으로 변경하고 투명 영역은 변경하지 않습니다. 그런 다음 SRCINVERT 래스터 작업을 사용하여 두 번째 비트맵이 그려집니다. 검은색 영역에 컬러 픽셀을 표시하고 투명 영역은 변경하지 않습니다.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="처리-windows-메타파일-aspose-words-net-2" style="width:650px"/>

래스터 작업은 벡터 그래픽으로 직접 변환할 수 없습니다. Aspose.Words는 래스터 작업의 영향을 받는 장치 표면을 부분적으로 래스터화하여 래스터 작업을 에뮬레이션합니다. 이를 위해 [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) 속성이 사용됩니다.

{{% alert color="primary" %}}

Aspose.Words에서는 바이너리 래스터 작업이 현재 지원되지 않고 제한된 수의 3진 래스터 작업이 지원되지만 R2_BLACK, R2_WHITE, R2_NOP와 같은 벡터 그래픽으로 직접 변환하는 기본 사례를 처리할 수 있습니다. 또한 장치 표면의 래스터화는 성능에 큰 영향을 미치며, 특히 상당한 수의 래스터 작업 레코드가 포함될 때 더욱 그렇습니다.

{{% /alert %}}

아래에 표시된 예는 일부 메타파일 레코드를 벡터 그래픽으로 올바르게 렌더링할 수 없는 경우 Aspose.Words가 메타파일을 비트맵으로 렌더링하는 방법을 보여줍니다

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## 메타파일 대체 설정

Aspose.Words는 가장 복잡하거나 희귀한 여러 메타파일 기능을 지원하지 않습니다. 이 경우 Aspose.Words는 다른 유형의 메타파일 플레이어로 대체를 수행할 수 있습니다

첫째, Aspose.Words는 벡터 메타파일 플레이어에서 래스터로 폴백을 수행하며 이는 [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) 속성에 의해 제어됩니다. 대체 기능이 비활성화된 경우 Aspose.Words는 지원되지 않는 기능 대신 일부 대체 그래픽을 렌더링하려고 시도합니다.

Aspose.Words는 .NET에서 GDI+를 사용하여 메타파일을 래스터로 성공적으로 재생하므로 이 콜백 옵션이 안전합니다.

둘째, EMF+ 이중 메타파일이 EMF+ 부분 재생에서 EMF 부분으로 대체하는 옵션이 있습니다. [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/)에 의해 제어됩니다. EMF 부분을 재생할 때 몇 가지 문제가 발생하면 래스터로 대체도 수행될 수 있습니다.

래스터 작업의 경우 [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/)가 비활성화되면 래스터 작업은 지원되지 않는 것으로 간주되며 활성화된 경우 비트맵 메타파일 플레이어로 대체됩니다. 따라서 래스터 작업이 포함된 메타파일이 있지만 래스터 작업 에뮬레이션을 사용하지 않고 대체 그래픽이 포함된 벡터 출력을 얻으려는 경우 [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector)를 선택하세요.
