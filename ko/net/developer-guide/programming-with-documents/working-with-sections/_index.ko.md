---
title: C#의 섹션 작업
second_title: .NET용 Aspose.Words
articleTitle: 섹션 작업
linktitle: 섹션 작업
description: "C#를 사용하여 문서 섹션 개념 및 조작 방법을 이해합니다. 문서 C#에 섹션을 삽입합니다. C# 섹션을 삭제하세요. 문서 간에 섹션을 복사합니다."
type: docs
weight: 120
url: /ko/net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

때로는 모든 페이지에서 동일한 서식이 적용되지 않은 문서를 원할 수도 있습니다. 예를 들어, 페이지 번호 형식을 수정하거나, 페이지 크기와 방향을 다르게 하거나, 번호 매기기 없이 첫 번째 문서 페이지를 표지로 사용해야 할 수 있습니다. 섹션을 사용하면 이를 달성할 수 있습니다.

섹션은 머리글과 바닥글, 방향, 열, 여백, 페이지 번호 형식 등을 제어하는 수준 노드입니다.

Aspose.Words를 사용하면 섹션을 관리하고, 문서를 섹션으로 나누고, 특정 섹션에만 적용되는 서식 변경을 수행할 수 있습니다. Aspose.Words는 머리글 및 바닥글, 페이지 설정, 섹션 나누기 열 설정 등 섹션 서식에 대한 정보를 저장합니다.

이 문서에서는 구역 및 구역 나누기를 사용하여 작업하는 방법을 설명합니다.

## 섹션 및 섹션 나누기란?

문서 섹션은 [Section](https://reference.aspose.com/words/net/aspose.words/section/) 및 [SectionCollection](https://reference.aspose.com/words/net/aspose.words/section/collection) 클래스로 표시됩니다. 섹션 개체는 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 노드의 직계 자식이며 [Sections](https://reference.aspose.com/words/net/aspose.words/document//properties/sections) 속성을 통해 액세스할 수 있습니다. [Remove](https://reference.aspose.com/words/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) 등과 같은 몇 가지 방법을 사용하여 해당 노드를 관리할 수 있습니다.

섹션 나누기는 사용자 정의 가능한 레이아웃을 사용하여 문서 페이지를 섹션으로 나누는 옵션입니다.

## 섹션 나누기 유형

Aspose.Words를 사용하면 [BreakType](https://reference.aspose.com/words/net/aspose.words/breaktype/) 열거형의 다양한 섹션 나누기를 사용하여 문서를 분할하고 서식을 지정할 수 있습니다

* 섹션 브레이크 연속
* 섹션 브레이크 뉴 컬럼
* 섹션 브레이크새 페이지
* 섹션 브레이크 이븐 페이지
* 섹션 브레이크오드페이지(SectionBreakOddPage)

[SectionStart](https://reference.aspose.com/words/net/aspose.words/sectionstart/) 열거형을 사용하여 NewColumn, NewPage, EvenPage 및 OddPage와 같은 첫 번째 섹션에만 적용되는 구분 유형을 선택할 수도 있습니다.

## 섹션 관리

섹션은 일반 복합 노드이므로 전체 노드 조작 API를 사용하여 섹션을 조작할 수 있습니다(섹션에 대한 추가, 제거 및 기타 작업). [Aspose.Words Document Object Model (DOM)](/words/ko/net/aspose-words-document-object-model/) 문서에서 노드에 대한 자세한 내용을 읽을 수 있습니다.

반면에 `DocumentBuilder` API를 사용하여 섹션 작업을 수행할 수도 있습니다. 이 기사에서는 섹션 작업을 수행하는 특정 방법에 중점을 둘 것입니다.

## 섹션 나누기 삽입 또는 제거

Aspose.Words를 사용하면 [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) 방법을 사용하여 텍스트에 섹션 나누기를 삽입할 수 있습니다.

다음 코드 예제에서는 문서에 구역 나누기를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

섹션 나누기를 삭제하려면 [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) 메서드를 사용하세요. 특정 섹션 나누기를 제거할 필요가 없고 대신 해당 섹션의 내용을 삭제할 필요가 있는 경우 [ClearContent](https://reference.aspose.com/words/net/aspose.words/section/clearcontent/) 방법을 사용할 수 있습니다.

다음 코드 예제에서는 섹션 나누기를 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

섹션 나누기에는 섹션 뒤에 오는 섹션이 아니라 이전 섹션에 대한 정보가 있습니다. 따라서 구역 나누기를 제거하면 제거된 나누기 앞의 텍스트는 그 뒤에 나오는 구역 나누기의 속성을 갖게 됩니다. 이로 인해 전체 문서가 가로로 변하거나 머리글과 바닥글이 변경되거나 완전히 사라질 수 있습니다.

{{% /alert %}}

## 섹션 이동

문서의 한 위치에서 다른 위치로 섹션을 이동하려면 해당 섹션의 색인을 가져와야 합니다. Aspose.Words를 사용하면 [Item](https://reference.aspose.com/words/net/aspose.words/sectioncollection//properties/item) 속성을 사용하여 [SectionCollection](https://reference.aspose.com/words/net/aspose.words/sectioncollection/)에서 섹션 위치를 가져올 수 있습니다. [Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/) 속성을 사용하여 문서의 모든 섹션을 가져올 수 있습니다. 그러나 첫 번째 섹션만 가져오려면 [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) 속성을 사용할 수 있습니다.

다음 코드 예제에서는 첫 번째 섹션에 액세스하고 복합 노드의 하위 항목을 반복하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## 섹션 레이아웃 지정

때로는 다양한 문서 섹션에 대한 창의적인 레이아웃을 만들어 문서가 더 보기 좋게 보이도록 만들고 싶을 때가 있습니다. 현재 섹션 그리드의 유형을 지정하려면 [SectionLayoutMode](https://reference.aspose.com/words/net/aspose.words/sectionlayoutmode/) 열거형을 사용하여 섹션 레이아웃 모드를 선택할 수 있습니다

* 기본
* 그리드
* 라인그리드
* SnapToChars

다음 코드 예제에서는 각 페이지에 포함될 수 있는 줄 수를 제한하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## 섹션 편집

문서에 새 섹션을 추가하면 편집할 수 있는 본문이나 단락이 없습니다. Aspose.Words를 사용하면 [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words/section/ensureminimum/) 메서드를 사용하여 섹션에 최소한 하나의 단락이 있는 본문이 포함되어 있음을 보장할 수 있습니다. 그러면 자동으로 본문(또는 HeaderFooter) 노드가 문서에 추가된 다음 단락이 추가됩니다.

다음 코드 예제는 **EnsureMinimum**를 사용하여 새 섹션 노드를 준비하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### 콘텐츠 추가 또는 앞에 추가

섹션의 시작/끝 부분에 모양을 그리거나 텍스트 또는 이미지를 추가하려면 [Section](https://reference.aspose.com/words/net/aspose.words/section/) 클래스의 [AppendContent](https://reference.aspose.com/words/net/aspose.words/section/appendcontent/) 및 [PrependContent](https://reference.aspose.com/words/net/aspose.words/section/prependcontent/) 메서드를 사용할 수 있습니다.

다음 코드 예제에서는 기존 섹션의 콘텐츠를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### 섹션 복제

Aspose.Words를 사용하면 [Clone](https://reference.aspose.com/words/net/aspose.words/section/clone/) 방법을 사용하여 섹션의 전체 복사본을 생성하여 섹션을 복제할 수 있습니다.

다음 코드 예제에서는 문서의 첫 번째 섹션을 복제하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### 문서 간 섹션 복사

어떤 경우에는 많은 섹션이 포함된 큰 문서가 있을 수 있으며 한 문서의 섹션 내용을 다른 문서로 복사하려는 경우가 있습니다.

Aspose.Words를 사용하면 [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) 방법을 사용하여 문서 간에 섹션을 복사할 수 있습니다.

다음 코드 예제에서는 문서 간에 섹션을 복사하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### 섹션 머리글 및 바닥글 작업

각 섹션의 머리글이나 바닥글을 표시하는 기본 규칙은 매우 간단합니다

1. 섹션에 특정 유형의 자체 머리글/바닥글이 없으면 이전 섹션에서 가져옵니다.
2. 페이지에 표시되는 머리글/바닥글 유형은 "다른 첫 번째 페이지" 및 "다른 홀수 및 짝수 페이지" 섹션 설정에 의해 제어됩니다. 비활성화된 경우 섹션 자체 제목이 무시됩니다.

다음 코드 예제에서는 서로 다른 헤더를 사용하여 섹션 2개를 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

문서에서 [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) 개체를 제거하지 않고 머리글과 바닥글의 텍스트를 제거하려면 [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/) 방법을 사용할 수 있습니다. 또한 [DeleteHeaderFooterShapes](https://reference.aspose.com/words/net/aspose.words/section/deleteheaderfootershapes/) 메서드를 사용하여 문서의 머리글과 바닥글에서 모든 도형을 제거할 수 있습니다.

다음 코드 예제에서는 섹션에 있는 모든 머리글과 바닥글의 내용을 지우는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

다음 코드 예제는 섹션의 모든 머리글 바닥글에서 모든 도형을 제거하는 방법입니다

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## 섹션의 페이지 속성 사용자 정의

페이지나 문서를 인쇄하기 전에 단일 페이지나 전체 문서의 크기와 레이아웃을 사용자 정의하고 수정할 수 있습니다. 페이지 설정을 사용하면 다른 첫 페이지나 홀수 페이지를 인쇄하기 위한 여백, 방향, 크기 등 문서 페이지의 설정을 변경할 수 있습니다.

Aspose.Words를 사용하면 [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) 클래스를 사용하여 페이지 및 섹션 속성을 사용자 정의할 수 있습니다.

다음 코드 예제에서는 현재 섹션의 페이지 크기 및 방향과 같은 속성을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

다음 코드 예제에서는 모든 섹션의 페이지 속성을 수정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## 또한보십시오

* [문서에 있는 노드의 논리적 수준](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [문서 삽입 및 추가](/words/ko/net/insert-and-append-documents/)

