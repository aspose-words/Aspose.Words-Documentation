---
title: 사용자 정의 Field Properties
second_title: Aspose.Words 제품정보 Java
articleTitle: 사용자 정의 Field Properties
linktitle: 사용자 정의 Field Properties
description: "필드 속성을 사용자 정의하는 방법 알아보기 Java· Rename 병합 필드를 호출하거나 분리기 노드없이 필드에 결과를 얻을 Java·"
type: docs
weight: 27
url: /ko/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 다양한 필드 속성과 프로그래밍 가능한 상호 작용을 제공합니다. 이 문서에서는 필드 속성과 작업의 기본 원리를 이해하기 때문에 예를 몇 가지를 살펴볼 것입니다. 해당 클래스의 각 필드 유형에 대한 전체 속성 목록을 볼 수 있습니다.

## Field Property 업데이트

때때로 사용자는 필드 속성의 값을 변경해야합니다. 예를 들어, 업데이트 [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) 호텔 위치 `AUTHOR` 필드 또는 변경 [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) 호텔 위치 `MERGEFIELD` 이름 *

다음 코드 예제는 Word 문서에서 병합 필드를 이름을 변경하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## 현장 표시 결과

Aspose.Words 필드 분리기 노드가 없는 필드의 결과를 얻는 속성을 제공합니다. 우리는이 "fake result"또는 표시 결과라고 부릅니다. MS Word는 플라이의 필드의 값을 계산하여 문서에 표시하지만 문서 모델에 그러한 값이 없습니다.

다음과 같은 코드 예제의 사용법을 보여줍니다 [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) 이름:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
