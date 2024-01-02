# VolSync Template
## Flux Kustomization
This requires `postBuild` configured on the Flux Kustomization
```yaml
apiVersion: kustomize.toolkit.fluxcd.io/v1
kind: Kustomization
metadata:
  name: &app plex
  namespace: flux-system
spec:
  # ...
  postBuild:
    substitute:
      APP: *app
      VOLSYNC_CAPACITY: 5Gi
```
and then the template referenced in the applications `kustomization.yaml`
```yaml
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
  # ...
  - ../../../../templates/volsync
```

## `postBuild` variables:
* `APP`: The application name
* `VOLSYNC_CAPACITY`: The PVC size (default: `1Gi`)
* `VOLSYNC_CACHE_CAPACITY`: The size of the restic metadata cache volume (default: `1Gi`)
* `VOLSYNC_STORAGECLASS`: What `StorageClass` to use for this PVC (default: `ceph-block`)
* `VOLSYNC_ACCESSMODES`: `ReadWriteOnce`, `ReadOnlyMany`, `ReadWriteMany`, or `ReadWriteOncePod` (default: `ReadWriteOnce`)
* `VOLSYNC_CACHE_ACCESSMODES`: Same as `VOLSYNC_ACCESSMODES` but for the cache (default: `ReadWriteOnce`)
* `VOLSYNC_VOLUMEMODE`: `Filesystem` or `Block` (default: `Filesystem`)
* `VOLSYNC_COPYMETHOD`: `Clone`, `Direct`, or `Snapshot` (default: `Snapshot`)
* `VOLSYNC_SNAPSHOTCLASS`: The `VolumeSnapshotClass` if using `Snapshot` copy method (default: `csi-ceph-blockpool`)
* `VOLSYNC_CACHE_STORAGECLASS`: What `StorageClass` to use for the cache (default: `local-hostpath`)
* `APP_UID`: UID for the `moverSecurityContext` (default: `568`)
* `APP_GID`: GID for the `moverSecurityContext` (default: `568`)
