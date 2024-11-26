---
title: 섹션 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 섹션 작업
linktitle: 섹션 작업
description: "다음을 사용하여 문서 섹션 개념 및 조작 관행 이해 C++. 문서에 섹션 삽입 C++. 섹션 제거 C++. 문서 사이에 섹션을 복사합니다."
type: docs
weight: 120
url: /ko/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

때로는 모든 페이지에 동일한 서식이 없는 문서를 원할 수도 있습니다. 예를 들어 페이지 번호 형식을 수정하거나 페이지 크기 및 방향이 다르거나 첫 번째 문서 페이지를 번호 매기기 없이 표지로 사용해야 할 수 있습니다. 당신은 섹션으로 그것을 달성 할 수 있습니다.

섹션은 머리글 및 바닥글,방향,열,여백,페이지 번호 서식 등을 제어하는 수준 노드입니다.

Aspose.Words 섹션을 관리하고,문서를 섹션으로 나누고,특정 섹션에만 적용되는 서식을 변경할 수 있습니다. Aspose.Words 머리글 및 바닥글,페이지 설정 및 열 설정과 같은 섹션 서식에 대한 정보를 섹션 나누기에 저장합니다.

이 문서에서는 섹션 및 섹션 나누기로 작업하는 방법을 설명합니다.

## 섹션 및 섹션 나누기는 무엇입니까

문서 섹션은 [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) 그리고 [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/) 수업 섹션 객체는 [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 노드를 통해 액세스 할 수 있습니다 [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) 재산. 다음과 같은 몇 가지 방법을 사용하여 이러한 노드를 관리할 수 있습니다 [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/),그리고 다른 것들.

섹션 나누기는 문서 페이지를 사용자 정의 가능한 레이아웃으로 섹션으로 나누는 옵션입니다.

## 섹션 나누기 유형

Aspose.Words 다른 섹션 나누기를 사용하여 문서를 분할하고 포맷할 수 있습니다. [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/) 열거:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

당신은 또한 사용할 수 있습니다 [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/) 다음과 같은 첫 번째 섹션에만 적용되는 나누기 유형을 선택하는 열거형 NewColumn, NewPage, EvenPage,그리고 OddPage.

## 섹션 관리

섹션은 일반 복합 노드이기 때문에 전체 노드 조작 API 섹션을 조작하는 데 사용할 수 있습니다:섹션에 추가,제거 및 기타 작업. 이 기사에서 노드에 대한 자세한 내용을 읽을 수 있습니다 [Aspose.Words 문서 개체 모델(DOM)](/words/cpp/aspose-words-document-object-model/).

다른 한편으로는,당신은 또한 사용할 수 있습니다 `DocumentBuilder` API 섹션 작업. 이 기사에서는 섹션 작업의이 특정 방법에 초점을 맞출 것입니다.

## 섹션 나누기 삽입 또는 제거

Aspose.Words 를 사용하여 텍스트에 섹션 나누기를 삽입 할 수 있습니다 [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/) 방법

다음 코드 예제에서는 문서에 섹션 나누기를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

사용 [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) 섹션 나누기를 삭제하는 방법. 특정 섹션 나누기를 제거하고 대신 해당 섹션의 내용을 삭제할 필요가 없는 경우 다음을 사용할 수 있습니다 [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/) 방법

다음 코드 예제에서는 섹션 나누기를 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

섹션 나누기에는 그 뒤에 있는 섹션이 아니라 그 앞에 있는 섹션에 대한 정보가 있습니다. 따라서 섹션 나누기를 제거하면 제거 된 나누기 전의 텍스트가 다음 섹션 나누기의 속성을 얻습니다. 이로 인해 전체 문서가 가로로 바뀌거나 머리글과 바닥글이 변경되거나 완전히 사라질 수 있습니다.

{{% /alert %}}

## 섹션 이동

문서의 한 위치에서 다른 위치로 섹션을 이동하려면 해당 섹션의 인덱스를 가져와야 합니다. Aspose.Words 당신은에서 섹션 위치를 얻을 수 있습니다 [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). 당신은 사용할 수 있습니다 [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) 문서의 모든 섹션을 가져 오는 속성. 당신은 단지 첫 번째 섹션을 얻고 싶은 경우에,당신은 사용할 수 있습니다 [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) 재산.

다음 코드 예제에서는 첫 번째 섹션에 액세스하고 복합 노드의 자식을 반복하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## 섹션 레이아웃 지정

때로는 다른 문서 섹션에 대한 창의적인 레이아웃을 만들어 문서가 더 잘 보이기를 원합니다. 현재 횡단 표의 유형을 지정하려면 다음을 사용하여 횡단 레이아웃 모드를 선택할 수 있습니다 [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/) 열거:

- 기본값
- 그리드
- LineGrid
- SnapToChars

다음 코드 예제에서는 각 페이지에 있는 줄 수를 제한하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## 섹션 편집

문서에 새 섹션을 추가하면 편집할 수 있는 본문이나 단락이 없습니다. Aspose.Words 당신은 섹션을 사용하여 적어도 하나의 단락과 본문을 포함하는 것을 보장 할 수 있습니다 [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) 방법-자동으로 몸을 추가합니다(또는 HeaderFooter)문서에 노드를 추가하고 그 다음에 단락을 추가합니다.

다음 코드 예제에서는 다음을 사용하여 새 섹션 노드를 준비하는 방법을 보여 줍니다 **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### 콘텐츠 추가 또는 추가

당신은 어떤 모양을 그리거나 섹션의 시작/끝에 텍스트 또는 이미지를 추가 할 경우,당신은 사용할 수 있습니다 [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) 그리고 [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) 의 방법 [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) 수업

다음 코드 예제에서는 기존 섹션의 콘텐츠를 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### 섹션 복제

Aspose.Words 당신이 사용하여 그것의 전체 복사본을 만들어 섹션을 복제 할 수 있습니다 [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/) 방법

다음 코드 예제에서는 문서의 첫 번째 섹션을 복제하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### 문서 간 섹션 복사

경우에 따라 많은 섹션이 있는 큰 문서가 있을 수 있으며 한 문서에서 다른 문서로 섹션의 내용을 복사할 수 있습니다.

Aspose.Words 를 사용하여 문서 사이에 섹션을 복사 할 수 있습니다 [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/) 방법

다음 코드 예제에서는 문서 간에 섹션을 복사하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### 섹션 머리글 및 바닥 글 작업

각 섹션에 대한 머리글 또는 바닥 글을 표시하는 기본 규칙은 매우 간단합니다:

1. 섹션에 특정 유형의 자체 머리글/바닥글이 없으면 이전 섹션에서 가져옵니다.
2. 페이지에 표시되는 머리글/바닥글의 유형은"다른 첫 페이지"및"다른 홀수 및 짝수 페이지"섹션 설정에 의해 제어됩니다.

다음 코드 예제에서는 만드는 방법을 보여 줍니다 2 헤더가 다른 섹션:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

당신은 제거하지 않고 머리글과 바닥 글의 텍스트를 제거 할 경우 [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) 문서의 개체,당신은 사용할 수 있습니다 [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/) 방법 또한,당신은 사용할 수 있습니다 [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) 문서의 머리글 및 바닥글에서 모든 모양을 제거하는 방법

다음 코드 예제에서는 섹션의 모든 머리글과 바닥글의 내용을 지우는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

다음 코드 예제에서는 섹션의 모든 머리글 바닥글에서 모든 모양을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## 섹션에서 페이지 속성 사용자 지정

페이지 또는 문서를 인쇄하기 전에 단일 페이지 또는 전체 문서의 크기와 레이아웃을 사용자 정의하고 수정할 수 있습니다. 페이지 설정을 사용하면 다른 첫 페이지 또는 홀수 페이지를 인쇄하기 위해 여백,방향 및 크기와 같은 문서 페이지의 설정을 변경할 수 있습니다.

Aspose.Words 를 사용하여 페이지 및 섹션 속성을 사용자 정의 할 수 있습니다 [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) 수업

다음 코드 예제에서는 현재 섹션의 페이지 크기 및 방향과 같은 속성을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

다음 코드 예제에서는 모든 섹션에서 페이지 속성을 수정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## 또한 참조

- [문서의 노드의 논리적 수준](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [문서 삽입 및 추가](/words/cpp/insert-and-append-documents/)
