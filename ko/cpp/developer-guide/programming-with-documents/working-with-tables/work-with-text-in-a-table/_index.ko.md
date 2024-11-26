---
title: 테이블의 텍스트 작업
second_title: Aspose.Words 에 대한 C++
articleTitle: 테이블의 텍스트 작업
linktitle: 테이블의 텍스트 작업
description: "테이블의 텍스트 바꾸기 C++. 다음을 사용하여 테이블 또는 셀에서 일반 텍스트 추출 C++."
type: docs
weight: 60
url: /ko/cpp/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

이전 기사에서 언급했듯이 테이블에는 일반적으로 일반 텍스트가 포함되어 있지만 이미지 또는 다른 테이블과 같은 다른 내용은 테이블 셀에 배치 할 수 있습니다.

테이블에 텍스트 또는 기타 콘텐츠를 추가하는 것은 적절한 방법을 사용하여 수행됩니다. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 클래스와 **"Create a Table"** 기사 이 기사에서는 이미 존재하는 테이블의 텍스트 작업 방법에 대해 이야기 할 것입니다.

## 표에서 텍스트 바꾸기

다른 노드와 마찬가지로 테이블 Aspose.Words,에 액세스 할 수 있습니다 [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) 객체 테이블 범위 개체를 사용하여 테이블의 텍스트를 바꿀 수 있습니다.

현재 대체 할 때 특수 문자를 사용하는 기능이 지원되므로 기존 텍스트를 여러 단락 텍스트로 대체 할 수 있습니다. 이 작업을 수행하려면 해당 메타문자에 설명된 특수 메타문자를 사용해야 합니다 [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) 방법

{{% alert color="primary" %}}

일반적으로 텍스트 대체는 셀 수준(셀 당)또는 단락 수준에서 수행해야합니다.

{{% /alert %}}

다음 코드 예제에서는 전체 테이블의 셀에 있는 텍스트 문자열의 모든 인스턴스를 대체하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## 표 또는 셀에서 일반 텍스트 추출

를 사용하여 **Range** 개체,당신은 또한 전체 테이블 범위에 메소드를 호출하고 일반 텍스트로 테이블을 추출 할 수 있습니다. 이 작업을 수행하려면 다음을 사용하십시오 [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) 재산.

다음 코드 예제에서는 테이블의 텍스트 범위를 인쇄하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

동일한 기술은 개별 테이블 셀에서만 콘텐츠를 추출하는 데 사용됩니다.

다음 코드 예제에서는 행 및 테이블 요소의 텍스트 범위를 인쇄하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## 대체 테이블 텍스트 작업

Microsoft Word 테이블은 `table title` 그리고 `table description` 표에 포함된 정보의 대체 텍스트 표현을 제공합니다.

그 안에 Aspose.Words,당신은 또한 사용하여 테이블 제목과 설명을 추가 할 수 있습니다 [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) 그리고 [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/) 속성. 이 속성은 DOCX 에 부합하는 문서 ISO/IEC 29500. 보다 이전 형식으로 저장할 때 ISO/IEC 29500,이러한 속성은 무시됩니다.

다음 코드 예제에서는 테이블의 제목 및 설명 속성을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}
