---
title: Java에서 필드 업데이트
second_title: Aspose.WordsJava
articleTitle: 필드 업데이트
linktitle: 필드 업데이트
description: "Java에서 필드를 업데이트하는 방법을 알아봅니다. 프로그래밍 방식으로 필드 업데이트 또는JavaAPI를 사용하여 자동 필드 업데이트 사용"
type: docs
weight: 30
url: /ko/java/update-field/
timestamp: 2024-01-27-14-07-04
---

일반적으로Microsoft Word에 삽입된 필드에는 이미 최신 값이 포함되어 있습니다. 예를 들어 필드가 수식 또는 페이지 번호인 경우 지정된 문서 버전에 대한 올바른 계산 값이 포함됩니다. 그러나 두 문서를 병합하거나 데이터로 채우는 것과 같은 필드로 문서를 생성하거나 수정하는 응용 프로그램이 있는 경우 문서가 유용하도록 모든 필드를 업데이트해야 합니다.

## 필드 업데이트 방법

문서가 로드되면Aspose.Words은Microsoft Word의 동작을 모방하며 필드를 자동으로 업데이트하는 옵션이 꺼집니다. 그 행동은 다음과 같이 요약될 수 있습니다.:

- 문서를 열거나 저장할 때 필드는 그대로 유지됩니다
- 문서의 모든 필드를 명시적으로 업데이트할 수 있습니다(예:필요한 경우`TOC`다시 작성).
- PDF또는XPS로 인쇄/렌더링할 때 머리글/바닥글의 페이지 번호 매기기와 관련된 필드가 업데이트됩니다
- Mail Merge을 실행하면 모든 필드가 자동으로 업데이트됩니다

### 프로그래밍 방식으로 필드 업데이트

전체 문서의 필드를 명시적으로 업데이트하려면[UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields)메서드를 호출하기만 하면 됩니다. 문서의 일부에 포함된 필드를 업데이트하려면[Range](https://reference.aspose.com/words/java/com.aspose.words/range/)개체를 가져와[UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields)메서드를 호출합니다. Aspose.Words에서는 다음과 같이 문서 트리의 모든 노드에 대해**Range**를 얻을 수 있습니다[Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), 그 밖의 [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange)속성을 사용합니다. [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update)메서드를 호출하여 단일 필드의 결과를 업데이트할 수 있습니다.

### 렌더링 중 페이지 관련 필드 자동 업데이트

예를 들어PDF또는XPS로 고정 페이지 형식으로 문서 변환을 실행하면Aspose.Words이 문서의 머리글/바닥글에 있는 페이지 레이아웃 관련 필드`PAGE`,`PAGEREF`를 자동으로 업데이트합니다. 이 동작은 문서를 인쇄할 때Microsoft Word동작을 모방합니다.

문서의 다른 모든 필드를 업데이트하려면 문서를 렌더링하기 전에[UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields)을 호출해야 합니다.

다음 예제에서는 문서를 렌더링하기 전에 모든 필드를 업데이트하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Mail Merge동안 자동 필드 업데이트

Mail merge을 실행하면 문서의 모든 필드가 자동으로 업데이트됩니다. Mail Merge이 필드 업데이트의 경우이기 때문입니다. 프로그램은Mail Merge필드를 발견하고 그 결과를 업데이트해야 합니다.이는 데이터 소스에서 값을 가져와 필드에 삽입하는 것을 포함합니다. 물론 논리는 더 복잡합니다.예를 들어 문서/mail merge영역의 끝에 도달했지만 병합해야 할 추가 데이터가 있을 때 영역을 복제하고 새로운 필드 세트를 업데이트해야합니다.

## 더티 속성이 있는 필드 업데이트

문서를 열 때 지정한 필드만 새로 고치는 필드 수준 특성입니다. 다음 번에 문서를 열 때만 이 필드를 새로 고치도록MS단어를 알려줍니다. LoadOptions을 사용할 수 있습니다.setUpdateDirtyFields()속성을 사용하여 필드를 더티 특성으로 업데이트할지 여부를 지정합니다. 때LoadOptions의 값입니다.setUpdateDirtyFields()은*true*로 설정되어 있으며,`Field.IsDirty`또는`FieldChar.IsDirty`속성에 대해*true*값을 갖는 모든 필드는 문서 로드 시 업데이트됩니다.

다음 코드 예제에서는 더티 특성이 있는 필드를 업데이트하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## 저장하기 전에LastSavedTime속성 업데이트

문서를 저장할 때 해당 기본 제공 문서 속성[LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime)을 업데이트할지 여부를[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty)속성을 사용할 수 있습니다.

다음 코드 예제에서는 이 속성을 업데이트하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
