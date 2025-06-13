{ lib
, buildSplitKeyboard
, self
}:

buildSplitKeyboard {
  name = "corne-firmware";

  src = lib.sourceFilesBySuffices self [ ".board" ".cmake" ".conf" ".defconfig" ".dts" ".dtsi" ".json" ".keymap" ".overlay" ".shield" ".yml" "_defconfig" ".h"];

  board = "nice_nano_v2";
  shield = "corne_%PART% nice_view_adapter nice_view";

  zephyrDepsHash = "sha256-3Q5UFVVA4BukIhAId9b/nm9kNvRBxBDg6Ajpg6pEeAY=";

  meta = with lib; {
    description = "Keyboard firmware for Corne with nice!view screens";
    license = licenses.mit;
    platforms = platforms.all;
    maintainers = with maintainers; [ croots ];
  };
}
