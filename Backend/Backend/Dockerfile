# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/sdk:6.0 as build-env
WORKDIR /api

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /api
COPY --from=build-env /api/out .
ENTRYPOINT ["dotnet", "Backend.dll"]
