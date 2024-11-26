---
title: C#의Mustache구문에서Mail Merge템플릿
second_title: Aspose.Words.NET
articleTitle: Mustache구문에서Mail Merge템플릿
linktitle: Mustache구문에서Mail Merge템플릿
type: docs
description: "C#를 사용하여Mustache구문으로 템플릿을 만듭니다. Mustache구문은 필드(HTML또는TXT)를 포함하지 않는 템플릿에 사용할 수 있는 유일한 옵션입니다. Word템플릿의 경우 필드 또는Mustache구문의 두 가지 옵션이 있습니다."
keywords: "mail merge template mustache syntax c#"
weight: 40
url: /ko/net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words친숙한 템플릿 외에도mustache구문으로 템플릿을 만들 수 있습니다. Mustache는 템플릿에 대한 데이터를 포함하는 모델 개체에 의해 묶이고 뒷받침되는 태그 이름으로 구성된 템플릿 구문의 대체 변형입니다.

Mustache구문은HTML및TXT템플릿과 같은 필드가 포함되지 않은 템플릿에 사용할 수 있는 유일한 옵션입니다. Word템플릿의 경우 필드 또는Mustache구문을 사용하는 두 가지 옵션이 있습니다.

Mustache구문은*foreach*태그를 지원하며,이는 영역에Mail Merge을 사용하는 대안입니다. 따라서 어떤 이유로 든 할 수 없거나 단순히 병합 필드 및 병합 영역을 사용하지 않으려는 경우mustache구문을 사용할 수 있다는 이점이 있습니다.

아래 그림과 같이*foreach*태그를 사용하여Mail Merge필드를 일부 추가 필드와 결합할 수도 있습니다.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Mustache템플릿 만들기

첫 번째 중요한 점은Mustache가 템플릿 엔진이 아니라는 것입니다. Mustache는Aspose.Words이 지원하는[load format](https://reference.aspose.com/words/net/aspose.words/loadformat/)의 모든 템플릿에 사용할 수 있는 또 다른 구문 변형입니다. 따라서 프로그래밍 및 인터페이스를 통해 이러한 템플릿을 만들 수 있으므로 특정 구문을 포함하고Mustache사양을 준수하기 만하면됩니다.

50 명의 수신자에게 동일한 이메일을 보내 해당 이름으로 인사말을 개인화해야 한다고 가정해 보겠습니다. 다음과 같이 받는 사람의 이름을 일부 자리 표시자로 바꿀 수 있습니다:

> Dear {{FirstName}}
>
> I hereby...

여기서 질문:하나의Mustache템플릿에서 50 개의 이메일을 어떻게 만들 수 있습니까? 이 질문에 답하려면Mail Merge를 영역과 함께 수행하여 템플릿의 자리 표시자에 대한 중괄호를 실제 데이터로 채우고 출력 문서를 생성해야 합니다.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

위의 예에서 알 수 있듯이Mustache에서는 중괄호를 시계 방향으로 90 도 회전할 때mustache처럼 보이는 자리 표시자에 중괄호를 사용해야 합니다.

{{% /alert %}}

## Mustache구문으로 작업

Mustache는*for*루프와*if*및*else*조건과 같은 특정 제어 흐름 문이 없기 때문에 논리 없는 순서로 표현됩니다. 그러나 조건부 평가 및 루핑을 달성하기 위해 태그 처리 목록 및 람다 섹션을 사용할 수 있습니다. 따라서Mail Merge연산에Mustache구문을 포함하려면[UseNonMergeFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/usenonmergefields/)속성을 사용하고 값을*True*로 설정해야 합니다.

다음 코드 예제에서는Mustache태그를 특정 데이터로 바꾸는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "mustache-syntax-using-data-table.cs" >}}

**UseNonMergeFields**속성을 적용하는 것과 함께 영역과 함께Mail Merge을 실행하기 전에 문서 간의 차이를 확인할 수 있습니다:

<img src="mustache-syntax-1.png" alt="mustache_syntax" style="width:400px"/>

{{% alert color="primary" %}}

한 부분은 파운드로 시작해서 슬래시로 끝납니다. 즉,`{{#foreach list}}`은"각"섹션을 시작하고`{{/foreach list}}`은 끝냅니다.

{{% /alert %}}

그리고 영역에Mail Merge을 적용한 후:

<img src="mustache-syntax-2.png" alt="mustache_syntax_result" style="width:300px"/>

## `IF`필드를 사용하여Mail Merge을 지능적으로 만듭니다

Aspose.Words을 사용하면Mail Merge필드와Mustache태그를`IF`문과 함께 사용할 수 있습니다. `IF`필드는Mail Merge문서에서 필드가 비어 있는 경우 원하지 않는 공백과 쉼표를 표시하지 않도록 사용할 수 있습니다.

`IF`필드 수식은 다음과 같습니다:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

여기서 조건은 병합 필드 또는Mustache태그가 될 수 있습니다.

예를 들어,다음과 같이 성별에 따라"그","그녀","그"또는"그녀"를 삽입해야하는 경우`IF`필드를 사용할 수 있습니다:

**{ IF { MERGEFIELD Gender } = "MALE" "참 텍스트" "거짓 텍스트"}**

**{ IF "{{ GENDER }}" = "MALE" "참 텍스트" "거짓 텍스트"}**

다음 코드 예제에서는Mustache태그 및`IF`필드를 사용하여Mail Merge작업을 수행하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "544788f602e697802e313a641cedb9b8" "use-if-else-mustache.cs" >}}

**UseNonMergeFields**속성을 적용하기 전에 문서 간의 차이를 확인할 수 있습니다:

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

그리고**UseNonMergeFields**속성을 적용한 후:

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
