FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine AS builder
ARG NUGET_USER
ARG NUGET_PASSWORD
ARG NUGET_FEED
ARG CONFIGURATION="Release"
ARG PROJECT="StudioLE.Example.Cli/src/StudioLE.Example.Cli.csproj"
ARG RUNTIME="linux-musl-x64"
WORKDIR /app
RUN dotnet nuget add source \
  --username "${NUGET_USER}" \
  --password "${NUGET_PASSWORD}" \
  --store-password-in-clear-text \
  "${NUGET_FEED}"
COPY . .
RUN dotnet publish "${PROJECT}" \
  -p:SurveyorFeed="${NUGET_FEED}" \
  -p:SurveyorToken="${NUGET_PASSWORD}" \
  -p:PublishSingleFile=true \
  -p:IncludeNativeLibrariesForSelfExtract=true \
  -p:SelfContained=false \
  -p:DebugType=embedded \
  -p:GenerateDocumentationFile=false \
  --configuration "${CONFIGURATION}" \
  --runtime "${RUNTIME}" \
  --output artifacts

FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine
ARG EXECUTABLE="StudioLE.Example"
COPY --from=builder /app/artifacts/"${EXECUTABLE}" /bin/app
RUN chmod +x /bin/app
ENTRYPOINT ["app"]
