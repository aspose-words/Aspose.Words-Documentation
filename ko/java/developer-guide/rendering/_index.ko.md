---
title: Java에서 렌더링
second_title: Aspose.WordsJava
articleTitle: 렌더링
linktitle: 렌더링
description: "Java렌더링 기능에Aspose.Words을 사용하여 플로우 레이아웃 문서를 페이지로 포맷하고 해당 문서 또는 선택한 페이지를 다른 문서로 변환합니다(PDF, HTML, XPS, 그 밖의)또는 이미지(TIFF, PNG, SVG, 그 밖의)보기,추가 변환 또는 인쇄를 위한 형식."
type: docs
weight: 30
url: /ko/java/rendering/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words에서"렌더링"이라는 용어를 사용하여 문서를 페이지 매김 또는 페이지 개념이 있는 파일 형식 또는 매체로 변환하는 프로세스를 설명합니다. 우리는 문서를 페이지로 렌더링하는 것에 대해 이야기하고 있습니다. 다음 다이어그램은Aspose.Words의 렌더링을 보여 줍니다.

![rendering-aspose-words-java](/words/java/rendering/rendering-1.png)

Aspose.Words의 렌더링 기능을 사용하면 다음을 수행할 수 있습니다:

- 문서 또는 선택한 페이지를 다음으로 변환PDF, XPS, HTML, XAML, PostScript, 그리고PCL형식.
- 문서를 다중 페이지TIFF문서로 변환하거나 페이지를 래스터 이미지로 변환하여BMP,PNG또는JPEG로 저장합니다.
- 문서 페이지를 확장 가능한 벡터 그래픽 이미지(SVG)로 변환하거나 벡터 이미지로 변환하여EMF로 저장합니다.
- `Graphics`개체에서 특정 크기 또는 축척으로 문서 페이지를 렌더링(그리기)하여 문서 페이지의 전체 크기 또는 축척한 이미지인 축소판을 만듭니다.
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)개체를 문서와 별도로 이미지 형식 또는`Graphics`개체로 렌더링합니다.
- 스윙 구성 요소에 문서의 모든 페이지를 표시합니다.
- 표준Java인쇄 인프라를 사용하여 문서 페이지를 인쇄하거나 미리 봅니다.

## 플로우 레이아웃 또는 고정 레이아웃 문서 형식 {#flow-layout-or-fixed-layout-document-formats}

Aspose.Words에 로드할 수 있는 대부분의 문서 형식은"흐름 레이아웃"형식으로 알려져 있습니다. 흐름 레이아웃 형식은 다음과 같습니다.DOC, OOXML, RTF, ODT, 그리고HTML 이러한 형식의 문서는 단락,표,머리글,바닥 글,이미지,필드 및 해당 서식(예:굵게,기울임 꼴,글꼴,크기)과 같은 다양한 요소로 구성됩니다. 그러나 흐름 레이아웃 형식에는 각 특정 단락 또는 문자가 페이지에 표시되는 위치에 대한 정보가 포함되어 있지 않습니다.

대조적으로,PDF및XPS과 같은"고정 레이아웃"(또한"고정 페이지"라고도 알려져 있습니다)형식은 모든 문서 요소에 대한 정확한 위치 정보를 포함합니다. 이 형식 들 은 문서 가 페이지 로 배치 된 후 에 원래 의 모습 을 보존 하여,표시 된 정보 의 정확성 을 높여 준다.

## 페이지 레이아웃 엔진 {#page-layout-engine}

Aspose.Words플로우 레이아웃 문서를 페이지로 포맷하는 자체 페이지 레이아웃 엔진을 구현합니다. Aspose.Words은PDF또는XPS와 같은 고정 레이아웃 문서를 생성하거나 인쇄 또는 그림과 같은 다른 매체로 페이지를 출력하는 여러 렌더러를 구현합니다. 내보내기는HTML및XAML에 대한 페이지 매김도 가능합니다. 즉,문서는 일반HTML또는XAML(흐름 레이아웃 형식)또는 요소의 절대 위치를 특징으로하는"페이지 매김"HTML및XAML로 저장할 수 있습니다.

Aspose.Words페이지 레이아웃 엔진을 사용하는 가장 중요한 장점은Microsoft Word의 페이지 레이아웃 엔진이 작동하는 방식을 모방한다는 것입니다. 따라서Microsoft Word문서를PDF,XPS로 변환하거나Aspose.Words을 사용하여 인쇄하면 출력이Microsoft Word에 의해 수행된 것처럼 거의 정확하게 나타납니다. Aspose.Words은Microsoft Word을 사용하지 않는다는 점에 유의하십시오.
