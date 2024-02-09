---
title: Python의 분할 테이블
second_title: Python용 Aspose.Words
articleTitle: 테이블 분할
linktitle: 테이블 분할
description: "Python의 분할 테이블. 하나의 테이블을 두 개의 별도 테이블 Python로 분할하는 방법."
type: docs
weight: 100
url: /ko/python-net/split-table/
---

Aspose.Words Document Object Model로 표현되는 테이블은 독립된 행과 셀로 구성되어 있어 테이블 분할이 용이합니다.

테이블을 조작하여 두 개의 테이블로 분할하려면 원래 테이블의 일부 행을 새 테이블로 이동하면 됩니다. 이렇게 하려면 테이블을 분할하려는 행을 선택해야 합니다.

다음의 간단한 단계에 따라 원본 테이블에서 두 개의 테이블을 만들 수 있습니다

1. 하위 항목을 복제하지 않고 테이블의 복제본을 생성하여 이동된 행을 유지하고 원본 테이블 뒤에 삽입합니다
2. 지정된 행에서 시작하여 모든 후속 행을 이 두 번째 테이블로 이동합니다

다음 코드 예제에서는 특정 행에서 테이블을 두 테이블로 분할하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}
