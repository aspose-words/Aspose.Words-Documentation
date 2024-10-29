---
title: 둥글게 Mail Merge 지역과 함께 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 둥글게 Mail Merge 지역
linktitle: 둥글게 Mail Merge 지역
type: docs
description: "수행 mail merge 다음을 사용하여 중첩 된 영역을 사용한 작업 C++. 중첩 병합은 데이터 원본의 계층적 데이터를 병합 템플릿으로 병합할 수 있는 기능입니다."
keywords: "mail merge with nested regions c++"
weight: 30
url: /ko/cpp/nested-mail-merge-with-regions/
---

일부 시나리오에서는 중첩을 사용해야 할 수도 있습니다 mail merge 지역과 함께 중첩 병합은 데이터 원본의 계층적 데이터를 병합 템플릿으로 병합하여 문서를 쉽게 채울 수 있는 기능입니다. 기본적으로 계층적 데이터는 데이터 항목의 집합으로 표현되며 계층적 관계는 데이터 항목이 서로 어떻게 관련되어 있는지 설명합니다(한 데이터 항목은 다른 항목의 부모입니다).

Aspose.Words 수행 할 수 있습니다 mail merge 중첩 된 영역을 사용한 작업. 트리와 같은 구조로 구성된 데이터 원본이 있고 트리와 같은 구조를 실행하려는 경우 이 기능을 사용할 수 있습니다. mail merge 계층 적 데이터로 템플릿을 채우는 작업.

{{% alert color="primary" %}}

둥글게 mail merge 수행 할 때만 관련이 있습니다. mail merge 지역과 함께

{{% /alert %}}

## 중첩 된 것 Mail Merge

그 mail merge 두 개 이상의 영역이 있는 경우 중첩된 영역이라고 합니다 mail merge 그 중 하나가 계층적 형태로 다른 영역 안에 있는 영역입니다. 각 영역에는 한 테이블의 데이터가 포함되어 있습니다.

중첩 된 가장 일반적인 예 mail merge 많은 데이터 테이블을 연결하고 템플릿에 정보를 제공해야 하는 몇 가지 항목이 포함된 순서입니다.

아래 그림은 두 개의 중첩된 영역을 보여줍니다. *Order* mail merge 지역은 *Item* mail merge 지역

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## 처리 방법 Mail Merge 중첩 된 영역

템플릿에 병합 할 데이터는 다양한 소스,주로 관계형 데이터베이스 또는 XML 문서. 이 예에서,우리는 [SQLite](https://www.sqlite.org/index.html) 데이터베이스는 우리의 데이터를 저장하고 사용자 정의 데이터 소스 구현을로드합니다.

아래 그림은 *Order* 중첩된 병합 영역에 전달된 테이블은 *Item* 테이블뿐만 아니라 병합 작업 중에 생성 된 출력.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

당신이 출력 문서에서 볼 수 있듯이,에서 각 순서 **Order** 테이블은 모든 주문의 관련 항목과 함께 병합 템플릿에 삽입됩니다. **Item** 테이블 모든 주문 및 항목이 나열 될 때까지 다음 순서는 자신의 항목과 함께 삽입됩니다. 중첩 순서 mail merge 템플릿의 영역은 데이터 원본의 테이블 간의 데이터 관계와 일치해야 합니다.

## 사용자 지정 데이터 원본에서 데이터 관계를 만드는 방법

구현 [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) 사용자 지정 데이터 원본의 부모-자식 구조에서 관계를 만드는 인터페이스입니다. 사용 [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) 현재 상위 레코드의 관련 하위 데이터를 반환하는 메서드입니다.

다음 코드 예제에서는 중첩을 사용하여 송장을 생성하는 방법을 보여 줍니다 mail merge 지역 [SQLite](https://www.sqlite.org/index.html) 데이터베이스 [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}