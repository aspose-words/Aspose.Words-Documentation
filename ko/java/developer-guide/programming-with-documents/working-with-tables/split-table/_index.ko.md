---
title: Java에서 테이블 분할
second_title: Aspose.WordsJava
articleTitle: 분할 테이블
linktitle: 분할 테이블
description: "Java에서 테이블을 분할합니다. 하나의 테이블을 두 개의 개별 테이블Java으로 분할하는 방법."
type: docs
weight: 100
url: /ko/java/split-table/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words문서 개체 모델에 표시되는 테이블은 독립적인 행과 셀로 구성되어 있어 테이블을 쉽게 분할할 수 있습니다.

테이블을 조작하여 두 개의 테이블로 나누려면 일부 행을 원래 테이블에서 새 테이블로 이동하기만 하면 됩니다. 이 작업을 수행하려면,우리는 우리가 테이블을 분할 할 행을 선택해야합니다.

다음 간단한 단계를 수행하여 원래 테이블에서 두 개의 테이블을 만들 수 있습니다:

1. 이동된 행을 유지하고 원래 테이블 뒤에 삽입하기 위해 자식을 복제하지 않고 테이블 복제를 만듭니다
2. 지정된 행에서 시작하여 모든 후속 행을 이 두 번째 테이블로 이동합니다

다음 코드 예제에서는 테이블을 특정 행의 두 테이블로 분할하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
