---
title: 테이블을 만드는 방법 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 테이블 만들기
linktitle: 테이블 만들기
description: "문서에서 테이블을 만드는 다른 방법 Java·"
type: docs
weight: 20
url: /ko/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words 스크래치에서 문서에 테이블을 만들 수 있으며 여러 가지 방법을 제공합니다. 이 문서는 각 방법을 사용하여 문서에 포맷 된 테이블을 추가하는 방법에 대한 세부 사항뿐만 아니라 기사의 끝에서 각 방법의 비교를 제공합니다.

## 기본 테이블 스타일

새로 생성 된 테이블은 사용 된 사람들과 유사한 기본 값을 부여합니다. Microsoft Word::

| 표 재산 | 기본 정보 Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| 국경 색깔 |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

테이블은 꽉 배치 된 경우 인라인 일 수 있습니다, 또는 페이지에 어디에 위치 할 수 있는지 부동. 기본적으로, Aspose.Words 항상 인라인 테이블을 만듭니다.

{{% /alert %}}

## DocumentBuilder로 테이블 만들기

내 계정 Aspose.Words, 사용자는 문서를 사용하여 테이블을 만들 수 있습니다. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)· 테이블을 만들기위한 기본 알고리즘은 다음과 같습니다

1. 명세 테이블을 시작 [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. 명세 셀을 테이블에 추가 [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) – 이것은 자동으로 새로운 행을 시작합니다
3. 명세 선택적으로, 사용 [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) cell formatting을 지정하는 속성
4. 명세 적합한 셀 콘텐츠를 삽입 **DocumentBuilder** 같은 방법 [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), 기타
5. 명세 반복 단계 2-4 줄까지 완료
6. 명세 이름 * [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) 현재 행을 종료
7. 명세 선택적으로, 사용 [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) row formatting을 지정하는 속성
8. 명세 테이블이 완료 될 때까지 반복 단계 2-7
9. 명세 이름 * [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) 본문 바로가기

{{% alert color="primary" %}}

중요한 세부사항:

- - - [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) 셀 내부라고도 할 수 있습니다. 즉, 셀 내의 배열 테이블의 생성을 시작합니다.
- 호출 후 [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), 새로운 세포가 생성되고, 다른 방법을 사용하여 추가하는 내용 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 클래스는 현재 셀에 추가됩니다. 같은 행에 새로운 세포를 만들려면, 호출 **InsertCell** 다시.
- 면 **InsertCell** 후 즉시 호출 [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) 그리고 행의 끝, 테이블은 새로운 행에 계속할 것입니다.
- 한국어 [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) 테이블을 종료하는 방법은 호출 후 한 번 호출해야합니다 **EndRow**· 이름 * **EndTable** 현재 셀에서 테이블 후 위치에 즉시 커서를 이동합니다.

{{% /alert %}}

테이블을 만드는 과정은 다음 그림에서 명확하게 볼 수 있습니다:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

다음 코드 예제는 간단한 테이블 만들기 방법을 보여줍니다 **DocumentBuilder** 기본 형식:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

다음 코드 예제는 DocumentBuilder를 사용하여 포맷 된 테이블을 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

다음 코드 예제는 DocumentBuilder를 사용하여 배열 된 테이블을 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## 테이블 만들기 DOM (주)Document Object Model·

테이블을 직접 삽입할 수 있습니다. DOM 새로운 기능 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) 특정 위치에 노드.

테이블 노드 생성 후 즉시, 테이블 자체가 완전히 비어있을 것입니다, 아직 행과 세포를 포함하지 않습니다. 행과 셀을 테이블에 삽입하려면 적절한 추가 [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) · [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) 아이 노드에 DOM·

{{% alert color="primary" %}}

테이블 만들기의이 방법은 같은 테이블 기본을 사용할 때 **DocumentBuilder**·

{{% /alert %}}

다음 코드 예제는 적절한 아이 노드를 문서 트리에 추가하여 스크래치에서 새 테이블을 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## HTML에서 테이블 만들기

Aspose.Words HTML 소스에서 텍스트를 삽입하는 지원 [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) 방법. 입력은 전체 HTML 페이지 또는 부분 스니펫이 될 수 있습니다.

이 **InsertHtml** 방법, 사용자는 테이블 태그를 통해 테이블을 삽입 할 수 있습니다 `<table>`, `<tr>`, `<td>`·

다음 코드 예제는 HTML 태그를 포함하는 문자열에서 테이블을 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Existing Table의 복사를 삽입

문서에 이미 기존 테이블을 기반으로 테이블을 만들 필요가있을 때 종종 시간이 있습니다. 모든 포맷을 유지하면서 테이블을 복제하는 가장 쉬운 방법은 테이블 노드를 사용하여 복제하는 것입니다. [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) 방법.

동일한 기술은 기존 행 또는 셀의 사본을 테이블에 추가하는 데 사용될 수 있습니다.

다음 코드 예제는 node constructors를 사용하여 테이블을 복제하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)·

{{% /alert %}}

다음 코드 예제는 테이블의 마지막 행을 복제하고 테이블에 추가하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)·

{{% /alert %}}

데이터 소스에서 각 레코드와 역동적으로 성장하는 문서의 테이블을 만들려면 위의 방법은 조언되지 않습니다. 대신, 원한 산출은 더 쉽게 사용해서 달성됩니다 Mail merge 지역으로. 이 기술에 대해 더 알아볼 수 있습니다. [Mail Merge 지역과](/words/java/types-of-mail-merge-operations/) 이름 *

## Table 만들기

Aspose.Words 문서에 새 테이블을 만들 수있는 몇 가지 방법을 제공합니다. 각 방법에는 그것의 자신의 이점 및 불리가 있습니다, 그래서 사용의 선택은 특정한 상황에 달려 있습니다.

테이블을 만들고 프로와 단점을 비교하는 이러한 방법을 자세히 살펴 보자:

|  제품 설명 | 제품 정보 |  관련 상품 |
|  :-  |  :-  |  :-  |
| 이름 * `DocumentBuilder` | 테이블 및 기타 문서 콘텐츠를 삽입하기위한 표준 방법 | 같은 빌더 인스턴스와 같은 시간에 테이블의 많은 다양성을 만들려면 때때로 어렵습니다 |
| 이름 * DOM |  노드를 직접 생성하고 삽입하는 주변 코드와 더 나은 DOM 사용 없이 **DocumentBuilder** | 테이블은 "empty": 대부분의 작업을 수행하기 전에 호출해야합니다. [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) 누락된 아이 노드를 만들려면 |
| HTML에서 | 같은 태그를 사용하여 HTML 소스에서 새 테이블을 만들 수 있습니다 `<table>`, `<tr>`, `<td>` | 모두 가능 Microsoft Word 테이블 형식은 HTML에 적용 가능 |
| 기존 테이블 Cloning | 모든 행과 셀 포맷을 유지하면서 기존 테이블의 복사본을 만들 수 있습니다 | 적절한 아이 노드는 테이블 앞에 제거되어야 합니다 |
