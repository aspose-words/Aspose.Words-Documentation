---
title: Java의 섹션 작업
second_title: Aspose.WordsJava
articleTitle: 섹션 작업
linktitle: 섹션 작업
description: "Java을 사용하여 문서 섹션 개념 및 조작 관행을 이해합니다. 문서Java에 섹션을 삽입합니다. 섹션Java을 제거합니다. 문서 사이에 섹션을 복사합니다."
type: docs
weight: 120
url: /ko/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

때로는 모든 페이지에 동일한 서식이 없는 문서를 원할 수도 있습니다. 예를 들어 페이지 번호 형식을 수정하거나 페이지 크기 및 방향이 다르거나 첫 번째 문서 페이지를 번호 매기기 없이 표지로 사용해야 할 수 있습니다. 당신은 섹션으로 그것을 달성 할 수 있습니다.

섹션은 머리글 및 바닥글,방향,열,여백,페이지 번호 서식 등을 제어하는 수준 노드입니다.

Aspose.Words섹션을 관리하고,문서를 섹션으로 나누고,특정 섹션에만 적용되는 서식을 변경할 수 있습니다. Aspose.Words구역 나누기에 머리글 및 바닥글,페이지 설정 및 열 설정과 같은 구역 서식에 대한 정보를 저장합니다.

이 문서에서는 섹션 및 섹션 나누기로 작업하는 방법을 설명합니다.

## 섹션 및 섹션 나누기는 무엇입니까

문서 섹션은[Section](https://reference.aspose.com/words/java/com.aspose.words/section/)및[SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/)클래스로 표시됩니다. 섹션 개체는[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)노드의 직계 자식이며[Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections)속성을 통해 액세스할 수 있습니다. 다음과 같은 몇 가지 방법을 사용하여 이러한 노드를 관리할 수 있습니다[Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), 그리고 다른 사람들도

섹션 나누기는 문서 페이지를 사용자 정의 가능한 레이아웃으로 섹션으로 나누는 옵션입니다.

## 섹션 나누기 유형

Aspose.Words[BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/)열거형의 다른 섹션 나누기를 사용하여 문서를 분할하고 서식을 지정할 수 있습니다:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

[SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/)열거형을 사용하여 다음과 같은 첫 번째 섹션에만 적용되는 나누기 유형을 선택할 수도 있습니다NewColumn, NewPage, EvenPage, 그리고OddPage

## 섹션 관리

섹션은 일반적인 복합 노드이기 때문에 전체 노드 조작API을 사용하여 섹션을 조작 할 수 있습니다.섹션에 추가,제거 및 기타 작업. 이 기사에서 노드에 대한 자세한 내용을 읽을 수 있습니다 [Aspose.Words문서 개체 모델(DOM)](/words/java/aspose-words-document-object-model/).

반면에`DocumentBuilder`API을 사용하여 섹션을 사용할 수도 있습니다. 이 기사에서는 섹션 작업의이 특정 방법에 초점을 맞출 것입니다.

## 섹션 나누기 삽입 또는 제거

Aspose.Words[InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int)메서드를 사용하여 텍스트에 섹션 나누기를 삽입할 수 있습니다.

다음 코드 예제에서는 문서에 섹션 나누기를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

[Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove)메서드를 사용하여 섹션 나누기를 삭제합니다. 특정 섹션 나누기를 제거하고 대신 해당 섹션의 내용을 삭제할 필요가 없는 경우[ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent)방법을 사용할 수 있습니다.

다음 코드 예제에서는 섹션 나누기를 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

섹션 나누기에는 그 뒤에 있는 섹션이 아니라 그 앞에 있는 섹션에 대한 정보가 있습니다. 따라서 섹션 나누기를 제거하면 제거 된 나누기 전의 텍스트가 다음 섹션 나누기의 속성을 얻습니다. 이로 인해 전체 문서가 가로로 바뀌거나 머리글과 바닥글이 변경되거나 완전히 사라질 수 있습니다.

{{% /alert %}}

## 섹션 이동

문서의 한 위치에서 다른 위치로 섹션을 이동하려면 해당 섹션의 인덱스를 가져와야 합니다. Aspose.Words[SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/)에서 섹션 위치를 얻을 수 있습니다. [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections)속성을 사용하여 문서의 모든 섹션을 가져올 수 있습니다. 그러나 첫 번째 섹션 만 얻으려면[FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection)속성을 사용할 수 있습니다.

다음 코드 예제에서는 첫 번째 섹션에 액세스하고 복합 노드의 자식을 반복하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## 섹션 레이아웃 지정

때로는 다른 문서 섹션에 대한 창의적인 레이아웃을 만들어 문서가 더 잘 보이기를 원합니다. 현재 횡단 표의 유형을 지정하려면[SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/)열거를 사용하여 횡단 레이아웃 모드를 선택할 수 있습니다:

- 기본값
- 그리드
- LineGrid
- SnapToChars

다음 코드 예제에서는 각 페이지에 있는 줄 수를 제한하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## 섹션 편집

문서에 새 섹션을 추가하면 편집할 수 있는 본문이나 문단이 없습니다. Aspose.Words을 사용하면 [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) 메서드를 사용하여 섹션에 최소한 하나의 문단이 포함된 본문이 있는지 보장할 수 있습니다. 이 메서드는 자동으로 문서에 Body(또는 HeaderFooter) 노드를 추가한 다음 여기에 Paragraph를 추가합니다.

다음 코드 예제에서는**EnsureMinimum**을 사용하여 새 섹션 노드를 준비하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### 콘텐츠 추가 또는 추가

일부 도형을 그리거나 섹션의 시작/끝에 텍스트 또는 이미지를 추가하려는 경우[Section](https://reference.aspose.com/words/java/com.aspose.words/section/)클래스의[AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section)및[PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section)메서드를 사용할 수 있습니다.

다음 코드 예제에서는 기존 섹션의 콘텐츠를 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### 섹션 복제

Aspose.Words는[deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone)메서드를 사용하여 섹션의 전체 복사본을 만들어 섹션을 복제할 수 있습니다.

다음 코드 예제에서는 문서의 첫 번째 섹션을 복제하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### 문서 간 섹션 복사

경우에 따라 많은 섹션이 있는 큰 문서가 있을 수 있으며 한 문서에서 다른 문서로 섹션의 내용을 복사할 수 있습니다.

Aspose.Words[ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean)방법을 사용하여 문서 간에 섹션을 복사할 수 있습니다.

다음 코드 예제에서는 문서 간에 섹션을 복사하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### 섹션 머리글 및 바닥 글 작업

각 섹션에 대한 머리글 또는 바닥 글을 표시하는 기본 규칙은 매우 간단합니다:

1. 섹션에 특정 유형의 자체 머리글/바닥글이 없으면 이전 섹션에서 가져옵니다.
2. 페이지에 표시되는 머리글/바닥글의 유형은"다른 첫 페이지"및"다른 홀수 및 짝수 페이지"섹션 설정에 의해 제어됩니다.

다음 코드 예제에서는 헤더가 다른 2 개의 섹션을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

문서에서[HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/)개체를 제거하지 않고 머리글과 바닥글의 텍스트를 제거하려면[ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters)방법을 사용할 수 있습니다. 또한[DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes)메서드를 사용하여 문서의 머리글 및 바닥글에서 모든 도형을 제거할 수 있습니다.

다음 코드 예제에서는 섹션의 모든 머리글과 바닥글의 내용을 지우는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

다음 코드 예제에서는 섹션의 모든 머리글 바닥글에서 모든 모양을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## 섹션에서 페이지 속성 사용자 지정

페이지 또는 문서를 인쇄하기 전에 단일 페이지 또는 전체 문서의 크기와 레이아웃을 사용자 정의하고 수정할 수 있습니다. 페이지 설정을 사용하면 다른 첫 페이지 또는 홀수 페이지를 인쇄하기 위해 여백,방향 및 크기와 같은 문서 페이지의 설정을 변경할 수 있습니다.

Aspose.Words[PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/)클래스를 사용하여 페이지 및 섹션 속성을 사용자 지정할 수 있습니다.

다음 코드 예제에서는 현재 섹션의 페이지 크기 및 방향과 같은 속성을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

다음 코드 예제에서는 모든 섹션에서 페이지 속성을 수정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## 또한 참조

- [문서의 노드의 논리적 수준](/words/java/logical-levels-of-nodes-in-a-document/)
- [문서 삽입 및 추가](/words/java/insert-and-append-documents/)
