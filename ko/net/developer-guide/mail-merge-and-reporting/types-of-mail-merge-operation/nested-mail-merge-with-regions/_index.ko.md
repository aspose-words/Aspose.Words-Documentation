---
title: C#에 영역이 있는Mail Merge중첩
second_title: Aspose.Words.NET
articleTitle: 영역을 사용하여Mail Merge중첩
linktitle: 영역을 사용하여Mail Merge중첩
type: docs
description: "C#를 사용하여 중첩된 영역으로Mail Merge작업을 수행합니다. 중첩 병합은 데이터 원본의 계층적 데이터를 병합 템플릿으로 병합할 수 있는 기능입니다."
keywords: "mail merge with nested regions c#"
weight: 10
url: /ko/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

일부 시나리오에서는 영역에 중첩Mail Merge을 사용해야 할 수도 있습니다. 중첩 병합은 데이터 원본의 계층적 데이터를 병합 템플릿으로 병합하여 문서를 쉽게 채울 수 있는 기능입니다. 기본적으로 계층적 데이터는 데이터 항목의 집합으로 표현되며 계층적 관계는 데이터 항목이 서로 어떻게 관련되어 있는지 설명합니다(한 데이터 항목은 다른 항목의 부모입니다).

Aspose.Words중첩된 영역을 사용하여Mail Merge작업을 수행할 수 있습니다. 트리와 같은 구조로 구성된 데이터 원본이 있고Mail Merge작업을 실행하여 템플릿에 계층적 데이터를 채우려는 경우 이 기능을 사용할 수 있습니다.

{{% alert color="primary" %}}

중첩Mail Merge은 영역과 함께Mail Merge을 수행할 때만 관련이 있습니다.

{{% /alert %}}

## 중첩 된Mail Merge이란 무엇입니까?

Mail Merge영역은Mail Merge영역 중 하나가 계층적 형태로 다른 영역 안에 있는 두 개 이상의Mail Merge영역이 있는 경우 중첩된 영역이라고 합니다. 각 영역에는 한 테이블의 데이터가 포함되어 있습니다.

중첩Mail Merge의 가장 일반적인 예는 여러 데이터 테이블을 연결하고 템플릿에 정보를 제공해야 하는 여러 항목이 포함된 순서입니다.

아래 그림은*Order*Mail Merge영역이*Item*Mail Merge영역의 부모인 두 개의 중첩된 영역을 보여줍니다.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## 중첩된 영역을 사용하여Mail Merge을 처리하는 방법

템플릿에 병합할 데이터는 주로 관계형 데이터베이스 또는XML문서와 같은 다양한 소스에서 가져올 수 있습니다. 이 예에서는XML파일을 사용하여 데이터를 저장하고**DataSet**에 직접 로드합니다.

Aspose.Words**DataSet**에 지정된 데이터 관계를 사용하여 중첩된 영역을 사용하여Mail Merge를 처리할 수 있습니다. **DataSet**객체가XML을 로드할 때,제공된 스키마를 사용하거나XML자체의 구조에서 추론하여 이를 수행합니다. 이 구조에서 필요한 경우 테이블 간의 관계를 만듭니다.

아래 이미지는 중첩된 병합 영역으로 전달된*Order*테이블의 데이터와 병합 작업 중에 생성된 출력을*Item*테이블에 연결하는 방법을 보여줍니다.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

출력 문서에서 볼 수 있듯이**Order**테이블의 각 순서는**Item**테이블의 모든 주문 관련 항목과 함께 병합 템플릿에 삽입됩니다. 모든 주문 및 항목이 나열 될 때까지 다음 순서는 자신의 항목과 함께 삽입됩니다. 템플릿의 영역에Mail Merge중첩 순서는 데이터 원본의 테이블 간의 데이터 관계와 일치해야 합니다.

다음 코드 예제에서는 중첩된Mail Merge(영역 포함)을 사용하여 송장을 생성하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

데이터 관계를 수동으로 설정하는 구현을 확인할 수 있습니다 [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## 중첩 된Mail Merge에 데이터 관계를 설정하는 방법

중첩된Mail Merge영역을 올바르게 실행하려면 부모-자식 구조의 모든 데이터 관계를 설정해야 합니다. 이 중요한 단계를 건너 뛰면 영역이있는 중첩Mail Merge을 실행하는 데 실패 할 수 있습니다.

**ReadXml**메서드를 사용하여XML파일에서 중첩된Mail Merge에 대한 데이터를 검색할 때XML문서의 구조에 따라 관계가 자동으로 생성됩니다. 그러나 올바른 관계가 만들어 졌는지 확인해야합니다.

Mail Merge이 예상대로 작동하지 않으면XML파일을 재구성하거나DataSet의DataTable개체 간의 관계를 명시적으로 만들어야 할 수 있습니다.

관련 데이터 테이블이 있는`DataSet`는**DataRelation**개체를 사용하여 테이블 간의 부모-자식 관계를 나타냅니다.

다음 코드 예제에서는`DataRelation`개체를 사용하여 고객 테이블과 주문 테이블 사이에`DataRelation`을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## 사용자 지정 데이터 원본에서 데이터 관계를 만드는 방법

[IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/)인터페이스를 구현하여 사용자 지정 데이터 원본의 부모-자식 구조에서 관계를 만듭니다. [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/)메서드를 사용하여 현재 상위 레코드의 관련 하위 데이터를 반환합니다.

다음 예제에서는**GetChildDataSource**을 사용하여 데이터 관계를 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}
