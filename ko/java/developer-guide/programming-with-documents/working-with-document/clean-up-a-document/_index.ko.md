---
title: Java에서 문서 정리
second_title: Aspose.WordsJava
articleTitle: 문서 정리
linktitle: 문서 정리
description: "사용하지 않거나 중복된 정보를 제거하여 출력 크기 및 처리 시간을 줄입니다. Java을 사용하여 사용하지 않는 스타일,사용하지 않는 기본 제공 스타일,중복 스타일 또는 사용하지 않는 목록을 제거합니다."
type: docs
weight: 30
url: /ko/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

경우에 따라 출력 문서의 크기와 처리 시간을 줄이기 위해 사용하지 않거나 중복된 정보를 제거해야 할 수도 있습니다.

스타일이나 목록과 같이 사용하지 않는 데이터를 찾아서 제거하거나 정보를 수동으로 복제 할 수 있지만Aspose.Words에서 제공하는 기능과 기능을 사용하여이 작업을 수행하는 것이 훨씬 편리합니다.

[CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/)클래스를 사용하면 문서 정리 옵션을 지정할 수 있습니다. 문서에서 중복 스타일 또는 사용하지 않는 스타일 또는 목록을 제거하려면[Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup)방법을 사용할 수 있습니다.

## 문서에서 사용하지 않는 정보 제거

[UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles)및[UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles)속성을 사용하여"사용되지 않음"으로 표시된 스타일을 검색 및 제거할 수 있습니다.

[UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists)속성을 사용하여"사용되지 않음"으로 표시된 목록 및 목록 정의를 검색 및 제거할 수 있습니다.

다음 코드 예제에서는 문서에서 사용하지 않는 스타일만 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## 문서에서 중복 정보 제거

[DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle)속성을 사용하여 모든 중복 스타일을 원래 스타일로 대체하고 문서에서 중복을 제거할 수도 있습니다.

다음 코드 예제에서는 문서에서 중복 스타일을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
