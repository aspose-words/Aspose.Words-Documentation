---
title: 고급 Mail Merge 기능 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 고급 Mail Merge 특징
linktitle: 고급 Mail Merge 특징
type: docs
description: "Aspose.Words 에 대한 C++ 일부 고급 제공 Mail Merge 더 이상 수행 할 수있는 기능 Mail Merge 사용자 정의. 예를 들어,템플릿 구조에 대한 정보를 얻고,규칙을 설정하고, Mail Merge 운영 및 기타."
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /ko/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 몇 가지 추가 기능을 제공합니다 Mail Merge 추가 사용자 정의를 수행할 수 있는 속성 및 메서드 Mail Merge 간단한 프로세스 중 하나 Mail Merge 또는 Mail Merge 지역과 함께

고급 Mail Merge 특징은 다음을 포함하지만 이에 국한되지 않습니다. Mail Merge 운영,규칙 설정 Mail Merge 가동 및 도중 청소 Mail Merge 작동. 이 문서에서는 고급 기능을 사용하는 방법을 보여 단지 몇 가지 속성과 예제를 다룰 것입니다.

## 에 대한 규칙 설정 Mail Merge 운영

템플릿에 규칙을 추가하면 워크플로 프로세스를 더욱 효과적이고 유연하게 만들 수 있습니다. 사용 Mail Merge 규칙,당신은 신속하게 변경할 수 있습니다 콘텐츠를 설정하고 여러 문서를 생성 할 필요가 없습니다.

Aspose.Words 당신이 사용자 정의 할 수 있습니다 Mail Merge 당신이 수행 할 때 실행 규칙을 기반으로 Mail Merge 운영 및 제어 병합 정보. 예를 들어,모든 고객에게 보낼 이메일 또는 편지를 만들 때. 데이터 원본의 특정 필드에 있는 다른 값에 따라 문자에 다양한 데이터가 포함될 수 있도록 규칙을 설정할 수 있습니다.

좀 봐 Mail Merge 구현할 수 있는 규칙.

### 현재 문서의 데이터 레코드를 병합하는 다음 필드 구현

당신은 구현할 수 있습니다 [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) 새 병합된 문서를 시작하는 대신 다음 데이터 레코드를 현재 결과 병합된 문서에 병합하는 필드입니다. 하나의 문서에 여러 레코드를 표시하는 데 사용됩니다.

### 구현 NextIf 그리고 SkipIf 두 식을 비교할 필드

다음 중 하나를 사용할 수 있습니다 [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) 분야 또는 [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) 두 식을 비교하려는 경우 필드([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) 표현)에 의해 [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words 다음 데이터 레코드를 현재 병합 문서 및 템플릿의 모든 병합 필드에 병합합니다 *NextIf* 필드는 현재 데이터 레코드가 아닌 다음 데이터 레코드의 값으로 대체됩니다. | Aspose.Words 다음 데이터 레코드를 새 병합 문서로 병합합니다. |
| `SkipIf` | Aspose.Words 현재 병합 문서를 취소하고 데이터 원본의 다음 데이터 레코드로 이동한 다음 새 병합 문서를 시작합니다. | Aspose.Words 현재 병합 문서를 계속합니다. |

## 템플릿 구조에 대한 정보 얻기

Aspose.Words 당신은 많은 방법을 통해 템플릿에 다른 정보를 수집 할 수 있습니다. 예를 들어 일부 병합 필드의 이름이나 템플릿의 영역 계층 구조를 가져와야 할 수 있습니다. 이제 템플릿에서 특정 정보를 얻기 위해 가능한 변형을 설명 할 것입니다.

### 병합 필드 이름 가져오기

다른 사람이 만든 병합 필드와 데이터를 병합하려는 시나리오가 발생할 수 있으며,이 경우 병합 필드의 정확한 이름을 알 수 없습니다. 그래서, Mail Merge 목적,첫째,당신은 읽고 모든 병합 필드의 이름을 표시해야합니다. Aspose.Words 당신이 사용하여 병합 필드 이름의 컬렉션을 얻을 수 있습니다 [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) 방법

다음 코드 예제에서는 템플릿에 있는 모든 병합 필드의 이름을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### 병합 영역에 대한 정보 얻기

템플릿이 지정된 병합 영역을 통해 구조화되는 방식을 이해하려는 시나리오가 있을 수 있습니다. 병합 영역에 대한 모든 필요한 정보를 수집하거나 템플릿에 병합 영역 계층 구조를 가져오는 방법(예:병합 영역 계층 구조)을 사용할 수 있습니다 [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/) 방법 의 속성 및 메서드를 사용할 수 있습니다 [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) 수업다음 코드 예제에서는 병합 영역 계층 구조를 가져오는 방법을 보여 줍니다:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 매핑된 필드 추가

Aspose.Words 데이터 소스의 필드 이름과 데이터 소스의 이름을 자동으로 매핑할 수 있습니다. Mail Merge 를 사용하여 템플릿의 필드 [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/) 재산. 예를 들어 템플릿에"성"이라는 필드 이름이 있고 데이터 원본에"성"또는"성_이름"또는"성_이름"과 같은 다른 변형이 있는 경우LastName"라고 하면 데이터 소스의 필드가 자동으로 해당 매핑된 필드에 매핑됩니다. 병합 템플릿을 여러 데이터 원본과 병합할 경우 매핑된 필드를 사용하면 데이터베이스의 필드 이름과 일치하도록 필드를 템플릿에 다시 입력할 필요가 없습니다.

다음 코드 예제에서는 다음을 사용하여 매핑된 필드를 추가하는 방법을 보여 줍니다 [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) 템플릿의 병합 필드와 데이터 원본의 데이터 필드의 이름이 다른 경우 메서드:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
