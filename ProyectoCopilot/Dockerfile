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
ENTRYPOINT ["dotnet", "ProyectoCopilot.dll"]
