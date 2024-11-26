---
title: PDF/A및PDF/UA에 저장할 때 경고
second_title: Aspose.WordsJava
articleTitle: PDF/A및PDF/UA에 저장할 때 접근성 문제 경고
linktitle: PDF/A및PDF/UA에 저장할 때 접근성 문제 경고
description: "PDF/A및PDF/UA은 문서 내용과 관련된 접근성 요구 사항을 부과합니다. Java에서PDF/A또는PDF/UA으로 저장하고 문제가 준수를 위반하면 경고가 발령됩니다."
type: docs
weight: 29
url: /ko/java/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A및PDF/UA형식은 워드에서PDF로 자동 변환하는 동안 충족할 수 없는 문서 내용과 관련된 여러 가지 접근성 요구 사항을 부과합니다. 이러한 요구 사항은 이전 문서*"Working with PDF/A or PDF/UA"*에 설명되어 있습니다. 이제 이러한 문제 중 일부에 대한 경고가 발급됩니다.

PDF/A또는PDF/UA형식 중 하나로 저장할 때 경고가 발생하고 문제가 규정 준수를 위반합니다. 예를 들어,누락된 문서 제목에 대한 경고는PDF/UA에 저장할 때 발급되고PDF/A에 저장할 때 발급되지 않습니다.

모든 경고는[WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.MinorFormattingLoss**및[WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**.Pdf**입니다. 다음은 새 설명 경고 값의 목록입니다:

| 설명 경고 값 | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "문서 제목이 없습니다. 이는 규정 준수 요구 사항을 위반합니다. 출력 문서가 완전히 호환되지 않습니다." |  | {{< emoticons/tick >}} |
| "이 문서에는 레벨이 연속되지 않는 제목이 포함되어 있습니다. 이는 규정 준수 요구 사항을 위반합니다. 출력 문서가 완전히 호환되지 않습니다." |  | {{< emoticons/tick >}} |
| "문서에 대체 텍스트가 없는 모양이 있습니다. 이는 규정 준수 요구 사항을 위반합니다. 출력 문서가 완전히 호환되지 않습니다." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "문서에 대체 텍스트가 없는 테이블이 있습니다. 이는 규정 준수 요구 사항을 위반합니다. 출력 문서가 완전히 호환되지 않습니다." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "문서에 대체 텍스트가 없는 하이퍼링크가 있습니다. 이는 규정 준수 요구 사항을 위반합니다. 출력 문서가 완전히 호환되지 않습니다." |  | {{< emoticons/tick >}} |
| "문서에 헤더 행/열이 없는 테이블이 있습니다. 이는 규정 준수 요구 사항을 위반합니다. 출력 문서가 완전히 호환되지 않습니다." |  | {{< emoticons/tick >}} |
| "이 문서에는 유니코드PUA문자가 포함되어 있습니다. 이는 규정 준수 요구 사항을 위반합니다. 출력 문서가 완전히 호환되지 않습니다." | {{< emoticons/tick >}} |  |
| "문서에 포함되어 있습니다.노트데프 글리프 이는 규정 준수 요구 사항을 위반합니다. 출력 문서가 완전히 호환되지 않습니다." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
