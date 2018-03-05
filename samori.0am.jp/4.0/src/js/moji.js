$(function() {
  //  回る
  $(".spin").letterfx({
    "fx": "spin"
  });
  //フェード
  $(".fade").letterfx({
    "fx": "fade",
    "backwards": false,
    "timing": 100,
    "fx_duration": "350ms",
    "letter_end": "restore",
    "element_end": "restore"
  });
  //浮き上がる？
  $(".grow").letterfx({
    "fx": "grow",
    "backwards": false,
    "timing": 50,
    "fx_duration": "350ms",
    "letter_end": "restore",
    "element_end": "restore"
  });
  //すわーーーー
  $(".smear").letterfx({
    "fx": "smear",
    "backwards": false,
    "timing": 50,
    "fx_duration": "350ms",
    "letter_end": "restore",
    "element_end": "restore"
  });
  $(".fall").letterfx({
    "fx": "fall",
    "backwards": false,
    "timing": 50,
    "fx_duration": "350ms",
    "letter_end": "restore",
    "element_end": "restore"
  });
  $(".swirl").letterfx({
    "fx": "swirl",
    "backwards": false,
    "timing": 50,
    "fx_duration": "350ms",
    "letter_end": "restore",
    "element_end": "restore"
  });
  $(".wave").letterfx({
    "fx": "wave",
    "backwards": false,
    "timing": 50,
    "fx_duration": "350ms",
    "letter_end": "rewind",
    "element_end": "restore"
  });
  $(".fly-bottom").letterfx({
    "fx": "fly-bottom",
    "backwards": false,
    "timing": 50,
    "fx_duration": "350ms",
    "letter_end": "restore",
    "element_end": "restore"
  });
});
