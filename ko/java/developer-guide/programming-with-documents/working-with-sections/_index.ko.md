---
title: 단면도에 있는 일 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 단면도에 일
linktitle: 단면도에 일
description: "문서 영역 개념 및 조작 관행 이해 Java· 문서에 삽입 Java· 제거 섹션 Java· 문서 사이의 복사 섹션."
type: docs
weight: 120
url: /ko/java/working-with-sections/
---

때로는 모든 페이지에 동일한 형식이 없다는 문서를 원합니다. 예를 들어, 페이지 번호 형식을 수정해야 할 수도 있습니다. 다른 페이지 크기와 오리엔테이션이 있거나 번호가 없는 표지 페이지로 첫 번째 문서 페이지가 있습니다. 당신은 섹션을 달성 할 수 있습니다.

섹션은 headers 및 footers, 오리엔테이션, 열, 마진, 페이지 번호 포맷 및 기타를 제어하는 레벨 노드입니다.

Aspose.Words 섹션을 관리하고 문서를 섹션으로 분할하고 특정 섹션에만 적용하는 형식 변경을 만듭니다. Aspose.Words headers 및 footers, 페이지 설정 및 섹션 설정과 같은 섹션 형식에 대한 정보를 저장합니다.

이 문서는 섹션과 섹션이 깰 방법을 설명합니다.

## 어떤 단면도 및 단면도 틈은 입니다

문서 섹션은 다음과 같습니다. [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) · [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) 수업. 섹션 개체는 즉시 어린이의 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 노드를 통해 접근할 수 있습니다. [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) 호텔 위치 같은 몇몇 방법을 이용하여 노드를 관리할 수 있습니다. [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), 기타.

Section Break는 사용자 정의 레이아웃과 문서 페이지를 분할하는 옵션입니다.

## 섹션 브레이크의 유형

Aspose.Words 다른 섹션을 사용하여 분할 및 형식 문서를 허용 [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) 공급 능력:

- 섹션BreakContinuous
- 섹션BreakNewColumn
- 섹션BreakNewPage
- 섹션BreakEvenPage
- 섹션BreakOddPage

또한 사용할 수 있습니다 [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) NewColumn, NewPage, EvenPage 및 OddPage와 같은 첫 번째 섹션에만 적용되는 Break type을 선택하십시오.

## 자주 묻는 질문

섹션이 정상적인 복합 노드이기 때문에 전체 노드 조작 API 단면도를 조작하기 위하여 사용될 수 있습니다: 단면도에 추가하고, 제거하고, 다른 가동. 기사에서 노드에 대해 더 읽어볼 수 있습니다. [Aspose.Words Document Object Model (DOM)](/words/ko/java/aspose-words-document-object-model/)·

다른 한편으로도 사용할 수 있습니다. `DocumentBuilder` API 단면도에 일하기 위하여. 이 문서에서, 우리는 섹션과 작업의이 특정 방법에 초점을 것입니다.

## 삽입 또는 제거 섹션 브레이크

Aspose.Words 섹션을 삽입할 수 있습니다. [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) 방법.

다음 코드 예제는 문서에 섹션을 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

사용 방법 [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) 섹션 브레이크를 삭제하는 방법. 특정 섹션 브레이크를 제거하고 대신 그 섹션의 내용을 삭제할 필요가 없다면, 사용할 수 있습니다. [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) 방법.

다음 코드 예제는 섹션을 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

섹션이 끊어지기 전에 진행되는 섹션에 대한 정보가 있습니다. 그래서 섹션을 제거하면 제거 된 휴식 전에 텍스트는 다음과 같은 섹션의 속성을 얻을 것이다. 이 문서는 전체 문서가 풍경이 될 수 있습니다, 또는 헤더와 발자기 변화 또는 완전히 사라질 수 있습니다.

{{% /alert %}}

## 본문 바로가기

문서에서 다른 한 위치에서 섹션을 이동하려면 해당 섹션의 인덱스를 얻을 필요가 있습니다. Aspose.Words 섹션 위치를 얻을 수 있습니다. [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/)· 당신은 사용할 수 있습니다 [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) 문서의 모든 섹션을 얻을 수있는 속성. 그러나 첫 번째 섹션 만 얻으려면, 당신은 사용할 수 있습니다 [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) 호텔 위치

다음 코드 예제는 합성 노드의 어린이를 통해 첫 번째 섹션에 액세스하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## 섹션 레이아웃 지정

다른 문서 섹션에 대한 창의적인 레이아웃을 만들기 위해 더 나은 문서를 원합니다. 현재 섹션 그리드의 유형을 지정하려면 섹션 레이아웃 모드를 선택할 수 있습니다. [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) 공급 능력:

- 기본
- 격자
- 라인그리드
- 스냅ToChars

다음 코드 예제는 각 페이지가 있을 수 있는 줄의 수를 제한하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## 자주 묻는 질문

문서에 새 섹션을 추가하면 신체 또는 단락이 없습니다. Aspose.Words 섹션이 적어도 하나의 단락을 가진 몸을 포함 할 수 있도록 [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) 메소드 - 자동으로 텍스트에 Body (또는 HeaderFooter) 노드를 추가하고 Paragraph를 추가합니다.

다음 코드 예제는 새 섹션 노드를 준비하는 방법을 보여줍니다. **EnsureMinimum**::

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Append 또는 Prepend 내용

몇몇 모양을 그리거나 단면도의 시작/끝에 원본 또는 이미지를 추가하고 싶은 경우에, 당신은 사용할 수 있습니다 [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) · [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) 방법의 [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) 수업.

다음 코드 예제는 기존 섹션의 내용을 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Clone 섹션

Aspose.Words 전체 복사본을 작성하여 섹션을 복제 할 수 있습니다. [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) 방법.

다음 코드 예제는 문서의 첫 번째 섹션을 복제하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### 문서의 복사 섹션

일부 경우에, 당신은 많은 섹션을 가진 큰 문서가 있고 당신은 하나의 문서에서 다른 섹션의 내용을 복사 할 수 있습니다.

Aspose.Words 문서를 복사할 수 있습니다. [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) 방법.

다음 코드 예제는 문서 사이에 섹션을 복사하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### 단면도 우두머리와 발기로 일

각 섹션의 헤더 또는 발기를 표시하기위한 기본 규칙은 매우 간단합니다

1. 명세 섹션은 특정 유형의 자체 헤더 / 발러가없는 경우, 이전 섹션에서 가져온 것입니다.
2. 명세 페이지에 표시된 헤더/footer의 유형은 "Different First Page"와 "Different Odd & Even pages" 섹션 설정에 의해 제어됩니다. 그렇지 않으면 섹션의 자신의 타이틀이 무시됩니다.

다음 코드 예제는 다른 헤더와 2 개의 섹션을 만드는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

제거하지 않고 헤더와 발기를 제거하려면 [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) 문서의 개체, 당신은 사용할 수 있습니다 [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) 방법. 또한, 사용할 수 있습니다 [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) 문서의 헤더와 발자국의 모든 모양을 제거하는 방법.

다음 코드 예제는 섹션의 모든 헤더와 발자국의 콘텐츠를 삭제하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

다음 코드 예제 섹션의 모든 헤더 발러에서 모든 모양을 제거하는 방법:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## 섹션에서 페이지 속성을 사용자 정의

페이지 또는 문서를 인쇄하기 전에 단일 페이지 또는 전체 문서의 크기 및 레이아웃을 사용자 정의하고 수정할 수 있습니다. 페이지 설정으로, 당신은 같은 문서 페이지의 설정을 변경할 수 있습니다 마진, 오리엔테이션, 그리고 다른 첫 페이지 또는 이상한 페이지 인쇄 크기.

Aspose.Words 페이지를 사용자 정의하고 속성을 사용하여 [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) 수업.

다음 코드 예제는 페이지 크기와 현재 섹션의 방향과 같은 속성을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

다음 코드 예제는 모든 섹션에서 페이지 속성을 수정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## 더 보기

- [문서의 노드의 논리 수준](/words/ko/java/logical-levels-of-nodes-in-a-document/)
- [문서 및 문서](/words/ko/java/insert-and-append-documents/)