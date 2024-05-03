---
title: 문서의 노드의 논리 수준 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서의 노드의 논리 수준
linktitle: 문서의 노드의 논리 수준
type: docs
description: "내 계정 Aspose.Words 제품정보 Java 노드의 논리적 수준의 문서 – 블록 레벨, 인라인 레벨, 또는 행 레벨. 노드 레벨은 노드가 일반적으로 발생되는 문서 트리의 위치를 설명하는 데 사용됩니다."
weight: 10
url: /ko/java/logical-levels-of-nodes-in-a-document/
---

이 문서는 "block-level", "inline-level"과 같은 문서에서 "level"에 속하는 노드 클래스의 그룹을 나타냅니다 (또한 "inline") 또는 "row-level" 노드. 문서의 이러한 수준은 순수하게 통용되며 상속 또는 기타로 표현되지 않습니다. Aspose.Words DOM 이름 * 노드 레벨은 노드가 일반적으로 발생할 수 있는 문서 트리에 장소를 설명하는 데 사용됩니다.

이전 기사에서 이미 노드와 노드 사이의 관계에 대해 이야기하고 모든 노드가 노드의 자녀가 될 수 없다는 사실. 예를 들어, 셀은 행 아이만 될 수 있으며, 행은 테이블 아이만 될 수 있습니다. 이 관계는 문서에서 노드의 논리 사업부에 적용된다.

다음 섹션은 노드의 논리적 수준을 설명합니다. Aspose.Words 각 레벨에 속한 클래스.

## 문서 및 섹션 논리 수준

· Word 문서는 하나 이상의 섹션으로 구성되어 있으며, 대표 [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) 클래스와 구분 섹션 휴식. 섹션은 자체 페이지 크기, 마진, 오리엔테이션, 텍스트 열 수 및 헤더 및 발기를 정의 할 수 있습니다.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) · [이름 *](https://www.aspose.com/api/words/java/com.aspose.words/section) Level 노드는 다음과 같이 구조가 있습니다.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

섹션에는 메인 텍스트뿐만 아니라 헤더와 발자기가 포함되어 있습니다. 텍스트의이 다른 "흐름"은 호출됩니다. *stories*·

내 계정 Aspose.Words, 이름 * **Section** 노드는 [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) · [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) 노드를 찾습니다. 더 보기 **Body** 객체는 주요 텍스트를 저장합니다. 더 보기 **HeaderFooter** 개체는 각 헤더와 발터에 대한 텍스트를 저장합니다. 모든 이야기의 텍스트는 단락과 테이블로 구성되어 각각이 표현 **Paragraph** · **Table** 블록 레벨의 개체.

또한, 각각 Word 문서는 광택을 포함 할 수 있습니다. [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) 노드에서 Aspose.Words· glossary 문서 포함 [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), · [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) 이름 *

**GlossaryDocument** 기타 [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) 다른 유형의 광택 문서 항목을 나타내는 노드. 각 각 **BuildingBlock** 삽입, 제거 및 문서로 복사 할 수있는 섹션이 포함되어 있습니다.

## 블록 논리 수준

Block-level 노드는 콘텐츠 및 콘텐츠 컨트롤에 대한 컨테이너를 나타냅니다. 다음 노드의 문서 트리 아이 노드에서 발생할 수 있습니다

- 몸
- 헤더
- 발터
- 영상
- 코멘트
- 모양
- - - Group제품 정보
- 세포
- StructuredDocument태그

Block-level 노드는 다음과 같은 클래스로 표시됩니다

- - - [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) · [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), 가장 중요한 블록 레벨 노드는
- 책갈피는 블록 레벨과 인라인 레벨에서 모두 발생합니다
- - - [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), custom markup을 대표하고 내용과 내용 통제 둘 다 포함할 수 있습니다

다음 다이어그램은 블록 레벨 요소를 보여줍니다.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Inline 논리 수준

인라인 레벨 노드는 문서의 실제 콘텐츠를 나타내며 다음 컨테이너에 포함될 수 있습니다

- Paragraph - 가장 일반적인 용기
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StructuredDocument태그

인라인 레벨 엘리먼트는 다음과 같은 클래스에 의해 표현됩니다:

- - - [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) – 다른 형식으로 텍스트의 실행
- - - [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) · [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) 책갈피
- - - [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) · [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) 이름 *
- - - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) · [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) 필드 문자를 표현하고, [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) 이름 * 워드 필드
- - - [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) 본문 바로가기
- - - [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) · [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) 모양, 그림, 이미지, 등을 대표하십시오.
- SmartTag 및 StructuredDocument 꼬리표는 주문 markup를 대표합니다

다음 다이어그램은 인라인 레벨 노드 구조를 보여줍니다.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

모양에 Microsoft Word Office Art AutoShapes, 텍스트 상자, 이미지, OLE 개체 및 ActiveX 컨트롤을 포함한 모든 것을 사용하여 표현 `Shape` 수업. 몇몇 모양은 또한 원본을 포함할 수 있습니다, 그래서 안으로 모양 노드 Aspose.Words 블록 레벨 노드를 포함할 수 있습니다.

모양은 서로 안에서 그룹화될 수 있습니다 Group모양 노드.

{{% /alert %}}

{{% alert color="primary" %}}

Footnotes 및 의견은 텍스트를 포함 할 수 있으므로 Footnote 및 주석 노드에 Aspose.Words 블록 레벨 노드를 포함할 수 있습니다.

{{% /alert %}}

## 테이블, 행 및 셀 노드 레벨

테이블은 행과 세포의 노드로 구성됩니다. 테이블 요소는 다음과 같은 클래스에 의해 표현된다:

- - - [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) 테이블 행을 나타냅니다
- - - [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) 테이블 셀을 나타냅니다
- 구조화문 꼬리표는 주문 markup를 대표합니다

다음 다이어그램은 테이블, 행 및 셀 레벨의 노드 구조를 보여줍니다.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
