---
title: Java의 문서에 있는 노드의 논리적 수준
second_title: Aspose.WordsJava
articleTitle: 문서의 노드의 논리적 수준
linktitle: 문서의 노드의 논리적 수준
type: docs
description: "Aspose.Words에서Java문서는 블록 수준,인라인 수준 또는 행 수준과 같은 노드의 논리적 수준을 언급했습니다. 노드 수준은 문서 트리에서 노드가 일반적으로 발생하는 위치를 설명하는 데 사용됩니다."
weight: 10
url: /ko/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

이 문서는 때때로"블록 레벨","인라인 레벨"(또한"인라인"이라고도 알려져 있습니다)또는"행 레벨"노드와 같은 문서의"레벨"에 속하는 노드 클래스 그룹을 언급합니다. 문서의 이러한 수준은 순전히 논리적으로 구분되며 상속이나 다른Aspose.WordsDOM수단으로 명시적으로 표현되지 않습니다. 노드 수준은 문서 트리에서 노드가 일반적으로 발생하는 위치를 설명하는 데 사용됩니다.

이전 기사에서 우리는 이미 노드 간의 관계와 모든 노드가 모든 노드의 자식이 될 수 없다는 사실에 대해 이야기했습니다. 예를 들어 셀은 행 자식 일 수 있고 행은 테이블 자식 일 수 있습니다. 이러한 관계는 문서에서 노드를 레벨로 논리적으로 나누는 데에도 적용됩니다.

다음 섹션에서는Aspose.Words의 노드의 논리적 수준과 각 수준에 속하는 클래스에 대해 설명합니다.

## 문서 및 섹션 논리 수준

단어 문서는[Section](https://reference.aspose.com/words/java/com.aspose.words/section/)클래스로 표시되고 섹션 나누기로 구분된 하나 이상의 섹션으로 구성됩니다. 섹션은 자체 페이지 크기,여백,방향,텍스트 열 수,머리글 및 바닥글을 정의할 수 있습니다.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)및 [부문](https://www.aspose.com/api/words/java/com.aspose.words/section) 레벨 노드는 다음 다이어그램과 같은 구조를 가지고 있습니다.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

섹션에는 첫 번째,짝수 및 홀수 페이지의 머리글 및 바닥글뿐만 아니라 주요 텍스트가 포함되어 있습니다. 이러한 텍스트의 다른"흐름"을*stories*이라고합니다.

Aspose.Words에서**Section**노드는[Body](https://reference.aspose.com/words/java/com.aspose.words/body/)및[HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/)스토리 노드를 포함합니다. **Body**개체는 기본 텍스트를 저장합니다. **HeaderFooter**개체는 각 머리글 및 바닥글에 대한 텍스트를 저장합니다. 모든 스토리의 텍스트는 블록 레벨의**Paragraph**및**Table**객체로 각각 표현되는 단락과 테이블로 구성됩니다.

또한 각 단어 문서에는Aspose.Words의[GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/)노드로 표시되는 용어집이 포함될 수 있습니다. 용어집 문서에는[BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/),[AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT)및[AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT)항목이 포함됩니다.

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

- 가장 중요한 블록 수준 노드인[Tables](https://reference.aspose.com/words/java/com.aspose.words/table/)및[Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)
- 블록 수준 및 인라인 수준에서 모두 발생하는 책갈피
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/)-사용자 지정 태그를 나타내며 콘텐츠 및 콘텐츠 컨트롤을 모두 포함할 수 있습니다

다음 다이어그램은 블록 수준 요소를 보여줍니다.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## 인라인 논리 수준

인라인 수준 노드는 문서의 실제 내용을 나타내며 다음 컨테이너에 포함될 수 있습니다:

- 단락-가장 일반적인 컨테이너
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StructuredDocumentTag

인라인 수준 요소는 다음 클래스로 표시됩니다:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/)–다르게 서식이 지정된 텍스트 실행
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/)및[BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/)은 책갈피를 나타냅니다
- [CommentRangeStarthttps://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/),[Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)및[Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/)은 주석을 나타냅니다
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)는 필드 문자를 나타내고[FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/)는 단어 필드를 나타냅니다.
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/)은 문서의 특수 문자를 나타냅니다
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)과[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)은 모양,그림,이미지 등을 나타냅니다.
- SmartTag및StructuredDocumentTag은 사용자 지정 마크업을 나타냅니다

다음 다이어그램에서는 인라인 수준 노드 구조를 보여 줍니다.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Microsoft Word의 도형에는AutoShapes오피스 아트,텍스트 상자,이미지,OLE개체 및 액티브엑스 컨트롤이 포함되며,모두`Shape`클래스를 사용하여 표시됩니다. 일부 도형에는 텍스트도 포함될 수 있으므로Aspose.Words의 도형 노드에는 블록 수준 노드가 포함될 수 있습니다.

모양은GroupShape노드를 사용하여 서로 그룹화 할 수 있습니다.

{{% /alert %}}

{{% alert color="primary" %}}

각주 및 주석에는 텍스트가 포함될 수 있으므로Aspose.Words의 각주 및 주석 노드에는 블록 수준 노드가 포함될 수 있습니다.

{{% /alert %}}

## 테이블,행 및 셀 노드 수준

테이블은 행과 셀의 노드로 구성됩니다. 테이블 요소는 다음 클래스로 표시됩니다:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/)은 테이블 행을 나타냅니다
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)은 테이블 셀을 나타냅니다
- StructuredDocumentTag사용자 지정 마크업 표시

다음 다이어그램에서는 테이블,행 및 셀 수준의 노드 구조를 보여 줍니다.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
