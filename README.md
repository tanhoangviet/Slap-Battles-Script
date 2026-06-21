# Slap Battles Script Bundle

Script goc da duoc tach thanh source bundle theo 3 nhanh chinh:

- `Tabs/`: code UI theo tab va theo tung place/map.
- `Utility/`: bootstrap, window, helper UI/runtime, data table dung chung.
- `Script/`: cac function/chunk chay chinh.

`Slap_Battles.lua` van la file raw output mot file de load/test nhanh. Khi sua source bundle, build lai raw source bang:

```sh
bash scripts/build_bundle.sh
```

Muon build ra file khac de test:

```sh
bash scripts/build_bundle.sh dist/Slap_Battles.lua
```

Release artifact dung Darklua de minify/obfuscate thanh `main.luau`:

```sh
bash scripts/build_darklua.sh main.luau
```

May can cai `darklua` trong PATH neu build local. Workflow se tu tai Darklua release binary va chay script tren.

Thu tu noi file nam trong `bundle_order.txt`. Neu them chunk moi, them file vao dung vi tri trong manifest de giu dung scope cua cac `local`.

Luu y: cac file trong `Tabs/`, `Utility/`, va `Script/` dang la partial chunks, khong phai ModuleScript doc lap. Dung `require("../...")` truc tiep se tach scope va lam hong cac bien `local` duoc chia se tu chunk truoc. Build hien tai gom chunks theo manifest truoc, sau do moi dua qua Darklua.

GitHub Actions workflow `Release Bundle` se build `main.luau` bang Darklua tu bundle va upload len Release theo tag duoc nhap khi chay workflow.
