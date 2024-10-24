---
title: 테이블 개요
second_title: Aspose.Words 에 대한 C++
articleTitle: 테이블 개요
linktitle: 테이블 개요
description: "셀,행,열과 같은 테이블 및 해당 구성 요소로 작업 Aspose.Words 에 대한 C++. 테이블 작업 방법 C++."
type: docs
weight: 10
url: /ko/cpp/table-overview/
---

Aspose.Words 이 라이브러리는 그러한 문제를 표준화된 프로그래밍 인터페이스를 제공함으로써 해결합니다. – PDF, HTML,다른 Microsoft Word 형식 및 기타-다음과 같은 방법으로 테이블을 지원합니다:

* 문서의 테이블은 열기/저장 및 변환 중에 보존됩니다
* 테이블,콘텐츠 및 해당 서식을 편집한 다음 변경 내용을 테이블을 지원하는 형식으로 파일로 내보낼 수 있습니다

이 문서에서는 다음에서 지원하는 테이블 구조,셀,행 및 열에 대해 자세히 알아봅니다 Aspose.Words,그리고 그러한 테이블로 작업하는 세부 사항.

## 테이블 구조

이미 언급했듯이 표는 다음과 같은 요소로 구성됩니다 **Cell**, **Row** 그리고 **Column**. 이 개념은 문서 형식에 관계없이 모든 테이블에 공통적으로 적용됩니다.

이것은 테이블의 일반적인 예입니다. Microsoft Word 문서:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### 테이블 노드

로드된 문서의 테이블 Aspose.Words 수입되는 **Table node**. 이 테이블은:

- 주요 텍스트
- 주석 또는 각주와 같은 인라인 스토리
- 테이블이 다른 테이블 내에 중첩된 셀

{{% alert color="primary" %}}

테이블은 다른 테이블 내부에 어떤 깊이에도 중첩 될 수 있습니다.

{{% /alert %}}

### 테이블 내용

테이블 노드는 실제 콘텐츠를 포함하지 않습니다.대신,콘텐츠를 구성하는 다른 노드들을 위한 컨테이너입니다.:

- **Table** 많은 것을 포함합니다 **Row** 노드 이 테이블은 모든 일반적인 노드 요소를 제공하므로 문서에서 테이블을 자유롭게 이동,수정 및 제거 할 수 있습니다.
- **Row** 단일 테이블 행을 나타내며 많은 테이블 행을 포함합니다 **Cell** 노드 또한, **Row** 높이 및 선형과 같이 행 표시 방법을 정의하는 요소를 제공합니다.
- **Cell** 표에 보이는 실제 내용을 포함하고 있는 것은 **Paragraph** 그리고 다른 블록 레벨 노드. 또한 셀에는 중첩 테이블이 포함될 수 있습니다.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

다음을 사용하여 문서에서 테이블 노드의 구조를 확인할 수 있습니다 **DocumentExplorer**.

{{% /alert %}}

### 테이블 뒤에 빈 단락

위의 그림은 문서에 두 개의 셀로 구성된 여러 행의 테이블이 포함되어 있음을 보여줍니다. 두 셀 각각에는 셀의 서식이 지정된 텍스트의 컨테이너인 단락이 포함됩니다.

또한 문서에서 두 개의 연속 테이블을 분리하려면 테이블 뒤에 적어도 하나의 빈 단락이 필요하다는 점도 주목할 가치가 있습니다. 그런 단락이 없으면 연속적인 테이블이 하나로 합쳐질 것입니다. 이 동작은 둘 다 동일합니다 Microsoft Word 그리고 Aspose.Words.

그 안에 Aspose.Words,테이블과 관련된 모든 클래스와 속성은 [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/) 네임스페이스

## 또한 참조

* [Aspose.Words 문서 개체 모델(DOM)](/words/cpp/aspose-words-document-object-model/)
* [문서의 노드의 논리적 수준](/words/cpp/logical-levels-of-nodes-in-a-document/)