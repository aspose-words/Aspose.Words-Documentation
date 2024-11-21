---
title: 필드에 사용자 지정 서식 적용 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 필드에 사용자 지정 서식 적용
linktitle: 필드에 사용자 지정 서식 적용
description: "다음을 사용하여 필드 결과 서식 지정 및 평가 C++."
type: docs
weight: 40
url: /ko/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

때때로 사용자는 필드에 사용자 정의 서식을 적용해야합니다. 이 기사에서는 이것이 어떻게 수행 될 수 있는지에 대한 몇 가지 예를 살펴볼 것입니다.

자세한 내용은 해당 클래스의 각 필드 유형에 대한 전체 속성 목록을 참조하십시오 [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## 필드 결과에 사용자 지정 서식을 적용하는 방법

Aspose.Words 제공 API 필드 결과의 사용자 지정 서식 지정. 당신은 구현할 수 있습니다 [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) 필드 결과의 포맷 방식을 제어하는 인터페이스입니다. 숫자 형식 스위치를 적용 할 수 있습니다. \# "#.##",날짜/시간 형식 스위치,즉 \@ "디.MM.그리고 숫자 형식 스위치,즉. \* 순서

다음 코드 예제에서는 필드 결과에 사용자 지정 서식을 적용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## 평가 방법 `IF` 조건

당신이 평가하고 싶은 경우에 `IF` 조건 후 mail merge,당신은 사용할 수 있습니다 [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) 식 계산 결과를 즉시 반환하는 메서드입니다.

다음 코드 예제에서는 이 메서드를 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## 시간 필드에 사용자 정의 서식을 적용하는 방법

기본적으로 Aspose.Words 업데이트 `TIME` 현재 문화 짧은 시간 형식 필드. 당신이 포맷하려는 경우 `TIME` 당신의 필요조건에 따라 분야,당신은 실행해서 이것을 달성할 수 있습니다 [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider) 인터페이스

다음 코드 예제에서는 사용자 지정 서식을 사용자 지정 서식에 적용하는 방법을 보여 줍니다 `TIME` 필드:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
