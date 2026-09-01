# Compiled QML provenance

Omarchy UI generated this package's native Qt module from the tree-shaken Zui and
Omarchy host QML graph. The exact generated source graph and CMake build definition are
retained in `audit/qml-source/` for independent audit and byte-for-byte reproduction.

- Format: `qt-aot-qml-module` version 1
- Qt: `6.11.2`
- Module: `OmarchyUI.Bundles.B3068ce0ae985ee2b3a8f`
- Source fingerprint: `3068ce0ae985ee2b3a8f9eb73aff0874a1b1e86513c4a17cccef78bf44430bd2`

## Artifacts

- `OmarchyUI/Bundles/B3068ce0ae985ee2b3a8f/libomarchy_ui_bundle_b3068ce0ae985ee2b3a8f.so` — `fbaba34178bbb12917bb785e28eb38ed5ef99e43fb7ebc3c75d80f0a41cebdc2`
- `OmarchyUI/Bundles/B3068ce0ae985ee2b3a8f/libomarchy_ui_bundle_b3068ce0ae985ee2b3a8fplugin.so` — `f93e93bb3a0b5e2f564833bfdb17082743790a2c5f362f63323c00d68123c634`

Verify the packaged libraries from the plugin directory:

```bash
sha256sum --check audit/omarchy-ui-qml-bundle.sha256
```

Rebuild the checked-in libraries from the retained sources and compare every byte:

```bash
audit/rebuild-qml-bundle.sh
```

The pinned toolchain, CI process, and GitHub artifact-attestation flow are documented in
[`REPRODUCIBLE_BUILD.md`](REPRODUCIBLE_BUILD.md).

`Service.qml`, `Panel.qml`, and `BarWidget.qml` are the minimal loader shims required for the
plugin kinds declared in `manifest.json`. Application UI lives in the compiled
module recorded by `audit/omarchy-ui-qml-bundle.json`.
