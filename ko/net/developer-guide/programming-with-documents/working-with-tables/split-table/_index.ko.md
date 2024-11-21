---
title: C#의 분할 테이블
second_title: .NET용 Aspose.Words
articleTitle: 테이블 분할
linktitle: 테이블 분할
description: "C#의 분할 테이블. 하나의 테이블을 두 개의 별도 테이블 C#로 분할하는 방법."
type: docs
weight: 100
url: /ko/net/split-table/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Document Object Model로 표현되는 테이블은 독립된 행과 셀로 구성되어 있어 테이블 분할이 용이합니다.

테이블을 조작하여 두 개의 테이블로 분할하려면 원래 테이블의 일부 행을 새 테이블로 이동하면 됩니다. 이렇게 하려면 테이블을 분할하려는 행을 선택해야 합니다.

다음의 간단한 단계에 따라 원본 테이블에서 두 개의 테이블을 만들 수 있습니다

1. 이동된 행을 유지하고 원본 테이블 뒤에 삽입하려면 하위 항목을 복제하지 않고 테이블의 복제본을 만듭니다
2. 지정된 행에서 시작하여 모든 후속 행을 이 두 번째 테이블로 이동합니다

다음 코드 예제에서는 특정 행에서 테이블을 두 테이블로 분할하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}
