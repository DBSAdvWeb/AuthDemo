FROM mcr.microsoft.com/dotnet/sdk:5.0

WORKDIR /webapp

COPY *.csproj ./

RUN dotnet restore

EXPOSE 8085

COPY . ./

RUN dotnet publish -c Release -o out

# RUN dotnet ef database update

ENTRYPOINT [ "dotnet", "watch", "run", "--no-restore", "--urls", "https://0.0.0.0:5001"]
