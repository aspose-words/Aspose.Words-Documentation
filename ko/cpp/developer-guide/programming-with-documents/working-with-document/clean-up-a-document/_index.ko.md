---
title: 문서 정리 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서 정리
linktitle: 문서 정리
description: "사용하지 않거나 중복된 정보를 제거하여 다음을 사용하여 출력 크기 및 처리 시간을 줄입니다 C++. 사용하지 않는 스타일,사용하지 않는 기본 제공 스타일,중복 스타일 또는 사용하지 않는 목록을 제거합니다."
type: docs
weight: 30
url: /ko/cpp/clean-up-a-document/
---

경우에 따라 출력 문서의 크기와 처리 시간을 줄이기 위해 사용하지 않거나 중복된 정보를 제거해야 할 수도 있습니다.

스타일이나 목록과 같이 사용하지 않는 데이터를 찾아서 제거하거나 정보를 수동으로 복제 할 수 있지만 다음에서 제공하는 기능과 기능을 사용하여이 작업을 수행하는 것이 훨씬 편리합니다 Aspose.Words.

그 [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) 클래스를 사용하면 문서 정리 옵션을 지정할 수 있습니다. 문서에서 중복 스타일 또는 사용하지 않는 스타일 또는 목록을 제거하려면 다음을 사용할 수 있습니다 [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/) 방법

## 문서에서 사용하지 않는 정보 제거

당신은 사용할 수 있습니다 [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) 그리고 [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) "사용되지 않음"으로 표시된 스타일을 검색 및 제거하는 속성입니다.

당신은 사용할 수 있습니다 [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) "사용되지 않음"으로 표시된 목록 및 목록 정의를 검색 및 제거하는 속성입니다.

다음 코드 예제에서는 문서에서 사용하지 않는 스타일만 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## 문서에서 중복 정보 제거

당신은 또한 사용할 수 있습니다 [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) 모든 중복 스타일을 원본 스타일로 대체하고 문서에서 중복을 제거하는 속성입니다.

다음 코드 예제에서는 문서에서 중복 스타일을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
