---
title: C#에서 테이블을 만드는 방법
second_title: .NET용 Aspose.Words
articleTitle: 테이블 만들기
linktitle: 테이블 만들기
description: "C#에서 다양한 방법으로 테이블을 만드는 방법에 대한 가이드입니다. 문서에 대한 C#에 테이블을 만듭니다."
type: docs
weight: 20
url: /ko/net/create-a-table/
---

Aspose.Words를 사용하면 사용자가 처음부터 문서에 테이블을 만들 수 있으며 이를 위한 여러 가지 방법을 제공합니다. 이 문서에서는 각 방법을 사용하여 서식이 지정된 표를 문서에 추가하는 방법에 대한 세부 정보를 제공하고 문서 마지막 부분에서 각 방법을 비교합니다.

## 기본 테이블 스타일

새로 생성된 테이블에는 Microsoft Word에서 사용된 것과 유사한 기본값이 제공됩니다

|  테이블 속성 |  Aspose.Words의 기본값 |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

테이블이 단단히 배치되어 있으면 인라인이 될 수 있고, 페이지의 아무 곳에나 배치할 수 있으면 부동 테이블이 될 수 있습니다. 기본적으로 Aspose.Words는 항상 인라인 테이블을 생성합니다.

{{% /alert %}}

## DocumentBuilder를 사용하여 테이블 만들기

Aspose.Words에서 사용자는 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)를 사용하여 문서에 테이블을 만들 수 있습니다. 테이블을 생성하는 기본 알고리즘은 다음과 같습니다

1. [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)로 테이블을 시작하세요
2. [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/)를 사용하여 테이블에 셀을 추가합니다. 그러면 자동으로 새 행이 시작됩니다
3. 선택적으로 [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) 속성을 사용하여 셀 서식을 지정합니다
4. [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) 등과 같은 적절한 **DocumentBuilder** 방법을 사용하여 셀 내용을 삽입합니다
5. 행이 완료될 때까지 2~4단계를 반복합니다
6. [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/)를 호출하여 현재 행을 종료합니다
7. 선택적으로 [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) 속성을 사용하여 행 형식 지정
8. 테이블이 완성될 때까지 2~7단계를 반복합니다
9. [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/)를 호출하여 테이블 작성을 완료합니다

{{% alert color="primary" %}}

중요한 세부정보:

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)는 셀 내부에서 호출될 수도 있으며, 이 경우 셀 내에서 중첩 테이블 생성을 시작합니다.
* [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/)를 호출한 후 새 셀이 생성되고 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 클래스의 다른 메서드를 사용하여 추가한 모든 콘텐츠가 현재 셀에 추가됩니다. 같은 행에 새 셀을 만들려면 **InsertCell**을 다시 호출하세요.
* [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) 및 행 끝 직후에 **InsertCell**가 호출되면 테이블은 새 행에서 계속됩니다.
* 테이블 종료를 위한 [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) 메소드는 **EndRow** 호출 후 한 번만 호출해야 합니다. **EndTable**을 호출하면 커서가 현재 셀에서 테이블 바로 다음 위치로 이동됩니다.

{{% /alert %}}

테이블을 생성하는 과정은 다음 그림에서 명확하게 볼 수 있습니다

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

다음 코드 예제에서는 기본 형식으로 **DocumentBuilder**를 사용하여 간단한 테이블을 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

다음 코드 예제에서는 DocumentBuilder를 사용하여 서식이 지정된 테이블을 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

다음 코드 예제에서는 DocumentBuilder를 사용하여 중첩 테이블을 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## DOM(Document Object Model)를 통해 테이블 생성

특정 위치에 새 [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) 노드를 추가하여 DOM에 직접 테이블을 삽입할 수 있습니다.

테이블 노드 생성 직후 테이블 자체는 완전히 비어 있습니다. 즉, 아직 행과 셀이 포함되어 있지 않습니다. 테이블에 행과 셀을 삽입하려면 적절한 [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) 및 [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) 하위 노드를 DOM에 추가하세요.

{{% alert color="primary" %}}

이 테이블 생성 방법은 **DocumentBuilder**를 사용할 때와 동일한 테이블 기본값을 사용합니다.

{{% /alert %}}

다음 코드 예제에서는 문서 트리에 적절한 하위 노드를 추가하여 처음부터 새 테이블을 작성하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## HTML에서 테이블 만들기

Aspose.Words는 [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/) 메서드를 사용하여 HTML 소스에서 문서에 콘텐츠를 삽입하는 것을 지원합니다. 입력은 전체 HTML 페이지일 수도 있고 부분 스니펫일 수도 있습니다.

**InsertHtml** 방법을 사용하면 사용자는 `<table>`, `<tr>`, `<td>`와 같은 테이블 태그를 통해 문서에 테이블을 삽입할 수 있습니다.

다음 코드 예제에서는 HTML 태그가 포함된 문자열에서 문서에 테이블을 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## 기존 테이블의 복사본 삽입

문서에 이미 존재하는 테이블을 기반으로 테이블을 만들어야 하는 경우가 종종 있습니다. 모든 형식을 유지하면서 테이블을 복제하는 가장 쉬운 방법은 [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) 방법을 사용하여 테이블 노드를 복제하는 것입니다.

동일한 기술을 사용하여 기존 행이나 셀의 복사본을 테이블에 추가할 수 있습니다.

다음 코드 예제에서는 노드 생성자를 사용하여 테이블을 복제하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 테이블의 마지막 행을 복제하여 테이블에 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

데이터 소스의 각 레코드에 따라 동적으로 커지는 문서에서 테이블을 생성하려는 경우 위의 방법은 권장되지 않습니다. 대신 영역과 함께 Mail merge를 사용하면 원하는 출력을 더 쉽게 얻을 수 있습니다. [지역이 포함된 Mail Merge](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) 섹션에서 이 기술에 대해 자세히 알아볼 수 있습니다.

## 테이블 생성 방법 비교

Aspose.Words는 문서에 새 테이블을 만드는 여러 가지 방법을 제공합니다. 각 방법에는 고유한 장점과 단점이 있으므로 어떤 방법을 사용할지는 특정 상황에 따라 결정되는 경우가 많습니다.

테이블을 생성하는 이러한 방법을 자세히 살펴보고 장단점을 비교해 보겠습니다

|  방법 | 장점 |  단점 |
|  :-  |  :-  |  :-  |
| `DocumentBuilder`를 통해 | 테이블 및 기타 문서 내용을 삽입하는 표준 방법 | 동일한 빌더 인스턴스로 동시에 여러 종류의 테이블을 생성하는 것이 어려울 때가 있습니다 |
| DOM를 통해 |  **DocumentBuilder**를 사용하지 않고 DOM에 직접 노드를 생성하고 삽입하는 주변 코드와 더 잘 맞습니다 | 테이블은 "비어 있음"으로 생성됩니다. 대부분의 작업을 수행하기 전에 [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/)를 호출하여 누락된 하위 노드를 생성해야 합니다 |
| HTML에서 | `<table>`, `<tr>`, `<td>`과 같은 태그를 사용하여 HTML 소스에서 새 테이블을 만들 수 있습니다 | 가능한 모든 Microsoft Word 테이블 형식을 HTML에 적용할 수 있는 것은 아닙니다 |
| 기존 테이블 복제 | 모든 행 및 셀 서식을 유지하면서 기존 테이블의 복사본을 만들 수 있습니다 | 테이블을 사용할 준비가 되기 전에 적절한 하위 노드를 제거해야 합니다 |