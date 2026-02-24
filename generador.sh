#!/usr/bin/env bash

# Nombre base del proyecto (por defecto: MinimalApiProject)
PROJECT_NAME="${1:-MinimalApiProject}"
TEST_PROJECT_NAME="${PROJECT_NAME}.Tests"
SOLUTION_NAME="${PROJECT_NAME}Solution"

# Crea un proyecto de minimal api de .net
echo "CREANDO PROYECTO DE MINIMAL API DE .NET: ${PROJECT_NAME}"
dotnet new webapi -n "${PROJECT_NAME}"

# Crea un proyecto de pruebas para el proyecto de minimal api de .net
echo "CREANDO PROYECTO DE PRUEBAS PARA ${PROJECT_NAME}: ${TEST_PROJECT_NAME}"
dotnet new xunit -n "${TEST_PROJECT_NAME}"

# Asocia los dos proyectos
echo "ASOCIANDO LOS PROYECTOS"
dotnet add "${TEST_PROJECT_NAME}/${TEST_PROJECT_NAME}.csproj" reference "${PROJECT_NAME}/${PROJECT_NAME}.csproj"

# Crea un archivo de solución
echo "CREANDO ARCHIVO DE SOLUCIÓN: ${SOLUTION_NAME}"
dotnet new sln -n "${SOLUTION_NAME}"

# Agrega ambos proyectos a la solución
echo "AGREGANDO PROYECTOS A LA SOLUCIÓN"
dotnet sln "${SOLUTION_NAME}.sln" add "${PROJECT_NAME}/${PROJECT_NAME}.csproj"
dotnet sln "${SOLUTION_NAME}.sln" add "${TEST_PROJECT_NAME}/${TEST_PROJECT_NAME}.csproj"

# Agrega los paquetes necesarios para el proyecto de tests de minimal api de .net
echo "AGREGANDO PAQUETES NECESARIOS PARA EL PROYECTO DE TESTS DE MINIMAL API DE .NET"
dotnet add "${TEST_PROJECT_NAME}/${TEST_PROJECT_NAME}.csproj" package Microsoft.AspNetCore.Mvc.Testing
dotnet add "${TEST_PROJECT_NAME}/${TEST_PROJECT_NAME}.csproj" package MiniValidation

# Agrega un archivo de Docker en el proyecto de minimal api de .net
echo "AGREGANDO ARCHIVO DE DOCKER EN EL PROYECTO DE MINIMAL API DE .NET"
cat <<EOL > "${PROJECT_NAME}/Dockerfile"
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

#Copy the project file and restore dependencies
COPY * .csproj ./
RUN dotnet restore

#Copy the rest of the application code
COPY . ./
RUN dotnet publish -c Release -o out

#use the official ASP.NET runtime image as a runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app
COPY --from=build /app/out ./

#Expose the port the application will run on
EXPOSE 80

#Run the application
ENTRYPOINT ["dotnet", "${PROJECT_NAME}.dll"]
EOL

echo "PROYECTO DE DOCKER CREADO CON ÉXITO"

cd ..

echo "PROYECTO desplegado CON ÉXITO"

