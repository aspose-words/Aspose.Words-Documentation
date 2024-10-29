---
title: 단순 Mail Merge 운영 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 단순 Mail Merge 운영
linktitle: 단순 Mail Merge 운영
type: docs
description: "간단한 mail merge 채우기 위하여 이용됩니다 mail merge 데이터 소스에서 필요한 데이터와 템플릿 내부의 필드-그것은 고전과 유사하다 mail merge 그 안에 Microsoft Word. 템플릿에 하나 이상의 병합 필드를 추가한 다음 단순 필드를 실행합니다 mail merge 작동."
keywords: "how to execute mail merge c++"
weight: 10
url: /ko/cpp/simple-mail-merge-operation/
---

간단한 mail merge 채우기 위하여 이용됩니다 mail merge 데이터 원본의 필수 데이터가있는 템플릿 내부의 필드(단일 테이블 표현). 그래서 그것은 고전과 비슷합니다 mail merge 그 안에 Microsoft Word.

템플릿에 하나 이상의 병합 필드를 추가한 다음 간단한 병합 필드를 실행할 수 있습니다 mail merge 작동. 템플릿에 병합 영역이 없는 경우 사용하는 것이 좋습니다.

이 유형을 사용하는 주요 제한 사항은 데이터 원본의 각 레코드에 대해 전체 문서 내용이 반복된다는 것입니다.

## 간단한 실행 방법 Mail Merge 운영

템플릿이 준비되면,당신은 간단한 수행을 시작할 수 있습니다 mail merge 작동. Aspose.Words 당신은 간단한 실행 할 수 있습니다 mail merge 다른 것을 사용하는 가동 [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) 다양한 데이터 개체를 데이터 원본으로 받아들이는 메서드입니다.

다음 코드 예제에서는 간단한 실행 방법을 보여 줍니다 mail merge 중 하나를 사용하여 작업 [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) 방법:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

당신은 간단한 실행하기 전에 문서의 차이를 알 수 있습니다 mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

그리고 간단한 실행 후 mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## 병합된 문서를 여러 개 만드는 방법

그 안에 Aspose.Words,표준 mail merge 작업은 데이터 원본의 콘텐츠로 단일 문서만 채 웁니다. 그래서,당신은 실행해야합니다 mail merge 작업 여러 번 출력으로 몇 병합 된 문서를 만들 수 있습니다.

다음 코드 예제에서는 몇 개의 병합된 문서를 생성하는 방법을 보여 줍니다 mail merge 작업 [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
