---
title: Java의Mail Merge작업 유형
second_title: Aspose.WordsJava
articleTitle: Mail Merge작업의 유형
linktitle: Mail Merge작업의 유형
type: docs
description: "영역을 사용하여 단순Mail Merge및Mail Merge의 두 가지 유형의Mail Merge작업을 수행합니다. 단순Mail Merge은 각 데이터 소스 레코드당 전체 문서를 반복하는 반면,영역이 있는Mail Merge은Java을 사용하여 레코드당 지정된 영역만 반복합니다."
keywords: "how to execute Mail Merge java, Mail Merge Java, Simple Mail Merge"
weight: 20
url: /ko/java/types-of-mail-merge-operations/
timestamp: 2024-01-27-14-07-04
---

Mail Merge의 주요 아이디어는 데이터 소스에서 가져온 템플릿과 데이터를 기반으로 하나 또는 여러 문서를 자동으로 만드는 것입니다. Aspose.Words를 사용하면 간단한 Mail Merge과 지역이 포함된 Mail Merge의 두 가지 유형의 Mail Merge 작업을 수행할 수 있습니다.

단순Mail Merge를 사용하는 가장 일반적인 예는 문서의 시작 부분에 이름을 포함하여 다른 클라이언트에 대한 문서를 보내려는 경우입니다. 이렇게 하려면 템플릿에*First Name*및*Last Name*과 같은 병합 필드를 만든 다음 데이터 원본의 데이터로 채워야 합니다. 영역에Mail Merge를 사용하는 가장 일반적인 예는 각 주문 내의 모든 항목 목록과 함께 특정 주문을 포함하는 문서를 보내려는 경우입니다. 이 작업을 수행하려면 항목에 필요한 모든 데이터를 채우기 위해,각 주문에 대한 템플릿–자신의 영역 안에 병합 영역을 작성해야합니다.

두 병합 작업의 주요 차이점은 단순Mail Merge(영역 제외)은 각 데이터 원본 레코드당 전체 문서를 반복하는 반면Mail Merge(영역 포함)은 레코드당 지정된 영역만 반복한다는 것입니다. 간단한Mail Merge작업을 전체 문서만 있는 영역과 병합하는 특정 사례로 생각할 수 있습니다.

{{% alert color="primary" %}}

[MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/)클래스는Mail Merge기능을 나타냅니다. 이 속성을 사용하면Mail Merge작업을 실행하기 전에 필요한 동작을 사용자 지정할 수 있습니다.

{{% /alert %}}

## 간단한Mail Merge작업 {#simple-mail-merge-operation}

단순Mail Merge은 템플릿 내의Mail Merge필드를 데이터 원본의 필수 데이터(단일 테이블 표현)로 채우는 데 사용됩니다. 따라서Microsoft Word의 고전Mail Merge과 비슷합니다.

템플릿에 하나 이상의 병합 필드를 추가한 다음 간단한Mail Merge작업을 실행할 수 있습니다. 템플릿에 병합 영역이 없는 경우 사용하는 것이 좋습니다.

이 유형을 사용하는 주요 제한 사항은 데이터 원본의 각 레코드에 대해 전체 문서 내용이 반복된다는 것입니다.

### 간단한Mail Merge작업 {#how-to-execute-a-simple-mail-merge-operation}을 실행하는 방법

템플릿이 준비되면 간단한Mail Merge작업을 시작할 수 있습니다. Aspose.Words는 다양한 데이터 개체를 데이터 소스로 받아들이는 다른[메서드 실행](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-com.aspose.words.IMailMergeDataSource)을 사용하여 간단한Mail Merge작업을 실행할 수 있습니다.

다음 코드 예제에서는[Execute](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-java.lang.String---java.lang.Object)메서드 중 하나를 사용하여 간단한Mail Merge작업을 실행하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-ExecuteSimpleMailMerge.java" >}}

단순mail merge을 실행하기 전에 문서 간의 차이를 알 수 있습니다:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-1.png" alt="simple_mail_merge_template_aspose_words_java" style="width:300px"/>

그리고 간단한mail merge을 실행 한 후:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge_aspose_words_java" style="width:300px"/>

### 병합된 문서를 여러 개 만드는 방법

Aspose.Words에서 표준Mail Merge작업은 데이터 원본의 콘텐츠로 단일 문서만 채 웁니다. 따라서 여러 병합된 문서를 출력으로 만들려면Mail Merge작업을 여러 번 실행해야 합니다.

다음 코드 예제에서는Mail Merge작업 중에 병합된 문서를 여러 개 생성하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-ProduceMultipleDocumentsDuringMailMerge-ProduceMultipleDocumentsDuringMailMerge.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

## 지역Mail Merge

템플릿에서 다른 영역을 만들어 데이터로 간단히 채울 수 있는 특수 영역을 만들 수 있습니다. Mail Merge영역 사용 테이블,반복 데이터가 있는 행을 삽입하려면 템플릿 내에서 해당 영역을 지정하여 문서를 동적으로 확장할 수 있습니다.

병합 영역뿐만 아니라 중첩(하위)영역을 만들 수 있습니다. 이 유형을 사용하는 주요 이점은 문서 내부의 부품을 동적으로 늘리는 것입니다. 다음 문서"리전과 함께Mail Merge중첩"에서 자세한 내용을 참조하십시오.

{{% alert color="primary" %}}

Mail Merge영역에 대한 정보는[MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/)클래스를 사용하여 얻을 수 있습니다.

{{% /alert %}}

### 영역을 사용하여Mail Merge을 실행하는 방법

Mail Merge영역은 시작점과 끝점이 있는 문서 내부의 특정 부분입니다. 두 점 모두*"TableStart:XXX"*과*"TableEnd:XXX"*의 특정 이름을 가진Mail Merge필드로 표시됩니다. Mail Merge영역에 포함된 모든 콘텐츠는 데이터 원본의 모든 레코드에 대해 자동으로 반복됩니다.

Aspose.Words을 사용하면 다양한 데이터 개체를 데이터 소스로 받아들이는 다른[메서드 실행](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/)을 사용하는 영역을 사용하여Mail Merge를 실행할 수 있습니다.

첫 번째 단계로`DataSet`을 만들어 나중에`ExecuteWithRegions`메서드에 입력 매개 변수로 전달해야 합니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-CreateDataSet.java" >}}

다음 코드 예제에서는[ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#executeWithRegions-com.aspose.words.net.System.Data.DataSet)메서드를 사용하여 영역을 사용하여Mail Merge를 실행하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-MailMergeWithRegions.java" >}}

영역을 사용하여Mail Merge을 실행하기 전에 문서 간의 차이를 확인할 수 있습니다:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template_aspose_words_java" style="width:850px"/>

그리고 영역을 사용하여Mail Merge을 실행 한 후:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute_aspose_words_java" style="width:850px"/>

### 영역과Mail Merge의 제한

영역을 사용하여Mail Merge을 수행할 때 고려해야 할 몇 가지 중요한 사항이 있습니다:

* 시작점*TableStart:Orders*과 끝점*TableEnd:Orders*은 모두 같은 행이나 셀에 있어야 합니다. 예를 들어 테이블의 셀에서 병합 영역을 시작하는 경우 첫 번째 셀과 같은 행에서 병합 영역을 종료해야 합니다.
* 병합 필드 이름은DataTable의 열 이름과 일치해야 합니다. 매핑된 필드를 지정하지 않는 한 영역이있는Mail Merge은 열 이름과 다른 이름을 가진 병합 필드에 성공하지 못합니다.

이러한 규칙 중 하나가 깨진 경우 예기치 않은 결과를 얻거나 예외가 발생할 수 있습니다.

{{% alert color="primary" %}}

Mail Merge영역을 사용하지 않으면Microsoft Wordmail merge와 유사하게 되며 데이터 원본의 각 레코드에 대해 전체 문서 내용이 반복됩니다.

{{% /alert %}}

