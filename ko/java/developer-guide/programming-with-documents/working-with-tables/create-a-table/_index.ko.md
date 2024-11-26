---
title: Java에서 테이블을 만드는 방법
second_title: Aspose.WordsJava
articleTitle: 테이블 만들기
linktitle: 테이블 만들기
description: "Java을 사용하여 문서에 테이블을 만드는 다른 방법."
type: docs
weight: 20
url: /ko/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words사용자가 처음부터 문서에 테이블을 만들 수 있으며 이를 위한 여러 가지 방법을 제공합니다. 이 문서에서는 각 메서드를 사용하여 서식이 지정된 테이블을 문서에 추가하는 방법에 대한 세부 정보와 문서 끝에 있는 각 메서드의 비교를 제공합니다.

## 기본 테이블 스타일

새로 만든 테이블에는Microsoft Word에 사용된 것과 유사한 기본값이 지정됩니다:

| 테이블 속성 | 기본값Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| 테두리 색상 | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |
{{% alert color="primary" %}}

테이블은 단단히 배치된 경우 인라인이거나 페이지의 아무 곳이나 배치할 수 있는 경우 플로팅일 수 있습니다. 기본적으로Aspose.Words은 항상 인라인 테이블을 만듭니다.

{{% /alert %}}

## DocumentBuilder으로 테이블 만들기

Aspose.Words에서 사용자는[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)을 사용하여 문서에 테이블을 만들 수 있습니다. 테이블을 만드는 기본 알고리즘은 다음과 같습니다.:

1. [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)으로 테이블을 시작합니다.
2. [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)을 사용하여 테이블에 셀을 추가-이 자동으로 새 행을 시작합니다
3. 필요에 따라[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat)속성을 사용하여 셀 서식을 지정합니다
4. [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln),[InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte)및 기타와 같은 적절한**DocumentBuilder**방법을 사용하여 셀 내용을 삽입합니다
5. 행이 완료 될 때까지 2-4 단계를 반복하십시오
6. [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)을 호출하여 현재 행을 종료합니다
7. 필요에 따라[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat)속성을 사용하여 행 서식을 지정합니다
8. 테이블이 완료될 때까지 2-7 단계를 반복합니다
9. [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)을 호출하여 테이블 빌드를 완료합니다

{{% alert color="primary" %}}

중요한 세부 사항:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)은 셀 내부에서도 호출될 수 있으며,이 경우 셀 내에서 중첩 테이블을 생성하기 시작합니다.
- [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)을 호출하면 새 셀이 만들어지고[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)클래스의 다른 메서드를 사용하여 추가하는 모든 콘텐츠가 현재 셀에 추가됩니다. 같은 행에 새 셀을 만들려면**InsertCell**를 다시 호출합니다.
- **InsertCell**이[EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)과 행의 끝 바로 뒤에 호출되면 테이블은 새 행에서 계속됩니다.
- 테이블을 끝내는[EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)메서드는**EndRow**를 호출한 후 한 번만 호출해야 합니다. **EndTable**을 호출하면 커서가 현재 셀에서 테이블 바로 뒤의 위치로 이동합니다.

{{% /alert %}}

테이블을 만드는 과정은 다음 그림에서 명확하게 볼 수 있습니다:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

다음 코드 예제에서는 기본 서식을 사용하여**DocumentBuilder**을 사용하여 간단한 테이블을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

다음 코드 예제에서는DocumentBuilder을 사용하여 서식이 지정된 테이블을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

다음 코드 예제에서는DocumentBuilder을 사용하여 중첩 테이블을 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## DOM(문서 개체 모델)을 통해 테이블 만들기

특정 위치에 새[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)노드를 추가하여 테이블을DOM에 직접 삽입할 수 있습니다.

즉시 테이블 노드 생성 후,테이블 자체가 완전히 비어 있음을 유의하시기 바랍니다,즉 아직 행과 셀을 포함하지 않는 것입니다. 테이블에 행과 셀을 삽입하려면 적절한[Row](https://reference.aspose.com/words/java/com.aspose.words/run/)및[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)자식 노드를DOM에 추가합니다.

{{% alert color="primary" %}}

테이블을 만드는 이 방법은**DocumentBuilder**을 사용할 때와 동일한 테이블 기본값을 사용합니다.

{{% /alert %}}

다음 코드 예제에서는 문서 트리에 적절한 자식 노드를 추가하여 처음부터 새 테이블을 작성하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## HTML에서 테이블 만들기

Aspose.Words는[InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String)메서드를 사용하여HTML원본의 문서에 콘텐츠를 삽입하는 것을 지원합니다. 입력은 전체HTML페이지 또는 일부 스 니펫 일 수 있습니다.

이**InsertHtml**방법을 사용하여 사용자는 다음과 같은 테이블 태그를 통해 문서에 테이블을 삽입 할 수 있습니다`<table>`, `<tr>`, `<td>`.

다음 코드 예제에서는HTML태그가 포함된 문자열에서 문서에 테이블을 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## 기존 테이블의 복사본 삽입

문서의 기존 테이블을 기반으로 테이블을 만들어야 하는 경우가 종종 있습니다. 모든 서식을 유지하면서 테이블을 복제하는 가장 쉬운 방법은[deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean)방법을 사용하여 테이블 노드를 복제하는 것입니다.

동일한 기술을 사용하여 기존 행 또는 셀의 복사본을 테이블에 추가 할 수 있습니다.

다음 코드 예제에서는 노드 생성자를 사용하여 테이블을 복제하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

다음 코드 예제에서는 테이블의 마지막 행을 복제하여 테이블에 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

데이터 원본의 각 레코드와 함께 동적으로 증가하는 문서의 테이블을 만드는 방법을 찾고 있다면 위의 방법을 사용하지 않는 것이 좋습니다. 대신,원하는 출력은 지역과 함께Mail merge을 사용하여 더 쉽게 달성됩니다. 이 기술에 대해 더 많이 배울 수 있습니다 [Mail Merge지역](/words/java/types-of-mail-merge-operations/) 부문

## 테이블을 만드는 방법 비교

Aspose.Words은 문서에 새 테이블을 만드는 여러 가지 방법을 제공합니다. 각 방법은 자신의 장점과 단점을 가지고,그래서 자주 사용하는 선택은 특정 상황에 따라 달라집니다.

테이블을 만드는 이러한 방법을 자세히 살펴보고 장단점을 비교해 보겠습니다:

| 방법 | 장점 | 단점 |
| :- | :- | :- |
| 비아`DocumentBuilder` | 테이블 및 기타 문서 내용을 삽입하는 표준 방법 | 때로는 동일한 빌더 인스턴스를 사용하여 여러 종류의 테이블을 동시에 생성하기가 어렵습니다 |
| 비아DOM | **DocumentBuilder**을 사용하지 않고 노드를DOM에 직접 생성하고 삽입하는 주변 코드와 더 잘 어울립니다 | 대부분의 작업을 수행하기 전에[EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum)을 호출하여 누락된 자식 노드를 만들어야 합니다 |
| 에서HTML | 다음과 같은 태그를 사용하여HTML소스에서 새 테이블을 만들 수 있습니다`<table>`, `<tr>`, `<td>` | 가능한 모든Microsoft Word테이블 형식을HTML에 적용할 수 있는 것은 아닙니다 |
| 기존 테이블 복제 | 모든 행 및 셀 서식을 유지하면서 기존 테이블의 복사본을 만들 수 있습니다 | 테이블을 사용할 준비가 되기 전에 적절한 자식 노드를 제거해야 합니다 |
