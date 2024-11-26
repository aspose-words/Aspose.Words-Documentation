---
title: Java의 고급Mail Merge기능
second_title: Aspose.WordsJava
articleTitle: 고급Mail Merge기능
linktitle: 고급Mail Merge기능
type: docs
description: "Aspose.Words에 대한Java추가Mail Merge사용자 정의를 수행 할 수 있도록 일부 고급Mail Merge기능을 제공합니다. 예를 들어 템플릿 구조에 대한 정보 얻기,규칙 설정,Mail Merge작업 후 정리 등이 있습니다."
keywords: "use advanced Mail Merge features java, Mail Merge java"
weight: 50
url: /ko/java/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words은 간단한Mail Merge또는Mail Merge영역에서Mail Merge프로세스를 추가로 사용자 지정할 수 있는 몇 가지 추가Mail Merge속성 및 메서드를 제공합니다.

고급Mail Merge기능은Mail Merge작업을 수행하기 전에 템플릿 구조에 대한 정보를 얻고,Mail Merge작업에 대한 규칙을 설정하고,Mail Merge작업 중에 정리하는 것을 포함하지만 이에 국한되지 않습니다. 이 문서에서는 고급 기능을 사용하는 방법을 보여 단지 몇 가지 속성과 예제를 다룰 것입니다.

## Mail Merge작업에 대한 규칙 설정

템플릿에 규칙을 추가하면 워크플로 프로세스를 더욱 효과적이고 유연하게 만들 수 있습니다. Mail Merge규칙을 사용하면 빠르게 변경할 수 있는 콘텐츠를 설정하고 여러 문서를 생성할 필요가 없습니다.

Aspose.WordsMail Merge작업을 수행하고 병합 정보를 제어할 때 실행되는 규칙에 따라Mail Merge을 사용자 지정할 수 있습니다. 예를 들어,모든 고객에게 보낼 이메일 또는 편지를 만들 때. 데이터 원본의 특정 필드에 있는 다른 값에 따라 문자에 다양한 데이터가 포함될 수 있도록 규칙을 설정할 수 있습니다.

구현할 수 있는 몇 가지Mail Merge규칙을 살펴보십시오.

### 현재 문서의 데이터 레코드를 병합하는 다음 필드 구현

[Next](https://reference.aspose.com/words/java/com.aspose.words/fieldnext/)필드를 구현하여 병합된 새 문서를 시작하는 대신 다음 데이터 레코드를 현재 결과 병합된 문서에 병합할 수 있습니다. 하나의 문서에 여러 레코드를 표시하는 데 사용됩니다.

### NextIf및SkipIf필드를 구현하여 두 식을 비교합니다

두 식([right](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getRightExpression)및[left](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getLeftExpression)식)을[operator](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/#getComparisonOperator)으로 비교하려는 경우[NextIf](https://reference.aspose.com/words/java/com.aspose.words/fieldnextif/)필드 또는[SkipIf](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/)필드를 사용할 수 있습니다.

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words은 다음 데이터 레코드를 현재 병합 문서로 병합하고*NextIf*필드 뒤에 있는 템플릿의 모든 병합 필드는 현재 데이터 레코드가 아닌 다음 데이터 레코드의 값으로 대체됩니다. | Aspose.Words은 다음 데이터 레코드를 새 병합 문서로 병합합니다. |
| `SkipIf` | Aspose.Words은 현재 병합 문서를 취소하고 데이터 원본의 다음 데이터 레코드로 이동한 다음 새 병합 문서를 시작합니다. | Aspose.Words은 현재 병합 문서를 계속합니다. |

다음 코드 예제에서는 두 식을**NextIf**또는**SkipIf**와 비교하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-AdvancedMailMergeFeatures-CompareTwoExpressions.java" >}}

## 템플릿 구조에 대한 정보 얻기

Aspose.Words많은 방법을 통해 템플릿에서 다른 정보를 수집 할 수 있습니다. 예를 들어 일부 병합 필드의 이름이나 템플릿의 영역 계층 구조를 가져와야 할 수 있습니다. 이제 템플릿에서 특정 정보를 얻기 위해 가능한 변형을 설명 할 것입니다.

### 병합 필드 이름 가져오기

다른 사람이 만든 병합 필드와 데이터를 병합하려는 시나리오가 발생할 수 있으며,이 경우 병합 필드의 정확한 이름을 알 수 없습니다. 따라서Mail Merge목적을 달성하기 위해 먼저 모든 병합 필드의 이름을 읽고 표시해야합니다. Aspose.Words[GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/)메서드를 사용하여 병합 필드 이름 모음을 가져올 수 있습니다.

다음 코드 예제에서는 템플릿에 있는 모든 병합 필드의 이름을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}

### 병합 영역에 대한 정보 얻기

템플릿이 지정된 병합 영역을 통해 구조화되는 방식을 이해하려는 시나리오가 있을 수 있습니다. 일부 메서드를 사용하여 병합 영역에 대한 모든 필요한 정보를 수집하거나[GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy)메서드와 같이 템플릿에서 병합 영역 계층 구조를 가져올 수 있습니다. [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/)클래스의 속성과 메서드를 사용할 수 있습니다.다음 코드 예제에서는 병합 영역 계층 구조를 가져오는 방법을 보여 줍니다:

**Java**
{{< highlight java >}}

MailMergeRegionInfo regionInfo = doc.getMailMerge().getRegionsHierarchy();

{{< /highlight >}}

다음 코드 예제에서는 이름에 따라 템플릿 내에서 특정 병합 영역을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ExecuteMailMergeWithRegions-GetRegionsByName.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

### 매핑된 필드 추가

Aspose.Words을 사용하면[MappedDataFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getMappedDataFields)속성을 사용하여 데이터 원본의 필드 이름과 템플릿의Mail Merge필드 이름을 자동으로 매핑할 수 있습니다. 예를 들어 템플릿에"성"이라는 필드 이름이 있고 데이터 원본에"성"또는"Last_Name"또는"LastName"과 같은 다른 변형이 있는 경우 데이터 원본의 필드가 해당 매핑된 필드에 자동으로 매핑됩니다. 병합 템플릿을 여러 데이터 원본과 병합할 경우 매핑된 필드를 사용하면 데이터베이스의 필드 이름과 일치하도록 필드를 템플릿에 다시 입력할 필요가 없습니다.

다음 코드 예제에서는 템플릿의 병합 필드와 데이터 원본의 데이터 필드의 이름이 다른 경우[Add](https://reference.aspose.com/words/java/com.aspose.words/mappeddatafieldcollection/#add-java.lang.String-java.lang.String)메서드를 사용하여 매핑된 필드를 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-MappedFieldNames.java" >}}
