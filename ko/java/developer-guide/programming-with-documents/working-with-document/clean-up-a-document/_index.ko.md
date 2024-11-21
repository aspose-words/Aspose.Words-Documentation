---
title: 문서 정리 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서 정리
linktitle: 문서 정리
description: "출력 크기 및 처리 시간을 줄이기 위해 사용되거나 중복 정보를 제거하십시오. 사용되지 않은 스타일을 제거, 사용되지 않은 내장 스타일, 중복 스타일, 또는 사용되지 않은 목록 사용 Java·"
type: docs
weight: 30
url: /ko/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

때로는 출력 문서 및 처리 시간의 크기를 줄이기 위해 사용되거나 중복 정보를 제거해야합니다.

검색 및 사용되지 않은 데이터를 제거 할 수 있지만 스타일 또는 목록과 같은 또는 수동으로 중복 정보를 제거 할 수 있지만,이 기능을 사용하여이 기능을 사용하는 것이 훨씬 편리합니다. Aspose.Words·

더 보기 [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) class는 문서 청소 옵션을 지정할 수 있습니다. 중복 스타일 또는 사용되지 않은 스타일 또는 문서의 목록 제거하려면 사용할 수 있습니다. [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) 방법.

## 문서에서 사용하지 않는 정보를 제거

당신은 사용할 수 있습니다 [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) · [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) "사용"으로 표시된 스타일을 감지하고 제거 할 수있는 속성.

당신은 사용할 수 있습니다 [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) "unused"로 표시된 목록 및 목록 정의를 감지하고 제거 할 수있는 속성.

다음 코드 예제는 문서에서 사용되지 않은 스타일을 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## 문서에서 중복 정보를 제거

또한 사용할 수 있습니다 [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) 원본을 가진 모든 중복 스타일을 대체하고 문서에서 중복을 제거 할 수있는 속성.

다음 코드 예제는 문서에서 중복 스타일을 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
