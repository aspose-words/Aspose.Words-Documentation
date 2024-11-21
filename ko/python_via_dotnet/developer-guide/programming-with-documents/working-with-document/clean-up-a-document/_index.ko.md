---
title: Python에서 문서 정리
second_title: Python via .NET용 Aspose.Words
articleTitle: 문서 정리
linktitle: 문서 정리
description: "Python를 사용하여 사용되지 않거나 중복된 정보를 제거하여 출력 크기와 처리 시간을 줄입니다. 사용하지 않는 스타일, 사용하지 않는 내장 스타일, 중복된 스타일 또는 사용하지 않는 목록을 제거합니다."
type: docs
weight: 30
url: /ko/python-net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

때로는 출력 문서의 크기와 처리 시간을 줄이기 위해 사용되지 않거나 중복된 정보를 제거해야 할 수도 있습니다.

스타일이나 목록 등 사용하지 않는 데이터를 찾아서 제거하거나 정보를 수동으로 복제할 수 있지만 Aspose.Words에서 제공하는 기능을 사용하면 훨씬 더 편리할 것입니다.

[CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) 클래스를 사용하면 문서 정리 옵션을 지정할 수 있습니다. 중복된 스타일을 제거하거나 문서에서 사용되지 않은 스타일이나 목록만 제거하려면 [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) 방법을 사용할 수 있습니다.

## 문서에서 사용하지 않는 정보 제거

[unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) 및 [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) 속성을 사용하여 "사용되지 않음"으로 표시된 스타일을 감지하고 제거할 수 있습니다.

[unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) 속성을 사용하여 "사용되지 않음"으로 표시된 목록 및 목록 정의를 감지하고 제거할 수 있습니다.

다음 코드 예제에서는 문서에서 사용되지 않는 스타일만 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## 문서에서 중복 정보 제거

[duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) 속성을 사용하여 모든 중복 스타일을 원본 스타일로 대체하고 문서에서 중복을 제거할 수도 있습니다.

다음 코드 예제에서는 문서에서 중복된 스타일을 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
