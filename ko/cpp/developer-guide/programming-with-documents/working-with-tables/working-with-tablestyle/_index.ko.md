---
title: 워드 문서의 테이블 스타일 변경
second_title: Aspose.Words 에 대한 C++
articleTitle: 테이블 스타일 적용
linktitle: 테이블 스타일 적용
description: "고급 테이블 서식 지정 C++. 다음을 사용하여 테이블 스타일 만들기 C++. 테이블 스타일 적용 C++."
type: docs
weight: 80
url: /ko/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

테이블 스타일은 테이블에 쉽게 적용할 수 있는 서식 집합을 정의합니다. 테두리,음영,정렬 및 글꼴과 같은 서식을 테이블 스타일로 설정하고 일관된 모양을 위해 많은 테이블에 적용할 수 있습니다.

Aspose.Words 테이블에 테이블 스타일을 적용하고 모든 테이블 스타일의 속성을 읽을 수 있습니다. 테이블 스타일은 다음과 같은 방법으로 로드 및 저장하는 동안 유지됩니다:

- 테이블 스타일 DOCX 이러한 형식을로드하고 저장할 때 그리고 워드 미리리터 형식은 유지됩니다
- 로드 및 저장할 때 테이블 스타일이 유지됩니다 DOC 형식(그러나 다른 형식은 아님)
- 다른 형식(렌더링 또는 인쇄)으로 내보낼 때 테이블 스타일이 테이블의 직접 형식으로 확장되므로 모든 서식이 유지됩니다

## 테이블 스타일 만들기

사용자는 새로운 스타일을 만들고 스타일 컬렉션에 추가 할 수 있습니다. 그 [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) 메서드는 새 테이블 스타일을 만드는 데 사용됩니다.

다음 코드 예제에서는 새 사용자 정의 테이블 스타일을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## 기존 테이블 스타일 복사

필요한 경우 특정 문서에 이미 있는 테이블 스타일을 사용하여 스타일 컬렉션에 복사할 수 있습니다 `AddCopy` 방법

이 복사를 사용하면 연결된 스타일도 복사된다는 것을 아는 것이 중요합니다.

다음 코드 예제에서는 한 문서에서 다른 문서로 스타일을 가져오는 방법을 보여 줍니다:

EXAMPLE

## 기존 테이블 스타일 적용

Aspose.Words 제공 [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) 에서 상속 [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) 수업 **TableStyle** 사용자가 음영,패딩,들여 쓰기와 같은 다양한 스타일 옵션을 적용 할 수 있습니다., [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) 그리고 [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/) 그 밖의

또한, Aspose.Words 제공 [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) 클래스 및 몇 가지 속성 `Table` 우리가 작업 할 테이블 스타일을 지정하는 클래스: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/),그리고 [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words 또한 제공 [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) 할당된 테이블 스타일을 가진 테이블의 일부 영역에 적용된 특수 서식을 나타내는 클래스와 [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) 이것은 **ConditionalStyle** 개체. 이 컬렉션에는 각 값에 대해 하나의 항목을 나타내는 영구 항목 집합이 포함되어 있습니다. [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/) 열거형 유형. 그 **ConditionalStyleType** 열거형은 조건부 서식을 테이블 스타일로 정의할 수 있는 모든 가능한 테이블 영역을 정의합니다.

이 경우 조건부 서식은 다음과 같이 정의 된 가능한 모든 테이블 영역에 대해 정의 할 수 있습니다 ConditionalStyleType 열거형 유형.

다음 코드 예제에서는 테이블의 머리글 행에 대한 조건부 서식을 정의하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

첫 번째 열,마지막 열,줄무늬 행과 같이 스타일을 적용할 테이블 파트를 선택할 수도 있습니다. 그 목록은 [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) 열거를 통해 적용됩니다 [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/) 재산. 그 **TableStyleOptions** 열거를 사용하면 이러한 기능을 비트 단위로 조합 할 수 있습니다.

다음 코드 예제에서는 테이블 스타일이 적용된 새 테이블을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

아래 그림은 **Table Styles** 그 안에 Microsoft Word 그리고 그 속성들은 Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## 표 스타일에서 서식을 가져와 직접 서식으로 적용

Aspose.Words 또한 제공합니다 [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) 방법은 테이블 스타일에서 발견 서식을 가지고 직접 서식으로 테이블의 행과 셀에 확장합니다. 서식을 표 스타일 및 셀 스타일과 결합해 보십시오.

{{% alert color="primary" %}}

이 메서드는 행 또는 셀 형식을 통해 테이블에 이미 적용된 다른 서식을 재정의하지 않습니다.

{{% /alert %}}

다음 코드 예제에서는 스타일에서 테이블 행 및 셀로 서식을 직접 서식으로 확장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}
