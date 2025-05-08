# Tsp-TerraformDemo

## Pasos de Instalación

1. **Instalar Terraform**
   - Descarga el paquete adecuado para tu sistema operativo desde la [página de descargas de Terraform](https://www.terraform.io/downloads.html).
   - Descomprime el archivo descargado y mueve el binario terraform a un directorio incluido en la variable de entorno PATH de tu sistema.

2. **Instalar Azure CLI**
   - Sigue las instrucciones en la [página de instalación de Azure CLI](https://learn.microsoft.com/es-es/cli/azure/install-azure-cli) para instalar Azure CLI en tu sistema operativo.

3. **Autenticarse con Azure**
   - Abre una terminal y ejecuta el siguiente comando para iniciar sesión en tu cuenta de Azure:
     ```bash
     az login
     ```

4. **Clonar el Repositorio**
   - Clona este repositorio en tu máquina local:
     ```bash
     git clone <repository-url>
     cd Tsp-TerraformDemo
     ```

5. **Configurar Variables**
   - Crea un archivo `terraform.tfvars` en el directorio raíz y define las variables necesarias, como:
     - `resource_group_name`
     - `storage_account_name`
     - `container_name`
     - `state_key`
     - `aks_name`
     - `location`
     - `aks_node_count`
     - `acr_name`
     - `app_service_plan_name`
     - `webapp_names`
     - `tags`

6. **Inicializar Terraform**
   - Ejecuta el siguiente comando para inicializar la configuración de Terraform:
     ```bash
     terraform init
     ```

7. **Validar la Configuración**
   - Para validar la configuración de Terraform, ejecuta:
     ```bash
     terraform validate
     ```

8. **Generar el Grafo de Dependencias**
   - Para generar un grafo de dependencias, ejecuta:
     ```bash
     terraform graph
     ```
   - Guarda el grafo en un archivo:
     ```bash
     terraform graph > graph.dot
     ```

9. **Obtener Outputs**
   - Para obtener un valor específico de los outputs, ejecuta:
     ```bash
     terraform output -raw app_service_plan_name
     ```

10. **Importar Recursos Existentes**
    - Para importar un recurso existente, como un clúster de AKS, usa el siguiente comando:
      ```bash
      terraform import module.aks.azurerm_kubernetes_cluster.aks /subscriptions/421646a2-36f8-41df-87f3-b257d6a815a9/resourceGroups/rg-tsp-terraform/providers/Microsoft.ContainerService/managedClusters/tsp-jrlcluster-aks
      ```

11. **Planificar el Despliegue**
    - Ejecuta el siguiente comando para crear un plan de ejecución:
      ```bash
      terraform plan
      ```

12. **Aplicar la Configuración**
    - Ejecuta el siguiente comando para aplicar los cambios necesarios para alcanzar el estado deseado de la configuración:
      ```bash
      terraform apply
      ```

13. **Verificar el Despliegue**
    - Una vez que el comando `apply` se complete, verifica que los recursos se hayan creado en el portal de Azure.

13. **Destruir el ambiente**
    - Ejecuta el siguiente comando para destruir el ambiente:
      ```bash
      terraform destroy
      ```

## Limpieza

1. **Crear y Seleccionar Workspaces**
   - Para crear un nuevo workspace:
     ```bash
     terraform workspace new dev
     ```
   - Para seleccionar un workspace existente:
     ```bash
     terraform workspace select dev
     ```
   - Para verificar el workspace actual:
     ```bash
     terraform workspace show
     ```

2. **Planificar y Aplicar con Variables**
   - Planifica el despliegue usando un archivo de variables:
     ```bash
     terraform plan -var-file="terraform.tfvars"
     ```
   - Aplica la configuración usando un archivo de variables:
     ```bash
     terraform apply -var-file="terraform.tfvars"
     ```

