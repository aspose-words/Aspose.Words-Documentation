---
title: Licencias y Suscripción
second_title: Aspose.Words por Java
articleTitle: Licencias y Suscripción
linktitle: Licencias y Suscripción
description: "Aspose.Words para Java ofrece diferentes planes de compra u ofrece una prueba gratuita y una Licencia Temporal de 30 días para su evaluación mediante Políticas de licencias y suscripción."
type: docs
weight: 60
url: /es/java/licensing/
timestamp: 2024-01-31-14-23-37
---

A veces, para estudiar mejor el sistema, desea sumergirse en el código lo más rápido posible. Para facilitar esto, Aspose.Words ofrece diferentes planes de compra u ofrece una prueba gratuita y una Licencia Temporal de 30 días para su evaluación.

{{% alert color="primary" %}}

Tenga en cuenta que hay una serie de políticas y prácticas generales que lo guían sobre cómo evaluar, licenciar adecuadamente y comprar nuestros productos. Puedes encontrarlos en el [Políticas de compra y FAQ](https://purchase.aspose.com/policies/) sección.

{{% /alert %}}

## Prueba Gratuita o Licencia Temporal

Aspose.Words es un software increíble que los desarrolladores pueden probar antes de comprarlo. Puede descargar/instalar Aspose.Words para Java y Aspose.Words para Android fácilmente a través de Java [desde Maven](https://releases.aspose.com/words/java/) para evaluación.

### Prueba Gratuita

La versión de evaluación es la misma que la comprada: la versión de prueba simplemente adquiere una licencia cuando agrega algunas líneas de código para aplicar la licencia.

La versión de prueba de Aspose.Words para Java y Aspose.Words para Android a través de Java sin la licencia especificada proporciona la funcionalidad completa del producto, pero inserta una marca de agua evaluativa en la parte superior del documento al cargarlo y guardarlo, y limita el tamaño máximo del documento a unos pocos cientos de párrafos.

### Licencia Temporal

Si desea probar Aspose.Words para Java y Aspose.Words para Android a través de Java sin las limitaciones de la versión de prueba, también puede solicitar una Licencia Temporal de 30 días. Para obtener más detalles, consulte el [Obtenga una Licencia Temporal](https://purchase.aspose.com/temporary-license/) página.

## Licencia Adquirida

Después de la compra, debe aplicar el archivo de licencia o incluirlo como recurso incrustado. Esta sección describe las opciones de cómo se puede hacer esto y también comenta algunas preguntas comunes.

{{% alert color="primary" %}}

Una licencia es un archivo de texto sin formato XML que contiene detalles como el nombre del producto, el número de desarrolladores con licencia, la fecha de vencimiento de la suscripción, etc.

El archivo está firmado digitalmente, así que no lo modifique. Incluso la adición inadvertida de un salto de línea adicional en el archivo lo invalidará.

{{% /alert %}}

{{% alert color="primary" %}}

Necesita configurar la licencia:

* solo una vez por dominio de aplicación
* antes de usar cualquier otra clase Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Puede encontrar información sobre precios en el [Información de Precios](https://purchase.aspose.com/pricing/words/family/) página.

{{% /alert %}}

### Protección De Su Licencia Adquirida

Después de comprar una licencia, debe leer detenidamente la información en página [Protección De Su Licencia Adquirida](https://purchase.aspose.com/orders/protecting-your-license-file) para proteger su archivo de licencia. Tenga en cuenta que esta página solo está disponible para verla si tiene una licencia paga.

### Opciones de Solicitud de Licencia

Las licencias se pueden aplicar desde varias ubicaciones:

* Ruta explícita
* La carpeta que contiene el archivo *Aspose.Words JAR*
* Un recurso incrustado en JAR se llama *Aspose.Words JAR*
* Como Licencia medida: un nuevo mecanismo de licencias

A menudo, la forma más sencilla de establecer una licencia es colocar el archivo de licencia en la misma carpeta que *Aspose.Words JAR* y especificar solo el nombre del archivo sin la ruta.

{{% alert color="primary" %}}

Utilice el método [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream) para licenciar un componente.

Llamar a **SetLicense** varias veces no es dañino, solo desperdicia tiempo del procesador.

Llamar a [SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String) varias veces tampoco es dañino, pero solo desperdicia tiempo del procesador y puede acumular el consumo de manera inadecuada.

{{% /alert %}}

#### Aplicar Licencia Mediante un Objeto de Archivo o Secuencia

{{% alert color="primary" %}}

Llame a **SetLicense** en su código de inicio antes de usar las clases Aspose.Words.

{{% /alert %}}

Al desarrollar una biblioteca de clases, puede llamar a **SetLicense** desde el constructor estático de su clase que usa Aspose.Words. El constructor estático se ejecutará antes de crear una instancia de su clase para garantizar que la licencia Aspose.Words esté instalada correctamente.

##### Cargar una licencia desde un archivo

Con el método [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String), puede intentar encontrar el archivo de licencia en los recursos incrustados o en la carpeta que contiene el JARs de su aplicación para usarlo más adelante.

El siguiente ejemplo de código muestra cómo inicializar una licencia desde una carpeta:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### Cargar una licencia desde un objeto `Stream`

El siguiente ejemplo de código muestra cómo inicializar una licencia desde una secuencia utilizando otro método [SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream):

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### Incluya el Archivo de licencia como Recurso Incrustado

Una forma ordenada de empaquetar una licencia con su aplicación y asegurarse de que no se pierda es incluirla como un recurso incrustado. Simplemente puede copiar el archivo LIC en la carpeta de recursos de su proyecto.

Reconstruir el proyecto debería incrustar el .archivo lic en la aplicación .archivo jar. Después de eso, puede solicitar una licencia usando el siguiente código:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### Aplicar Licencia Medida

Aspose.Words permite a los desarrolladores aplicar una clave medida. Este es un nuevo mecanismo de concesión de licencias.

El nuevo mecanismo de concesión de licencias se utilizará junto con el método de concesión de licencias existente. Aquellos clientes que deseen que se les facture en función del uso de las funciones API pueden utilizar la Licencia medida.

Después de completar todos los pasos necesarios para obtener este tipo de licencia, recibirá las claves, no el archivo de licencia. Esta clave medida se puede aplicar utilizando la clase [Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/) especialmente introducida para este propósito.

No llame al método **SetMeteredKey** con frecuencia para que este método de licencia acumule correctamente el consumo y nos lo informe. Simplemente cree una instancia de la biblioteca Aspose.Words, llame a **SetMeteredKey** una vez, luego deje la biblioteca instanciada y reutilícela.

El siguiente ejemplo de código muestra cómo establecer claves públicas y privadas medidas:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

Tenga en cuenta que debe tener una conexión a Internet estable para el uso correcto de la licencia Medida, ya que el mecanismo Medido requiere la interacción constante con nuestros servicios para los cálculos correctos.

Para obtener más detalles, consulte el [Licencias con Contador FAQ](https://purchase.aspose.com/faqs/licensing/metered/) sección.

{{% /alert %}}

### Cambiar el Nombre del Archivo de Licencia

El nombre de archivo de la licencia no tiene que ser " Aspose.Words.LIC". Puede cambiarle el nombre a su gusto y usar ese nombre al configurar una licencia en su aplicación.

### Excepción" No se puede encontrar el nombre de archivo de la licencia"

Cuando compra y descarga una licencia, el sitio web de Aspose nombra el archivo de licencia *"Aspose.Words.LIC"*. Descargue el archivo de licencia usando su navegador. En este caso, algunos navegadores reconocen el archivo de licencia como XML y lo anexan .extensión xml, por lo que el nombre completo del archivo en su computadora se convierte en *"Aspose.Words.lic.XML"*.

Cuando Microsoft Windows está configurado para ocultar extensiones para tipos de archivo conocidos (desafortunadamente, este es el valor predeterminado en la mayoría de las Windows instalaciones), el archivo de licencia aparecerá como *"Aspose.Words. LIC"* en Windows Explorer. Probablemente pensará que este es el nombre real del archivo y llamará a **SetLicense** pasándolo *"Aspose.Words.LIC"*, pero no existe tal archivo, de ahí la excepción.

Para resolver el problema, cambie el nombre del archivo para eliminar lo invisible .extensión xml. También le recomendamos que desactive la opción" ocultar extensiones " en Microsoft Windows.

## Uso de Varios Productos Aspose

Si usa varios productos Aspose en su aplicación, como Aspose.Words y `Aspose.Cells`, estos son algunos consejos útiles:

* Establezca la licencia para cada producto Aspose por separado. Incluso si tiene un único archivo de licencia para todos los componentes, por ejemplo, " Aspose.Total.lic", aún debe llamar a **SetLicense** por separado para cada producto Aspose que use en su aplicación.
* Utilice el Nombre de la Clase de Licencia Completa. Cada producto Aspose tiene una clase `License` en su propio espacio de nombres. Por ejemplo, Aspose.Words tiene **com.aspose.words.License** y `Aspose.Cells` tiene com.aspose.células.Clase de licencia. El uso del nombre de clase completo le permite evitar confusiones sobre qué licencia se aplica a qué producto.
