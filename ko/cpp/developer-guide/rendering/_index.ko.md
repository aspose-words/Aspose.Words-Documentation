---
title: 렌더링 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 렌더링
linktitle: 렌더링
description: "사용 Aspose.Words 에 대한 C++ 플로우 레이아웃 문서를 페이지로 포맷하고 이러한 문서 또는 선택한 페이지를 다른 문서로 변환하는 렌더링 기능(PDF, HTML, XPS 그 밖의)또는 이미지(TIFF, PNG, SVG 그 밖의)보기,추가 변환 또는 인쇄를 위한 형식."
type: docs
weight: 20
url: /ko/cpp/rendering/
timestamp: 2024-01-30-16-22-34
---

우리는"렌더링"이라는 용어를 Aspose.Words 문서를 페이지 매김 또는 페이지 개념이 있는 파일 형식 또는 매체로 변환하는 프로세스를 설명합니다. 우리는 문서를 페이지로 렌더링하는 것에 대해 이야기하고 있습니다. 다음 다이어그램에서는 렌더링의 내용을 보여 줍니다 Aspose.Words.

![rendering-aspose-words-cpp](rendering-1.png)

의 렌더링 기능 Aspose.Words 다음을 수행할 수 있습니다:

- 문서 또는 선택한 페이지를 다음으로 변환 PDF, XPS, HTML, XAML, PostScript,그리고 PCL 형식
- 문서를 여러 페이지로 변환 TIFF 문서화하거나 페이지를 래스터 이미지로 변환하여 다른 이름으로 저장합니다 BMP, PNG,또는 JPEG.
- 문서 페이지를 확장 가능한 벡터 그래픽 이미지로 변환(SVG),또는 벡터 이미지로 변환하여 다른 이름으로 저장합니다. EMF.
- 문서 페이지를 특정 크기 또는 스케일로 렌더링(그리기)합니다. `Graphics` 썸네일,문서 페이지의 전체 크기 또는 크기 조정 이미지를 만드는 개체.
- 렌더링 [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) 어떤 이미지 형식 또는 문서에 별도로 개체 `Graphics` 객체
- 문서의 모든 페이지 표시 Windows 형태.

## 플로우 레이아웃 또는 고정 레이아웃 문서 형식 {#flow-layout-or-fixed-layout-document-formats}

로드할 수 있는 대부분의 문서 형식 Aspose.Words "흐름 레이아웃"형식으로 알려져 있습니다. 흐름 레이아웃 형식은 다음과 같습니다. DOC, OOXML, RTF, ODT,그리고 HTML. 이러한 형식의 문서는 단락,표,머리글,바닥 글,이미지,필드 및 해당 서식(예:굵게,기울임 꼴,글꼴,크기)과 같은 다양한 요소로 구성됩니다. 그러나 흐름 레이아웃 형식에는 각 특정 단락 또는 문자가 페이지에 표시되는 위치에 대한 정보가 포함되어 있지 않습니다.

대조적으로,"고정 레이아웃"(또한"고정 페이지"라고도 알려져 있습니다)형식은 다음과 같습니다. PDF 그리고 XPS 모든 문서 요소에 대한 정확한 위치 정보를 포함합니다. 이 형식 들 은 문서 가 페이지 로 배치 된 후 에 원래 의 모습 을 보존 하여,표시 된 정보 의 정확성 을 높여 준다.

## 페이지 레이아웃 엔진 {#page-layout-engine}

Aspose.Words 플로우 레이아웃 문서를 페이지로 포맷하는 자체 페이지 레이아웃 엔진을 구현합니다. Aspose.Words 다음과 같은 고정 레이아웃 문서를 생성하는 여러 렌더러를 구현합니다 PDF 또는 XPS,또는 인쇄나 그림과 같은 다른 매체로 페이지를 출력합니다. 내보내기는 또한 HTML 그리고 XAML. 이는 더 빠른 메모리를 지원할 수 있고,더 빠른 시스템 성능을 제공합니다 HTML 또는 XAML (플로우 레이아웃 형식)또는"페이지 매김" HTML 그리고 XAML 즉,요소의 절대 위치를 갖추고 있습니다.

사용의 가장 중요한 이점 Aspose.Words 페이지 레이아웃 엔진은 방법을 모방한다는 것입니다 Microsoft Word페이지 레이아웃 엔진이 작동합니다. 따라서,당신이 변환 할 때 Microsoft Word 문서화 PDF, XPS,또는 그것을 사용하여 인쇄 Aspose.Words,출력은 마치 Microsoft Word. 참고: Aspose.Words 사용하지 않습니다 Microsoft Word.
