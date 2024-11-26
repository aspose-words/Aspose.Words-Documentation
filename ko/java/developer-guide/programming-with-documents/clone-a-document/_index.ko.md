---
title: Java에서 문서 복제
second_title: Aspose.WordsJava
articleTitle: 문서 복제
linktitle: 문서 복제
type: docs
description: "동일한 복사본을 얻기 위해 문서를 복제합니다. 복사본을 만들 때 원본 문서의 노드와 속성은Java을 사용하여 복제됩니다."
weight: 70
url: /ko/java/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

문서 복제는 원본 문서의 동일한 복사본을 만드는 프로세스로 성능을 향상시키고 잠재적인 메모리 누수를 방지할 수 있습니다.

이 문서에서는 문서 복제의 주요 사용 사례와Aspose.Words을 사용하여 문서 복제를 만드는 방법을 설명합니다.

## 문서 복제 작업

복제 작업을 사용하면 매번 파일에서 문서를 로드하고 구문 분석할 필요가 없으므로 문서를 만드는 프로세스를 더 빠르게 수행할 수 있습니다.

문서의 복제를 만든 후,당신은 그것을 편집하고 다른 작업을 수행 할 수 있습니다,예를 들어,원본 문서와 비교,추가 또는 다른 문서에 삽입. 복제된 요소 또는 해당 콘텐츠를 다른 문서에 삽입하기 전에 수정할 수도 있습니다.

## 문서 복제 만들기

Aspose.Words는 문서의 깊은 복사본을 수행하고 반환하는[Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone)메서드를 사용하여 문서를 복제할 수 있습니다. 즉,DOM의 전체 복사본을 얻을 것입니다. `Clone`메서드는 문서 생성 속도를 높이고 문서 사본을 얻으려면 한 줄의 코드 만 있으면됩니다.

복제하면 원본과 동일한 내용을 가진 새 문서가 생성되지만 원본 문서의[nodes](https://reference.aspose.com/words/java/com.aspose.words/node/)각각의 고유한 복사본이 생성됩니다. 노드[Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean)메서드를 사용하여 문서 노드에 복제 작업을 적용할 수도 있습니다.

{{% alert color="primary" %}}

복제 방법을 적용 할 때 모든 문서 속성이 복제됩니다.

{{% /alert %}}

다음 코드 예제에서는 문서를 복제하고 해당 문서에 섹션을 복제하는 방법을 보여 줍니다:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
