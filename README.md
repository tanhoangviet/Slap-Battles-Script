# Slap Battles Script Bundle

Script goc da duoc tach thanh source bundle theo 3 nhanh chinh:

- `Tabs/`: code UI theo tab va theo tung place/map.
- `Utility/`: bootstrap, window, helper UI/runtime, data table dung chung.
- `Script/`: cac function/chunk chay chinh.

`Slap_Battles.lua` van la file output mot file de load/publish. Khi sua source bundle, build lai bang:

```sh
bash scripts/build_bundle.sh
```

Muon build ra file khac de test:

```sh
bash scripts/build_bundle.sh dist/Slap_Battles.lua
```

Thu tu noi file nam trong `bundle_order.txt`. Neu them chunk moi, them file vao dung vi tri trong manifest de giu dung scope cua cac `local`.

GitHub Actions workflow `Release Bundle` se build `main.luau` tu bundle va upload len Release theo tag duoc nhap khi chay workflow.
