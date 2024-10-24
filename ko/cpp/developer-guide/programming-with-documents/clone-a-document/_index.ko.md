---
title: 문서 복제 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서 복제
linktitle: 문서 복제
type: docs
description: "사용하여 동일한 복사본을 얻을 수있는 문서를 복제 C++. 복사본을 만들 때 원본 문서의 노드 및 속성이 복제됩니다."
weight: 70
url: /ko/cpp/clone-a-document/
---

문서 복제는 원본 문서의 동일한 복사본을 만드는 프로세스로 성능을 향상시키고 잠재적인 메모리 누수를 방지할 수 있습니다.

이 문서에서는 문서 복제의 주요 사용 사례와 다음을 사용하여 문서 복제를 만드는 방법을 설명합니다 Aspose.Words.

## 문서 복제 작업

복제 작업을 사용하면 매번 파일에서 문서를 로드하고 구문 분석할 필요가 없으므로 문서를 만드는 프로세스를 더 빠르게 수행할 수 있습니다.

문서의 복제를 만든 후,당신은 그것을 편집하고 다른 작업을 수행 할 수 있습니다,예를 들어,원본 문서와 비교,추가 또는 다른 문서에 삽입. 복제된 요소 또는 해당 콘텐츠를 다른 문서에 삽입하기 전에 수정할 수도 있습니다.

## 문서 복제 만들기

Aspose.Words 를 사용하여 문서를 복제 할 수 있습니다 [Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/) 문서의 깊은 복사본을 수행하고 반환하는 메서드입니다. 즉,그것의 전체 복사본을 얻을 것 이다 DOM. 그 `Clone` 방법은 문서 생성 속도를,당신은 당신의 문서의 사본을 얻을 수있는 코드의 한 줄이 필요합니다.

복제는 원본과 동일한 내용을 가진 새 문서를 생성하지만 원본 문서의 각 고유 한 복사본을 만듭니다. [nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node). 노드를 사용하여 문서 노드에 복제 작업을 적용할 수도 있습니다 [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/) 메서드-자식 노드가 있거나없는 복합 문서 노드를 복제 할 수 있습니다.

{{% alert color="primary" %}}

복제 방법을 적용 할 때 모든 문서 속성이 복제됩니다.

{{% /alert %}}

다음 코드 예제에서는 문서를 복제하고 해당 문서에 섹션을 복제하는 방법을 보여 줍니다:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}
