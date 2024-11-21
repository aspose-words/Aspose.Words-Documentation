---
title: 문서의 노드의 논리적 수준 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서의 노드의 논리적 수준
linktitle: 문서의 노드의 논리적 수준
type: docs
description: "그 안에 Aspose.Words 에 대한 C++ 설명서에는 블록 수준,인라인 수준 또는 행 수준과 같은 노드의 논리적 수준이 언급되어 있습니다. 노드 수준은 문서 트리에서 노드가 일반적으로 발생하는 위치를 설명하는 데 사용됩니다."
weight: 10
url: /ko/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

이 문서는 때때로"블록 레벨","인라인 레벨"(또한"인라인"이라고도 알려져 있습니다)또는"행 레벨"노드와 같은 문서의"레벨"에 속하는 노드 클래스 그룹을 언급합니다. 문서의 이러한 수준은 순전히 논리적으로 구분되며 상속이나 다른 방법으로 명시적으로 표현되지 않습니다. Aspose.Words DOM 수단. 노드 수준은 문서 트리에서 노드가 일반적으로 발생하는 위치를 설명하는 데 사용됩니다.

이전 기사에서 우리는 이미 노드 간의 관계와 모든 노드가 모든 노드의 자식이 될 수 없다는 사실에 대해 이야기했습니다. 예를 들어 셀은 행 자식 일 수 있고 행은 테이블 자식 일 수 있습니다. 이러한 관계는 문서에서 노드를 레벨로 논리적으로 나누는 데에도 적용됩니다.

다음 섹션에서는 노드의 논리적 수준에 대해 설명합니다. Aspose.Words 그리고 각 레벨에 속하는 클래스.

## 문서 및 섹션 논리 수준

단어 문서는 하나 이상의 섹션으로 구성되어 있으며, [Section](https://reference.aspose.com/words/cpp/aspose.words/section) 클래스 및 섹션 나누기로 구분. 섹션은 자체 페이지 크기,여백,방향,텍스트 열 수,머리글 및 바닥글을 정의할 수 있습니다.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 그리고 [부문](https://www.aspose.com/api/words/cpp/aspose.words/section/) 레벨 노드는 다음 다이어그램과 같은 구조를 가지고 있습니다.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

섹션에는 첫 번째,짝수 및 홀수 페이지의 머리글 및 바닥글뿐만 아니라 주요 텍스트가 포함되어 있습니다. 이러한 다양한 텍스트"흐름"을 호출합니다 *stories*.

그 안에 Aspose.Words, **Section** 노드에는 [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) 그리고 [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) 스토리 노드. 그 **Body** 객체는 기본 텍스트를 저장합니다. 그 **HeaderFooter** 개체는 각 머리글 및 바닥글에 대한 텍스트를 저장합니다. 어떤 이야기의 텍스트는 각각 **Paragraph** 그리고 **Table** 블록 수준의 개체.

또한,각 단어 문서에는 용어집이 포함될 수 있습니다. [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) 노드 Aspose.Words. 명사 문서에는 [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/),그리고 [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) 항목.

**GlossaryDocument**

## 블록 논리 수준

블록 수준 노드는 콘텐츠 및 콘텐츠 컨트롤의 컨테이너를 나타내며 다음 노드의 문서 트리 자식 노드에서 발생할 수 있습니다:

- 몸
- 헤더
- 뉴스레터
- 발신
- 댓글
- 모양
- GroupShape
- 셀
- StructuredDocumentTag

블록 수준 노드는 다음 클래스로 표시됩니다:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) 그리고 [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/),가장 중요한 블록 레벨 노드입니다.
- 블록 수준 및 인라인 수준에서 모두 발생하는 책갈피
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/),사용자 지정 태그를 나타내며 콘텐츠 및 콘텐츠 컨트롤을 모두 포함할 수 있습니다

다음 다이어그램은 블록 수준 요소를 보여줍니다.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## 인라인 논리 수준

인라인 수준 노드는 문서의 실제 내용을 나타내며 다음 컨테이너에 포함될 수 있습니다:

- 단락-가장 일반적인 컨테이너
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

인라인 수준 요소는 다음 클래스로 표시됩니다:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) -다르게 서식이 지정된 텍스트 실행
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) 그리고 [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) 북마크 표현
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) 그리고 [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) 주석 표현
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) 그리고 [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/) 필드 문자를 나타내고, [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) 단어 필드 표현
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) 문서의 특수 문자를 나타냅니다
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) 그리고 [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) 모양,그림,이미지 등을 나타냅니다.
- SmartTag 그리고 StructuredDocumentTag 사용자 지정 마크업 표현

다음 다이어그램에서는 인라인 수준 노드 구조를 보여 줍니다.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

모양 Microsoft Word 사무실 예술 포함 AutoShapes,텍스트 상자,이미지, OLE 객체와 액티브 컨트롤은 모두 `Shape` 수업 일부 도형은 텍스트를 포함 할 수 있으므로 도형 노드 Aspose.Words 블록 수준 노드를 포함할 수 있습니다.

모양은 다음을 사용하여 서로 그룹화 할 수 있습니다 GroupShape 노드

{{% /alert %}}

{{% alert color="primary" %}}

각주 및 주석에는 텍스트가 포함될 수 있으므로 각주 및 주석 노드가 포함될 수 있습니다. Aspose.Words 블록 수준 노드를 포함할 수 있습니다.

{{% /alert %}}

## 테이블,행 및 셀 노드 수준

테이블은 행과 셀의 노드로 구성됩니다. 테이블 요소는 다음 클래스로 표시됩니다:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) 테이블 행을 나타냅니다.
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) 테이블 셀을 나타냅니다.
- StructuredDocumentTag 사용자 지정 마크업 표현

다음 다이어그램에서는 테이블,행 및 셀 수준의 노드 구조를 보여 줍니다.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
