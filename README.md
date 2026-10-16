# ipr-patcher-en

English patched builds of Idoly Pride, adapted from [CyleAR/ipr-patcher](https://github.com/CyleAR/ipr-patcher).
Modules come from [tokanada/HoshimiLocalify-en](https://github.com/tokanada/HoshimiLocalify-en) (full and lite).

Runs daily at 11:17 UTC (3:17 am UTC-8) and builds only when the game version or the latest HoshimiLocalify-en release changes.
Each release is tagged `IdolyPride_<game version>_<data tag>`. The newest 7 releases are kept, plus the newest one per game version.

- `*_full_embedded.apk` / `*_lite_embedded.apk`: install over the original game (use these for updates).
- `*_embedded_cloned.apk`: separate app "IDOLY PRIDE" (`game.qualiarts.idolypride_en`), installs side by side.
- `*_lspatch_manager.apk`: for use with the LSPatch manager app.
- `*_fontpatched.apk`: unpatched game with the font fix only.
