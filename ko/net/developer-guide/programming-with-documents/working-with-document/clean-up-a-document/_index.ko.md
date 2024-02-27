---
title: C#에서 문서 정리
second_title: .NET용 Aspose.Words
articleTitle: 문서 정리
linktitle: 문서 정리
description: "C#를 사용하여 사용되지 않거나 중복된 정보를 제거하여 출력 크기와 처리 시간을 줄입니다. 사용하지 않는 스타일, 사용하지 않는 내장 스타일, 중복된 스타일 또는 사용하지 않는 목록을 제거합니다."
type: docs
weight: 30
url: /ko/net/clean-up-a-document/
---

때로는 출력 문서의 크기와 처리 시간을 줄이기 위해 사용되지 않거나 중복된 정보를 제거해야 할 수도 있습니다.

스타일이나 목록 등 사용하지 않는 데이터를 찾아서 제거하거나 정보를 수동으로 복제할 수 있지만 Aspose.Words에서 제공하는 기능을 사용하면 훨씬 더 편리할 것입니다.

[CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) 클래스를 사용하면 문서 정리 옵션을 지정할 수 있습니다. 중복된 스타일을 제거하거나 문서에서 사용되지 않은 스타일이나 목록만 제거하려면 [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) 방법을 사용할 수 있습니다.

## 문서에서 사용하지 않는 정보 제거

[UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) 및 [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) 속성을 사용하여 "사용되지 않음"으로 표시된 스타일을 감지하고 제거할 수 있습니다.

[UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) 속성을 사용하여 "사용되지 않음"으로 표시된 목록 및 목록 정의를 감지하고 제거할 수 있습니다.

다음 코드 예제에서는 문서에서 사용되지 않는 스타일만 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## 문서에서 중복 정보 제거

[DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) 속성을 사용하여 모든 중복 스타일을 원본 스타일로 대체하고 문서에서 중복을 제거할 수도 있습니다.

다음 코드 예제에서는 문서에서 중복 스타일을 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
