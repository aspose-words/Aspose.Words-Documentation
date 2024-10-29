---
title: 전에 또는 동안 청소 Mail Merge 운영
second_title: Aspose.Words 에 대한 C++
articleTitle: 전에 또는 동안 청소 Mail Merge 운영
linktitle: 전에 또는 동안 청소 Mail Merge 운영
type: docs
description: "다음을 수행하기 전에 병합 필드 삭제와 같은 다양한 정리 및 제거 옵션을 적용하십시오 mail merge 작업 또는 동안 사용되지 않는 영역을 제거 mail merge 작동."
keywords: "cleanup options mail merge c#"
weight: 10
url: /ko/cpp/clean-up-before-or-during-mail-merge/
---

Aspose.Words 를 수행하기 전에 병합 필드 삭제와 같은 다양한 청소 및 제거 옵션을 적용 할 수 있습니다. mail merge 작업 또는 동안 사용되지 않는 영역을 제거 mail merge 작동. 이 섹션에서는 병합된 필드를 삭제하는 방법과 제거 옵션을 설정하는 방법에 대해 설명합니다.

## 병합된 필드 삭제

다른 사람이 만든 긴 서식 파일을 사용하는 경우 해당 서식 파일에 이미 있는 병합 필드를 모두 삭제하고 다음을 수행할 수 있습니다 mail merge 작동. 당신은 사용할 수 있습니다 [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) 당신이 실행하지 않고 문서에서 모든 병합 필드를 삭제하려는 경우 방법 mail merge 작동. 이 메서드는 제거 옵션의 영향을 받지 않습니다 [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) 속성 및 실행은 병합 된 필드 만 제거하고 포함 된 필드 또는 빈 단락은 제거합니다.

다음 코드 예제에서는 템플릿을 실행하지 않고 템플릿에서 모든 병합 필드를 삭제하는 방법을 보여 줍니다 mail merge 운영:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## 설정 `Removing` 옵션

Aspose.Words 템플릿에서 병합되지 않은 필드,영역 및 단락을 제거할 수 있습니다. mail merge 제거 옵션을 사용한 작업.

사용 **CleanupOptions** 재산과 함께 [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/) 제거 옵션을 설정하는 열거형. 다음 옵션을 선택하여 제거할 항목을 지정합니다(둘 이상을 결합할 수 있음).:

* 빈 단락 제거
* 사용하지 않는 영역 제거
* 사용하지 않는 필드 제거
* 포함 필드 제거
* 정적 필드 제거
* 빈 테이블 행 제거

다음 조건 중 하나에서 병합 필드를 병합되지 않은 것으로 간주할 수 있습니다:

1. 데이터 원본의 병합 필드에 열 또는 매핑 필드가 없는 경우
2. 데이터 원본의 병합 필드에 매핑 필드가 포함되어 있지만 데이터가 널인 경우

{{% alert color="primary" %}}

별도의 데이터 원본을 사용하여 데이터를 병합하는 경우 해당 제거 옵션은 마지막 호출에서만 사용할 수 있습니다. mail merge 실행 방법.

{{% /alert %}}

### 빈 단락 제거

병합 필드만 포함하는 단락은 mail merge 프로세스는 병합되지 않은 모든 병합 필드를 제거합니다. 그 빈 단락은 불필요한 공간을 추가하고 생성 된 보고서의 모양을 변경할 수 있습니다. 당신은 동안 단락 두 가지 상황에 직면 할 수있다 mail merge 운영:

1. 그 mail merge 필드는 빈 데이터와 병합됩니다.
2. 병합 필드는 사용되지 않으며 제거됩니다.

두 상황 모두에서 **RemoveEmptyParagraphs** 옵션은 자동으로 문서에서 빈 단락을 제거합니다. 또한,그것은 제거 `TableStart` 그리고 TableEnd 단락의 나머지 부분이 비어 있으면 필드를 병합합니다.

다음 코드 예제에서는 빈 단락을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 사용하지 않는 필드 제거

Aspose.Words 사용하지 않는 모든 것을 제거 할 수 있습니다 mail merge 필드를 할당하여 **RemoveUnusedFields** 플래그 **CleanupOptions**. 이 옵션은 데이터 원본에 해당 데이터가 없는 병합 필드를 제거합니다.

다음 코드 예제에서는 사용하지 않는 병합 필드를 문서에서 자동으로 제거하는 방법을 보여 줍니다 mail merge 운영:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### 포함 필드 제거

병합 필드는 다음과 같은 다른 필드 내에 포함될 수 있습니다 **IF** 필드 또는 수식 필드. 병합 필드가 문서에서 병합되거나 제거될 때 이 외부 필드를 제거합니다.

다음 코드 예제에서는 문서에서 병합 필드가 포함된 필드를 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**참고**

### 빈 테이블 행 제거

Aspose.Words 할당하여 빈 테이블 행을 제거 할 수 있습니다 **RemoveEmptyTableRows** 플래그 **CleanupOptions**. 이 옵션은 빈 병합 필드가 포함된 테이블 행을 제거합니다.

다음 코드 예제에서는 다음을 포함하는 빈 테이블 행을 제거하는 방법을 보여 줍니다 mail merge 문서의 영역:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
