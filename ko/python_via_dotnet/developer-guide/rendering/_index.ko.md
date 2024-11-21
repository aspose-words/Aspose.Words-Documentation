---
title: Python에서 렌더링
second_title: Python via .NET용 Aspose.Words
articleTitle: 표현
linktitle: 표현
description: "Python via .NET 렌더링 기능에 Aspose.Words를 사용하여 흐름 레이아웃 문서를 페이지로 포맷하고 해당 문서나 선택한 페이지를 다른 문서(PDF, HTML, XPS 등) 또는 이미지(TIFF, PNG, SVG 등) 형식으로 변환합니다. 보기, 추가 변환 또는 인쇄."
type: docs
weight: 20
url: /ko/python-net/rendering/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words에서는 "렌더링"이라는 용어를 사용하여 문서를 파일 형식으로 변환하거나 페이지가 지정되거나 페이지 개념을 갖는 매체로 변환하는 과정을 설명합니다. 우리는 문서를 페이지로 렌더링하는 것에 대해 이야기하고 있습니다. 다음 다이어그램은 Aspose.Words의 렌더링이 무엇인지 보여줍니다.

![rendering_aspose-words](/words/python-net/rendering/rendering-1.png)

Aspose.Words의 렌더링 기능을 사용하면 다음을 수행할 수 있습니다

- 문서 또는 선택한 페이지를 PDF, XPS, HTML, XAML, PostScript 및 PCL 형식으로 변환합니다.
- 문서를 여러 페이지로 구성된 TIFF 문서로 변환하거나 페이지를 래스터 이미지로 변환하여 BMP, PNG 또는 JPEG로 저장합니다.
- 문서 페이지를 SVG(Scalable Vector Graphics) 이미지로 변환하거나, 벡터 이미지로 변환하여 EMF로 저장합니다.
- 문서와 별도로 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 개체를 모든 이미지 형식으로 렌더링합니다.

## 흐름 레이아웃 또는 고정 레이아웃 문서 형식

Aspose.Words에 로드할 수 있는 대부분의 문서 형식은 "흐름 레이아웃" 형식으로 알려져 있습니다. 흐름 레이아웃 형식에는 DOC, OOXML, RTF, ODT 및 HTML이 포함됩니다. 이러한 형식의 문서는 단락, 표, 머리글, 바닥글, 이미지, 필드 및 해당 형식(예: 굵게, 기울임꼴, 글꼴, 크기)과 같은 다양한 요소로 구성됩니다. 그러나 흐름 레이아웃 형식에는 각 특정 단락이나 문자가 페이지에 표시되는 위치에 대한 정보가 포함되어 있지 않습니다.

이와 대조적으로 PDF 및 XPS와 같은 "고정 레이아웃"("고정 페이지"라고도 함) 형식에는 모든 문서 요소에 대한 정확한 위치 정보가 포함되어 있습니다. 이러한 형식은 문서가 페이지에 배치된 후 문서의 원래 모양을 유지하므로 표시된 정보의 정확도가 더 높아집니다.

## 페이지 레이아웃 엔진

Aspose.Words는 흐름 레이아웃 문서를 페이지 형식으로 지정하는 자체 페이지 레이아웃 엔진을 구현합니다. Aspose.Words는 PDF 또는 XPS와 같은 고정 레이아웃 문서를 생성하거나 페이지를 인쇄 또는 그리기와 같은 다른 매체로 출력하는 다양한 렌더러를 구현합니다. 내보내기는 HTML 및 XAML에 대해 페이지를 매길 수도 있습니다. 이는 문서를 일반 HTML이나 XAML(흐름 레이아웃 형식)로 저장하거나 요소의 절대 위치를 특징으로 하는 "페이지가 매겨진" HTML 및 XAML로 저장할 수 있음을 의미합니다.

Aspose.Words 페이지 레이아웃 엔진 사용의 가장 중요한 이점은 Microsoft Word의 페이지 레이아웃 엔진 작동 방식을 모방한다는 것입니다. 따라서 Microsoft Word 문서를 PDF, XPS로 변환하거나 Aspose.Words를 사용하여 인쇄하면 출력은 Microsoft Word에서 수행한 것과 거의 동일하게 나타납니다. Aspose.Words는 Microsoft Word를 활용하지 않습니다.
