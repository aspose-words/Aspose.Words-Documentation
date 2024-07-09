---
title: 문서 복제 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서 복제
linktitle: 문서 복제
type: docs
description: "동일한 사본을 얻기 위해 문서를 복제합니다. 원본 문서의 복사, 노드 및 속성을 만들 때 복제 Java·"
weight: 70
url: /ko/java/clone-a-document/
---

문서 복제는 원본 문서의 동일한 사본을 만드는 과정이며 성능 향상 및 잠재적 메모리 누출에서 저장할 수 있습니다.

이 문서는 문서 복제의 주요 사용 사례를 설명하고 문서 복제를 만드는 방법 Aspose.Words·

## Cloning 문서와 작업

clone 작업은 문서를 신속하게 만들 수 있도록 할 수 있습니다.

문서의 복제를 만들기 후에, 당신은 그것을 편집하고 그 위에 다른 가동을 실행할 수 있을 것입니다, 예를 들면, 원본 문서와 비교해, 부록하거나 다른 문서로 삽입하십시오. 다른 문서에 삽입하기 전에 복제 된 요소 또는 내용도 수정할 수 있습니다.

## 문서 복제

Aspose.Words 문서를 사용하여 복제 할 수 있습니다. [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) 문서의 깊은 사본을 수행하고 그것을 반환하는 방법. 다른 말에서, 그것은의 전체 사본을 얻을 것이다 DOM· 더 보기 `Clone` 방법은 문서 생성을 가속화하고 문서의 사본을 얻기 위해 코드의 한 줄 만 필요합니다.

Cloning은 원본과 동일한 내용으로 새 문서를 생성하지만, 원본 문서의 고유 사본과 [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/)· 노드를 사용하여 문서 노드에 복제 작업을 적용할 수 있습니다. [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) 복잡한 복합 문서 노드와 자녀 노드 없이 복제할 수 있는 방법.

{{% alert color="primary" %}}

복제 방법을 적용 할 때 모든 문서 속성은 복제됩니다.

{{% /alert %}}

다음 코드 예제는 문서를 복제하고 그 문서에서 섹션의 복제를 만드는 방법을 보여줍니다:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
