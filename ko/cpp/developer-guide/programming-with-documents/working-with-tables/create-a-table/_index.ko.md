---
title: 테이블을 만드는 방법 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 테이블 만들기
linktitle: 테이블 만들기
description: "다음을 사용하여 테이블을 만드는 다양한 방법 C++. 테이블 만들기 C++ 당신의 문서를 위해. 테이블 추가 C++."
type: docs
weight: 20
url: /ko/cpp/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words 사용자가 문서에서 테이블을 처음부터 만들 수 있으며 여러 가지 다른 방법을 제공합니다. 이 문서에서는 각 메서드를 사용하여 서식이 지정된 테이블을 문서에 추가하는 방법에 대한 세부 정보와 문서 끝에 있는 각 메서드의 비교를 제공합니다.

## 기본 테이블 스타일

새로 만든 테이블에 사용되는 것과 유사한 기본값이 제공됩니다 Microsoft Word:

| 테이블 속성 | 기본값 Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2 태평양 표준시 |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

테이블은 단단히 배치된 경우 인라인이거나 페이지의 아무 곳이나 배치할 수 있는 경우 플로팅일 수 있습니다. 기본적으로, Aspose.Words 항상 인라인 테이블을 만듭니다.

{{% /alert %}}

## 테이블 만들기 DocumentBuilder

그 안에 Aspose.Words,사용자는 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). 테이블을 만드는 기본 알고리즘은 다음과 같습니다.:

1. 테이블 시작 [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)
2. 다음을 사용하여 테이블에 셀을 추가합니다 [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) -이 자동으로 새 행을 시작합니다
3. 선택적으로 다음을 사용하십시오 [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) 셀 서식을 지정하는 속성
4. 적절한 사용하여 셀 내용을 삽입 **DocumentBuilder** 다음과 같은 방법 [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/),그리고 다른
5. 단계 반복 2-4 행이 완료 될 때까지
6. 전화 [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) 현재 행을 끝내려면
7. 선택적으로 다음을 사용하십시오 [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) 행 서식을 지정하는 속성
8. 단계 반복 2-7 테이블이 완료 될 때까지
9. 전화 [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) 테이블 구축을 완료하려면

{{% alert color="primary" %}}

중요한 세부 사항:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) 셀 내부에서도 호출할 수 있습니다.이 경우 셀 내에서 중첩 테이블을 생성하기 시작합니다.
- 전화 한 후 [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/),새 셀이 생성되고,다른 방법을 사용하여 추가하는 모든 콘텐츠 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 클래스는 현재 셀에 추가됩니다. 같은 행에 새 셀을 만들려면 다음을 호출합니다 **InsertCell** 다시.
- 만약 **InsertCell** 바로 그 후에 호출됩니다. [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) 그리고 행의 끝,테이블은 새로운 행에 계속됩니다.
- 그 [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) 테이블을 종료하는 방법은 호출 한 후 한 번만 호출해야합니다 **EndRow**. 전화 **EndTable** 커서를 현재 셀에서 테이블 바로 뒤의 위치로 이동합니다.

{{% /alert %}}

테이블을 만드는 과정은 다음 그림에서 명확하게 볼 수 있습니다:

![creating-table-process](creating-table-process.jpg)

다음 코드 예제에서는 다음을 사용하여 간단한 테이블을 만드는 방법을 보여 줍니다 **DocumentBuilder** 기본 서식 지정:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

다음 코드 예제에서는 다음을 사용하여 서식이 지정된 테이블을 만드는 방법을 보여 줍니다 DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

다음 코드 예제에서는 다음을 사용하여 중첩 테이블을 삽입하는 방법을 보여 줍니다 DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## 다음을 통해 테이블 만들기 DOM (문서 개체 모델)

테이블을 직접 삽입 할 수 있습니다. DOM 새로운 [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) 특정 위치의 노드.

즉시 테이블 노드 생성 후,테이블 자체가 완전히 비어 있음을 유의하시기 바랍니다,즉 아직 행과 셀을 포함하지 않는 것입니다. 테이블에 행과 셀을 삽입하려면 해당 항목을 추가합니다 [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) 그리고 [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) 자식 노드 DOM.

{{% alert color="primary" %}}

테이블을 만드는 이 방법은 테이블을 사용할 때와 동일한 테이블 기본값을 사용합니다 **DocumentBuilder**.

{{% /alert %}}

다음 코드 예제에서는 문서 트리에 적절한 자식 노드를 추가하여 처음부터 새 테이블을 작성하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## 다음에서 테이블 만들기 HTML

Aspose.Words 에서 문서에 내용을 삽입 지원 HTML 소스를 사용하여 [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) 방법 입력은 완전할 수 있습니다. HTML 페이지 또는 일부 스 니펫.

를 사용하여 **InsertHtml** 방법,사용자는 다음과 같은 테이블 태그를 통해 문서에 테이블을 삽입 할 수 있습니다 `<table>`, `<tr>`, `<td>`.

다음 코드 예제에서는 다음을 포함하는 문자열에서 문서에 테이블을 삽입하는 방법을 보여 줍니다 HTML 태그:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## 기존 테이블의 복사본 삽입

문서의 기존 테이블을 기반으로 테이블을 만들어야 하는 경우가 종종 있습니다. 모든 서식을 유지하면서 테이블을 복제하는 가장 쉬운 방법은 테이블을 사용하여 테이블 노드를 복제하는 것입니다. [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/) 방법

동일한 기술을 사용하여 기존 행 또는 셀의 복사본을 테이블에 추가 할 수 있습니다.

다음 코드 예제에서는 노드 생성자를 사용하여 테이블을 복제하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

다음 코드 예제에서는 테이블의 마지막 행을 복제하여 테이블에 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

데이터 원본의 각 레코드와 함께 동적으로 증가하는 문서의 테이블을 만드는 방법을 찾고 있다면 위의 방법을 사용하지 않는 것이 좋습니다. 대신,원하는 출력은 Mail merge 지역과 함께 이 기술에 대해 더 많이 배울 수 있습니다 [Mail Merge 지역](/words/cpp/types-of-mail-merge-operations/) 부문

## 테이블을 만드는 방법 비교

Aspose.Words 문서에 새 테이블을 만드는 몇 가지 방법을 제공합니다. 각 방법은 자신의 장점과 단점을 가지고,그래서 자주 사용하는 선택은 특정 상황에 따라 달라집니다.

테이블을 만드는 이러한 방법을 자세히 살펴보고 장단점을 비교해 보겠습니다:

| 방법 | 장점 | 단점 |
| :- | :- | :- |
| `DocumentBuilder` | 테이블 및 기타 문서 내용을 삽입하는 표준 방법 | 때로는 동일한 빌더 인스턴스를 사용하여 여러 종류의 테이블을 동시에 생성하기가 어렵습니다 |
| 비아 DOM | 노드를 직접 생성하고 삽입하는 주변 코드와 더 잘 어울립니다. DOM 사용하지 않고 **DocumentBuilder** | 테이블은"비어 있음"으로 만들어집니다:대부분의 작업을 수행하기 전에 다음을 호출해야합니다 [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/) 누락된 자식 노드를 만들려면 |
| 에서 HTML | 새 테이블을 만들 수 있습니다 HTML 다음과 같은 태그를 사용하는 소스 `<table>`, `<tr>`, `<td>` | 모든 가능한 Microsoft Word 테이블 형식은 다음에 적용 할 수 있습니다 HTML |
| 기존 테이블 복제 | 모든 행 및 셀 서식을 유지하면서 기존 테이블의 복사본을 만들 수 있습니다 | 테이블을 사용할 준비가 되기 전에 적절한 자식 노드를 제거해야 합니다 |
