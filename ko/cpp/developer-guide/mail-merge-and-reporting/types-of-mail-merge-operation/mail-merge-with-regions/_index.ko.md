---
title: Mail Merge 지역과 함께 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: Mail Merge 지역
linktitle: Mail Merge 지역
type: docs
description: "템플릿에 다른 영역을 만들어 데이터로 간단히 채울 수 있는 특수 영역을 만듭니다. 사용 Mail Merge 영역 사용 테이블을 삽입하려는 경우 반복되는 데이터가 있는 행을 사용하여 문서를 동적으로 확장할 수 있습니다."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /ko/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

템플릿에서 다른 영역을 만들어 데이터로 간단히 채울 수 있는 특수 영역을 만들 수 있습니다. 사용 Mail Merge 영역 사용 테이블,반복 데이터가 있는 행을 삽입하여 템플릿 내에서 해당 영역을 지정하여 문서를 동적으로 확장할 수 있습니다.

병합 영역뿐만 아니라 중첩(하위)영역을 만들 수 있습니다. 이 유형을 사용하는 주요 이점은 문서 내부의 부품을 동적으로 늘리는 것입니다. 다음 문서"중첩"에서 자세한 내용을 참조하십시오 Mail Merge 지역과 함께".

{{% alert color="primary" %}}

에 대한 정보 Mail Merge 이 지역은 [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) 수업

{{% /alert %}}

## 실행 방법 Mail Merge 지역

A Mail Merge 영역은 시작점과 끝점이 있는 문서 내부의 특정 부분입니다. 두 점 모두 다음과 같이 나타납니다. Mail Merge 특정 이름이 있는 필드 *"TableStart:XXX"* 그리고 *"TableEnd:XXX"*. 에 포함 된 모든 콘텐츠 Mail Merge 영역은 데이터 원본의 모든 레코드에 대해 자동으로 반복됩니다.

Aspose.Words 실행할 수 있습니다 Mail Merge 지역 중 하나를 사용하는 [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) 수락하는 방법 [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) 사용자 정의 데이터 소스.

다음 코드 예제에서는 실행 방법을 보여 줍니다 Mail Merge 데이터베이스의 영역 [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

당신은 실행하기 전에 문서의 차이를 알 수 있습니다 Mail Merge 지역:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

그리고 실행 후 Mail Merge 지역:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## 제한 사항 Mail Merge 지역

수행 할 때 고려해야 할 몇 가지 중요한 포인트가 있습니다 Mail Merge 지역:

* 시작 지점 *TableStart:Orders* 그리고 끝점 *TableEnd:Orders* 둘 다 동일한 행 또는 셀에 있어야합니다. 예를 들어 테이블의 셀에서 병합 영역을 시작하는 경우 첫 번째 셀과 같은 행에서 병합 영역을 종료해야 합니다.
  병합 필드 이름은 사용자의 열 이름과 일치해야 합니다 DataTable. 매핑된 필드를 지정하지 않는 한, Mail Merge 열 이름이 아닌 다른 이름을 가진 병합 필드에 대해 영역 사용 실패합니다.
* Aspose.Words 에 대한 C++ 만 지원 [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) 그리고 [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) 기반 데이터 소스. 달리 .NET 그리고 Java, C++ 일반적으로 인정되는 크로스 플랫폼이 없습니다 API 데이터베이스 작업(예: ADODB, ODBC,또는 JDBC). 특정 데이터 원본으로 작업하려면 다음을 구현해야 합니다 [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) 또는 [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) 인터페이스

이러한 규칙 중 하나가 깨진 경우 예기치 않은 결과를 얻거나 예외가 발생할 수 있습니다.

{{% alert color="primary" %}}

사용하지 않는 경우 Mail Merge 지역,그것은 유사 할 것이다 Microsoft Word mail merge,그리고 전체 문서 내용은 데이터 소스의 각 레코드에 대해 반복됩니다.

{{% /alert %}}

