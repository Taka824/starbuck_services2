$("#star").raty({
    size     : 36,
    starOn: "<%= asset_path('star-on.png') %>",
    starOff: "<%= asset_path('star-off.png') %>",
    starHalf: "<%= asset_path('star-half.png') %>",
    scoreName: 'post[evaluation]' //登録するモデル名とカラム名を記述
  });
