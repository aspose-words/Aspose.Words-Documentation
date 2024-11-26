---
title: Mail Merge작업 전 또는 작업 중 정리
second_title: Aspose.WordsJava
articleTitle: Mail Merge작업 전 또는 작업 중 정리
linktitle: Mail Merge작업 전 또는 작업 중 정리
type: docs
description: "Mail Merge작업을 수행하기 전에 병합 필드를 삭제하거나Java를 사용하여Mail Merge작업을 수행하는 동안 사용하지 않는 영역을 제거하는 것과 같은 다른 정리 및 제거 옵션을 적용합니다."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /ko/java/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words을 사용하면Mail Merge작업을 수행하기 전에 병합 필드 삭제 또는Mail Merge작업 중에 사용하지 않는 영역 제거와 같은 다양한 정리 및 제거 옵션을 적용할 수 있습니다. 이 섹션에서는 병합된 필드를 삭제하는 방법과 제거 옵션을 설정하는 방법에 대해 설명합니다.

## 병합된 필드 삭제

다른 사람이 만든 긴 템플릿을 사용하는 경우Mail Merge작업을 수행하기 전에 해당 템플릿에 이미 있는 모든 병합 필드를 삭제할 수 있습니다. Mail Merge작업을 실행하지 않고 문서에서 모든 병합 필드를 삭제하려는 경우[DeleteFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#deleteFields)방법을 사용할 수 있습니다. 이 메서드는[CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getCleanupOptions)속성의 제거 옵션의 영향을 받지 않으며 이를 실행하면 포함된 필드나 빈 단락이 아닌 병합된 필드만 제거됩니다.

다음 코드 예제에서는Mail Merge작업을 실행하지 않고 템플릿에서 모든 병합 필드를 삭제하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-DeleteFields.java" >}}

## `Removing`옵션 설정

Aspose.Words을 사용하면 제거 옵션을 사용하여Mail Merge작업 중에 템플릿에서 병합되지 않은 필드,영역 및 단락을 제거할 수 있습니다.

[MailMergeCleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/)열거형과 함께**CleanupOptions**속성을 사용하여 제거 옵션을 설정합니다. 다음 옵션을 선택하여 제거할 항목을 지정합니다(둘 이상을 결합할 수 있음).:

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

별도의 데이터 원본을 사용하여 데이터를 병합하는 경우 해당 제거 옵션은Mail Merge실행 메서드의 마지막 호출에서만 활성화됩니다.

{{% /alert %}}

### 빈 단락 제거

Mail Merge프로세스에서 병합되지 않은 모든 병합 필드를 제거하면 병합 필드만 포함된 단락이 비어 있습니다. 그 빈 단락은 불필요한 공간을 추가하고 생성 된 보고서의 모양을 변경할 수 있습니다. Mail Merge작업 중에 단락이 있는 두 가지 상황에 직면할 수 있습니다:

1. Mail Merge필드는 빈 데이터와 병합됩니다.
2. 병합 필드는 사용되지 않으며 제거됩니다.

두 경우 모두**RemoveEmptyParagraphs**옵션은 문서에서 빈 단락을 자동으로 제거합니다. 또한 단락의 나머지 부분이 비어 있으면`TableStart`및TableEnd병합 필드가 제거됩니다.

다음 코드 예제에서는 빈 단락을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyParagraphs.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### 사용하지 않는 영역 제거

Aspose.Words의 이전 버전에서는Mail Merge작업 중에 빈Mail Merge영역이 문서에서 자동으로 제거되었습니다. 아스포스의 최신 버전으로단어,빈Mail Merge영역은 기본적으로Mail Merge작업 후에 남아 있습니다. 그러나**RemoveUnusedRegions**옵션을 사용하여Mail Merge작업 중에 사용하지 않는Mail Merge영역을 제거할 수 있습니다. 예를 들어 문서에서 사용되지 않는 영역으로 이어지는 데이터 테이블이 없는 빈 데이터 원본과 문서를 병합할 수 있습니다.

다음 코드 예제에서는 사용하지 않는 병합 영역을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnmergedRegions.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**참고**

### 사용하지 않는 필드 제거

Aspose.Words를 사용하면**RemoveUnusedFields**플래그를**CleanupOptions**에 할당하여 사용하지 않는Mail Merge필드를 제거할 수 있습니다. 이 옵션은 데이터 원본에 해당 데이터가 없는 병합 필드를 제거합니다.

다음 코드 예제에서는Mail Merge작업 중에 문서에서 사용하지 않는 병합 필드를 자동으로 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnusedFields.java" >}}

### 포함 필드 제거

병합 필드는**IF**필드 또는 수식 필드와 같은 다른 필드 내에 포함될 수 있습니다. 병합 필드가 문서에서 병합되거나 제거될 때 이 외부 필드를 제거합니다.

다음 코드 예제에서는 문서에서 병합 필드가 포함된 필드를 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveContainingFields.java" >}}

**참고**

### 빈 테이블 행 제거

Aspose.Words를 사용하면**RemoveEmptyTableRows**플래그를**CleanupOptions**에 할당하여 빈 테이블 행을 제거할 수 있습니다. 이 옵션은 빈 병합 필드가 포함된 테이블 행을 제거합니다.

다음 코드 예제에서는 문서에서Mail Merge영역이 포함된 빈 테이블 행을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyTableRows.java" >}}
