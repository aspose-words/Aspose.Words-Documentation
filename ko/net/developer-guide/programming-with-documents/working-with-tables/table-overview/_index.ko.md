---
title: 테이블 개요
second_title: .NET용 Aspose.Words
articleTitle: 테이블 개요
linktitle: 테이블 개요
description: ".NET용 Aspose.Words의 셀, 행, 열과 같은 테이블 및 해당 구성 요소로 작업합니다. C#의 테이블로 작업하는 방법."
type: docs
weight: 10
url: /ko/net/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words는 PDF, HTML, 다양한 Microsoft Word 형식 등 다양한 형식의 문서를 서버측에서 처리하도록 설계된 클래스 라이브러리이며 다음과 같은 방식으로 테이블을 지원합니다

* 문서의 테이블은 열기/저장 및 변환 중에 보존됩니다
* 표, 내용, 서식을 편집한 다음 변경 사항을 표를 지원하는 형식의 파일로 내보낼 수 있습니다

이 기사에서는 Aspose.Words에서 지원하는 테이블 구조, 셀, 행 및 열에 대해 자세히 알아보고 이러한 테이블 작업에 대한 세부 정보를 알아봅니다.

## 테이블 구조

이미 언급했듯이 테이블은 **Cell**, **Row** 및 **Column**과 같은 요소로 구성됩니다. 이는 문서 형식에 관계없이 일반적으로 모든 테이블에 공통되는 개념입니다.

다음은 Microsoft Word 문서에 있는 테이블의 일반적인 예입니다

![tables-overview-aspose-words-net-1](/words/net/table-overview/tables-overview-1.png)

### 테이블 노드

Aspose.Words에 로드된 모든 문서의 테이블을 **테이블 노드**로 가져옵니다. 테이블은 다음의 하위 항목으로 찾을 수 있습니다

- 본문
- 댓글이나 각주와 같은 인라인 스토리
- 테이블이 다른 테이블 내에 중첩되어 있는 경우의 셀

{{% alert color="primary" %}}

테이블은 다른 테이블 안에 어떤 깊이로든 중첩될 수 있습니다.

{{% /alert %}}

### 테이블 내용

테이블 노드에는 실제 콘텐츠가 포함되어 있지 않습니다. 대신 콘텐츠를 구성하는 다른 노드에 대한 컨테이너입니다

- **Table**에는 많은 **Row** 노드가 포함되어 있습니다. 테이블은 일반적인 노드 요소를 모두 제공하므로 문서에서 테이블을 자유롭게 이동, 수정 및 제거할 수 있습니다.
- **Row**는 단일 테이블 행을 나타내며 많은 **Cell** 노드를 포함합니다. 또한 **Row**는 높이, 정렬 등 행 표시 방법을 정의하는 요소를 제공합니다.
- **Cell**는 테이블에 표시되는 true 콘텐츠를 포함하며 **Paragraph** 및 기타 블록 수준 노드로 구성됩니다. 또한 셀에는 중첩된 테이블이 포함될 수 있습니다.

![tables-overview-aspose-words-net-2](/words/net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

**DocumentExplorer**를 사용하여 문서의 테이블 노드 구조를 확인할 수 있습니다.

{{% /alert %}}

### 표 뒤의 빈 단락

위 그림은 문서에 두 개의 셀로 구성된 여러 행의 테이블이 포함되어 있음을 보여줍니다. 두 셀 각각에는 셀의 서식 있는 텍스트에 대한 컨테이너인 단락이 포함되어 있습니다.

문서에서 두 개의 연속된 표를 분리하려면 표 뒤에 최소한 하나의 빈 단락이 필요하다는 점도 주목할 가치가 있습니다. 이러한 단락이 없으면 연속된 테이블이 하나로 결합됩니다. 이 동작은 Microsoft Word와 Aspose.Words 모두에서 동일합니다.

Aspose.Words에서는 테이블과 관련된 모든 클래스와 속성이 [Aspose.Words.Tables](https://reference.aspose.com/words/net/aspose.words.tables/) 네임스페이스에 포함되어 있습니다.

## 또한보십시오

* [Aspose.Words Document Object Model (DOM)](/words/ko/net/aspose-words-document-object-model/)
* [문서에 있는 노드의 논리적 수준](/words/ko/net/logical-levels-of-nodes-in-a-document/)
