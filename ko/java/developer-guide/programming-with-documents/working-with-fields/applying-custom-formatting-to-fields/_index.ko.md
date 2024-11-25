---
title: 필드에 사용자 지정 서식 적용
second_title: Aspose.WordsJava
articleTitle: 필드에 사용자 지정 서식 적용
linktitle: 필드에 사용자 지정 서식 적용
description: "Java을 사용하여 필드 결과를 포맷하고 평가합니다."
type: docs
weight: 40
url: /ko/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

때때로 사용자는 필드에 사용자 정의 서식을 적용해야합니다. 이 기사에서는 이것이 어떻게 수행 될 수 있는지에 대한 몇 가지 예를 살펴볼 것입니다.

자세한 내용은 해당 클래스의 각 필드 유형에 대한 전체 속성 목록을 참조하십시오.

## 필드 결과에 사용자 지정 서식을 적용하는 방법

Aspose.Words는 필드 결과의 사용자 지정 서식을API제공합니다. [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/)인터페이스를 구현하여 필드 결과의 포맷 방식을 제어할 수 있습니다. 숫자 형식 스위치(예:\# "#.##",날짜/시간 형식 스위치(예:\@ "dd.MM.yyyy")및 숫자 형식 스위치(예:\* Ordinal)를 적용할 수 있습니다.

다음 코드 예제에서는 필드 결과에 사용자 지정 서식을 적용하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## `IF`조건을 평가하는 방법

Mail merge다음에`IF`조건을 계산하려면 식 계산 결과를 즉시 반환하는[EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition)메서드를 사용할 수 있습니다.

다음 코드 예제에서는 이 메서드를 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## 시간 필드에 사용자 정의 서식을 적용하는 방법

기본적으로Aspose.Words은`TIME`필드를 현재 문화권 짧은 시간 형식으로 업데이트합니다. 요구 사항에 따라`TIME`필드를 포맷하려는 경우[IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/)인터페이스를 구현하여이를 달성 할 수 있습니다.

다음 코드 예제에서는`TIME`필드에 사용자 지정 서식을 적용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
