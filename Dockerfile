FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env

COPY . proj/

WORKDIR /proj/app

RUN ["dotnet", "publish", "-c", "Release"]

CMD ["/proj/app/bin/Release/netcoreapp3.1/publish/myapp"]
