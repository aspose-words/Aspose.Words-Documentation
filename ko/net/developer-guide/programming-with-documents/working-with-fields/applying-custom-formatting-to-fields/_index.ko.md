---
title: C#의 필드에 사용자 정의 형식 적용
second_title: .NET용 Aspose.Words
articleTitle: 필드에 사용자 정의 형식 적용
linktitle: 필드에 사용자 정의 형식 적용
description: "C#를 사용하여 필드 결과의 형식을 지정하고 평가합니다."
type: docs
weight: 40
url: /ko/net/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

사용자가 필드에 사용자 정의 형식을 적용해야 하는 경우가 있습니다. 이번 글에서는 이것이 어떻게 이루어질 수 있는지에 대한 몇 가지 예를 살펴보겠습니다.

더 많은 옵션을 알아보려면 [필드 네임스페이스](https://reference.aspose.com/words/net/aspose.words.fields/)에서 해당 클래스의 각 필드 유형에 대한 전체 속성 목록을 참조하세요.

## 필드 결과에 사용자 정의 형식을 적용하는 방법

Aspose.Words는 필드 결과의 사용자 정의 형식을 위한 API를 제공합니다. [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) 인터페이스를 구현하여 필드 결과 형식을 제어할 수 있습니다. 숫자 형식 스위치(예: \# "#.##"), 날짜/시간 형식 스위치(예: \@ "dd.MM.yyyy") 및 숫자 형식 스위치(예: \* Ordinal)를 적용할 수 있습니다.

다음 코드 예제에서는 필드 결과에 사용자 정의 형식을 적용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## `IF` 조건을 평가하는 방법

mail merge 이후에 `IF` 조건을 평가하려면 표현식 평가 결과를 즉시 반환하는 [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) 메서드를 사용할 수 있습니다.

다음 코드 예제에서는 이 메서드를 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## 시간 필드에 사용자 정의 형식을 적용하는 방법

기본적으로 Aspose.Words는 현재 문화권의 짧은 시간 형식으로 `TIME` 필드를 업데이트합니다. 우리는 Microsoft Word 형식과 .NET/Windows 형식 사이, 그리고 서로 다른 .NET Framework 버전 사이에도 차이가 있다는 것을 알아냈습니다. 요구 사항에 따라 `TIME` 필드의 형식을 지정하려면 [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/) 인터페이스를 구현하면 됩니다.

다음 코드 예제는 `TIME` 필드에 사용자 정의 형식을 적용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
