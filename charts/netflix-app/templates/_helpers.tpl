{{- define "netflix-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- define "netflix-app.fullname" -}}
{{- printf "%s" (include "netflix-app.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
