---
title: 필드에 Custom Formatting 적용
second_title: Aspose.Words 제품정보 Java
articleTitle: 필드에 Custom Formatting 적용
linktitle: 필드에 Custom Formatting 적용
description: "형식 및 평가 필드 결과 사용 Java·"
type: docs
weight: 40
url: /ko/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

때로는 사용자가 필드에 사용자 정의 포맷을 적용해야합니다. 이 문서에서 우리는이 수행 할 수있는 방법의 몇 가지 예를 살펴볼 것입니다.

더 많은 옵션을 배우려면 해당 클래스의 각 필드 유형에 대한 전체 속성 목록을 참조하십시오.

## Field Result에 Custom Formatting 적용 방법

Aspose.Words 제품정보 API 필드의 결과의 사용자 정의 포맷. 구현할 수 있습니다. [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) 필드 결과가 포맷 된 방법을 제어하는 인터페이스. 숫자 형식 스위치, 즉 \ # "#.#", 날짜 / 시간 형식 스위치, i.e. \@ "dd.MM.yyyy", 및 번호 형식 스위치, i.e. \ * 종료를 적용 할 수 있습니다.

다음 코드 예제는 필드 결과에 대한 사용자 정의 포맷을 적용하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## 평가 방법 `IF` 제품 정보

평가하려는 경우 `IF` 상태 후에 mail merge, 당신은 사용할 수 있습니다 [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) 즉시 표현의 결과를 반환하는 방법.

다음 코드 예제는이 방법을 사용하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Time Field에 Custom Formatting 적용 방법

기본 정보 Aspose.Words - 연혁 `TIME` 현재 문화 짧은 시간 형식의 필드. 형식을 원하면 `TIME` 당신의 필요조건에 따라 분야, 당신은 이 실행해서 달성할 수 있습니다 [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) 인터페이스.

다음 코드 예제는 사용자 정의 포맷을 적용하는 방법을 보여줍니다. `TIME` 유형:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
