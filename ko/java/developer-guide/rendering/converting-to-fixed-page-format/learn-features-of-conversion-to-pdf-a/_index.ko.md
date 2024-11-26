---
title: PDF/A및PDF/UA으로 변환
second_title: Aspose.WordsJava
articleTitle: PDF/A및PDF/UA으로의 변환 기능 알아보기
linktitle: PDF/A및PDF/UA으로의 변환 기능 알아보기
description: "로 변환PDF/A-1, PDF/A-2, PDF/A-4 그리고PDF/UA을Java로 사용한다. Java를 사용하여 문서를 변환하려면 최상의PDF표준을 선택합니다."
type: docs
weight: 25
url: /ko/java/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF는PDF문서가 모든 장치에서 동일하게 보이기 때문에 사용자들 사이에서 매우 인기가 있으며 다양한 응용 프로그램에서 널리 지원되는 고정 페이지 형식입니다. 이러한 이유로PDF로 변환하는 것은Aspose.Words의 중요한 기능입니다.

PDF은 특정 파일 구조,그래픽 모델,글꼴 포함 및 문서 구조 태그,암호화,디지털 서명 및 편집 가능한 양식과 같은 복잡한 출력 기능을 가지고 있기 때문에 그 자체로 복잡한 형식입니다. 또한 문서를PDF으로 변환하려면 복잡하고 시간이 많이 걸리는 여러 계산 단계가 필요합니다.

이 섹션에서는 다양한PDF표준에서 문서를 작업 할 때 발생할 수있는 주요 문제를 고려하고이를 해결하기위한 옵션을 설명합니다.

## PDF표준Aspose.Words이 지원하는

Aspose.Words이제 사용자가PDF/A-1,PDF/A-2및PDF/A-4형식뿐만 아니라PDF/UA-1로 작업 할 수 있습니다:

* PDF/A-1에는 투명성과 같은 심각한 제한이 있으며 일부 압축 옵션은 금지되어 있습니다
* PDF/A-2은 투명도 및 레이어 효과 지원 또는OpenType글꼴 임베딩과 같은PDF/A-1의 제한 사항 중 일부를 제거합니다
* PDF/A-4은 개정된 적합성 수준을 가정합니다. 일반 PDF/A-4 적합성은 이전 버전의 수준 U 적합성과 동일하며 수준 A 적합성은 제거됩니다.
* PDF/UA-1콘텐츠는ISO32000-1:2008 에 따라 태그를 지정하고 표준화해야 합니다.

PDF/A는 전자 문서의 보관 및 장기 저장에 사용하기위한PDF의ISO-표준화 된 버전입니다. 동시에,PDF/UA은 보조 기술을 사용하는 장애인들에 대한 접근성을 보장하기 위해 설계된PDF의 또 다른ISO표준화된 버전입니다. PDF표준 준수 수준을 지정하려면[Compliance](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getCompliance)속성을 사용합니다. 저장 조건으로 인해PDF/A문서는 모든 글꼴을 포함하고 암호화를 비활성화해야하며PDF/UA은 모든 글꼴 만 포함해야합니다.

이 섹션에서는PDF/A또는PDF/UA-1문서 작업을 자세히 살펴볼 것입니다.

## PDF표준에 대한ISO관련

다른PDF표준에 대해 자세히 알아보려면 다음ISOs을 확인하십시오:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## 또한 참조

* [Adobe Acrobat에서 문서 구조 태그를 편집하는 방법](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Microsoft Word에서 텍스트 언어를 확인하거나 편집하는 방법](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Adobe Acrobat에서 텍스트 언어를 변경하는 방법](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Microsoft Word의 도형,그림,차트,SmartArt그래픽 또는 기타 개체에 대체 텍스트를 추가하는 방법](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [태그에 대체 텍스트 및 추가 정보를 추가하는 방법](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (또는 같은 정보를 읽거나 [Adobe Acrobat사용자 가이드](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [텍스트에 대한ActualText항목을 설정하는 방법](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html),"약어,수식 또는 비유니코드 기호에 대한 실제 텍스트 추가"섹션
* [공통Windows기호 글꼴에 대한 유니코드 매핑](http://www.alanwood.net/demos/webdings.html)
