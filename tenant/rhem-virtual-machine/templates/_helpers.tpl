{{/*
Do the required math to figure out what worker to schedule the VM on
Usage: {{ include "rhem-virtual-machine.determineWorker" (list "user1" "abc12") }}
Output: worker-cluster-abc12-1
*/}}

{{- define "rhem-virtual-machine.determineWorker" -}}
{{- /* 1. Extract arguments from the list passed in */ -}}
{{- $userString := index . 0 -}}
{{- $clusterID := index . 1 -}}

{{- /* 2. Strip "user" from string (e.g., "user25" -> "25") and convert to int */ -}}
{{- $userNum := trimPrefix "user" $userString | int -}}

{{- /* 3. Calculate the worker number based on groups of 10 */ -}}
{{- /* Logic: (UserNum - 1) / 10 + 1. Integer division handles the "floor", so we adjust to act as "ceil" */ -}}
{{- $workerNum := add (div (sub $userNum 1) 10) 1 -}}

{{- /* 4. Print the final formatted string */ -}}
{{- printf "worker-cluster-%s-%d" $clusterID $workerNum -}}
{{- end -}}