---
title: 열 및 행 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 열 및 행 작업
linktitle: 열 및 행 작업
description: "Python를 사용하여 행, 열, 셀 등 표의 일부 작업을 수행합니다. 헤더 행 Python를 지정합니다."
type: docs
weight: 30
url: /ko/python-net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

테이블 작동 방식을 더 세부적으로 제어하려면 열과 행을 조작하는 방법을 알아보세요.

## 테이블 요소 인덱스 찾기

열, 행 및 셀은 해당 인덱스로 선택한 문서 노드에 액세스하여 관리됩니다. 노드의 인덱스를 찾으려면 상위 노드에서 요소 유형의 모든 하위 노드를 수집한 다음 [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) 방법을 사용하여 컬렉션에서 원하는 노드의 인덱스를 찾습니다.

### 문서에서 테이블의 인덱스 찾기

때로는 문서의 특정 테이블을 변경해야 할 수도 있습니다. 이를 수행하려면 인덱스로 테이블을 참조하면 됩니다.

다음 코드 예제에서는 문서에서 테이블의 인덱스를 검색하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### 테이블에서 행의 인덱스 찾기

마찬가지로 선택한 테이블의 특정 행을 변경해야 할 수도 있습니다. 이를 위해 인덱스로 행을 참조할 수도 있습니다.

다음 코드 예제에서는 테이블에서 행의 인덱스를 검색하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### 행에 있는 셀의 인덱스 찾기

마지막으로 특정 셀을 변경해야 할 수도 있으며 셀 인덱스를 통해서도 이 작업을 수행할 수 있습니다.

다음 코드 예제에서는 행의 셀 인덱스를 검색하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## 열 작업

Aspose.Words Document Object Model(DOM)에서 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 노드는 [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) 노드와 [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) 노드로 구성됩니다. 따라서 Aspose.Words의 `Document` 개체 모델에는 Word 문서와 마찬가지로 열이라는 개념이 없습니다.

설계상 Microsoft Word 및 Aspose.Words의 테이블 행은 완전히 독립적이며 기본 속성과 작업은 테이블의 행과 셀에만 포함됩니다. 이는 테이블에 몇 가지 흥미로운 속성을 갖는 기능을 제공합니다

- 각 테이블 행은 완전히 다른 수의 셀을 가질 수 있습니다
- 세로 방향으로 각 행의 셀 너비가 다를 수 있습니다
- 행 형식과 셀 개수가 다른 테이블 조인이 가능합니다

열에 수행되는 모든 작업은 실제로 열에 적용되는 것처럼 보이는 방식으로 행 셀을 집합적으로 변경하여 작업을 수행하는 "바로 가기"입니다. 즉, 동일한 테이블 행 셀 인덱스를 반복하여 열에 대한 작업을 수행할 수 있습니다.

다음 코드 예제는 테이블의 "열"을 구성하는 셀을 수집하는 Facade 클래스를 증명하여 이러한 작업을 단순화합니다

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

다음 코드 예제에서는 테이블에 빈 열을 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

다음 코드 예제에서는 문서의 테이블에서 열을 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## 행을 머리글 행으로 지정

테이블의 첫 번째 행을 첫 번째 페이지에서만 머리글 행으로 반복하도록 선택하거나 테이블이 여러 개로 분할된 경우 각 페이지에서 반복하도록 선택할 수 있습니다. Aspose.Words에서는 [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/) 속성을 사용하여 모든 페이지에서 머리글 행을 반복할 수 있습니다.

여러 머리글 행이 테이블 시작 부분에 차례로 위치하는 경우 여러 머리글 행을 표시할 수도 있습니다. 이렇게 하려면 이러한 행에 **HeadingFormat** 속성을 적용해야 합니다.

{{% alert color="primary" %}}

머리글 행은 중첩된 테이블에서 작동하지 않습니다. 즉, 다른 테이블 안에 테이블이 있는 경우 이 설정은 적용되지 않습니다. 이를 허용하지 않는 것은 Aspose.Words가 아닌 Microsoft Word의 한계입니다.

{{% /alert %}}

다음 코드 예제에서는 후속 페이지에서 반복되는 머리글 행을 포함하는 테이블을 작성하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## 테이블과 행이 여러 페이지에 걸쳐 깨지지 않도록 유지

테이블의 내용이 여러 페이지에 걸쳐 분할되어서는 안 되는 경우가 있습니다. 예를 들어, 제목이 표 위에 있는 경우 적절한 모양을 유지하려면 제목과 표가 항상 같은 페이지에 함께 있어야 합니다.

이 기능을 달성하는 데 유용한 두 가지 기술이 있습니다

- 테이블 행에 적용되는 `Allow row break across pages`
- 표 셀의 단락에 적용되는 `Keep with next`

기본적으로 위 속성은 비활성화되어 있습니다.

### 페이지에 걸쳐 행이 깨지지 않도록 유지

여기에는 행 셀 내부의 콘텐츠가 페이지 전체에 분할되는 것을 제한하는 작업이 포함됩니다. Microsoft Word에서는 테이블 속성에서 "행을 페이지에 걸쳐 나누기 허용" 옵션으로 찾을 수 있습니다. Aspose.Words에서 이는 [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/) 속성으로 [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)의 [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) 객체 아래에 있습니다.

다음 코드 예제에서는 테이블의 각 행에 대해 페이지 전체에서 행 나누기를 비활성화하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

### 표가 여러 페이지에 걸쳐 깨지지 않도록 유지

테이블이 여러 페이지로 분할되는 것을 방지하려면 테이블 내에 포함된 콘텐츠가 함께 유지되도록 지정해야 합니다.

이를 위해 Aspose.Words는 사용자가 테이블을 선택하고 테이블 셀 내의 각 단락에 대해 true에 대한 [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) 매개변수를 활성화할 수 있는 방법을 사용합니다. 예외는 false로 설정되어야 하는 표의 마지막 단락입니다.

다음 코드 예제에서는 동일한 페이지에 함께 머물도록 테이블을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}
