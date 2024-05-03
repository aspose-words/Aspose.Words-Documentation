---
title: Modo FIPS
second_title: Aspose.Words para Java
articleTitle: Modo FIPS
linktitle: Modo FIPS
description: "Aspose.Words para Java utiliza varios algoritmos de criptografía y hash al procesar documentos para cumplir con los estándares FIPS."
type: docs
weight: 80
url: /es/java/fips-mode/
---

Aspose.Words utiliza varios algoritmos de criptografía y hash al procesar documentos y este artículo describe cómo está relacionado con los estándares FIPS.

Las Normas Federales de Procesamiento de la Información (FIPS) son un conjunto de normas publicadas abiertamente elaboradas por el gobierno federal de los Estados Unidos para establecer requisitos para diversos fines, tales como garantizar la seguridad informática y la interoperabilidad.

## BouncyCastle al rescate

Aspose.Words para Java y Aspose.Words para Android utilizar el Bouncy Castle FIPS JAR para encriptación, descifrado y documentos de firma. El JAR ha sido diseñado y aplicado para satisfacer las necesidades de FIPS 140-2, Nivel 1.

FIPS 140-2 es un estándar de seguridad informática del gobierno de los Estados Unidos utilizado para aprobar módulos criptográficos. Esta norma especifica los requisitos de seguridad que serán satisfechos por un módulo criptográfico y proporciona altos niveles de seguridad destinados a cubrir una amplia gama de posibles aplicaciones y entornos. Para más detalles sobre FIPS 140-2, vea el [NIST publication](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words para .NET utiliza la versión general Bouncy Castle sin soporte para FIPS.

## Activación del modo FIPS

Partiendo de la versión 18.10 Aspose.Words permite trabajar en dos modos: General y FIPS.

Por defecto Aspose.Words funciona en el modo general, por lo que no hay restricciones en el uso de algoritmos y claves en este caso.

Puedes cambiar Aspose.Words desde el modo General al modo FIPS utilizando el siguiente método:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Por razones de seguridad no puede cambiar el modo de regreso a General en tiempo de ejecución.

También tenga en cuenta que Aspose.Words no puede reconocer automáticamente si su sistema operativo está en modo FIPS, por lo tanto tiene que cambiar Aspose.Words al modo FIPS explícitamente

Utilice el siguiente método para asegurarse Aspose.Words para Java está en modo FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Cuando el modo FIPS esté encendido, Aspose Words le impedirá usar algunos algoritmos y claves de criptografía con longitudes no aprobadas.

Por ejemplo, cuando intenta abrir un documento cifrado de ODT mientras el modo FIPS está activo, puede ver la siguiente excepción:

{{% alert color="primary" %}}

No aprobadoSecurityOperation Excepción: Un intento de abrir un archivo ODT que utiliza el algoritmo de Blowfish. Este algoritmo no está en la lista de algoritmos aprobados por FIPS.

{{% /alert %}}

Esto sucede porque el algoritmo de Blowfish no está en la lista de algoritmos aprobados por FIPS.

La excepción similar puede ocurrir si se utilizan llaves de longitud inapropiada:

No aprobadoSecurityOperation Excepción: No puede utilizar una llave con el tamaño 1024 para RSA en modo FIPS.

Para más detalles sobre la lista de algoritmos aprobados, vea [Bouncy Castle User Guide](https://downloads.bouncycastle.org/fips-java/BC-FJA-UserGuide-1.0.1.pdf), "Cipher Algorithms (Simétrico)".


