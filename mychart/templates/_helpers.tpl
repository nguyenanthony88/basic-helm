{{/* Generate basic labels */}}
{{- define "mychart.labels" }}
  labels:
    generator: helm
    date: {{ now | htmlDate }}
    chart: {{ .Chart.Name }}
    version: {{ .Chart.Version }}
{{- end }}

{{- define "mychart.app" -}}
app_name: {{ .Chart.Name }}
app_version: "{{ .Chart.Version }}"
{{- end -}}

{{- define "mychart.one" -}}
1
{{- end -}}

{{- define "mychart.test" -}}
{{- $one := include "mychart.one" . -}}
{{- $two := printf "%s%s" "http" $one -}}
{{ $two }}
{{- end -}}

{{- define "mychart.scopes" -}}
"{{- join "\",\"" .Values.scopes }}"
{{- end }}