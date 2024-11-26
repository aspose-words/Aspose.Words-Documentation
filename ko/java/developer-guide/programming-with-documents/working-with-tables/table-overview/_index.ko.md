---
title: 테이블 개요
second_title: Aspose.WordsJava
articleTitle: 테이블 개요
linktitle: 테이블 개요
description: "Java에 대해Aspose.Words의 셀,행,열과 같은 테이블 및 해당 구성 요소로 작업합니다. Java의 테이블 작업 방법."
type: docs
weight: 10
url: /ko/java/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words는 다양한 형식의 문서(PDF,HTML,다른Microsoft Word형식 및 기타)의 서버 측 처리를 위해 설계된 클래스 라이브러리이며 다음과 같은 방식으로 테이블을 지원합니다:

* 문서의 테이블은 열기/저장 및 변환 중에 보존됩니다
* 테이블,콘텐츠 및 해당 서식을 편집한 다음 변경 내용을 테이블을 지원하는 형식으로 파일로 내보낼 수 있습니다

이 기사에서는Aspose.Words에서 지원하는 테이블 구조,셀,행 및 열 및 이러한 테이블 작업의 세부 사항에 대해 자세히 설명합니다.

## 테이블 구조

이미 언급했듯이 테이블은**Cell**,**Row**및**Column**과 같은 요소로 구성됩니다. 이 개념은 문서 형식에 관계없이 모든 테이블에 공통적으로 적용됩니다.

Microsoft Word문서에 있는 테이블의 일반적인 예입니다:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### 테이블 노드

Aspose.Words에 로드된 문서의 테이블은**Table node**으로 가져옵니다. 이 테이블은:

- 주요 텍스트
- 주석 또는 각주와 같은 인라인 스토리
- 테이블이 다른 테이블 내에 중첩된 셀

{{% alert color="primary" %}}

테이블은 다른 테이블 내부에 어떤 깊이에도 중첩 될 수 있습니다.

{{% /alert %}}

### 테이블 내용

테이블 노드는 실제 콘텐츠를 포함하지 않습니다.대신,콘텐츠를 구성하는 다른 노드들을 위한 컨테이너입니다.:

- **Table**에는 많은**Row**노드가 포함되어 있습니다. 이 테이블은 모든 일반적인 노드 요소를 제공하므로 문서에서 테이블을 자유롭게 이동,수정 및 제거 할 수 있습니다.
- **Row**은 단일 테이블 행을 나타내며 많은**Cell**노드를 포함합니다. 또한**Row**는 높이 및 선형과 같이 행 표시 방법을 정의하는 요소를 제공합니다.
- **Cell**은 테이블에 표시되는 실제 내용을 포함하고**Paragraph**및 기타 블록 수준 노드로 구성됩니다. 또한 셀에는 중첩 테이블이 포함될 수 있습니다.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

**DocumentExplorer**을 사용하여 문서에서 테이블 노드의 구조를 확인할 수 있습니다.

{{% /alert %}}

### 테이블 뒤에 빈 단락

위의 그림은 문서에 두 개의 셀로 구성된 여러 행의 테이블이 포함되어 있음을 보여줍니다. 두 셀 각각에는 셀의 서식이 지정된 텍스트의 컨테이너인 단락이 포함됩니다.

또한 문서에서 두 개의 연속 테이블을 분리하려면 테이블 뒤에 적어도 하나의 빈 단락이 필요하다는 점도 주목할 가치가 있습니다. 그런 단락이 없으면 연속적인 테이블이 하나로 합쳐질 것입니다. 이 동작은Microsoft Word과Aspose.Words모두에서 동일합니다.

Aspose.Words에는 테이블과 관련된 여러 클래스가 있습니다.– [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), 그리고 다른 사람들도

## 또한 참조

* [Aspose.Words문서 개체 모델(DOM)](/words/java/aspose-words-document-object-model/)
* [문서의 노드의 논리적 수준](/words/java/logical-levels-of-nodes-in-a-document/)
