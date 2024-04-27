---
title: 테이블 개요
second_title: Aspose.Words 제품정보 Java
articleTitle: 테이블 개요
linktitle: 테이블 개요
description: "테이블과 셀, 행, 열과 같은 구성 요소 작업 Aspose.Words 제품정보 Java· 테이블에서 작업하는 방법 Java·"
type: docs
weight: 10
url: /ko/java/table-overview/
---

Aspose.Words 다양한 형식으로 문서의 서버 측 처리를 위해 설계된 클래스 라이브러리 – PDF, HTML, different Microsoft Word 형식 및 기타 - 다음 방법으로 테이블을 지원:

* 문서의 테이블은 개방 / 저장 및 변환 중 보존됩니다
* 테이블, 내용 및 형식을 편집 할 수 있으며 테이블을 지원하는 형식의 파일로 변경을 내보내기

이 문서에서는 테이블 구조, 셀, 행 및 열에 대해 더 자세히 알아볼 것입니다. Aspose.Words, 그리고 그런 테이블과 작업의 세부 사항.

## 테이블 구조

이미 언급했듯이, 테이블은 다음과 같은 요소로 구성됩니다. **Cell**, **Row** · **Column**· 이 문서 형식에 관계없이 일반적으로 모든 테이블에 공통되는 개념입니다.

이것은 테이블의 일반적인 예입니다. Microsoft Word 문서:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### 테이블 노드

문서의 테이블은 Aspose.Words 수입 된 **테이블 노드**· 테이블은 어린이로 찾을 수 있습니다:

- 원문
- 댓글이나 발주와 같은 인라인 이야기
- 테이블이 다른 테이블 안에 배열될 때 세포

{{% alert color="primary" %}}

테이블은 다른 테이블 안에 어떤 깊이든지 배열될 수 있습니다.

{{% /alert %}}

### 표 내용

테이블 노드는 실제 콘텐츠를 포함하지 않습니다 - 대신, 컨텐츠를 구성하는 다른 같은 노드의 컨테이너입니다:

- - - **Table** 많은 것 **Row** 노드. 테이블은 모든 일반적인 노드 요소를 제공하므로 자유롭게 이동, 수정 및 문서에서 테이블을 제거 할 수 있습니다.
- - - **Row** 단일 테이블 행을 나타내고 많은 것을 포함합니다 **Cell** 노드. 또한, **Row** 행이 표시되는 것을 정의하는 요소는 높이와 정렬과 같은 요소입니다.
- - - **Cell** 그것은 무엇입니까? true 테이블에 표시된 내용과 위로 만듭니다 **Paragraph** 다른 블록 레벨 노드. 또한, 세포는 배열된 테이블을 포함할 수 있습니다.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

문서에서 테이블 노드의 구조를 확인할 수 있습니다. **DocumentExplorer**·

{{% /alert %}}

### 테이블 후에 빈 포장

위의 그림은 문서가 두 개의 세포로 구성되는 몇 줄의 테이블을 포함한다는 것을 보여줍니다. 두 셀의 각각은 세포의 포맷 된 텍스트에 대한 용기 인 단락을 포함한다.

문서의 두 개의 연속 테이블을 분리하는 것은 테이블 후 적어도 하나의 빈 단락을 요구합니다. 그런 단락 없이, 연속 테이블은 하나로 결합될 것입니다. 이 행동은 모두 동일합니다. Microsoft Word · Aspose.Words·

Aspose.Words 테이블과 관련된 여러 종류의 수업이 있습니다. [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), 기타.

## 더 보기

* [Aspose.Words Document Object Model (DOM)](/words/ko/java/aspose-words-document-object-model/)
* [문서의 노드의 논리 수준](/words/ko/java/logical-levels-of-nodes-in-a-document/)