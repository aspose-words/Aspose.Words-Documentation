---
title: 필드 속성 사용자 지정
second_title: Aspose.WordsJava
articleTitle: 필드 속성 사용자 지정
linktitle: 필드 속성 사용자 지정
description: "Java에서 필드 속성을 사용자 지정하는 방법을 알아봅니다. 병합 필드의 이름을 바꾸거나Java에 구분 노드가 없는 필드의 결과를 얻습니다."
type: docs
weight: 27
url: /ko/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words은 다양한 필드 속성과 프로그래밍 방식으로 상호 작용하는 기능을 제공합니다. 이 기사에서는 필드 속성 작업의 기본 원리를 이해할 수 있도록 몇 가지 예를 살펴볼 것입니다. 해당 클래스의 각 필드 유형에 대한 전체 속성 목록을 볼 수 있습니다.

## 필드 속성 업데이트

때때로 사용자는 필드 속성의 값을 변경해야 합니다. 예를 들어`AUTHOR`필드의[AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName)속성을 업데이트하거나`MERGEFIELD`필드의[FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName)속성을 변경합니다.

다음 코드 예제에서는 단어 문서에서 병합 필드의 이름을 바꾸는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## 필드 표시 결과

Aspose.Words필드 구분 노드가 없는 필드에 대한 필드 결과를 가져오는 속성을 제공합니다. 우리는 이것을"가짜 결과"또는 표시 결과라고 부릅니다.MS워드는 필드의 값을 즉시 계산하여 문서에 표시하지만 문서 모델에는 그러한 값이 없습니다.

다음 코드 예제에서는[DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult)속성의 사용법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
