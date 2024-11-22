---
title: 현장 업데이트 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 공지사항
linktitle: 공지사항
description: "현장 업데이트 방법 알아보기 Java· Update field programmatically 또는 사용 자동 필드 업데이트 사용 Java API"
type: docs
weight: 30
url: /ko/java/update-field/
timestamp: 2024-01-27-14-07-04
---

일반적으로 삽입 된 필드 Microsoft Word 이미 날짜 값에 포함. 예를 들어, 필드가 공식 또는 페이지 번호 인 경우, 문서의 주어진 버전에 대한 정확한 계산 값을 포함합니다. 그러나 두 개의 문서와 같은 필드와 문서를 생성하거나 수정하는 응용 프로그램이 있거나 데이터로 변환 한 경우, 이상적으로 모든 필드는 유용한 문서에 업데이트해야합니다.

## 현장 업데이트 방법

문서가 로드되면, Aspose.Words mimics의 행동 Microsoft Word 자동 업데이트 필드에 옵션이 꺼져 있습니다. 동작은 다음과 같이 요약될 수 있습니다:

- 문서가 열릴 때 필드가 그대로 남아
- 문서의 모든 필드를 명시적으로 업데이트 할 수 있습니다, 예를 들어, 재건 `TOC` 당신은 할 때
- PDF로 인쇄/ 렌더링할 때 XPS headers/footers의 페이지 번호와 관련된 필드가 업데이트됩니다
- 실행할 때 Mail Merge 모든 필드는 자동으로 업데이트됩니다

### 업데이트 필드 프로그래밍

전체 문서의 필드를 명시적으로 업데이트하려면 단순히 호출 [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) 방법. 문서의 일부에 포함 된 필드를 업데이트하려면 [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) 객체와 호출 [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) 방법. 내 계정 Aspose.Words, 당신은 얻을 수 있습니다 **Range** 문서 트리의 노드에 대해 [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), 기타. [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) 호텔 위치 단일 필드의 결과를 업데이트 할 수 있습니다. [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) 방법.

### Rendering 동안 Page-Related Field의 자동 업데이트

문서의 변환을 고정 페이지 형식으로 실행할 때 e.g. to PDF or XPS, 다음 것 Aspose.Words 자동 업데이트 페이지 레이아웃 관련 필드 `PAGE`, `PAGEREF` 문서의 헤더/footers에서 찾을 수 있습니다. 이 행동은 행동의 Microsoft Word 문서 인쇄시

문서의 다른 모든 필드를 업데이트하려면 전화해야합니다. [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) 문서 렌더링하기 전에.

다음 예제는 문서를 렌더링하기 전에 모든 필드를 업데이트하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### 자동 현장 업데이트 Mail Merge

실행할 때 mail merge· 문서의 모든 필드는 자동으로 업데이트됩니다. 이것은 때문에 Mail Merge 필드 업데이트의 경우입니다. 이 프로그램은 만남 Mail Merge 필드와 그 결과를 업데이트 할 필요가, 이는 데이터 소스에서 값을 잡고 필드에 삽입. 논리는, 물론, 더 복잡, 예를 들어, 문서의 끝 때 /mail merge 지역이 도달하지만 여전히 더 많은 데이터가 합병되고, 그 지역은 중복되고 새로운 필드의 업데이트가 필요합니다.

## Update Fields having 더러운 Attribute

w:dirty는 문서가 열릴 때만 지정하는 필드 레벨 속성입니다. MS Word는 다음 문서를 열 때만 이 필드를 새로 고침합니다. LoadOptions.setUpdateDirtyFields() 속성을 사용하여 더러운 속성으로 필드를 업데이트할 수 있습니다. LoadOptions.setUpdateDirtyFields()의 값이 설정될 때 *true*· 모든 분야 *true* 계정 정보 `Field.IsDirty` 또는 `FieldChar.IsDirty` 속성은 문서 부하에 업데이트됩니다

다음 코드 예제는 더러운 속성을 가진 필드를 업데이트하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## LastSavedTime 속성 업데이트하기 전에

당신은 사용할 수 있습니다 [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) 해당 내장 문서 속성 업데이트 여부 [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) 문서 저장시.

다음 코드 예제는이 속성을 업데이트하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
