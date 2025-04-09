{{- define "imagePullSecret" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.global.nvidia.docker.registry (printf "%s:%s" .Values.global.nvidia.docker.username .Values.global.nvidia.docker.password | b64enc) | b64enc }}
{{- end }}
