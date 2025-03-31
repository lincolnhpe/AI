#!/bin/bash

# Define the OpenShift node name
NODE="daggpuworker1.rdc60.lan"

# Define the labels
LABELS=(
    "nvidia.com/cuda.driver-version.full=550.144.03"
    "nvidia.com/cuda.driver-version.major=550"
    "nvidia.com/cuda.driver-version.minor=144"
    "nvidia.com/cuda.driver-version.revision=03"
    "nvidia.com/cuda.driver.major=550"
    "nvidia.com/cuda.driver.minor=144"
    "nvidia.com/cuda.driver.rev=03"
    "nvidia.com/cuda.runtime-version.full=12.4"
    "nvidia.com/cuda.runtime-version.major=12"
    "nvidia.com/cuda.runtime-version.minor=4"
    "nvidia.com/cuda.runtime.major=12"
    "nvidia.com/cuda.runtime.minor=4"
    "nvidia.com/gfd.timestamp=1740703399"
    "nvidia.com/gpu-driver-upgrade-state=upgrade-done"
    "nvidia.com/gpu.compute.major=7"
    "nvidia.com/gpu.compute.minor=0"
    "nvidia.com/gpu.count=1"
    "nvidia.com/gpu.deploy.container-toolkit=true"
    "nvidia.com/gpu.deploy.dcgm=true"
    "nvidia.com/gpu.deploy.dcgm-exporter=true"
    "nvidia.com/gpu.deploy.device-plugin=true"
    "nvidia.com/gpu.deploy.driver=true"
    "nvidia.com/gpu.deploy.gpu-feature-discovery=true"
    "nvidia.com/gpu.deploy.node-status-exporter=true"
    "nvidia.com/gpu.deploy.operator-validator=true"
    "nvidia.com/gpu.family=volta"
    "nvidia.com/gpu.machine=VMware201"
    "nvidia.com/gpu.memory=32768"
    "nvidia.com/gpu.mode=compute"
    "nvidia.com/gpu.present=true"
    #"nvidia.com/gpu.product=Tesla-V100S-PCIE-32GB"
    "nvidia.com/gpu.replicas=1"
    "nvidia.com/gpu.sharing-strategy=none"
    "nvidia.com/mig.capable=false"
    "nvidia.com/mig.strategy=single"
    "nvidia.com/mps.capable=false"
    "nvidia.com/vgpu.present=false"
    "nvidia.com/gpu-driver-upgrade-enabled=true"
)

# Apply labels to the node
for LABEL in "${LABELS[@]}"; do
    echo "Applying label: $LABEL"
    oc label node "$NODE" "$LABEL" --overwrite
done

echo "All labels applied successfully to node $NODE."

