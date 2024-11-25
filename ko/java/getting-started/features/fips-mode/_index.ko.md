---
title: FIPS모드
second_title: Aspose.WordsJava
articleTitle: FIPS모드
linktitle: FIPS모드
description: "Java의Aspose.Words은FIPS표준을 준수하기 위해 문서를 처리할 때 여러 암호화 및 해시 알고리즘을 사용합니다."
type: docs
weight: 80
url: /ko/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words은 문서를 처리할 때 여러 암호화 및 해시 알고리즘을 사용하며 이 문서에서는FIPS표준과 어떻게 관련이 있는지 설명합니다.

연방 정보 처리 표준(FIPS)은 컴퓨터 보안 및 상호 운용성 보장과 같은 다양한 목적으로 요구 사항을 설정하기 위해 미국 연방 정부가 개발 한 공개적으로 발표 된 표준의 집합입니다.

## BouncyCastle구출

Aspose.Words의 경우Java및Aspose.Words의 경우Android의 경우 탄력성FIPSJAR을 사용하여 문서를 암호화,암호 해독 및 서명합니다. JAR은FIPS140-2,레벨 1 요구 사항을 충족하도록 설계 및 구현되었습니다.

FIPS140-2 는 암호 모듈을 승인하는 데 사용되는 미국 정부의 컴퓨터 보안 표준입니다. 이 표준은 암호화 모듈에 의해 충족 될 보안 요구 사항을 지정하고 광범위한 잠재적 응용 프로그램 및 환경을 커버하기위한 높은 수준의 보안을 제공합니다. FIPS140-2 에 대한 자세한 내용은 다음을 참조하십시오. [NIST출판](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

.NET의 경우Aspose.Words은FIPS를 지원하지 않고 일반 탄력성 버전을 사용합니다.

## FIPS모드 활성화

18.10Aspose.Words버전에서 시작하여 일반 및FIPS의 두 가지 모드로 작업 할 수 있습니다.

기본적으로Aspose.Words은 일반 모드에서 작동하므로 이 경우 알고리즘 및 키 사용에 제한이 없습니다.

다음 방법을 사용하여Aspose.Words을 일반 모드에서FIPS모드로 전환할 수 있습니다:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

보안상의 이유로 런타임에 모드를 일반으로 다시 변경할 수 없습니다.

또한Aspose.Words은 운영 체제가FIPS모드에 있는지 여부를 자동으로 인식할 수 없으므로Aspose.Words을FIPS모드로 명시적으로 전환해야 합니다.

다음 방법을 사용하여Java의Aspose.Words이FIPS모드에 있는지 확인합니다:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

FIPS모드가 켜져 있을 때 단어를 바꾸면 승인되지 않은 길이의 일부 암호화 알고리즘 및 키를 사용할 수 없습니다.

예를 들어FIPS모드가 활성화되어 있는 동안ODT암호화된 문서를 열려고 할 때 다음과 같은 예외가 나타날 수 있습니다:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException:복어 알고리즘을 사용하는ODT파일을 열려는 시도. 이 알고리즘은FIPS승인 알고리즘 목록에 없습니다.

{{% /alert %}}

이것은 복어 알고리즘이FIPS승인된 알고리즘 목록에 없기 때문에 발생합니다.

부적절한 길이의 키를 사용하는 경우 유사한 예외가 발생할 수 있습니다:

UnapprovedSecurityOperationException:FIPS모드에서RSA에 크기가 1024 인 키는 사용할 수 없습니다.

승인된 알고리즘 목록에 대한 자세한 내용은 다음을 참조하십시오 [BouncyCastle사용자 가이드](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf)"시퍼 알고리즘(대칭)"


