---
title: 열 및 행 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 열 및 행 작업
linktitle: 열 및 행 작업
description: "다음을 사용하여 테이블 부분(행,열 및 셀)으로 작업 C++. 머리글 행 지정 C++."
type: docs
weight: 30
url: /ko/cpp/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

테이블 작동 방식을 더 잘 제어하려면 열과 행을 조작하는 방법을 알아보세요.

## 테이블 요소 인덱스 찾기

열,행 및 셀은 인덱스로 선택한 문서 노드에 액세스하여 관리됩니다. 모든 노드의 인덱스를 찾는 것은 부모 노드에서 요소 유형의 모든 자식 노드를 수집한 다음 [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/) 컬렉션에서 원하는 노드의 인덱스를 찾는 방법.

### 문서에서 테이블 인덱스 찾기

때때로 문서의 특정 테이블을 변경해야 할 수도 있습니다. 이렇게 하려면 인덱스로 테이블을 참조할 수 있습니다.

다음 코드 예제에서는 문서에서 테이블의 인덱스를 검색하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### 테이블에서 행 인덱스 찾기 {#find-the-index-of-a-row-in-a-table}

마찬가지로 선택한 테이블의 특정 행을 변경해야 할 수도 있습니다. 이렇게 하려면 인덱스로 행을 참조할 수도 있습니다.

다음 코드 예제에서는 테이블의 행 인덱스를 검색하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### 행에서 셀의 인덱스 찾기 {#find-the-index-of-a-cell-in-a-row}

마지막으로 특정 셀을 변경해야 할 수 있으며 셀 인덱스로도 이 작업을 수행할 수 있습니다.

다음 코드 예제에서는 행의 셀 인덱스를 검색하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## 열 작업

그 안에 Aspose.Words 문서 개체 모델(DOM), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) 노드는 [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) 노드 그리고 나서 [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) 노드 따라서, `Document` 객체 모델 Aspose.Words,워드 문서에서와 같이,열의 개념은 없습니다.

설계에 따라,테이블 행은 Microsoft Word 그리고 Aspose.Words 완전히 독립적이며 기본 속성과 연산은 테이블의 행과 셀에만 포함됩니다. 이것은 테이블에 몇 가지 흥미로운 속성을 가질 수 있는 기능을 제공합니다.:

- 각 테이블 행은 완전히 다른 셀 수를 가질 수 있습니다
- 세로로 각 행의 셀은 너비가 다를 수 있습니다
- 행 형식과 셀 수가 다른 테이블을 조인할 수 있습니다

열에 수행되는 모든 작업은 실제로 열에 적용되는 것처럼 보이는 방식으로 행 셀을 공동으로 변경하여 작업을 수행하는"단축"입니다. 즉,동일한 테이블 행 셀 인덱스를 반복하기만 하면 열에 대한 작업을 수행할 수 있습니다.

다음 코드 예제에서는 테이블의"열"을 구성하는 셀을 수집하는 파사드 클래스를 증명하여 이러한 작업을 단순화합니다:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

다음 코드 예제에서는 빈 열을 테이블에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

다음 코드 예제에서는 문서의 테이블에서 열을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## 행을 머리글 행으로 지정

테이블이 여러 개로 분할된 경우 첫 페이지 또는 각 페이지에서만 표의 첫 번째 행을 머리글 행으로 반복하도록 선택할 수 있습니다. 그 안에 Aspose.Words,당신은 사용하여 모든 페이지에 머리글 행을 반복 할 수 있습니다 [HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/) 재산.

표의 시작 부분에 이러한 행이 하나씩 있는 경우 머리글 행을 여러 개 표시할 수도 있습니다. 이렇게하려면,당신은 적용 할 필요가 **HeadingFormat** 이 행에 대한 속성.

{{% alert color="primary" %}}

머리글 행은 중첩 테이블에서 작동하지 않습니다. 즉,다른 테이블 안에 테이블이 있는 경우 이 설정은 효과가 없습니다. 그것은 한계입니다 Microsoft Word 즉,하지,이 허용하지 않습니다 Aspose.Words.

{{% /alert %}}

다음 코드 예제에서는 후속 페이지에서 반복되는 머리글 행을 포함하는 테이블을 작성하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## 테이블 및 행이 페이지 간에 끊어지지 않도록 합니다.

테이블의 내용을 여러 페이지로 분할해서는 안 되는 경우가 있습니다. 예를 들어,제목이 테이블 위에 있다면,제목과 테이블은 항상 같은 페이지에 함께 유지되어야 적절한 모양을 유지합니다.

이 기능을 달성하는 데 유용한 두 가지 별도의 기술이 있습니다.:

- `Allow row break across pages`,테이블 행에 적용되는
- `Keep with next`,표 셀의 단락에 적용됩니다.

기본적으로 위의 속성은 사용할 수 없습니다.

### 페이지 간에 행이 끊어지지 않도록 합니다 {#keep-a-row-from-breaking-across-pages}

이것은 행의 셀 안에 있는 콘텐츠가 페이지에 분할되는 것을 제한하는 것을 포함합니다. 그 안에 Microsoft Word,이것은 테이블 속성에서"행이 페이지 간에 끊어질 수 있도록 허용"옵션으로 찾을 수 있습니다. 그 안에 Aspose.Words 이것은 [RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) 의 객체 [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) 재산으로 [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/).

다음 코드 예제에서는 테이블의 각 행에 대해 페이지 간에 행을 구분하지 않도록 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### 표가 페이지 간에 끊어지지 않도록 합니다. {#keep-a-table-from-breaking-across-pages}

테이블이 페이지 간에 분할되는 것을 막으려면 테이블 내에 포함된 콘텐츠가 함께 유지되도록 지정해야 합니다.

이 작업을 수행하려면, Aspose.Words 사용자가 테이블을 선택하고 [KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/) 표 셀 내의 각 단락에 대해 참 매개 변수입니다. 예외는 테이블의 마지막 단락입니다.

다음 코드 예제에서는 같은 페이지에서 함께 유지되도록 테이블을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}
