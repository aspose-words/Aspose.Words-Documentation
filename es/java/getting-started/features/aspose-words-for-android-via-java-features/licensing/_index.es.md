---
title: Licencias
second_title: Aspose.Words por Java
articleTitle: Licencias
linktitle: Licencias
description: "Licencias Aspose.Words para Android a través de Java."
type: docs
weight: 60
url: /es/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

A veces, para estudiar mejor el sistema, desea sumergirse en el código lo más rápido posible. Para facilitar esto, Aspose.Words ofrece diferentes planes de compra u ofrece una prueba gratuita y una Licencia Temporal de 30 días para su evaluación.

{{% alert color="primary" %}}

Tenga en cuenta que hay una serie de políticas y prácticas generales que lo guían sobre cómo evaluar, licenciar adecuadamente y comprar nuestros productos. Puedes encontrarlos en el [Políticas de compra y FAQ](https://purchase.aspose.com/policies/) sección.

{{% /alert %}}

## Prueba Gratuita o Licencia Temporal

Aspose.Words es un software increíble que los desarrolladores pueden probar antes de comprarlo. Puede descargar/instalar Aspose.Words para Java y Aspose.Words para Android fácilmente a través de Java [desde la página de descarga](https://releases.aspose.com/words/androidjava/) para evaluación.

La versión de evaluación es la misma que la comprada: la versión de prueba simplemente adquiere una licencia cuando agrega algunas líneas de código para aplicar la licencia.

{{% alert color="primary" %}}

Obtenga más información sobre la Versión de Prueba Gratuita o la Licencia Temporal de Aspose.Words para Android a través de Java en [la página de licencias y suscripción](/words/java/licensing/).

{{% /alert %}}

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
* Un recurso incrustado
* Como Licencia medida: un nuevo mecanismo de licencias

#### Cargando el archivo de licencia

En Aspose.Words para Android a través de Java, la licencia puede ser [incrustado como recurso](/words/java/licensing/), o cargado desde una secuencia:

1. Coloque el archivo de licencia en cualquier ubicación en **/mnt/sdcard/**.
1. Cree una secuencia que haga referencia al archivo.
1. Pase la secuencia (que contiene el archivo de licencia) al método `SetLicense`.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Aplicar una licencia desde un recurso incrustado. Para acceder a la licencia como recurso por nombre desde un archivo de paquete Android:

1. Agregue el archivo de licencia como recurso a la carpeta **res/raw** de su aplicación.
   El archivo de licencia debe estar visible en la carpeta **res/raw**.
1. Acceda/cargue la licencia desde el recurso con el siguiente ejemplo de código.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Aplicar Licencia Medida

Aspose.Words permite a los desarrolladores aplicar la clave medida. Es un nuevo mecanismo de concesión de licencias. El nuevo mecanismo de concesión de licencias se utilizará junto con el método de concesión de licencias existente. Aquellos clientes que deseen que se les facture en función del uso de las funciones API pueden utilizar la licencia medida.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Cambiar el Nombre del Archivo de Licencia

El nombre del archivo de licencia no tiene que ser 'Aspose.Words.Android.Java.lic. Puede cambiarle el nombre a lo que quiera y usar ese nombre al llamar a `License.SetLicense`.

### Excepción: No se puede encontrar el nombre de archivo de la licencia

Cuando descarga una licencia que ha comprado, el archivo de licencia se denomina **Aspose.Words.Android.Java.lic** de forma predeterminada. El archivo de licencia se descarga a través de su navegador y algunos navegadores reconocen el archivo de licencia como XML y agregan un .extensión xml al nombre. El archivo descargado se convierte en **Aspose.Words.Android.Java.lic.XML**.

Cuando Microsoft Windows está configurado para ocultar extensiones de tipos de archivo conocidos (lamentablemente, esto es lo predeterminado en la mayoría de las Windows instalaciones), el archivo de licencia aparece como **Aspose.Words.Android.Java.lic** en Windows Explorer. Parece el nombre de archivo esperado. Si llamas `License.SetLicense` y pasas ' Aspose.Words.Android.Java.lic', verás y excepción porque no existe tal archivo.

Para resolver el problema, cambie el nombre del archivo para eliminar lo invisible .extensión xml. Le recomendamos que desactive la opción" ocultar extensiones " en Microsoft Windows.

## Uso de Varios Productos Aspose

Si usa varios productos Aspose en una aplicación, por ejemplo Aspose.Words y `Aspose.Cells`, aquí hay algunos consejos útiles.

- Establezca la licencia para cada producto Aspose por separado.
  Incluso si tiene un único archivo de licencia para todos los componentes, por ejemplo ' Aspose.Total.Android.Java.lic', aún necesita llamar al método `License.SetLicense` por separado para cada producto Aspose.
- Utilice el nombre de clase de licencia completo.
  Cada producto Aspose tiene una clase `License` en su espacio de nombres. Por ejemplo, Aspose.Words tiene com.aspose.palabras.Licencia y `Aspose.Cells` tiene com.aspose.células.Clase de licencia. El uso del nombre de clase fullyqualified le permite evitar confusiones sobre qué licencia se aplica a qué producto.
