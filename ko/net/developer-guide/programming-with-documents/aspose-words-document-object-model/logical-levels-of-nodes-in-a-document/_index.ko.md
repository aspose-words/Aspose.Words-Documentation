---
title: C# 문서에 있는 노드의 논리적 수준
second_title: .NET용 Aspose.Words
articleTitle: 문서에 있는 노드의 논리적 수준
linktitle: 문서에 있는 노드의 논리적 수준
type: docs
description: ".NET 문서에 대한 Aspose.Words에서는 노드의 논리적 수준(블록 수준, 인라인 수준 또는 C#을 사용하는 행 수준)을 언급했습니다. 노드 수준은 일반적으로 노드가 발생하는 문서 트리의 위치를 설명하는 데 사용됩니다."
weight: 10
url: /ko/net/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

이 문서에서는 때때로 노드 클래스 그룹을 "블록 수준", "인라인 수준"("인라인"이라고도 함) 또는 "행 수준" 노드와 같은 문서의 "수준"에 속하는 것으로 참조합니다.. 문서의 이러한 수준은 순전히 논리적으로 구분되며 상속이나 기타 Aspose.Words DOM 수단으로 명시적으로 표현되지 않습니다. 노드 수준은 문서 트리에서 노드가 일반적으로 발생하는 위치를 설명하는 데 사용됩니다.

이전 기사에서 우리는 이미 노드 사이의 관계와 모든 노드가 어떤 노드의 자식이 될 수 없다는 사실에 대해 이야기했습니다. 예를 들어 Cell은 Row 하위만 될 수 있고, Row는 Table 하위만 될 수 있습니다. 이러한 관계는 문서에서 노드를 논리적으로 여러 수준으로 나누는 데에도 적용됩니다.

다음 섹션에서는 Aspose.Words에 있는 노드의 논리적 수준과 각 수준에 속하는 클래스를 설명합니다.

## 문서 및 섹션 논리 수준

Word 문서는 [Section](https://reference.aspose.com/words/net/aspose.words/section/) 클래스로 표시되고 섹션 나누기로 구분된 하나 이상의 섹션으로 구성됩니다. 섹션은 자체 페이지 크기, 여백, 방향, 텍스트 열 수, 머리글 및 바닥글을 정의할 수 있습니다.

[Document](https://reference.aspose.com/words/net/aspose.words/document/) 및 [Section](https://reference.aspose.com/words/net/aspose.words/section/) 레벨 노드는 다음 다이어그램과 같은 구조를 갖습니다.

<img src="/words/net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="문서 및 섹션 수준의 단어 사용" style="width:700px"/>

섹션에는 첫 번째 페이지, 짝수 페이지, 홀수 페이지의 머리글과 바닥글뿐만 아니라 본문도 포함됩니다. 이러한 다양한 텍스트 "흐름"을 *stories*라고 합니다.

Aspose.Words에서 **Section** 노드에는 [Body](https://reference.aspose.com/words/net/aspose.words/body/) 및 [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) 스토리 노드가 포함되어 있습니다. **Body** 개체는 기본 텍스트를 저장합니다. **HeaderFooter** 개체는 각 머리글과 바닥글의 텍스트를 저장합니다. 모든 스토리의 텍스트는 각각 블록 수준의 **Paragraph** 및 **Table** 개체로 표시되는 단락과 표로 구성됩니다.

또한 각 Word 문서에는 Aspose.Words의 [GlossaryDocument](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/) 노드로 표시되는 용어집이 포함될 수 있습니다. 용어집 문서에는 [BuildingBlocks](https://reference.aspose.com/words/net/aspose.words.buildingblocks/glossarydocument/buildingblocks/), [AutoText](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) 및 [AutoCorrect](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblocktype/) 항목이 포함되어 있습니다.

**GlossaryDocument**에는 다양한 유형의 용어집 문서 항목을 나타내는 [BuildingBlock](https://reference.aspose.com/words/net/aspose.words.buildingblocks/buildingblock/) 노드가 포함되어 있습니다. 각 **BuildingBlock**에는 문서에 삽입, 제거 및 복사할 수 있는 섹션이 포함되어 있습니다.

## 블록 논리 수준

블록 수준 노드는 콘텐츠 및 콘텐츠 제어에 대한 컨테이너를 나타내며 다음 노드의 문서 트리 하위 노드에서 발생할 수 있습니다

- 몸
- 머리글
- 바닥글
- 각주
- 논평
- 모양
- Group모양
- 셀
- 구조화된문서태그

블록 수준 노드는 다음 클래스로 표시됩니다

- 가장 중요한 블록 레벨 노드인 [Tables](https://reference.aspose.com/words/net/aspose.words.tables/table/) 및 [Paragraphs](https://reference.aspose.com/words/net/aspose.words/paragraph/)
- 블록 수준과 인라인 수준 모두에서 발생하는 북마크
- 사용자 정의 마크업을 나타내며 콘텐츠와 콘텐츠 컨트롤을 모두 포함할 수 있는 [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/)

다음 다이어그램은 블록 수준 요소를 보여줍니다.

<img src="/words/net/logical-levels-of-nodes-in-a-document/block-level.png" alt="블록 수준의 단어" style="width:550px"/>

## 인라인 논리 수준

인라인 수준 노드는 문서의 실제 내용을 나타내며 다음 컨테이너에 포함될 수 있습니다

- 단락 – 가장 일반적인 컨테이너
- [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)
- 구조화된문서태그

인라인 수준 요소는 다음 클래스로 표시됩니다

- [Run](https://reference.aspose.com/words/net/aspose.words/run/) – 다른 형식의 텍스트 실행
- [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmarkstart/) 및 [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmarkend/)는 북마크를 나타냅니다
- [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/net/aspose.words/comment/) 및 [Footnote](https://reference.aspose.com/words/net/aspose.words.notes/footnote/)는 주석을 나타냅니다
- 필드 문자를 나타내는 [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) 및 [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/)와 Word 필드를 나타내는 [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/)
- [SpecialChar](https://reference.aspose.com/words/net/aspose.words/specialchar/)는 문서의 특수 문자를 나타냅니다
- [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 및 [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/)는 모양, 그림, 이미지 등을 나타냅니다.
- SmartTag 및 StructuredDocumentTag는 사용자 정의 마크업을 나타냅니다

다음 다이어그램은 인라인 수준 노드 구조를 보여줍니다.

<img src="/words/net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="인라인 고급-단어" style="width:785px"/>

{{% alert color="primary" %}}

Microsoft Word의 도형에는 Office Art AutoShapes, 텍스트 상자, 이미지, OLE 개체 및 ActiveX 컨트롤이 포함되며 모두 `Shape` 클래스를 사용하여 표현됩니다. 일부 모양에는 텍스트도 포함될 수 있으므로 Aspose.Words의 모양 노드에는 블록 수준 노드가 포함될 수 있습니다.

GroupShape 노드를 사용하여 모양을 서로 그룹화할 수 있습니다.

{{% /alert %}}

{{% alert color="primary" %}}

각주와 주석에는 텍스트가 포함될 수 있으므로 Aspose.Words의 각주 및 주석 노드에는 블록 수준 노드가 포함될 수 있습니다.

{{% /alert %}}

## 테이블, 행 및 셀 노드 수준

테이블은 행과 셀의 노드로 구성됩니다. 테이블 요소는 다음 클래스로 표시됩니다

- [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/)는 테이블 행을 나타냅니다
- [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/)는 테이블 셀을 나타냅니다
- StructuredDocumentTag는 사용자 정의 마크업을 나타냅니다

다음 다이어그램은 테이블, 행 및 셀 수준의 노드 구조를 보여줍니다.

<img src="/words/net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="테이블 의자-aspose-단어" style="width:910px"/>
