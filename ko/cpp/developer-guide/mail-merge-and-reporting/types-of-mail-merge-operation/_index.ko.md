---
title: 유형 Mail Merge 운영 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 유형 Mail Merge 운영
linktitle: 유형 Mail Merge 운영
type: docs
description: "의 두 가지 유형을 수행 mail merge 운영:단순 mail merge 그리고 mail merge 지역을 사용하여 C++. 단순 mail merge 각 데이터 소스 레코드당 전체 문서를 반복하는 반면 mail merge 영역은 레코드 당 지정된 영역 만 반복합니다."
keywords: "how to execute mail merge c++"
weight: 20
url: /ko/cpp/types-of-mail-merge-operations/
---

의 주요 아이디어 mail merge 템플릿과 데이터 소스에서 가져온 데이터를 기반으로 문서 또는 여러 문서를 자동으로 만드는 것입니다. Aspose.Words 두 가지 다른 유형을 수행 할 수 있습니다 mail merge 운영:단순 mail merge 그리고 mail merge 지역과 함께

간단한 사용의 가장 일반적인 예 mail merge 문서의 시작 부분에 이름을 포함하여 다른 클라이언트에 대한 문서를 보내려는 경우입니다. 이렇게 하려면 다음과 같은 병합 필드를 만들어야 합니다 *First Name* 그리고 *Last Name* 템플릿에 입력한 다음 데이터 원본의 데이터로 입력합니다. 가장 일반적인 예는 mail merge 영역을 사용하는 것은 각 주문 내의 모든 항목 목록과 함께 특정 주문이 포함된 문서를 보내려는 경우입니다. 이 작업을 수행하려면 항목에 필요한 모든 데이터를 채우기 위해,각 주문에 대한 템플릿–자신의 영역 안에 병합 영역을 작성해야합니다.

두 병합 작업의 주요 차이점은 간단하다는 것입니다 mail merge (영역 제외)는 각 데이터 소스 레코드당 전체 문서를 반복하는 반면 mail merge 영역은 레코드 당 지정된 영역 만 반복합니다. 당신은 간단한 생각할 수 있습니다 mail merge 전체 문서가 유일한 영역인 영역과 병합하는 특정 사례로 작동합니다.

{{% alert color="primary" %}}

그 [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) 클래스는 mail merge 기능. 해당 속성을 사용하여 다음을 실행하기 전에 필요한 동작을 사용자 지정할 수 있습니다 mail merge 작동.

{{% /alert %}}

