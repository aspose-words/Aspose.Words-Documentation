---
title: 필드 속성을 찾는 방법
second_title: Aspose.WordsJava
articleTitle: 필드 속성 찾기
linktitle: 필드 속성 찾기
description: "Java에서 필드 코드 및 필드 결과와 같은 일부 필드 속성을 찾는 방법"
type: docs
weight: 25
url: /ko/java/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)를 사용하여 삽입되는 필드입니다.[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)은[Field](https://reference.aspose.com/words/java/com.aspose.words/field/)객체를 반환합니다. 이것은 필드의 이러한 속성을 빠르게 찾을 수 있는 유용한 방법을 제공하는 파사드 클래스입니다.

다음 코드 예제에서는 필드 코드 및 필드 결과를 찾는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

참고 문서에서 병합 필드의 이름만 찾는 경우 대신 기본 제공 메서드[GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames)을 사용할 수 있습니다.

다음 코드 예제에서는 문서에서 모든 병합 필드의 이름을 가져오는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
