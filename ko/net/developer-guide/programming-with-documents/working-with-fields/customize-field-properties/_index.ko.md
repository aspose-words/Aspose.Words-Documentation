---
title: C#에서 필드 속성 사용자 정의
second_title: .NET용 Aspose.Words
articleTitle: 필드 속성 사용자 정의
linktitle: 필드 속성 사용자 정의
description: "C#에서 필드 속성을 사용자 정의하는 방법을 알아보세요. 병합 필드의 이름을 바꾸거나 .NET에 구분 노드가 없는 필드에 대한 결과를 얻습니다."
type: docs
weight: 27
url: /ko/net/customize-field-properties/
---

Aspose.Words는 다양한 필드 속성과 프로그래밍 방식으로 상호 작용하는 기능을 제공합니다. 이 문서에서는 필드 속성 작업의 기본 원리를 이해할 수 있도록 몇 가지 예를 살펴보겠습니다. [필드 네임스페이스](https://reference.aspose.com/words/net/aspose.words.fields/)의 해당 클래스에서 각 필드 유형에 대한 전체 속성 목록을 볼 수 있습니다.

## 필드 속성 업데이트

사용자가 필드 속성 값을 변경해야 하는 경우가 있습니다. 예를 들어 `AUTHOR` 필드의 [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) 속성을 업데이트하거나 `MERGEFIELD` 필드의 [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) 속성을 변경합니다.

다음 코드 예제에서는 Word 문서에서 병합 필드의 이름을 바꾸는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## 필드 표시 결과

Aspose.Words는 필드 구분자 노드가 없는 필드에 대한 필드 결과를 얻기 위한 속성을 제공합니다. 우리는 이것을 "가짜 결과"라고 부르거나 결과를 표시합니다. MS Word에서는 필드 값을 즉시 계산하여 문서에 표시하지만 문서 모델에는 그러한 값이 없습니다.

다음 코드 예제에서는 [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/) 속성의 사용법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
