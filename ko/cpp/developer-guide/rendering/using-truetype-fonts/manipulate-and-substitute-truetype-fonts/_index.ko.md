---
title: 조작 및 대체 TrueType 글꼴 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 조작 및 대체 TrueType 글꼴
linktitle: 조작 및 대체 TrueType 글꼴
description: "Aspose.Words 에 대한 C++ 올바른 것을 포함 할 수 있습니다 TrueType 결과 문서에 글꼴을 삽입하여 정확하게 표시되도록 합니다. 글꼴 또는 특정 문자를 사용할 수 없는 경우, Aspose.Words 적절한 글꼴 교체를 검색하거나 글꼴 대체 메커니즘을 사용합니다."
type: docs
weight: 10
url: /ko/cpp/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words 요구 사항 TrueType 예를 들어 문서를 고정 페이지 형식으로 렌더링하는 등 다양한 작업을 위한 글꼴, PDF 또는 XPS. 언제 Aspose.Words 문서를 렌더링하려면 다음을 포함 및 하위 집합 임베딩을 수행해야합니다 TrueType 문서 생성 중에 일반적인 관행인 결과 문서에 글꼴을 입력합니다. PDF 또는 XPS 형식 이렇게 하면 문서가 모든 뷰어에게 동일하게 표시됩니다. 또한, XPS 사양에는 글꼴이 항상 문서에 포함되어야 합니다.

보장하기 위해 Aspose.Words 정확하게 문자를 측정하고 성공적으로 관련 글꼴을 포함,다음 조건을 충족해야합니다:

1. Aspose.Words 찾아 액세스 할 수 있어야합니다 TrueType 시스템의 글꼴 파일.
1. 충분해야 합니다. TrueType 사용 가능한 글꼴 Aspose.Words,문서에 사용된 것과 같은 글꼴 가족 이름을 사용하는 것이 좋습니다.

문서의 글꼴은 가족 이름,스타일,크기,색상과 같은 엔터티를 나타냅니다. `TrueType` 글꼴(물리적 글꼴)엔티티. Aspose.Words 처리 중 일부 단계에서 문서의 글꼴을 실제 글꼴로 확인합니다. 이것은 특정 작업을 가능하게 합니다.일반적으로 레이아웃 구성과 고정 페이지 형식으로 임베딩/하위 설정 중에 텍스트 크기를 계산하는 작업입니다. 로딩하는 동안 글꼴 해결 및 대체와 같은 덜 인기있는 다른 많은 작업 HTML 또는 일부 흐름 형식에 포함/하위 설정도 마찬가지로 활성화됩니다.

## 어디 Aspose.Words 글꼴을 찾습니다

Aspose.Words 찾기 시도 TrueType 자동으로 파일 시스템의 글꼴. 일반적으로 기본 동작에 의존 할 수 있습니다 Aspose.Words 를 찾기 위해 `TrueType` 글꼴,하지만 때때로 당신은 포함 된 자신의 폴더를 지정해야합니다 TrueType 글꼴 그 [지정 TrueType 글꼴 위치](/words/cpp/specify-truetype-fonts-location/) 항목 방법 및 위치에 대해 설명합니다 Aspose.Words 글꼴뿐만 아니라 자신의 글꼴 위치를 지정하는 방법을 찾습니다.

## 글꼴 형식 처리의 차이점 Aspose.Words 그리고 Microsoft Word

글꼴 형식의 처리에는 몇 가지 차이가 있습니다. Aspose.Words 그리고 Microsoft Word 아래 표에서 보여지는 것처럼:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType 글꼴 및 OpenType 글꼴 TrueType 개요 | 지원. | 지원. |
| OpenType 글꼴 PostScript 개요 | 대부분의 시나리오에서 지원됩니다. 다음과 같은 고정 페이지 형식으로 임베딩 PDF 그리고 XPS 지원되지 않습니다. 텍스트가 비트맵 이미지로 바뀝니다. | 고정 페이지 형식으로 임베딩을 포함하여 대부분의 시나리오에서 지원됩니다. |
| OpenType 글꼴 변형 | 명명된 인스턴스만 지원됩니다. 연속 변형은 지원되지 않습니다. | 유일한 기본 인스턴스에 대해 지원됩니다. 명명된 인스턴스 및 연속 변형은 지원되지 않습니다. |
| 유형 1 글꼴 | 지원 Windows 2013 년 이전 버전과 마코스 버전 지원 중단 Windows 2013 년부터 시작되는 버전. | 지원되지 않습니다. |


